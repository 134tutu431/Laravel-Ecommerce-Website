<?php

namespace App\Http\Service\User;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class UserService
{
    public function create($request){
        try {
            User::create([
                'name'=>(string) $request->input('name'),
                'email'=>(string) $request->input('email'),
                'password'=>(string) bcrypt($request->input('password')),
                'is_admin'=>(string) 0,
            ]);
        }catch (\Exception $exception){
            Session::flash('error','An error occurred, please try again!!!');
            return false;
        }
        return  true;
    }
}
