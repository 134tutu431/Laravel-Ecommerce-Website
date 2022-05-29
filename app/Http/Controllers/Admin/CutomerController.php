<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Service\Customer\CustomerService;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CutomerController extends Controller
{
    protected $customerService;

    /**
     * @param $customerService
     */
    public function __construct(CustomerService $customerService)
    {
        $this->customerService = $customerService;
    }

    public function add(){
        return view('admin.customer.add',[
            'title'=>'Add Customer - Unistore'
        ]);
    }
    public function store(Request $request){
        $this->validate($request,[
            'name'=>'required|max:42',
            'email'=>'required|email|unique:users',
            'password'=>'required|min:8|max:32',
            'password-confirm'=>'same:password'
        ]);
        $this->customerService->create($request);
        return redirect()->back();
    }
    public function index(){
        return view('admin.customer.list_customer',[
            'title'=>'List Customers - Unistore',
            'customers'=>$this->customerService->get()
        ]);
    }
    public function search(Request $request){
        return view('admin.customer.list_customer',[
            'title'=>'List Customers - Unistore',
            'customers'=>$this->customerService->search($request),
            'search'=> $request->input('search')
        ]);
    }
    public function destroy(Request $request)
    {
        $result = $this->customerService->delete($request);
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this customer successfully !!!'
            ]);
        }
        return response()->json(['error'=>true]);
    }
    public function edit(User $user)
    {
        return view('admin.customer.edit',[
            'title'=>'Edit the Customer - Unistore'.$user->name,
            'cutomer'=>$user
        ]);
    }

    public function update(Request $request,User $user){
        $this->validate($request,[
            'name'=>'required'
        ]);
        $cutomer= $user;
        $data=[
            'name'=>$request->input('name')
        ];
        if($request->input('password')){
            $this->validate($request,[
                'password'=>'required|min:8|max:32',
                'password-confirm'=>'same:password'
            ]);
            $data['password']= bcrypt($request->input('password'));
        }
        if($cutomer->update($data)){
            Session::flash('success','Update customer successful !!!');
        }else{
            Session::flash('error','An error occurred. Please try again !!!');
        }
        return redirect()->back();
    }
    public function updateInfoOrder(Request $request){
        $customer =User::where('id',$request->input('customer_id'))->first();
        $customer->name=(string) $request->input('name');
        $customer->phone=(string) $request->input('phone');
        if($customer->save()){
            Session::flash('success','Update information successful !!!');
        }else{
            Session::flash('error','An error occurred. Please try again !!!');
        }
        return redirect()->back();
    }
}
