
<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<style>
    .media{
        height: 120px;
    }
    @media only screen and (max-width: 736px){
        .media{
            height: 160px;
        }
    }
</style>
<body>

@include('user.header')
<div class="box">
    <div class="container">
        <h1>Purchase history</h1>
        <hr class="offset-sm">
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            @include('user.alert')
        </div>
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>Orders Detail</h4>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th>Ordinal</th>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th>Sale Price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $ordinal = 0;
                                $total = 0;
                            @endphp
                            @foreach($details as $detail)
                                @php
                                    $ordinal++;
                                    $total+=$detail->product_price;
                                @endphp
                                <tr>
                                    <td>{{$ordinal}}</td>
                                    <td>{{$detail->product_name}}</td>
                                    <td>{{$detail->product->price_sale}}</td>
                                    <td>${{$detail->product_price}}</td>
                                    <td>{{$detail->sale_quantity}}</td>
                                    <td>${{number_format($detail->product_price*$detail->sale_quantity,2)}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>Customer Information</h4>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <form method="post">
                            @csrf
                            <input name="customer_id"  type="hidden" value="{{\Illuminate\Support\Facades\Auth::user()->id}}">
                            <div class="col-sm-6">
                                <label>Name</label>
                                <input type="text" {{$order->status=='Canceled'||$order->status=='Completed'?'readonly':''}}  name="name" value="{{\Illuminate\Support\Facades\Auth::user()->name}}" placeholder="First Name" required="" class="form-control"><br>
                            </div>
                            <div class="col-sm-6">
                                <label>Phone number</label>
                                <input type="text" {{$order->status=='Canceled'||$order->status=='Completed'?'readonly':''}} name="phone" value="{{\Illuminate\Support\Facades\Auth::user()->phone}}" placeholder="Phone" required="" class="form-control"><br>
                            </div>
                            <div class="col-sm-6">
                                <button {{$order->status=='Canceled'||$order->status=='Completed'?'disabled':''}}   class="btn btn-primary">Update Information</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-8 col-md-4">
            <hr class="offset-md visible-sm">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h2 class="no-margin">Summary</h2>
                    <hr class="offset-md">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-6">
                                <p>Subtotal</p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>${{number_format($total,2)}}</b></p>
                            </div>
                            <div class="col-xs-6">
                                <p>Tax (5%) </p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>${{number_format($total*5/100,2)}}</b></p>
                            </div>
                            @if($order->discount_code)
                                @if($order->discount_code->feature==1)
                                    <div class="col-xs-6">
                                        <p>Discount( {{$order->discount_code->discount}}% )</p>
                                    </div>
                                    <div class="col-xs-6">
                                        <p><b>{{number_format($order->discount_code->discount*$total/100,2)}}$</b></p>
                                    </div>
                                @endif
                                @if($order->discount_code->feature==2)
                                        <div class="col-xs-6">
                                            <p>Discount ($) </p>
                                        </div>
                                        <div class="col-xs-6">
                                            <p><b>${{number_format($order->discount_code->discount,2)}}</b></p>
                                        </div>
                                @endif
                            @else
                                <div class="col-xs-6">
                                    <p>Discount ($) </p>
                                </div>
                                <div class="col-xs-6">
                                    <p><b>$0.00</b></p>
                                </div>
                            @endif
                        </div>
                    </div>
                    <hr>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-6">
                                <h3 class="no-margin">Total sum</h3>
                            </div>
                            <div class="col-xs-6">
                                <h3 class="no-margin">${{$order->total_price}}</h3>
                            </div>
                        </div>
                    </div>
                    <hr class="offset-sm">
                    @if($order->cancel_status==1||$order->cancel_status==0)
                        <button data-toggle="modal"{{$order->status!='Canceled'&&$order->status!='Completed'?'':'disabled'}} data-target="#Modal-Cancel-Order" href="" class="btn btn-danger btn-lg justify"><i class="ion-close-round"></i>&nbsp;&nbsp; Cancel the order</button>
                    @elseif($order->cancel_status==2)
                        <button disabled class="btn btn-warning btn-lg justify">Waiting for approval</button>
                    @endif
                </div>
            </div>
        </div>
        <hr class="offset-lg">
        <hr class="offset-lg">
        <div class="modal fade" id="Modal-Cancel-Order" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header align-center">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="ion-android-close"></i></span></button>
                        <h1 class="h4 modal-title"><b>Reason for Canceling the order</b></h1>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <div class="join" >

                                <div class="row">
                                    <form>
                                        @csrf
                                    <div class="col-sm-12">
                                        <textarea id="reason" name="reason" placeholder="Enter a reason to cancel the order (required)" required="" class="form-control" rows="5"></textarea>
                                        <br>
                                    </div>
                                    </form>
                                    <div class="col-sm-12">
                                        <div class="align-center">
                                            <button onclick="cancel_order(this.id)" id="{{$order->id}}" class="btn btn-primary btn-sm"> <i class="ion-android-send"></i> Send</button>
                                            <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal"> <i class="ion-android-share"></i> No, thanks </button>
                                            <br>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('user.footer')
</body>

</html>

