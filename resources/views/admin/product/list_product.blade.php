@extends('admin.main')

@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3  class="card-title">List Of Products</h3>
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
                        @if(isset($search))<a href="{{route('list_pro')}}" class="btn btn-outline-info btn-sm">Back</a>@endif

                    </div>
                    <div class="col-md-4 col-4">
                        <div class="text-right">
                            <a href="/admin/products/add" style="margin-right: 0px" type="button" class="btn btn-outline-success btn-sm"><i class="fas fa-plus"> </i> Create</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <br class="offset-sm">
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-sm"id="dtBasicExample">
                <thead >
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Brand</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th class="text-center" scope="col">Acive</th>
                    <th scope="col">Update</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($products as $key =>$product)
                    <tr>
                        <td class="align-middle">{{$product->id}}</td>
                        <td class="align-middle"><a target="_blank" href="/catalog/{{$product->id}}-{{$product->slug}}">{{$product->name}}</a></td>
                        <td class="align-middle">{{$product->category->name}}</td>
                        <td class="align-middle">{{$product->manufacturer->name}}</td>
                        <td class="align-middle">{{$product->price}}&dollar;</td>
                        <td class="align-middle text-center">{{$product->quantity}}</td>
                        <td class="align-middle text-center">{!! \App\Helpers\Helper::active($product->active) !!}</td>
                        <td class="align-middle">{{$product->updated_at}}</td>
                        <td class="align-middle">
                            <a style="width: 25px;" class="btn btn-outline-info btn-xs" href="/admin/products/edit/{{$product->id}}"><i class="fas fa-edit"></i></a>
                            <a style="width: 25px;" class="btn btn-outline-danger btn-xs" href="#"
                               onclick="removeRow({{$product->id}},'/admin/products/destroy')"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>

    </div>
    {!! $products->appends(request()->all())->links() !!}
@endsection

