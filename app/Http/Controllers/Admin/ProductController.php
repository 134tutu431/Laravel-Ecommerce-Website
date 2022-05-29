<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Product\ProductRequest;
use App\Http\Service\Category\CategoryService;
use App\Http\Service\Product\ProductService;
use App\Models\Product;
use Faker\Core\File;
use App\Models\ProductImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    protected $productService;
    public function __construct(ProductService $productService)
    {
        $this->productService = $productService;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.product.list_product',[
            'title'=>'List of Products - Unistore',
            'products' => $this->productService->getAllProducts()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
//        dd($request->input());
        $this->validate($request,[
            'name' => 'unique:products,name'
        ]);
        $this->productService->create($request);
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return view('admin.product.edit',[
            'title'=>'Edit the product - Unistore'.$product->name,
            'list_category' => $this->productService->getAllCategory(),
            'product' => $product,
            'list_manufacturer' => $this->productService->getManufacturer(),
            'images'=> $this->productService->getImages($product->id)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, Product $product)
    {
        $result=$this->productService->update($request,$product);
        if($result){
            return redirect('/admin/products/list');
        }else{
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $result = $this->productService->delete($request);
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this product successfully !!!'
            ]);
        }
        return response()->json(['error'=>true]);
    }
    public function add(){
        return view('admin.product.add',[
            'title'=>'Add Product - Unistore',
            'list_category' => $this->productService->getAllCategory(),
            'list_manufacturer' => $this->productService->getManufacturer()
        ]);
    }
    public function search(Request $request)
    {
        return view('admin.product.list_product',[
            'title'=>'List Category - Unistore',
            'products' => $this->productService->search($request),
            'search'=> $request->input('search')
        ]);
    }
    public function delImage($id){
        $productImages=ProductImage::where('id',$id)->first();
        $path=explode('/',$productImages->thumb);
        Storage::delete('public/'.$path[2].'/'.$path[3].'/'.$path[4].'/'.$path[5]);
        $productImages->delete();
        return redirect()->back();
    }
}
