<?php

namespace App\Http\Service\Article;

use App\Models\Article;
use App\Models\Slider;
use http\Env\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ArticleService
{
    public function get(){
        return Article::orderbyDesc('id')->search()->paginate(5);
    }
    public function getArticleBlog(){
        return Article::orderbyDesc('id')->paginate(4);
    }
    public function getArticleHome(){
        return Article::orderbyDesc('id')->limit(2)->get();
    }
    public function search($request){
        return Article::where('name','like','%'.$request->input('search').'%');
    }
    public function create($request)
    {
        try {
            Article::create([
                'name'=>(string) $request->input('name'),
                'description'=>(string) $request->input('description'),
                'content'=>(string) $request->input('content'),
                'thumb'=>(string) $request->input('file_sc'),
                'slug'=>Str::slug($request->input('name'),'-'),
                'active'=>(string) $request->input('active')
            ]);
            Session::flash('success','Add category successful !!!');
            return true;
        }catch (\Exception $exception){
            Session::flash('error','An error occurred, please try again !!!');
            return false;
        }
        return true;
    }
    public function update($request,$article){
        try {
            $article->name=(string) $request->input('name');
            $article->description=(string) $request->input('description');
            $article->content=(string) $request->input('content');
            $article->thumb=(string) $request->input('file_sc');
            $article->slug=Str::slug($request->input('name'),'-');
            $article->active=(string) $request->input('active');
            $article->save();
            Session::flash('success','Update Article successful !!!');
        }catch (\Exception $err ){
            Session::flash('error','An error occurred, please try again !!!');
            Log::info($err->getMessage());
            return false;
        }
        return true;
    }
    public function delete($request)
    {
        $article=Article::where('id',$request->input('id'))->first();
        if($article){
            $article->delete();
            return true;
        }
        return false;
    }

}
