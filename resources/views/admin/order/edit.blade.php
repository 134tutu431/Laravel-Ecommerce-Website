@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <form action="" method="post" enctype='multipart/form-data'>
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Customer Imformation</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Customer name</label>
                            <input name="name" required=""  type="text" class="form-control" value="{{$order->customer->name}}" placeholder="Enter category name">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Customer phone</label>
                            <input name="phone" required="" value="{{$order->customer->phone}}"   type="number" class="form-control"  placeholder="Enter phone number">
                        </div>
                </div>
            </div>
    </div>
        </div>
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Order details</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-sm" id="dtBasicExample">
                        <thead >
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total Price</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php
                            $total=0;
                        $quantity=0;
                        @endphp
                            @foreach($orderDetail as $orderdetail)
                                <tr>
                                    <td class="align-middle">{{$orderdetail->product_name}}</td>
                                    <td class="align-middle">${{$orderdetail->product_price}}</td>
                                    <td class="align-middle">{{$orderdetail->sale_quantity}}</td>
                                    <td class="align-middle">${{$orderdetail->product_price*$orderdetail->sale_quantity}}</td>
                                </tr>
                                @php
                                    $quantity+=$orderdetail->sale_quantity;
                                    $subtotal = $orderdetail->product_price*$orderdetail->sale_quantity;
                                    $total += $subtotal;
                                @endphp
                            @endforeach
                        </tbody>
                    </table>
                    <div class="col-md-12 col-12 ">
                        <b>Total  : ${{number_format($total,2)}}</b><br>
                        <b>Tax (5%) : ${{number_format($total*5/100,2)}}</b><br>
                        <b>

                            @if($order->discount_code)
                                    @if($order->discount_code->feature==1)
                                    Discount({{$order->discount_code->discount}}%)  :
                                    {{number_format($order->discount_code->discount*$total/100,2)}}$
                                @endif
                                    @if($order->discount_code->feature==2)
                                            Discount ($) :
                                        ${{number_format($order->discount_code->discount,2)}}
                                        @endif
                            @else
                                Discount ($) : $0.00
                            @endif</b><br>
                        <b>Total order : ${{$order->total_price}}</b>
                    </div>
                </div>
                <br>
                <a target="_blank" href="/admin/orders/print-order/{{$order->id}}" class="btn btn-info">Print invoice</a>
            </div>

        </div>
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Status</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Status</label>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="custom-control custom-radio">
                                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="status" id="cancel" value="Canceled" {{$order->status =='Canceled'?'checked':''}}>
                                        <label style="cursor: pointer" class="custom-control-label" for="cancel">
                                            Canceled
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="custom-control custom-radio">
                                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="status" id="pend" {{$order->status =='Pending'?'checked':''}} value="Pending">
                                        <label style="cursor: pointer" class="custom-control-label" for="pend">
                                            Pending
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="custom-control custom-radio">
                                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="status" {{$order->status =='Payment'?'checked':''}}  id="paid" value="Payment">
                                        <label style="cursor: pointer" class="custom-control-label" for="paid">
                                            Payment
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="custom-control custom-radio">
                                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="status" {{$order->status =='Completed'?'checked':''}}   id="complete" value="Completed">
                                        <label style="cursor: pointer" class="custom-control-label" for="complete">
                                            Completed
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <input type="hidden" name="quantity" value="{{$quantity}}">
        <input type="hidden" name="customer_id" value="{{$order->customer->id}}">
        <input type="hidden" name="order_id" value="{{$order->id}}">
        <input type="hidden" name="total_price" value="{{$order->total_price}}">
        @csrf
        <button type="submit"  class="btn btn-info">Save Order</button>
    </form>
@endsection
@section('footer')
@endsection


