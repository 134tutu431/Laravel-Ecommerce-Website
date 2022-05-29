<?php

namespace App\Http\Service\Comment;

use App\Models\Comment;

class CommentService
{
    public function get(){
        return Comment::with('product')->search()->where('parent_id',null)->orderBy('status', 'asc')->orderByDesc('id')->paginate(5);
    }
    public function getReply(){
        return Comment::with('product')->where('parent_id','!=',null)->get();
    }
    public function delete($request)
    {
        $comment=Comment::where('id',$request->input('id'))->first();
        if($comment){
            $comment->delete();
            return true;
        }
        return false;
    }
}
