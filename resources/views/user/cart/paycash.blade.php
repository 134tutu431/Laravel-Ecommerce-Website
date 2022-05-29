
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
        <h1>Pay with paypal</h1>
    </div>
</div>
<hr class="offset-md">
<div class="container">
    <div class="row">
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
                                            <a href="#">
                                                <img class="media-object" src="{{$cart->options->image}}" alt="HP Chromebook 11">
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <h2 class="h4 media-heading">{{$cart->name}}</h2>
                                            <label>Laptops</label>
                                            <p class="price">${{$cart->price}}</p>
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
                                <p><b>${{\Gloudemans\Shoppingcart\Facades\Cart::subtotal()}}</b></p>
                            </div>
                            <div class="col-xs-6">
                                <p>Tax </p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>${{\Gloudemans\Shoppingcart\Facades\Cart::tax()}}</b></p>
                            </div>
                            <div class="col-xs-6">
                                <p>Transport fee</p>
                            </div>
                            <div class="col-xs-6">
                                <p><b>Free</b></p>
                            </div>
                        </div>
                    </div>
                    <hr>

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-6">
                                <h3 class="no-margin">Total sum</h3>
                            </div>
                            <div class="col-xs-6">
                                <h3 class="no-margin">${{\Gloudemans\Shoppingcart\Facades\Cart::total()}}</h3>
                            </div>
                        </div>
                    </div>
                    <hr class="offset-md">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="paypal-button"></div>
                        </div>
                    </div>


                    <hr class="offset-md">

                    <p>Pay your order in the most convenient way</p>
                    <div class="payment-icons">
                        <img src="/template/assets/img/payments/icon-paypal.svg" alt="paypal">
                        <img src="/template/assets/img/payments/icon-visa.svg" alt="visa">
                        <img src="/template/assets/img/payments/icon-mc.svg" alt="mc">
                        <img src="/template/assets/img/payments/icon-discover.svg" alt="discover">
                        <img src="/template/assets/img/payments/icon-ae.svg" alt="ae">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr class="offset-lg">
    <hr class="offset-lg">
    <hr class="offset-md">
    <hr class="offset-md">
@include('user.footer')
    <script src="https://www.paypalobjects.com/api/checkout.js"></script>
    <script>
        paypal.Button.render({
            // Configure environment
            env: 'sandbox',
            client: {
                sandbox: 'ASYtY0KTKz_Qx40pu69Htjn22xp3zZe67Dcdf-BDpVQkODriV6CH4s1-PrXiXIAiqvQxDzJFATc_vh31',
                production: 'demo_production_client_id'
            },
            // Customize button (optional)
            locale: 'en_US',
            style: {
                size: 'medium',
                color: 'blue',
                shape: 'pill',
            },

            // Enable Pay Now checkout flow (optional)
            commit: true,

            // Set up a payment
            payment: function(data, actions) {
                return actions.payment.create({
                    transactions: [{
                        amount: {
                            total: '{{\Gloudemans\Shoppingcart\Facades\Cart::total()}}',
                            currency: 'USD'
                        }
                    }]
                });
            },
            // Execute the payment
            onAuthorize: function(data, actions) {
                return actions.payment.execute().then(function() {
                    window.alert('Thank you for your purchase!');
                    window.location.href="{{url('/check-out-success')}}";
                });
            }
        }, '#paypal-button');

    </script></div>
</body>
</html>

