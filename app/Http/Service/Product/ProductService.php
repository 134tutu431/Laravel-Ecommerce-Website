<?php

namespace App\Http\Service\Product;

use App\Models\Category;
use App\Models\Manufacturer;
use App\Models\Product;
use App\Models\ProductImage;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;
use Symfony\Component\Console\Input\Input;

class ProductService
{
    public function search($request){
        return Product::where('name','like','%'.$request->input('search').'%');
    }

    public function getAllCategory()
    {
        return Category::all();
    }
    public function getManufacturer(){
        return Manufacturer::where('active',1)->get();
    }
    public function getImages($id)
    {
        return ProductImage::where('product_id',$id)->get();
    }
    public function getAllProducts(){
        return Product::with('category')->search()->with('manufacturer')
            ->orderByDesc('id')->paginate(8);
    }

    protected function isValidPrice($request)
    {
        if($request->input('price')!=0 &&$request->input('price_sale')!=0 &&
            $request->input('price')<=$request->input('price_sale'))
        {
            Session::flash('error','The reduced product price cannot be greater than the original price !!!');
            return false;
        }
        if($request->input('price')==0 &&$request->input('price_sale')!=0)
        {
            Session::flash('error','The price must be greater than 0 !!!');
            return false;
        }
    }
    public function create($request)
    {
        $isValidPrice = $this->isValidPrice($request);
        if($isValidPrice === false)
        {
            return false;
        }
        try {
            $status=Product::create([
                'name'=>(string) $request->input('name'),
                'category_id'=>(string) $request->input('category_id'),
                'manufacturer_id'=>(string) $request->input('manufacturer_id'),
                'price'=>(string) $request->input('price_sale'),
                'price_sale'=>(string) $request->input('price'),
                'quantity'=>(string) $request->input('quantity'),
                'description'=>(string) $request->input('description'),
                'content'=>(string) $request->input('content'),
                'specification'=>(string) $request->input('specification'),
                'thumb'=>(string) $request->input('file_sc'),
                'slug'=>Str::slug($request->input('name'),'-'),
                'active'=>(string) $request->input('active')
            ]);
            if($status){
                $product = Product::where('name',(string)$request->input('name'))->first();
                $id = $product->id;
                if($request->hasFile('fProductDetail')){
                    foreach ($request->file('fProductDetail') as $file){
                        if(isset($file)){
                            $name = $file->getClientOriginalName();
                            $path = '/storage/uploads/images/'.date("Y-m-d").'/'.$name;
                            $file->storeAs('public/uploads/images/'.date("Y-m-d"),$name);
                            ProductImage::create([
                                'thumb'=> (string) $path,
                                'product_id'=>(string) $id
                            ]);
                        }
                    }
                }
            }
            Session::flash('success','Add Product successful !!!');
        }catch (\Exception $err){
            Session::flash('error','An error occurred, please try again !!!');
            Log::info($err->getMessage());
            return false;
        }
        return true;
    }
    public function update($request,$product)
    {
        $isValidPrice = $this->isValidPrice($request);
        if($isValidPrice === false)
        {
            return false;
        }
        try {

            $product->name=(string) $request->input('name');
            $product->category_id=(string) $request->input('category_id');
            $product->manufacturer_id=(string) $request->input('manufacturer_id');
            $product->price=(string) $request->input('price_sale');
            $product->price_sale=(string) $request->input('price');
            $product->quantity=(string) $request->input('quantity');
            $product->specification=(string) $request->input('specification');
            $product->description=(string) $request->input('description');
            $product->content=(string) $request->input('content');
            $product->thumb=(string) $request->input('file_sc');
            $product->slug=Str::slug($request->input('name'),'-');
            $product->active=(string) $request->input('active');
            if($request->hasFile('fProductDetail')){
                foreach ($request->file('fProductDetail') as $file){
                    if(isset($file)){
                        $name = $file->getClientOriginalName();
                        $path = '/storage/uploads/images/'.date("Y-m-d").'/'.$name;
                        $file->storeAs('public/uploads/images/'.date("Y-m-d"),$name);
                        ProductImage::create([
                            'thumb'=> (string) $path,
                            'product_id'=>(string) $product->id
                        ]);
                    }
                }
            }
            $product->save();
            Session::flash('success','Update Product successful !!!');
        }catch (\Exception $err ){
            Session::flash('error','An error occurred, please try again !!!');
            Log::info($err->getMessage());
            return false;
        }
        return true;
    }
    public function delete($request)
    {
        $product=Product::where('id',$request->input('id'))->first();
        if($product){
            $product->delete();
            return true;
        }
        return false;
    }
    public function getNewProduct(){
        return Product::with('category')->with('manufacturer')->where('active',1)
            ->orderByDesc('id')->limit(3)->get();
    }
    public function getReProduct(){
        return Product::with('category')->with('manufacturer')->where('active',1)->inRandomOrder()->limit(4)->get();
    }
    public function getProductByCategoryId($request){
        if (request()->get('sort')=='priceasc'){
            return Product::whereIn('category_id',$request->input('category'))->where('active',1)->with('category')->with('manufacturer')
                ->orderBy('price','asc')->paginate(9);
        }
        if (request()->get('sort')=='pricedesc'){
            return Product::whereIn('category_id',$request->input('category'))->where('active',1)->with('category')->with('manufacturer')
                ->orderBy('price','desc')->paginate(9);
        }
        if (request()->get('sort')=='nameasc'){
            return Product::whereIn('category_id',$request->input('category'))->where('active',1)->with('category')->with('manufacturer')
                ->orderBy('name','asc')->paginate(9);
        }
        if (request()->get('sort')=='namedesc'){
            return Product::whereIn('category_id',$request->input('category'))->where('active',1)->with('category')->with('manufacturer')
                ->orderBy('name','desc')->paginate(9);
        }
        return Product::whereIn('category_id',$request->input('category'))->with('category')->with('manufacturer')
            ->orderByDesc('id')->paginate(9);
    }
    public function getProductByManuId($request){
        if (request()->get('sort')=='priceasc'){
            return Product::whereIn('manufacturer_id',$request->input('manufacturer'))->where('active',1)->with('category')->with('manufacturer')
                ->orderBy('price','asc')->paginate(9);
        }
        if (request()->get('sort')=='pricedesc'){
            return Product::whereIn('manufacturer_id',$request->input('manufacturer'))->where('active',1)->with('category')->with('manufacturer')
                ->orderBy('price','desc')->paginate(9);
        }
        if (request()->get('sort')=='nameasc'){
            return Product::whereIn('manufacturer_id',$request->input('manufacturer'))->where('active',1)->with('category')->with('manufacturer')
                ->orderBy('name','asc')->paginate(9);
        }
        if (request()->get('sort')=='namedesc'){
            return Product::whereIn('manufacturer_id',$request->input('manufacturer'))->where('active',1)->with('category')->with('manufacturer')
                ->orderBy('name','desc')->paginate(9);
        }
        return Product::whereIn('manufacturer_id',$request->input('manufacturer'))->where('active',1)->with('category')->with('manufacturer')
            ->orderByDesc('id')->paginate(9);
    }
    public function getAllProductsCatalog(){
        if (request()->get('sort')=='priceasc'){
            return Product::where('active',1)->with('category')->with('manufacturer')
                ->orderBy('price','asc')->paginate(9);
        }
        if (request()->get('sort')=='pricedesc'){
            return Product::where('active',1)->with('category')->with('manufacturer')
                ->orderBy('price','desc')->paginate(9);
        }
        if (request()->get('sort')=='nameasc'){
            return Product::where('active',1)->with('category')->with('manufacturer')
                ->orderBy('name','asc')->paginate(9);
        }
        if (request()->get('sort')=='namedesc'){
            return Product::where('active',1)->with('category')->with('manufacturer')
                ->orderBy('name','desc')->paginate(9);
        }
        return Product::where('active',1)->where('active',1)->with('category')->with('manufacturer')
            ->inRandomOrder()->paginate(9);
    }
    public function searchByPrice($request){
        if (request()->get('sort')=='priceasc'){
            return Product::whereBetween('price',[$request->input('rangeMin'), $request->input('rangeMax')])->orderBy('price','asc')->paginate(9);
        }
        if (request()->get('sort')=='pricedesc'){
            return Product::whereBetween('price',[$request->input('rangeMin'), $request->input('rangeMax')])->orderBy('price','desc')->paginate(9);
        }
        if (request()->get('sort')=='nameasc'){
            return Product::whereBetween('price',[$request->input('rangeMin'), $request->input('rangeMax')])->orderBy('name','asc')->paginate(9);
        }
        if (request()->get('sort')=='namedesc'){
            return Product::whereBetween('price',[$request->input('rangeMin'), $request->input('rangeMax')])->orderBy('name','desc')->paginate(9);
        }
        return Product::whereBetween('price',[$request->input('rangeMin'), $request->input('rangeMax')])->paginate(9);
    }
    public function searchByName($request){
        if (request()->get('sort')=='priceasc'){
            return Product::where('name','like','%'.$request->input('key').'%')->orderBy('price','asc')->paginate(9);
        }
        if (request()->get('sort')=='pricedesc'){
            return Product::where('name','like','%'.$request->input('key').'%')->orderBy('price','desc')->paginate(9);
        }
        if (request()->get('sort')=='nameasc'){
            return Product::where('name','like','%'.$request->input('key').'%')->orderBy('name','asc')->paginate(9);
        }
        if (request()->get('sort')=='namedesc'){
            return Product::where('name','like','%'.$request->input('key').'%')->orderBy('name','desc')->paginate(9);
        }
        return Product::where('name','like','%'.$request->input('key').'%')->paginate(9);
    }
}
