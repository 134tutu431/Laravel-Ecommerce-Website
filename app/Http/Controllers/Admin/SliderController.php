<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Service\Slider\SliderService;
use App\Models\Product;
use App\Models\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    protected $sliderService;

    /**
     * @param SliderService $sliderService
     */
    public function __construct(SliderService $sliderService)
    {
        $this->sliderService = $sliderService;
    }

    public function add(){
        return view('admin.slider.add',[
            'title'=>'Add Slider - Unistore'
        ]);
    }
    public function store(Request $request){

        $this->validate($request,[
            'name'=>'required',
            'file_sc'=>'required'
        ]);
        $this->sliderService->create($request);
        return redirect()->back();
    }
    public function index()
    {
        return view('admin.slider.list_slider',[
            'title'=>'List of Sliders - Unistore',
            'sliders' => $this->sliderService->getAllSlider()
        ]);
    }
    public function show(Slider $slider)
    {
        return view('admin.slider.edit',[
            'title'=>'Edit the slider - Unistore'.$slider->name,
            'slider' => $slider
        ]);
    }
    public function update(Request $request, Slider $slider)
    {
        $result=$this->sliderService->update($request,$slider);
        if($result){
            return redirect('/admin/sliders/list');
        }else{
            return redirect()->back();
        }
    }
    public function destroy(Request $request)
    {
        $result = $this->sliderService->delete($request);
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this slider successfully !!!'
            ]);
        }
        return response()->json(['error'=>true]);
    }
    public function search(Request $request)
    {

        return view('admin.article.list_article',[
            'title'=>'List Category - Unistore',
            'list_articles' => $this->sliderService->search($request),
            'search'=> $request->input('search')
        ]);
    }
}
