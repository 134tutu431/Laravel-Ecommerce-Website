<?php

namespace App\Http\Service\Slider;

use App\Models\Slider;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;

class SliderService
{
    public function create($request)
    {
        try {
            Slider::create([
                'name'=>(string) $request->input('name'),
                'url'=>(string) $request->input('url'),
                'description'=>(string) $request->input('description'),
                'thumb'=>(string) $request->input('file_sc'),
                'sort_by'=>(string) $request->input('sort_by'),
                'active'=>(string) $request->input('active')
                ]);
            Session::flash('success','Add Slider successful !!!');
        }catch (\Exception $err){
            Session::flash('error','Add Slider failed !!!');
            Log::info($err->getMessage());
            return false;
        }
        return true;
    }
    public function getSliderMain(){
        return Slider::where('active',1)->distinct('sort_by')->orderByDesc('id')->orderByDesc('sort_by')->limit(3)->get();
    }
    public function getAllSlider(){
        return Slider::orderByDesc('id')->search()->paginate(5);
    }
    public function update($request,$slider){
        try {
            $slider->name=(string) $request->input('name');
            $slider->url=(string) $request->input('url');
            $slider->description=(string) $request->input('description');
            $slider->sort_by=(string) $request->input('sort_by');
            $slider->thumb=(string) $request->input('file_sc');
            $slider->active=(string) $request->input('active');
            $slider->save();
            Session::flash('success','Update Slider successful !!!');
        }catch (\Exception $err ){
            Session::flash('error','Update Slider failed !!!');
            Log::info($err->getMessage());
            return false;
        }
        return true;
    }
    public function delete($request)
    {
        $slider=Slider::where('id',$request->input('id'))->first();
        if($slider){
            $slider->delete();
            return true;
        }
        return false;
    }
    public function search($request){
        return Slider::where('name','like','%'.$request->input('search').'%');
    }
}
