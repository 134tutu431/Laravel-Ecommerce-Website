<?php

namespace App\Http\Controllers;

use App\Http\Service\Checkout\CheckoutService;
use App\Models\DiscountCode;
use App\Models\Oder;
use App\Models\OderDetails;
use App\Models\Payments;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CheckOutController extends Controller
{
    protected $checkoutService;

    /**
     * @param $checkoutService
     */
    public function __construct(CheckoutService $checkoutService)
    {
        $this->checkoutService=$checkoutService;
    }

    public function index(){
        if(count(Cart::content())==0){
            Session::flash('error','Your shopping cart is empty. Please select the product you want to buy !!!');
            return redirect()->route('cart');
        }
        return view('user.cart.checkout',[
            'title'=>'Checkout - Unistore'
        ]);
    }
    public function create(Request $request){
        if(count(Cart::content())==0){
            Session::flash('error','Your shopping cart is empty. Please select the product you want to buy !!!');
            return redirect()->route('cart');
        }
        $status=Payments::create([
            'method'=>'1',
            'status'=>'Processing'
        ]);
        if(Session::get('discount_code')){
            $discount_code=Session::get('discount_code');
            $discount = DiscountCode::where('code',$discount_code)->first();
            $discount->quantity = $discount->quantity - 1;
            $discount->save();
        }
        $payment= Payments::where('method',1)->orderByDesc('id')->first();
        $payment_id=$payment->id;
        if($status){
            $status1 = Oder::create([
                'customer_id'=>(string) Auth::id(),
                'payment_id'=>(string) $payment_id,
                'address'=>(string) $request->input('country').','.$request->input('city').','.$request->input('street').','.$request->input('building').','.$request->input('zip'),
                'remark'=>(string) $request->input('remark'),
                'total_price'=>(string) $request->input('total_price'),
                'status'=>'Pending',
                'discount'=>Session::get('discount_code')
            ]);
            $oder= Oder::where('customer_id',Auth::id())->orderByDesc('id')->first();
            $oder_id = $oder->id;
            if($status1){
                foreach (Cart::content() as $content){
                    OderDetails::create([
                        'oder_id'=>(string)$oder_id,
                        'product_id'=>(string)$content->id,
                        'product_name'=>(string)$content->name,
                        'product_price'=>(string)$content->price,
                        'sale_quantity'=>(string)$content->qty,
                    ]);
                    $product=Product::find($content->id);
                    $new_qty=$product->quantity-$content->qty;
                    $product->quantity = $new_qty;
                    $product->save();
                }
            }
        }
        if($request->input('payment')=='paypal'){
            return view('user.cart.paycash',[
                'title'=>'Checkout - Unistore'
            ]);
        }elseif ($request->input('payment')=='cash'){
            Session::forget('percent_discount');
            Session::forget('value_discount');
            Session::forget('discount_code');
            Cart::destroy();
            Session::flash('success','Your order has been successfully placed, we will try to contact you as soon as possible !!!');
            return redirect()->route('cart');
        }
    }
    public function checkout_paypal_success(){
        $oder= Oder::where('customer_id',Auth::id())->orderByDesc('id')->first();
        $oder->status = 'Payment';
        $oder->save();
        Cart::destroy();
        Session::flash('success','Your order has been successfully placed, we will try to contact you as soon as possible !!!');
        return redirect()->route('cart');
    }
}
