@extends('admin.main')

@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3  class="card-title">List Of Orders</h3>
            <div class="col-md-12 col-4">
                <div class="text-right">
                    <a href="/admin/orders/list-cancel" style="margin-right: 0px" type="button" class="btn btn-secondary btn-sm">Cancellation requests</a>
                </div>
            </div>
        </div>
        <br class="offset-xs">
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-sm" id="dtBasicExample">
                <thead >
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Customer</th>
                    <th scope="col">Address</th>
                    <th scope="col">Total Price</th>
                    <th scope="col">Discount code</th>
                    <th class="text-center" scope="col">Status</th>
                    <th scope="col">Update</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($orders as $key =>$order)
                    <tr>
                        <td class="align-middle">{{$order->id}}</td>
                        <td class="align-middle">{{$order->customer->name}}</td>
                        <td class="align-middle">{{$order->address}}</td>
                        <td class="align-middle">&dollar;{{$order->total_price}}</td>
                        <td class="align-middle text-center">@if($order->discount)
                                <div style="width: 80%;" class="btn btn-success btn-xs">{{$order->discount}}</div>
                            @else
                                <div style="width: 80%;" class="btn btn-secondary btn-xs">NONE</div>

                            @endif</td>
                        <td class="align-middle text-center">{!! \App\Helpers\Helper::status($order->status) !!}</td>
                        <td class="align-middle">{{$order->updated_at}}</td>
                        <td class="align-middle">
                            <a style="width: 25px;" class="btn btn-outline-info btn-xs" href="/admin/orders/edit/{{$order->id}}"><i class="fas fa-edit"></i></a>
                            <a style="width: 25px;" class="btn btn-outline-danger btn-xs" href="#"
                               onclick="removeRow({{$order->id}},'/admin/orders/destroy')"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>

    </div>
    {!! $orders->links() !!}
@endsection

