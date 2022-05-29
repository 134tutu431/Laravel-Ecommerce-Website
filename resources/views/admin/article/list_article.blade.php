@extends('admin.main')

@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">List Of Articles</h3>

        </div>
        <br class="offset-sm">
        <div class="container-fluid">
            <form action="">
                <div class="row">
                    <div class="col-md-4 col-4">
                        <input value="@if(isset($_GET['search'])){{$_GET['search']}}@endif" name="search" class="form-control form-control-sm " placeholder="Search by title" type="text">
                    </div>
                    <div class="col-md-4 col-4">
                        <button type="submit" class="btn btn-outline-info btn-sm"><i class="fas fa-search"></i> Search</button>
                    </div>
                    <div class="col-md-4 col-4">
                        <div class="text-right">
                            <a href="/admin/articles/add" style="margin-right: 0px" type="button" class="btn btn-outline-success btn-sm"><i class="fas fa-plus"> </i> Create</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <br class="offset-sm">
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-sm" id="dtBasicExample">
                <thead >
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Title</th>
                    <th class="text-center"  scope="col">Image</th>
                    <th class="text-center" scope="col">Views</th>
                    <th class="text-center" scope="col">Active</th>
                    <th scope="col">Update</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($list_articles as $key =>$article)
                    <tr>
                        <td class="align-middle">{{$article->id}}</td>
                        <td class="align-middle">{{$article->name}}</td>
                        <td class="align-middle text-center" style="width: 100px"><a href="{{$article->thumb}}"><img  style="height: 50px" src="{{$article->thumb}}"></a></td>
                        <td class="text-center align-middle">{{$article->views}}</td>
                        <td class="text-center align-middle">{!! \App\Helpers\Helper::active($article->active) !!}</td>
                        <td class="align-middle">{{$article->updated_at}}</td>
                        <td class="align-middle">
                            <a style="width: 25px;" class="btn btn-outline-info btn-xs" href="/admin/articles/edit/{{$article->id}}"><i class="fas fa-edit"></i></a>
                            <a  style="width: 25px;" class="btn btn-outline-danger text-center btn-xs" href="#"
                                onclick="removeRow({{$article->id}},'/admin/articles/destroy')"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {!! $list_articles->appends(request()->all())->links() !!}
@endsection

