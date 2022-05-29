@extends('admin.main')

@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">List Of Sliders</h3>
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
                            <a href="/admin/sliders/add" style="margin-right: 0px" type="button" class="btn btn-outline-success btn-sm"><i class="fas fa-plus"> </i> Create</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <br class="offset-sm">
        <div class="table-responsive">
            <table class="table table-bordered table-hover" id="dtBasicExample">
            <thead >
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Title</th>
                <th scope="col">Image</th>
                <th class="text-center" scope="col">Sort</th>
                <th class="text-center" scope="col">Active</th>
                <th scope="col">Update</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($sliders as $key =>$slider)
                <tr>
                    <td class="align-middle">{{$slider->id}}</td>
                    <td class="align-middle">{{$slider->name}}</td>
                    <td class="align-middle" style="width: 100px"><a href="{{$slider->thumb}}"><img  style="height: 50px" src="{{$slider->thumb}}"></a></td>
                    <td class="align-middle text-center ">{{$slider->sort_by}}</td>
                    <td class="align-middle text-center">{!! \App\Helpers\Helper::active($slider->active) !!}</td>
                    <td class="align-middle">{{$slider->updated_at}}</td>
                    <td class="align-middle">
                        <a style="width: 25px;" class="btn btn-outline-info btn-xs" href="/admin/sliders/edit/{{$slider->id}}"><i class="fas fa-edit"></i></a>
                        <a style="width: 25px;"class="btn btn-outline-danger btn-xs" href="#"
                           onclick="removeRow({{$slider->id}},'/admin/sliders/destroy')"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        </div>
    </div>
    {!! $sliders->appends(request()->all())->links() !!}
@endsection

