<?php

namespace App\Http\Service\Category;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class CategoryService
{
    public function search($request){
        return Category::where('name','like','%'.$request->input('search').'%');
    }
    public function getAllCategory(){
        return Category::orderbyDesc('id')->search()->with('product')->paginate(8);
    }
    public function getAllCategoryCatalog(){
        return Category::where('active',1)->get();
    }
    public function create($request)
    {
        try {
            Category::create([
                'name'=>(string) $request->input('name'),
                'description'=>(string) $request->input('description'),
                'content'=>(string) $request->input('content'),
                'slug'=>Str::slug($request->input('name'),'-'),
                'active'=>(string) $request->input('active')
            ]);
            Session::flash('success','Add category successful !!!');
        }catch (\Exception $exception){
            Session::flash('error','Add category failed !!!');
            return false;
        }
        return  true;
    }
    public function remove($request){
        $product = Product::where('category_id',$request->input('id'))->first();
        if(!$product){
            $list = Category::where('id',$request->input('id'))->first();
            if($list){
                $list->delete();
                return true;
            }
        }
        return false;
    }
    public function update($request,$category):bool
    {
        $category->name=(string) $request->input('name');
        $category->description=(string) $request->input('description');
        $category->content=(string) $request->input('content');
        $category->slug=Str::slug($request->input('name'),'-');
        $category->active=(string) $request->input('active');
        $category->save();
        Session::flash('success','Update category successful !!!');
        return true;
    }
}
