<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Service\Customer\CustomerService;
use App\Models\Article;
use App\Models\Comment;
use App\Models\Oder;
use App\Models\Product;
use App\Models\Statistical;
use App\Models\User;
use App\Models\Visitor;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use PHPUnit\Framework\MockObject\Rule\Parameters;
use Rainwater\Active\Active;

class MainController extends Controller
{
    public function index(){
        //Quantity orders profit...
        $now = Carbon::now()->toDateString();
        $new_order = Oder::where('created_at','like','%'.$now.'%')->count();
        $total_profit = Statistical::sum('profit');
        $profit = Statistical::where('date',$now)->sum('profit');
        $percent_profit =number_format($profit/$total_profit*100,2);
        $new_user = User::where('created_at','like','%'.$now.'%')->get()->count();
        $new_comment = Comment::where('parent_id',null)->where('created_at','like','%'.$now.'%')->count();
        //Statistics the number of visitors
        $early_lastm = Carbon::now()->subMonth()->startOfMonth()->toDateString();
        $end_lastm = Carbon::now()->subMonth()->endOfMonth()->toDateString();
        $early_thism = Carbon::now()->startOfMonth()->toDateString();
        $oneyear = Carbon::now()->subDays(365)->toDateString();
        $current_visitor = Active::users()->count()+Active::guests()->count();
        $lastm_visitor = Visitor::whereBetween('date',[$early_lastm,$end_lastm])->get()->count();
        $thism_visitor = Visitor::whereBetween('date',[$early_thism,$now])->get()->count();
        $year = Visitor::whereBetween('date',[$oneyear,$now])->get()->count();
        $visitor = Visitor::all()->count();
        //Quantity statistic
        $order = Oder::all()->count();
        $article = Article::all()->count();
        $product = Product::all()->count();
        $customer = User::where('is_admin',0)->get()->count();
        //Product and Articles by views
        $products = Product::orderByDesc('views')->limit(10)->get();
        $articles = Article::orderByDesc('views')->limit(10)->get();
        return view('admin.home',[
            'title'=>'Admin page - Unistore',
            'current_visitor'=>$current_visitor,
            'lastm_visitor'=>$lastm_visitor,
            'thism_visitor'=>$thism_visitor,
            'year'=>$year,
            'visitor'=>$visitor,
            'order'=>$order,
            'article'=>$article,
            'customer'=>$customer,
            'product'=>$product,
            'products'=>$products,
            'articles'=>$articles,
            'new_order'=>$new_order,
            'percent_profit'=>$percent_profit,
            'new_user' =>$new_user,
            'new_comment'=>$new_comment,
        ]);
    }
}
