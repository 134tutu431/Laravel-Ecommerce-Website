<?php

namespace App\Http\Controllers;

use App\Http\Service\Cart\CartService;
use App\Http\Service\Category\CategoryService;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    protected $cartService;
    public function __construct(CartService $cartService)
    {
        $this->cartService=$cartService;
    }
    public function index(Request $request){
        $product_id= $request->input('product_id');
        $qty= $request->input('product_qty');
        $product_info= Product::where('id',$product_id)->with('category')->with('manufacturer')->first();
        $data=[
            'id'=> $product_info->id,
            'qty'=> $qty,
            'name'=> $product_info->name,
            'price'=> $product_info->price,
            'weight'=>'123',
            'options'=> [
                'type'=>(string)$product_info->category->name,
                'image'=>(string)$product_info->thumb,
            ],

        ];
        Cart::setGlobalTax(5);
        Cart::add($data);
        return Redirect::to('/show-cart');
    }
    public function show_cart(Request $request){
        return view('user.catalog.cart',[
            'title'=>'Shopping Cart - Unistore'
        ]);
    }
    public function delete_cart($rowId){
        Cart::update($rowId,0);
        return \redirect()->back();
    }
    public function update_cart(Request $request){
        $rowId= $request->input('rowId');
        $qty = $request->input('quantity');
        Cart::update($rowId,$qty);
        return \redirect()->back();
    }
    public function add_cart_ajax(Request $request){
        if(!Auth::check()){
            Session::flash('error','You must be signed in to perform this action !!!');
            return redirect('/login');
        }else{
            $data= $request->all();
            Cart::add([
                'id'=> $data['cart_product_id'],
                'qty'=> $data['cart_product_quantity'],
                'name'=> $data['cart_product_name'],
                'price'=> $data['cart_product_price'],
                'weight'=>'123',
                'options'=> [
                    'type'=>(string)$data['cart_product_type'],
                    'image'=>(string)$data['cart_product_image'],
                ],
            ]);
            Cart::setGlobalTax(5);
        }
    }
    public function cart_update(Request $request){
        $data= $request->all();
        $rowId= $data['rowId'];
        $qty = $data['quantity'];
        Cart::update($rowId,$qty);
    }
}
