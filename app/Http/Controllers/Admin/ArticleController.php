<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Article\ArticleRequest;
use App\Http\Service\Article\ArticleService;
use App\Models\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    protected $articleService;

    public function __construct(ArticleService $articleService)
    {
        $this->articleService = $articleService;
    }

    public function index()
    {
        return view('admin.article.list_article',[
            'title'=>'List Category - Unistore',
            'list_articles' => $this->articleService->get()
        ]);
    }

    public function add()
    {
        return view('admin.article.add',[
            'title'=>'Add Article - Unistore'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ArticleRequest $request)
    {
        $this->validate($request,[
            'name' => 'unique:products,name'
        ]);
        $this->articleService->create($request);
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function search(Request $request)
    {

        return view('admin.article.list_article',[
            'title'=>'List Category - Unistore',
            'list_articles' => $this->articleService->search($request),
            'search'=> $request->input('search')
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
        return view('admin.article.edit',[
            'title'=>'Edit the slider - Unistore'.$article->name,
            'article'=>$article
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Article $article)
    {
        $result=$this->articleService->update($request,$article);
        if($result){
            return redirect('/admin/articles/list');
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
        $result = $this->articleService->delete($request);
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this article successfully !!!'
            ]);
        }
        return response()->json(['error'=>true]);
    }
}
