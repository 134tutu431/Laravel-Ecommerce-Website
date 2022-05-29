<?php

namespace App\Http\Service\Customer;

use App\Models\User;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class CustomerService
{
    public function get(){
        return User::where('is_admin','0')->orderbyDesc('id')->search()->paginate(5);
    }
    public function create($request)
    {
        try {
            User::create([
                'name'=>(string) $request->input('name'),
                'email'=>(string) $request->input('email'),
                'password'=>(string) bcrypt($request->input('password')),
                'is_admin'=>(string) 0,
            ]);
            Session::flash('success','Add customer successful !!!');
            return true;
        }catch (\Exception $exception){
            Session::flash('error','An error occurred, please try again !!!');
            return false;
        }
        return true;
    }
    public function search($request){
        return User::where('name','like','%'.$request->input('search').'%');
    }
    public function delete($request)
    {
        $user=User::where('id',$request->input('id'))->first();
        if($user){
            $user->delete();
            return true;
        }
        return false;
    }
    public function edit($id){
        return User::where('id',$id)->first();
    }
}
