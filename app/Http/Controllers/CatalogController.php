<?php

namespace App\Http\Controllers;

use App\Http\Service\Category\CategoryService;
use App\Http\Service\Product\ProductService;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CatalogController extends Controller
{
    protected $productService;
    protected $categoryService;
    public function __construct(ProductService $productService,CategoryService $categoryService)
    {
        $this->productService = $productService;
        $this->categoryService = $categoryService;
    }
    public function index(Request $request){
        $key='';
        $count='';
        $rangeMin ='';
        $rangeMax='';
        if($request->input('rangeMin')){
            $rangeMin = $request->input('rangeMin');
            $rangeMax = $request->input('rangeMax');
            $products = $this->productService->searchByPrice($request);;;
        }
        else if($request->input('key')){
            $products = $this->productService->searchByName($request);;
            $key =$request->input('key');
            $count = count(Product::where('name','like','%'.$request->input('key').'%')->get());
        }
        else if($request->input('category')) {
            $products = $this->productService->getProductByCategoryId($request);
        }
        else if($request->input('manufacturer')){
            $products = $this->productService->getProductByManuId($request);
        }else{
            $products=$this->productService->getAllProductsCatalog();
        }
        return view('user.catalog.index',[
            'title'=>'Catalog - Unistore',
            'products'=>$products,
            'key'=>$key,
            'rangeMin'=>$rangeMin,
            'rangeMax'=>$rangeMax,
            'count'=>$count,
            'categories'=>$this->categoryService->getAllCategoryCatalog(),
            'manufacturers'=>$this->productService->getManufacturer(),
        ]);
    }
    public function show(Product $product){
        $product->views = $product->views+1;
        $product->save();
        return view('user.catalog.detail',[
            'title'=>$product->name.' - Unistore',
            'product'=>$product,
            'images'=> $this->productService->getImages($product->id),
            're_product'=>$this->productService->getReProduct()
        ]);
    }
    public function show_modal_cart(){
        $output ='<div class="title">
            <button type="button" class="close"><i class="ion-android-close"></i></button>
            <h1 class="h3 info">Shopping cart</h1>
        </div>
        <div class="content">';
        $i=1;
        foreach (Cart::content() as $key => $content ){
            $output .= '<div class="media">
                <div class="media-left">
                    <a>
                        <img class="media-object" src="'.$content->options->image.'" alt="HP Chromebook 11"/>
                    </a>
                </div>
                <div class="media-body">
                    <div class="row">
                        <div class="col-md-7">
                            <h2 class="h4 media-heading">'.$content->name.'</h2>
                            <label>'.$content->options->type.'</label> <br>
                        </div>
                        <div class="col-md-4">
                            <p class="price">Price: $'.$content->price.'</p>
                            <p> Quantity : '.$content->qty.'</p>
                            <form>
                            <input type="hidden" name="_token" value="'.csrf_token().'">
                            <input type="hidden" class="rowNumber'.$i.'" value="'.$content->rowId.'">
                            </form>
                            <a  href="#remove" onclick="removeItem('.$i.')" style="cursor: pointer" data-row="'.$content->rowId.'"> <i class="ion-trash-b "></i> Remove </a>
                        </div>
                    </div>

                </div>
            </div>';
            $i++;
        }
        $output.='
            </div>
            <div class="checkout container-fluid">
                <div class="row">
                    <div class="col-xs-3 col-sm-2">
                        <div>
                            <p>Subtotal:</p>
                            <h3 class="h4">Total:</h3>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-4">
                        <div class="total">
                            <p>$'.Cart::priceTotal().'</p>
                            <h3 class="h4">$'.Cart::total().'</h3>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6">
                        <a class="btn btn-primary" href="../checkout/"> Checkout order </a>
                    </div>
                </div>
            </div>
        ';
            echo $output;
    }
    public function count_cart(){
        $count = count(Cart::content());
        echo $count;
    }
    public function sort(Request $request){
        $data= $request->all();
        $products = Product::with('category')->with('manufacturer')
            ->orderBy('price',$data['sort_status'])->paginate(9);
        $ouput ='';
        $ouput.='<div class="col-sm-9 products" >
                <div class="row" id="products">';
        foreach ($products as $product){
            $ouput.='<div class="col-sm-6 col-md-4 product">
                            <a href="#favorites" class="favorites" data-favorite="inactive"><i class="ion-ios-heart-outline"></i></a>
                            <a href="/catalog/'.$product->id.'-'.$product->slug.'"><img src="'.$product->thumb.'"></a>
                            <div class="content">
                            <form>
                            <input type="hidden" name="_token" value="'.csrf_token().'">

                                    <input class="cart_product_type_'.$product->id.'" type="hidden" value="'.$product->category->name.'">
                                    <input class="cart_product_id_'.$product->id.'" type="hidden" value="'.$product->id.'">
                                    <input class="cart_product_name_'.$product->id.'" type="hidden" value="'.$product->name.'">
                                    <input class="cart_product_price_'.$product->id.'" type="hidden" value="'.$product->price.'">
                                    <input class="cart_product_image_'.$product->id.'" type="hidden" value="'.$product->thumb.'">
                                    <input class="cart_product_quantity_'.$product->id.'" type="hidden" value="1">
                                    <h1 class="h4">'.$product->name.'</h1>
                                    <p class="sale">$'.$product->price.'</p>
                                    <p class="price through">$'.$product->price_sale.'</p>
                                    <label>'.$product->category->name.'</label>
                                </form>
                                <a href="/catalog/'.$product->id.'-'.$product->slug.'" class="btn btn-link"> Details</a>
                                <button  class="btn btn-primary btn-rounded btn-sm add-to-cart" data-id_product="'.$product->id.'"> <i class="ion-bag"></i> Add to cart</button>
                            </div>
                        </div>';
        }
        $ouput.='</div>'
                .$products->links().'
            </div>';
        echo $ouput;
    }
    public function delete(Request $request)
    {
        $data = $request->all();
        Cart::update($data['row'],0);
    }
}
