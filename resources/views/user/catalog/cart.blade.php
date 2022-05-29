
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
        <h1>Shopping Cart</h1>
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
                    <div class="checkout-cart">
                        @if(count(\Gloudemans\Shoppingcart\Facades\Cart::content())==0)
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <h3 class="text-muted">Shopping Cart is empty</h3>
                                </div>
                            </div>
                        @endif
                        <div class="content row">
                            @foreach(\Gloudemans\Shoppingcart\Facades\Cart::content() as $cart )
                            <div class="media">
                                <div class="col-md-6 col-8">
                                    <div class="media-left">
                                        <a href="/catalog/{{$cart->id}}-{{\Illuminate\Support\Str::slug($cart->name)}}">
                                            <img class="media-object" src="{{$cart->options->image}}" alt="HP Chromebook 11">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h2 class="h4 media-heading">{{$cart->name}}</h2>
                                        <label>Laptops</label>
                                        <p class="price">${{$cart->price}}</p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-6 ">
                                    <div class="controls">
                                        <form action="/update-cart" method="post">
                                            @csrf
                                            <div class="input-group">
                                            <span class="input-group-btn">
                                              <button class="btn btn-default btn-sm" type="button" data-action="minus"><i class="ion-minus-round"></i></button>
                                            </span>
                                                <input name="quantity" type="text" class="form-control input-sm quantity" placeholder="Qty" value="{{$cart->qty}}" readonly="">
                                                <span class="input-group-btn">
                                            <button class="btn btn-default btn-sm" type="button" data-action="plus"><i class="ion-plus-round"></i></button>
                                            </span>
                                            </div>
                                            <input type="hidden" name="rowId" class="rowId" value="{{$cart->rowId}}">

                                            <span style="padding-bottom: 5px!important; " class="input-group-btn">
                                            <button class="btn btn-default btn-sm update" >Update</button>
                                            </span>

                                        </form>

                                        <a href="/delete-cart/{{$cart->rowId}}"> <i class="ion-trash-b"></i> Remove </a>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                    </div>
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
                                <p>Subtotal ({{count(\Gloudemans\Shoppingcart\Facades\Cart::content())}} items)</p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>${{\Gloudemans\Shoppingcart\Facades\Cart::priceTotal()}}</b></p>
                            </div>
                            <div class="col-xs-6">
                                <p>Tax </p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>${{\Gloudemans\Shoppingcart\Facades\Cart::tax()}}</b></p>
                            </div>
                            <div class="col-xs-6">
                                <p>Delivery</p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>Free</b></p>
                            </div>
                            <div class="col-xs-6">
                                <p>Discount @if(\Illuminate\Support\Facades\Session::get('percent_discount')==true)
                                                ({{\Illuminate\Support\Facades\Session::get('percent_discount')}} %)
                                    @elseif(\Illuminate\Support\Facades\Session::get('value_discount')==true)
                                                ($)
                                    @endif</p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>${{\Gloudemans\Shoppingcart\Facades\Cart::discount()}}</b></p>
                            </div>
                        </div>

                        <form class="checkboxes" action="/check-discount" method="post">
                            @csrf
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                                    Promotional Codes
                                </label>
                                <hr class="offset-xs">
                                <div class="input-group">
                                    <input value="{{\Illuminate\Support\Facades\Session::get('discount_code')}}" required="" name="code" type="text" class="form-control input-sm" placeholder="Insert code">
                                    <span class="input-group-btn">
                              <button class="btn btn-primary btn-sm" type="submit">Apply</button>
                            </span>
                                </div><!-- /input-group -->
                            </div>
                        </form>
                    </div>
                    <hr>

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-6">
                                <h3 class="no-margin">Total sum</h3>
                            </div>
                            <div class="col-xs-6">
                                @php
                                use Gloudemans\Shoppingcart\Facades\Cart;
                                @endphp
                                <h3 class="no-margin">${{Cart::total()}}</h3>
                            </div>
                        </div>
                    </div>
                    <hr class="offset-md">

                    <a href="/checkout/" class="btn btn-primary btn-lg justify"><i class="ion-android-checkbox-outline"></i>&nbsp;&nbsp; Checkout order</a>
                    <hr class="offset-md">
                    <p>Pay your order in the most convenient way</p>
                    <div class="payment-icons">
                        <img src="/template//assets/img/payments/icon-paypal.svg" alt="paypal">
                        <img src="/template//assets/img/payments/icon-visa.svg" alt="visa">
                        <img src="/template//assets/img/payments/icon-mc.svg" alt="mc">
                        <img src="/template//assets/img/payments/icon-discover.svg" alt="discover">
                        <img src="/template//assets/img/payments/icon-ae.svg" alt="ae">
                    </div>
                </div>
            </div>
        </div>
</div>
<hr class="offset-lg">
<hr class="offset-lg">
@include('user.footer')
</body>
</html>
