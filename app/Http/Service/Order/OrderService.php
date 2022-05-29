<?php

namespace App\Http\Service\Order;

use App\Models\DiscountCode;
use App\Models\Oder;
use App\Models\OderDetails;
use App\Models\User;
use Illuminate\Support\Facades\Session;

class OrderService
{
    public function get(){
        return Oder::with('customer')->with('discount_code')
            ->orderByDesc('id')->paginate(10);
    }
    public function getOrderbyId($order_id){
        return Oder::where('id',$order_id)->with('discount_code')->with('customer')->first();
    }
    public function getOrderCancel(){
        return Oder::where('cancel_status','!=',0)->with('customer')->with('discount_code')
            ->orderByDesc('id')->paginate(7);
    }
    public function getDiscountCode($code){
        return DiscountCode::where('id',$code)->first();
    }
    public function getOrderByCustomerId($id){
        return Oder::where('customer_id',$id)->orderByDesc('id')->with('discount_code')->with('customer')->get();
    }
    public function getOrderDetail($order_id){
        return OderDetails::where('oder_id',$order_id)->with('product')->get();
    }
    public function getCustomer($customer_id){
        return User::where('id',$customer_id)->first();
    }
    public function delete($request)
    {
        $order=Oder::where('id',$request->input('id'))->first();
        $orderDetail = OderDetails::where('oder_id',$request->input('id'))->get();
        if($order){
            $order->delete();
            foreach ($orderDetail as $orderdetail){
                $orderdetail->delete();
            }
            return true;
        }
        return false;
    }
    public function deleteOrderDetail($request)
    {
        $order=OderDetails::where('id',$request->input('id'))->first();
        if($order){
            $order->delete();
            return true;
        }
        return false;
    }
    public function update($request){

        try {
            $customer = User::where('id',$request->input('customer_id'))->first();
            $customer->name = (string) $request->input('name');
            $customer->phone = (string) $request->input('phone');
            $customer->save();
            $order = Oder::where('id',$request->input('order_id'))->first();
            $order->status = (string) $request->input('status');
            $order->save();
            Session::flash('success','Update Order successful !!!');
            return true;
        }catch (\Exception $exception){
            Session::flash('error','An error occurred, please try again !!!');
            return false;
        }
        return true;
    }
    public function search($request){
    }
}
