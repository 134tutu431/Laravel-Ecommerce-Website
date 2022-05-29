@extends('admin.main')

@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">List Of Customers</h3>
        </div>
        <br class="offset-sm">
        <div class="container-fluid">
            <form action="" >
                <div class="row">
                    <div class="col-md-4 col-4">
                        <input value="@if(isset($_GET['search'])){{$_GET['search']}}@endif" name="search" class="form-control form-control-sm " placeholder="Search by name" type="text">
                    </div>
                    <div class="col-md-4 col-4">
                        <button type="submit" class="btn btn-outline-info btn-sm"><i class="fas fa-search"></i> Search</button>
                    </div>
                    <div class="col-md-4 col-4">
                        <div class="text-right">
                            <a href="/admin/customers/add" style="margin-right: 0px" type="button" class="btn btn-outline-success btn-sm "><i class="fas fa-plus"> </i> Create</a>
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
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Active Date</th>
                    <th class="text-center" scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($customers as $key =>$customer)
                    <tr>
                        <td class="align-middle">{{$customer->id}}</td>
                        <td class="align-middle">{{$customer->name}}</td>
                        <td class="align-middle">{{$customer->email==null?'Login with Facebook':$customer->email}}</td>
                        <td class="align-middle">{{$customer->created_at}}</td>
                        <td class="align-middle text-center">
                            <a style="width: 25px;" class="btn btn-outline-info btn-xs" href="/admin/customers/edit/{{$customer->id}}"><i class="fas fa-edit"></i></a>
                            <a style="width: 25px;" class="btn btn-outline-danger btn-xs" href="#"
                               onclick="removeRow({{$customer->id}},'/admin/customers/destroy')"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {!! $customers->appends(request()->all())->links() !!}
@endsection

