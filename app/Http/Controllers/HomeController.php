<?php

namespace App\Http\Controllers;

use App\Http\Service\Article\ArticleService;
use App\Http\Service\Product\ProductService;
use App\Http\Service\Slider\SliderService;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    protected $sliderService;
    protected $productService;
    protected $articleService;
    /**
     * @param $slider
     */
    public function __construct(SliderService $sliderService,ProductService $productService,ArticleService $articleService)
    {
        $this->sliderService = $sliderService;
        $this->productService = $productService;
        $this->articleService = $articleService;
    }

    public function index(){
        return view('user.main',[
            'title' =>'Unistore',
            'sliders'=>$this->sliderService->getSliderMain(),
            'new_products'=>$this->productService->getNewProduct(),
            'recommend_products'=>$this->productService->getReProduct(),
            'new_articles'=>$this->articleService->getArticleHome()
        ]);
    }
    public function contact(){
        return view('user.contacts.index',[
            'title' =>'Contacts - Unistore',
        ]);
    }
    public function faq(){
        return view('user.faq.index',[
            'title' =>'FAQ - Unistore',
        ]);
    }

}
