<?php

namespace App\Http\Controllers;

use App\Http\Service\Article\ArticleService;
use App\Models\Article;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    protected $articleService;

    /**
     * @param $articleService
     */
    public function __construct(ArticleService $articleService)
    {
        $this->articleService = $articleService;
    }
    public function index(){
        return view('user.blog.index',[
            'title'=>'Blog - Unistore',
            'articles'=>$this->articleService->getArticleBlog()
        ]);
    }
    public function show(Article $article){
        $article->views = $article->views + 1;
        $article->save();
        return view('user.blog.detail',[
            'title'=>'Blog - Unistore',
            'article'=>$article
        ]);
    }
}
