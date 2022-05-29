<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Statistical;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class StatisticalController extends Controller
{
    public function filter(Request $request){
        $data=$request->all();
        $from_date=$data['from_date'];
        $to_date=$data['to_date'];
        $get = Statistical::whereBetween('date',[$from_date,$to_date])->orderBy('date','asc')->get();
        $chart_data=[];
        foreach ($get as $key => $val){
            $chart_data[] = array(
                'period'=> $val->date,
                'order'=> $val->order_total,
                'sales'=> $val->sales,
                'profit'=> $val->profit,
                'quantity'=> $val->quantity,
            );
        }
        echo json_encode($chart_data);
    }
    public function filter_by(Request $request){
        $data = $request->all();
        $days_ago15 = Carbon::now()->subDays(15)->toDateString();
        $days_ago7 = Carbon::now()->subDays(7)->toDateString();
        $early_lastm = Carbon::now()->subMonth()->startOfMonth()->toDateString();
        $end_lastm = Carbon::now()->subMonth()->endOfMonth()->toDateString();
        $early_thism = Carbon::now()->startOfMonth()->toDateString();
        $oneyear = Carbon::now()->subDays(365)->toDateString();
        $now = Carbon::now()->toDateString();
        if($data['filter_by'] == 1){
            $get = Statistical::whereBetween('date',[$days_ago7,$now])->orderBy('date','asc')->get();
        }elseif ($data['filter_by'] == 2){
            $get = Statistical::whereBetween('date',[$early_lastm,$end_lastm])->orderBy('date','asc')->get();
        }elseif ($data['filter_by'] == 3){
            $get = Statistical::whereBetween('date',[$early_thism,$now])->orderBy('date','asc')->get();
        }elseif ($data['filter_by'] == 4){
            $get = Statistical::whereBetween('date',[$oneyear,$now])->orderBy('date','asc')->get();
        }else{
            $get = Statistical::whereBetween('date',[$days_ago15,$now])->orderBy('date','asc')->get();
        }
        $chart_data=[];
        foreach ($get as $key => $val){
            $chart_data[] = array(
                'period'=> $val->date,
                'order'=> $val->order_total,
                'sales'=> $val->sales,
                'profit'=> $val->profit,
                'quantity'=> $val->quantity,
            );
        }
        echo json_encode($chart_data);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subdate = Carbon::now()->subdays(60)->toDateString();
        $day = Carbon::now()->toDateString();
        $get = Statistical::whereBetween('date',[$subdate,$day])->orderBy('date','asc')->get();
        $chart_data=[];
        foreach ($get as $key => $val){
            $chart_data[] = array(
                'period'=> $val->date,
                'order'=> $val->order_total,
                'sales'=> $val->sales,
                'profit'=> $val->profit,
                'quantity'=> $val->quantity,
            );
        }
        echo json_encode($chart_data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Statistical  $statistical
     * @return \Illuminate\Http\Response
     */
    public function show(Statistical $statistical)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Statistical  $statistical
     * @return \Illuminate\Http\Response
     */
    public function edit(Statistical $statistical)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Statistical  $statistical
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Statistical $statistical)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Statistical  $statistical
     * @return \Illuminate\Http\Response
     */
    public function destroy(Statistical $statistical)
    {
        //
    }
}
