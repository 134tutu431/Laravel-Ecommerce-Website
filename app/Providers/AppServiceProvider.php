<?php

namespace App\Providers;

use App\Models\Visitor;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Blade;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('*',function ($view){
            $visitor = Visitor::where('ip',Request::ip())->first();
            if($visitor){
            }else{
                Visitor::create([
                    'ip'=>Request::ip(),
                    'date'=>Carbon::now()->toDateString()
                ]);
            }
        });
    }
}
