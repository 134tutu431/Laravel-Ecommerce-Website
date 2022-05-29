<?php

namespace App\Http\Service;

class UploadService
{
    public function store($request)
    {
        if ($request->hasFile('file'))
        {
            try {
                $name = $request->file('file')->getClientOriginalName();
                $pathFull ='uploads/products/'.date("Y-m-d");
                $path = $request->file('file')->storeAs(
                    'public/'.$pathFull,$name);
                return '/storage/'.$pathFull.'/'.$name;
            }catch (\Exception $error){
                return false;
            }

        }
    }
    public function storeImages($request){
        if ($request->hasFile('fProductDetail'))
        {
            try {
                $name = $request->file('fProductDetail')->getClientOriginalName();
                $pathFull ='uploads/images/'.date("Y-m-d");
                $path = $request->file('fProductDetail')->storeAs(
                    'public/'.$pathFull,$name);
                return '/storage/'.$pathFull.'/'.$name;
            }catch (\Exception $error){
                return false;
            }
        }
    }
}
