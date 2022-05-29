@extends('admin.main')

@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">List Of Comments</h3>
        </div>
        <br class="offset-sm">
        <div class="container-fluid">
            <form action="">
                <div class="row">
                    <div class="col-md-4 col-4">
                        <input value="@if(isset($_GET['search'])){{$_GET['search']}}@endif" name="search" class="form-control form-control-sm " placeholder="Search by name" type="text">
                    </div>
                    <div class="col-md-4 col-4">
                        <button type="submit" class="btn btn-outline-info btn-sm"><i class="fas fa-search"></i> Search</button>
                    </div>

                </div>
            </form>
        </div>
        <br class="offset-sm">
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-sm" id="dtBasicExample">
                <thead >
                <tr>
                    <th scope="col">Status</th>
                    <th scope="col">Name</th>
                    <th scope="col">Content</th>
                    <th scope="col">Product</th>
                    <th scope="col">Create</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($parent_comments as $key =>$comment)
                    <tr>
                        <td class="align-middle">
                            @if($comment->status)
                                <button class="btn btn-danger btn-sm btn_approve" data-comment_status="0" data-comment_id="{{$comment->id}}"data-product_id="{{$comment->product->id}}">Unapprove</button>
                            @else
                                <button class="btn btn-success btn-sm btn_approve" data-comment_status="1" data-comment_id="{{$comment->id}}"data-product_id="{{$comment->product->id}}" >Approve</button>
                            @endif
                        </td>
                        <td class="align-middle">{{$comment->name}}</td>
                        <td class="align-middle">{{$comment->content}}<br>
                            @if($comment->parent_id==null&&$comment->reply_status!=null)
                                <b>Reply:</b>
                                @foreach($replies as $key => $reply)
                                    @if($reply->parent_id == $comment->id)
                                        <p>{{$reply->content}}</p>
                                    @endif
                                @endforeach
                            @endif
                            @if($comment->reply_status==null&&$comment->parent_id==null)
                                <b class="text-muted">Haven't replied</b>
                            @endif
                        </td>
                        <td class="align-middle"><a href="/catalog/{{$comment->product->id}}-{{$comment->product->slug}}">{{$comment->product->name}}</a></td>
                        <td class="align-middle">{{$comment->updated_at}}</td>
                        <td class="align-middle text-center">
                            @if($comment->status)
                                <button  style="width: 25px;"  class="btn btn-outline-info btn-xs" data-toggle="modal" data-target="#Modal-Reply-Comment-{{$comment->id}}"><i class="fas fa-reply"></i></button>
                                <a style="width: 25px;" class="btn btn-outline-danger btn-xs" href="#"
                                   onclick="removeRow({{$comment->id}},'/admin/comments/destroy')"><i class="fas fa-trash-alt"></i></a>
                            @else
                                <a style="width: 25px;" class="btn btn-outline-danger btn-xs" href="#"
                                   onclick="removeRow({{$comment->id}},'/admin/comments/destroy')"><i class="fas fa-trash-alt"></i></a>
                            @endif</td>
                        </td>
                    </tr>
                    <div class="modal fade" id="Modal-Reply-Comment-{{$comment->id}}" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header align-center text-center">
                                    <h1 class="h4 modal-title " >Reply comment</h1>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fas fa-times"></i></span></button>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <textarea name="comment" placeholder="Type here" required="" class="form-control content" id="content{{$comment->id}}" rows="5"></textarea>
                                                <br>
                                            </div>
                                            <div class="col-sm-12">
                                                <input type="text" name="name" value="Unistore" placeholder="Name" required="" class="form-control name">
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="align-center text-center">
                                                    <br>
                                                    <button type="submit" class="btn btn-info btn-sm reply" data-comment_id="{{$comment->id}}" data-product_id="{{$comment->product->id}}"> <i class="fas fa-reply"></i> Reply </button>
                                                    <button type="button" class="btn btn-info btn-sm" data-dismiss="modal"><i class="fas fa-share-square"></i> No, thanks </button>
                                                    <br><br>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {!! $parent_comments->appends(request()->all())->links() !!}

@endsection

