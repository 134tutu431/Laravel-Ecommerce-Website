<?php

namespace App\Http\Service\Manufacturer;

use App\Models\Manufacturer;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;
use PHPUnit\Exception;

class ManufacturerService
{
    public function create($request){
        try {
            Manufacturer::updateOrCreate([
                'name'=>$request->input('name'),
                'description'=>$request->input('description'),
                'active'=>$request->input('active'),
                'logo'=>$request->input('file_sc'),
                'slug'=>Str::slug($request->input('name'),'-'),
            ]);
            Session::flash('success','Add Product successful !!!');
            return true;
        }catch (Exception $exception){
            Session::flash('error','An error occurred, please try again !!!');
            Log::info($exception->getMessage());
            return false;
        }
        return true;
    }
    public function get(){
        return Manufacturer::orderByDesc('id')->search()->paginate(5);
    }
    public function update($manufacturer,$request)
    {
        $manufacturer->name=(string) $request->input('name');
        $manufacturer->description=(string) $request->input('description');
        $manufacturer->logo=(string) $request->input('file_sc');
        $manufacturer->slug=Str::slug($request->input('name'),'-');
        $manufacturer->active=(string) $request->input('active');
        $manufacturer->save();
        Session::flash('success','Update Manufacturer successful !!!');
        return true;
    }
    public function delete($request)
    {
        $manu = Product::where('manufacturer_id',$request->input('id'))->first();
        if(!$manu){
            $product = Manufacturer::where('id',$request->input('id'))->first();
            if($product){
                $product->delete();
                return true;
            }
        }
        return false;
    }
    public function search($request){
        return Manufacturer::where('name','like','%'.$request->input('search').'%');
    }

}
