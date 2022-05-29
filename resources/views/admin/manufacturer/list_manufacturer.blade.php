
@extends('admin.main')
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">List Of Manufacturer</h3>
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
                            <a href="/admin/manufacturers/add" style="margin-right: 0px" type="button" class="btn btn-outline-success btn-sm"><i class="fas fa-plus"> </i> Create</a>
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
                    <th scope="col">Name</th>
                    <th scope="col" class="text-center">Logo</th>
                    <th scope="col" class="text-center">Total Product</th>
                    <th class="text-center" scope="col">Acive</th>
                    <th scope="col">Update</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($manufacturers as $key =>$manufacturer)
                    <tr>
                        <td class="align-middle">{{$manufacturer->id}}</td>
                        <td class="align-middle">{{$manufacturer->name}}</td>
                        <td class="align-middle text-center" style="width: 100px"><a href="{{$manufacturer->logo}}"><img  style="height: 50px;width: 50px" src="{{$manufacturer->logo}}"></a></td>
                        <td class="align-middle text-center">{{$manufacturer->product->count()}}</td>
                        <td class="text-center align-middle">{!! \App\Helpers\Helper::active($manufacturer->active) !!}</td>
                        <td class="align-middle">{{$manufacturer->updated_at}}</td>
                        <td class="align-middle">
                            <a style="width: 25px;" class="btn btn-outline-info btn-xs" href="/admin/manufacturers/edit/{{$manufacturer->id}}"><i class="fas fa-edit"></i></a>
                            <a  style="width: 25px;" class="btn btn-outline-danger text-center btn-xs" href="#"
                                onclick="removeRow({{$manufacturer->id}},'/admin/manufacturers/destroy')"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {!! $manufacturers->appends(request()->all())->links() !!}
@endsection

