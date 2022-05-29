<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\DiscountCode;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Session;
use PHPUnit\Exception;

class DiscountCodeController extends Controller
{
    public function create(){
        return view('admin.discount_code.add',[
            'title'=>'Add new Discount Code'
        ]);
    }
    public function store(Request $request){
        $start_date=$request->input('start_date');
        $expiry_date=$request->input('expiry_date');
        if($start_date>=$expiry_date){
            Session::flash('error','The start date cannot be greater than the expiration date !!!');
            return redirect()->back();
        }
        $this->validate($request,[
            'code'=>'required|min:5|max:25|unique:|App\Models\DiscountCode,code'
        ]);
        if($request->input('feature')==1 && $request->input('discount')>=100){
            Session::flash('error','Please enter a valid discount % !!!');
            return redirect()->back();
        }
        $code = DiscountCode::where('code',$request->input('code'))->first();
        if($code){
            Session::flash('error','Discount code already exists !!!');
            return redirect()->back();
        }
        DiscountCode::create([
            'name'=>(string)$request->input('name'),
            'code'=>(string)$request->input('code'),
            'feature'=>(string)$request->input('feature'),
            'start_date'=>(string)$request->input('start_date'),
            'expiry_date'=>(string)$request->input('expiry_date'),
            'discount'=>(string)$request->input('discount'),
            'quantity'=>(string)$request->input('quantity'),
            'active'=>(string)$request->input('active')
        ]);
        Session::flash('success','Added discount code successfully !!!');
        return redirect()->back();
    }
    public function index(){
        $today = Carbon::now()->format('Y-m-d');
        $codes= DiscountCode::orderBy('expiry_date','desc')->search()->paginate(8);
        return view('admin.discount_code.list_discount_code',[
            'title'=>'List of Discount Code',
            'codes'=>$codes,
            'today'=>$today
        ]);
    }
    public function check_discount(Request $request){
        if(count(Cart::content())==0){
            Session::flash('error','Your shopping cart is empty. Please select the product you want to buy !!!');
            return redirect()->back();
        }
        $today = Carbon::now()->format('Y-m-d');
        $discount = DiscountCode::where('code',$request->input('code'))->where('expiry_date','>',$today)->where('active',1)->first();
        if($discount){
            if($discount->quantity==0){
                Session::flash('error','The number of discount codes has expired !!!');
                return redirect()->back();
            }
            if($discount->feature==1){
                Cart::setGlobalDiscount($discount->discount);
                Session::put('percent_discount',$discount->discount);
            }else{
                $value=$discount->discount;
                $initial = Cart::priceTotal();
                $money=$value/$initial*100;
                $percent = number_format($money,20);
                Cart::setGlobalDiscount($percent);
                Session::put('value_discount',$value);
            }
            Session::put('discount_code',$discount->code);
            Session::flash('success','The price of the product has been reduced !!!');
            return redirect()->back();
        }else{
            Session::flash('error','Discount code is incorrect or expired !!!');
            return redirect()->back();
        }
    }
    public function edit($id)
    {
        $discount_code = DiscountCode::where('id',$id)->first();
        return view('admin.discount_code.edit',[
            'title'=>'Edit Discount Code - Unistore',
            'discount_code'=>$discount_code
        ]);
    }
    public function update(Request $request){
        $start_date=$request->input('start_date');
        $expiry_date=$request->input('expiry_date');
        if($start_date>=$expiry_date){
            Session::flash('error','The start date cannot be greater than the expiration date !!!');
            return redirect()->back();
        }
        $this->validate($request,[
            'code'=>'required|min:5|max:25'
        ]);
        if($request->input('feature')==1 && $request->input('discount')>=100){
            Session::flash('error','Please enter a valid discount % !!!');
            return redirect()->back();
        }
        try {
            $discount_code = DiscountCode::where('id',$request->input('id'))->first();
            $discount_code->name=(string) $request->input('name');
            $discount_code->code=(string) $request->input('code');
            $discount_code->start_date=(string) $request->input('start_date');
            $discount_code->expiry_date=(string) $request->input('expiry_date');
            $discount_code->feature=(string) $request->input('feature');
            $discount_code->discount=(string) $request->input('discount');
            $discount_code->quantity=(string) $request->input('quantity');
            $discount_code->active=(string) $request->input('active');
            $discount_code->save();
            Session::flash('success','Update discount successful !!!');
            return redirect()->route('list_discount');
        }catch (Exception $exception){
            Session::flash('error','An error occurred, please try again !!!');
            return redirect()->back();
        }
    }
    public function destroy(Request $request)
    {
        $code=DiscountCode::where('id',$request->input('id'))->first();
        if($code){
            $result=$code->delete();
        }
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this customer successfully !!!'
            ]);
        }
        return response()->json(['error'=>true]);
    }
    public function search(Request $request){
        $today = Carbon::now()->format('Y-m-d');
        $codes= DiscountCode::where('name','like','%'.$request->input('search').'%')->orderByDesc('expiry_date')->paginate(5);
        return view('admin.discount_code.list_discount_code',[
            'title'=>'List of Discount Code',
            'codes'=>$codes,
            'today'=>$today
        ]);
    }
}
