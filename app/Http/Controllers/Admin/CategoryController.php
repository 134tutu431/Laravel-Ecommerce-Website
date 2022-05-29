<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Category\CreateFormRequest;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Service\Category\CategoryService;
class CategoryController extends Controller
{
    protected $categoryService;

    /**
     * @param $categoryService
     */
    public function __construct(CategoryService $categoryService)
    {
        $this->categoryService = $categoryService;
    }

    public function add(){
        return view('admin.category.add',[
            'title'=>'Add Category - Unistore'
        ]);
    }
    public function store(CreateFormRequest $request){
        $this->validate($request,[
            'name' => 'unique:categories,name'
        ]);
        $this->categoryService->create($request);
        return redirect()->back();
    }
    public function index(Request $request){
        $list_category=$this->categoryService->getAllCategory();

        return view('admin.category.list_category',[
            'title'=>'List Category - Unistore',
            'list_category' => $list_category
        ]);
    }
    public function search(Request $request)
    {
        return view('admin.article.list_article',[
            'title'=>'List Category - Unistore',
            'list_articles' => $this->categoryService->search($request),
            'search'=> $request->input('search')
        ]);
    }
    public function remove(Request $request ){
        $result = $this->categoryService->remove($request);
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this category successfully !!!'
            ]);
        }else{
            return response()->json([
                'error'=>true
            ]);
        }
    }
    public function show(Category $category){
        return view('admin.category.edit',[
            'title'=>'Edit the list category - Unistore'.$category->name,
            'category' => $category
        ]);
    }
    public function update(Category $category,CreateFormRequest $request){
        $this->categoryService->update($request,$category);
        return redirect('/admin/category/list');
    }
}
