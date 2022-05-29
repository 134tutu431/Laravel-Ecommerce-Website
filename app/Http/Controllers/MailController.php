<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class MailController extends Controller
{
    public function recover_pass(){
        return view('user.home.recover_pass',[
            'title' => 'Forgot password - Unistore'
        ]);
    }
    public function mail_recover_pass(Request $request){
        $this->validate($request,[
            'email'=>'required|email'
        ]);
        $title_mail='Unistore - Password Recovery ';
        $user=User::where('email',$request->input('email'))->first();
        if (!$user){
            Session::flash('error','Email is not registered for password recovery !!!');
            return redirect()->back();
        }else{
            $remember_token=Str::random();
            $user = User::where('id',$user->id)->first();
            $user->remember_token=$remember_token;
            $user->save();
            $to_email = $request->input('email');
            $link_reset_pass=url('/update-new-pass?email='.$to_email.'&token='.$remember_token);
            $data=[

                'name'=>$title_mail,
                'link_reset_pass'=>$link_reset_pass,
                'email'=>$request->input('email')
            ];
            Mail::send('user.mail.send_mail',['data'=>$data,
                'title'=>'Recovery Password'],function ($message) use ($title_mail,$data){
                $message->to($data['email'])->subject($title_mail);
                $message->from($data['email'],$title_mail);
            });
            Session::flash('success','Password reset successful. Please check your email to set a new password !!!');
            return redirect('/login');
        }
    }
    public function update_new_pass(){
        return view('user.home.new_pass',[
            'title' => 'Recovery password - Unistore'
        ]);
    }
    public function change_pass(Request $request){
        $this->validate($request,[
            'password'=>'required|min:8|max:32',
            'password-confirm'=>'required|same:password'
        ]);
        $token=Str::random();
        $user = User::where('email',$request->input('email'))->where('remember_token',$request->input('token'))->first();
        if($user){
            $user->password = bcrypt($request->input('password'));
            $user->remember_token = $token;
            $user->save();
            Session::flash('success','Password changed successfully, please login again !!!');
            return redirect('/login');
        }else{
            Session::flash('error','The link has expired, please re-enter your email !!!');
            return redirect('/recover-pass');
        }
    }

}
