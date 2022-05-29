<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AuthController extends Controller
{
    public function index(){
        if(Auth::check()){
            if (Auth::user()->is_admin == 1){
                return redirect()->route('admin');
            }
        }
            return view('admin.users.login',[
                'title'=> 'Login - Unistore'
            ]);
    }

    /**
     * @throws \Illuminate\Validation\ValidationException
     */
    public function checkLogin(Request $request){

        $this->validate($request,[
            'email' =>'required|email:filter',
            'password'=>'required'
        ]);
        if(Auth::attempt(['email'=> $request->input('email'),
            'password'=>$request->input('password')
            ])){
            return redirect()->route('admin');
        }
        Session::flash('error','Incorrect email or password !!!');
        return redirect()->back();
    }
    public function logout(){
        Auth::logout();
        return redirect()->route('login');
    }
    public function profile(){
        return view('admin.profile.edit',[
            'title'=>'Profile - Admin'
        ]);
    }
    public function updateProfile(Request $request){
        $this->validate($request,[
            'name'=>'required'
        ]);
        $user= Auth::user();
        $data=[
            'name'=>$request->input('name'),
            'is_admin'=> $request->input('role')
        ];
        if($request->input('password')){
            $this->validate($request,[
                'password'=>'required|min:8|max:32',
                'password-confirm'=>'same:password'
            ]);
            $data['password']= bcrypt($request->input('password'));
        }
        if($user->update($data)){
            Session::flash('success','Edit profile successful !!!');
        }else{
            Session::flash('error','An error occurred. Please try again !!!');
        }
        return redirect()->back();
    }
}
