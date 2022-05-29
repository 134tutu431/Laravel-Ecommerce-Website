<?php

namespace App\Http\Service\Checkout;

use App\Models\OderDetails;
use App\Models\Payments;
use App\Models\Oder;
use Gloudemans\Shoppingcart\Cart;
use Illuminate\Support\Facades\Auth;

class CheckoutService
{
    public function add($request){
        try {

            return true;
        }catch (\Exception $exception){
            return false;
        }
        return true;
    }


}
