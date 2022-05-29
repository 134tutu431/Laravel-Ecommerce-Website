
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
                <div class="panel-body">
                    @if(count($orders)==0)<div class="row">
                        <br>
                        <div class="col-md-12 text-center">
                            <h3 class="text-muted">Purchase history is empty</h3>
                        </div>
                    </div>
                    @else
                        <table class="table table-striped table-hover table-responsive">
                            <thead>
                            <tr>
                                <th>Ordinal</th>
                                <th>Order ID</th>
                                <th>Order date and time</th>
                                <th>Total Price</th>
                                <th>Status</th>
                                <th class="text-center">View</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $ordinal = 0;
                                $total = 0;
                            @endphp
                            @foreach($orders as $order)
                                @php
                                    $ordinal++;
                                    $total+=$order->total_price;
                                @endphp
                                <tr>
                                    <td>{{$ordinal}}</td>
                                    <td>{{$order->id}}</td>
                                    <td>{{$order->created_at}}</td>
                                    <td>${{$order->total_price}}</td>
                                    <td>@if($order->status=='Completed')
                                            <b class="text-success">{{$order->status}}</b>
                                        @endif
                                        @if($order->status=='Payment')
                                            <b class="text-info">{{$order->status}}</b>
                                        @endif
                                        @if($order->status=='Pending')
                                            <b class="text-orange">{{$order->status}}</b>
                                        @endif
                                        @if($order->status=='Canceled')
                                            <b class="text-danger">{{$order->status}}</b>
                                        @endif
                                    </td>
                                    <td class="align-middle text-center"><a href="/history/detail/{{$order->id}}" class="btn btn-outline-info" style="width: 40px;height: 20px"><i class="ion-eye"></i></a></td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>


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
                                <p>Quantity Orders</p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>{{$ordinal}}</b></p>
                            </div>
                            <div class="col-xs-6">
                                <p>Total sum </p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>${{$total}}</b></p>
                            </div>
                            <div class="col-xs-6">
                                <p>Delivery</p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>Free</b></p>
                            </div>
                        </div>
                        @endif
                </div>
            </div>
        </div>

    </div>

    <hr class="offset-lg">
    <hr class="offset-lg">

@include('user.footer')
</body>
</html>

