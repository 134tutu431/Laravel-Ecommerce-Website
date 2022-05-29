@extends('admin.main')

@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">List Of Categories</h3>
        </div>
        <br class="offset-sm">
        <div class="container-fluid">
            <form action="">
                <div class="row">
                    <div class="col-md-4 col-4">
                        <input  value="@if(isset($_GET['search'])){{$_GET['search']}}@endif" name="search" class="form-control form-control-sm " placeholder="Search by name" type="text">
                    </div>
                    <div class="col-md-4 col-4">
                        <button type="submit" class="btn btn-outline-info btn-sm"><i class="fas fa-search"></i> Search</button>
                    </div>
                    <div class="col-md-4 col-4">
                        <div class="text-right">
                            <a href="/admin/category/add" style="margin-right: 0px" type="button" class="btn btn-outline-success btn-sm"><i class="fas fa-plus"> </i> Create</a>
                        </div>
                    </div>
                </div>

            </form>
        </div>
        <br class="offset-sm">
        <div class="table-responsive">
            <table class="table table-bordered table-hover" id="dtBasicExample">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th class="align-middle text-center"  scope="col">Total Product</th>
                    <th class="align-middle text-center" scope="col">Active</th>
                    <th scope="col">Update</th>
                    <th scope="col">Controls</th>
                </tr>
                </thead>
                <tbody>
                {!! \App\Helpers\Helper::list_category($list_category) !!}
                </tbody>
            </table>
        </div>
    </div>

@endsection
