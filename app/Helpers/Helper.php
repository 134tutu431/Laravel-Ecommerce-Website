<?php

namespace App\Helpers;

use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

class Helper
{
    public static function list_category($list_category)
    {
        $html='';
        foreach ($list_category as $key => $list){
                $html .='
                <tr>
                    <td class="align-middle">'.$list->id.'</td>
                    <td class="align-middle">'.$list->name.'</td>
                    <td class="align-middle text-center">'.$list->product->count().'</td>
                    <td class="align-middle text-center">'.self::active($list->active).'</td>
                    <td class="align-middle">'.$list->updated_at.'</td>
                    <td class="align-middle">
                        <a style="width: 25px;" class="btn btn-outline-info btn-xs" href="/admin/category/edit/'.$list->id.'"><i class="fas fa-edit"></i></a>
                        <a style="width: 25px;"class="btn btn-outline-danger btn-xs" href="#"
                        onclick="removeRow('.$list->id.',\'/admin/category/remove\')"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
                ';
        }
        return $html;
    }
    public static function active($active=1){
        return $active == 1?'<i style="color: #00bb00" class="fas fa-check"></i>':'<i style="color: grey" class="fas fa-times"></i>';
    }
    public static function someAction($action)
    {
        if($action == Route::current()){
            return 'active';
        }
        return '';
    }
    public static function checkAuth(){
        if(Auth::user()){
            return '
                    <li>
                    <a href="/show-cart">
                    <i class="ion-ios-cart"> </i><span class="count-cart"></span></a>
                    </li>
                    <li>
                    <a href="/history"><i class="ion-ios-bell"></i> Order history </a>
                    </li>
                    <li>
                    <a href="/profile">
                    <i class="ion-android-person"></i> Hello,'.Auth::user()->name.' </a>
                    </li>
                    <li>
                    <a href="/logout"   > Sign out </a>
                    </li>
                    ';
        }
        $aclogin='';
        $acsignup='';
        if(\Illuminate\Support\Facades\Request::path()=='signup'){
            $acsignup='active';
        }
        if(\Illuminate\Support\Facades\Request::path()=='login'){
            $aclogin='active';
        }
        return '
                <li class="'.$aclogin.'"><a href="/login"> <i class="ion-android-person"></i> Login </a></li>
                <li class="'.$acsignup.'"><a href="/signup"> Sign Up</a></li>
                ';
    }
    public static function status($status='Completed'){
        if($status=='Completed'){
           return '<b style="width: 100%" class="btn btn-success btn-xs">Completed</b>';
        }
        if($status=='Canceled'){
            return '<div style="width: 100%" class="btn btn-danger btn-xs">Canceled</div>';
        }
        if($status=='Pending'){
            return '<div style="width: 100%" class="btn btn-secondary btn-xs">Pending</div>';
        }
        if($status=='Payment'){
            return '<div style="width: 100%" class="btn btn-info btn-xs">Payment</div>';
        }
    }
}
