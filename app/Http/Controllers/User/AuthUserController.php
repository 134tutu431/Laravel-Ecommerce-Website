<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Service\Customer\CustomerService;
use App\Http\Service\User\UserService;
use App\Models\User;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class AuthUserController extends Controller
{
    protected $userService;
    protected $customerService;

    /**
     * @param $userService
     */
    public function __construct(UserService $userService,CustomerService $customerService)
    {
        $this->userService = $userService;
        $this->customerService=$customerService;
    }

    public function formlogin(){
        if (Auth::check()){
            return redirect('/');
        }
        return view('user.home.login',[
            'title'=>'Login - Unistore'
        ]);
    }
    public function login(Request $request){
        $this->validate($request,[
            'email' =>'required|email:filter',
            'password'=>'required'
        ]);
        if(Auth::attempt(['email'=> $request->input('email'),
            'password'=>$request->input('password')
        ])){
            return redirect('/');
        }
        Session::flash('error','Incorrect email or password !!!');
        return redirect('/login');
    }
    public function logout(){
        Session::flush();
        Cart::setGlobalDiscount(0);
        Auth::logout();
        return redirect('/login');
    }
    public function create(){
        return view('user.home.signup',[
            'title'=>'Signup - Unistore'
        ]);
    }
    public function store(Request $request){
        $this->validate($request,[
            'email' =>'required|email:filter|unique:users,email',
            'password'=>'required|min:6|max:32',
            'name'=>'required',
            'password-confirm'=>'required|same:password',
        ],[
            'email.unique' =>'Email is registered, please use another email',
            'password-confirm.same'=>'Confirm password is incorrect '
        ]);
        $status=$this->userService->create($request);
        if ($status){
            Session::flash('success','Account registration successful, please login !!!');
            return redirect('/login');
        }else{
            return redirect('/signup');
        }
    }
    public function profile(){
        return view('user.home.profile',[
            'title'=>Auth::user()->name.' - Unistore',
        ]);
    }
    public function update_profile(Request $request){
        $this->validate($request,[
            'name'=>'required',
            'phone' => 'required|min:10|max:10',
        ]);
        $user= Auth::user();
        $data=[
            'name'=>$request->input('name'),
            'phone'=>$request->input('phone')
        ];

        if($user->update($data)){
            Session::flash('success','Edit profile successful !!!');
        }else{
            Session::flash('error','An error occurred. Please try again !!!');
        }
        return redirect()->back();
    }
    public function edit_pass(){
        return view('user.home.update_pass',[
            'title'=>'Update Password - Unistore'
        ]);
    }
    public function update_pass(Request $request){
        $user= Auth::user();
        $this->validate($request,[
            'password'=>'required|min:8|max:32|different:old_password',
            'password-confirm'=>'same:password'
        ]);
        $old_password =$request->input('old_password');
        if (Hash::check($old_password,$user->getAuthPassword())){
            $user->password = bcrypt($request->input('password'));
            $user->save();
            Session::flash('success','Update password successful, please login again !!!');
            return redirect('login');
        }else {
            Session::flash('error','Your password is incorrect, please check again !!!');
        }
        return redirect()->back();
    }
}
