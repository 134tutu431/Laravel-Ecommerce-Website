<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Service\Order\OrderService;
use App\Models\DiscountCode;
use App\Models\Oder;
use App\Models\OderDetails;
use App\Models\Product;
use App\Models\Statistical;
use Barryvdh\DomPDF\PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use PHPUnit\Exception;

class OrderController extends Controller
{
    protected $orderService;
    public function __construct(OrderService $orderService)
    {
        $this->orderService=$orderService;
    }

    public function index(){
        return view('admin.order.index',[
            'title' =>'List Of Order - Unistore',
            'orders'=> $this->orderService->get()
        ]);
    }
    public function edit($order_id)
    {
        $order=$this->orderService->getOrderbyId($order_id);
        return view('admin.order.edit',[
            'title' =>'Order Detail - Unistore',
            'order'=>$order,
            'orderDetail'=>$this->orderService->getOrderDetail($order_id)
        ]);
    }
    public function destroy(Request $request)
    {
        $result = $this->orderService->delete($request);
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this Order successfully !!!'
            ]);
        }
        return response()->json(['error'=>true]);
    }
    public function destroyOrderDetail(Request $request)
    {
        $result = $this->orderService->deleteOrderDetail($request);
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this product successfully !!!'
            ]);
        }
        return response()->json(['error'=>true]);
    }
    public function update(Request $request)
    {
        $day = Carbon::today();
        $order_id= $request->input('order_id');
        $order = Oder::where('id',$order_id)->first();
        $statistical = Statistical::where('date',$day)->first();
        $total_price = $request->input('total_price');
        $profit = $total_price*10/100;
        if($request->input('status')=='Completed'&&$order->status != 'Completed' ){
            if ($statistical){
                try {
                    $statistical->sales =$statistical->sales + $request->input('total_price');
                    $statistical->profit = $statistical->profit + $profit;
                    $statistical->quantity =$statistical->quantity + $request->input('quantity');
                    $statistical->order_total = $statistical->order_total+1;
                    $statistical->save();
                }catch (Exception $exception){
                    Session::flash('error','An error occurred, please try again !!!');
                }

            }else{
                try {
                    Statistical::create([
                        'date'=>$day,
                        'sales'=>$request->input('total_price'),
                        'profit'=>$profit,
                        'quantity'=>$request->input('quantity'),
                        'order_total'=> 1
                    ]);
                }catch (Exception $exception){
                    Session::flash('error','An error occurred, please try again !!!');
                }
            }
        }

        if($request->input('status')=='Canceled'){
            $order_details = OderDetails::where('oder_id',$request->input('order_id'))->get();
            foreach ($order_details as $order_detail){
                $product = Product::where('id',$order_detail->product_id)->first();
                $product->quantity = $product->quantity + $order_detail->sale_quantity;
                $product->save();
            }
        }
        $result=$this->orderService->update($request);
        if($result){
            return redirect('/admin/orders');
        }else{
            return redirect()->back();
        }
    }

    public function print_order($order_code){
        $pdf =\App::make('dompdf.wrapper');
        $pdf->loadHTML($this->print_order_convert($order_code));
        return $pdf->stream();
    }
    public function print_order_convert($order_code){
        $order=$this->orderService->getOrderbyId($order_code);
        $order_detail=$this->orderService->getOrderDetail($order_code);
        $output ='';
        $output .='
        <style>
            body{
            font-family: "DejaVu Sans";
            }
            table, td, th,tr {
                border: 1px solid black;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
        </style>
        <div class="container">
            <b style="font-size: 50px;color: #00a1b4;margin-bottom: 0px">INVOICE</b><br>
            <b style="font-size: 30px;ma">Unistore<br><br>
            </b>
            <b> Customer : </b>'.$order->customer->name.'<br>
            <b> Address : </b>'.$order->address.'<br>
            <b> Remark : </b>'.$order->remark.'<br><br>
            <b style="font-size: 20px">Order Detail</b>
            <table>
              <tr>
                <th scope="col">Name</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total Price</th>
              </tr>
              <tbody>';
        $total=0;
        foreach ($order_detail as $detail){
            $subtotal = $detail->product_price*$detail->sale_quantity;
            /** @var TYPE_NAME $total */
            $total +=(int)$subtotal;
            $output.='<tr>
                    <td style="width: 400px;text-align: center;">'.$detail->product_name.'</td>
                    <td style="text-align: center;">$'.$detail->product_price.'</td>
                    <td style="width: 50px;text-align: center;">'.$detail->sale_quantity.'</td>
                    <td style="text-align: center;">$'.$subtotal.'</td>
                </tr>
        ';
        }
        $tax=number_format($total*5/100,2);
        $output.='
                </tbody>
            </table>
            <br>
            <b> Subtotal : </b>$'.number_format($total,2).'<br>
            <b> Tax (5%) : </b>$'.$tax.'<br>
        </div>';
        if($order->discount_code){
            if($order->discount_code->feature==1){
                $output.= '<b>Discount('.$order->discount_code->discount.'%) : </b>$'.number_format($order->discount_code->discount*$total/100,2);
            }
            if($order->discount_code->feature==2){
                $output.='<b>Discount ($) :</b>
                                        $'.number_format($order->discount_code->discount,2);
            }
        }else{
            $output.= '<b>Discount ($) :</b> $0.00';
        }
        $output.='<br><b>Total order :</b> $'.$order->total_price.'<br><br><img src="data:image/png;base64,' .base64_encode(file_get_contents(public_path('template\signature.png'))).'">';
        $output.='<br><br><hr>
                <b style="font-size: 25px;color: #0c84ff">TERM & CONDITIONS</b><br>
                <p>Payment is due within 15 days</p>
                <p>MB BANK</p>
                <p>Account Number : 5100119082002</p>
                <p>Account Name : LE VAN CHUONG</p>
                <p>Routing : 0913312905</p>
                ';
        return $output;
    }
    public function history(){
        return view('user.order.history',[
            'title'=>'Purchase history - Unistore',
            'orders'=>$this->orderService->getOrderByCustomerId(Auth::user()->id)
        ]);
    }
    public function history_detail($id){
        $details = $this->orderService->getOrderDetail($id);
        $order=$this->orderService->getOrderbyId($details->first()->oder_id);
        return view('user.order.detail',[
            'title'=>'Order Detail - Unistore',
            'details'=>$details,
            'order'=>$order
        ]);
    }
    public function cancel_order(Request $request){
        $data=$request->all();
        $order = Oder::where('id',$data['order_id'])->first();
        $order->cancel_status= 2;
        $order->cancel_reason= $data['reason'];
        $order->save();
    }
    public function list_cancel(){
        return view('admin.order.list_cancel',[
            'title'=>'Order Cancel Request - Unistore',
            'cancels'=> $this->orderService->getOrderCancel()
        ]);
    }
    public function approve_cancel(Request $request){
        $data=$request->all();
        $cancel = Oder::where('id',$data['cancel_id'])->first();
        $cancel->cancel_status = (string) $data['cancel_status'];
        if($data['cancel_status']==2){
            $cancel->status='Pending';
        }else if($data['cancel_status']==1){
            $cancel->status='Canceled';
        }
        $cancel->save();
    }
}
