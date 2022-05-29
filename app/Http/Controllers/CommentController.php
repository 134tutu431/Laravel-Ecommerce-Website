<?php

namespace App\Http\Controllers;

use App\Http\Service\Comment\CommentService;
use App\Models\Comment;
use App\Models\DiscountCode;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CommentController extends Controller
{
    protected $commentService;
    public function __construct(CommentService $commentService)
    {
        $this->commentService=$commentService;
    }

    public function autoload_comment(Request $request){
        $data= $request->all();
        $product_id = $data['product_id'];
        $comments = Comment::where('product_id',$product_id)->where('parent_id',null)->where('status',1)->orderByDesc('id')->get();
        $replies= Comment::where('product_id',$product_id)->where('parent_id','!=',null)->where('status',1)->orderByDesc('id')->get();
        $output='';
        foreach ($comments as $key => $comment){
            $output .='
                <h3>'.$comment->name.'</h3>
                <label>'.$comment->created_at.'</label>
                <p>'.$comment->content.'
                </p>';

                foreach ($replies as $reply){
                    if($reply->parent_id==$comment->id){
                        $output .= '<div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-11 bg-info ">
                        <h4>'.$reply->name.'</h4>
                           <label style="">'.$reply->created_at.'</label>
                           <p>
                           '.$reply->content.'
                        </p>
                    </div>
                </div>';
                    }
                }
        }
        echo $output;
    }
    public function send_comment(Request $request){
        $data= $request->all();
        $product_id = $data['product_id'];
        $name = $data['name'];
        $content = $data['content'];
        Comment::create([
            'name'=>$name,
            'content'=>$content,
            'product_id'=>$product_id,
            'status'=> 0
        ]);
    }
    public function index(){
        return view('admin.comment.list_comment',[
            'title'=>'List of Comment - Unistore',
            'parent_comments'=>$this->commentService->get(),
            'replies'=>$this->commentService->getReply()
        ]);
    }
    public function approve_comment(Request $request){
        $data=$request->all();
        $comment = Comment::where('id',$data['comment_id'])->where('product_id',$data['product_id'])->first();
        $comment->status = (string) $data['comment_status'];
        $comment->save();
    }
    public function reply_comment(Request $request){
        $data=$request->all();
        $comment = Comment::where('id',$data['comment_id'])->where('product_id',$data['product_id'])->first();
        $comment->reply_status = 1;
        $comment->save();
        Comment::create([
            'name'=>(string)$data['name'],
            'content'=>(string)$data['content'],
            'comment_id'=>(string)$data['comment_id'],
            'product_id'=>(string)$data['product_id'],
            'status'=>(string)1,
            'parent_id'=>(string)$data['comment_id']
        ]);
    }
    public function search(Request $request){
        $comments = Comment::with('product')->where('parent_id',null)->where('name','like','%'.$request->input('search').'%')->orderBy('status', 'asc')->orderByDesc('id')->paginate(5);
        return view('admin.comment.list_comment',[
            'title'=>'List Customers - Unistore',
            'parent_comments'=>$comments,
            'replies'=>$this->commentService->getReply()
        ]);
    }
    public function destroy(Request $request)
    {
        $comment=Comment::where('id',$request->input('id'))->first();
        if($comment){
            $result=$comment->delete();
        }
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this customer successfully !!!'
            ]);
        }
        return response()->json(['error'=>true]);
    }
}
