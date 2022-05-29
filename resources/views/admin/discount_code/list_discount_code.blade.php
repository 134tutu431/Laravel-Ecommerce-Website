@extends('admin.main')

@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">List Of Discount Code</h3>
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
                            <a href="/admin/discount-codes/add" style="margin-right: 0px" type="button" class="btn btn-outline-success btn-sm"><i class="fas fa-plus"> </i> Create</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <br class="offset-sm">
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-sm" id="dtBasicExample">
                <thead>
                <tr>
                    <th scope="col">Name</th>
                    <th scope="col">Discount code</th>
                    <th class="text-center" scope="col">Start date</th>
                    <th class="text-center" scope="col">Expiry date</th>
                    <th class="text-center" scope="col">Quantity</th>
                    <th class="text-center" scope="col">Discount</th>
                    <th class="text-center" scope="col ">Active</th>
                    <th class="text-center" scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($codes as $key =>$code)
                    <tr>
                        <td class="align-middle">{{$code->name}}</td>
                        <td class="align-middle">{{$code->code}}</td>
                        <td class="align-middle text-center">{{$code->start_date}}</td>
                        <td class="align-middle text-center">{{$code->expiry_date}}</td>
                        <td class="align-middle text-center">{{$code->quantity}}</td>
                        <td class="align-middle text-center">
                            @if($code->feature==1)
                                {{$code->discount}} %
                            @else
                                $ {{$code->discount}}
                            @endif
                        </td>
                        <td class="text-center align-middle">{!! \App\Helpers\Helper::active($code->active) !!}</td>
                        <td class="text-center">
                            @if($code->expiry_date>$today)
                            <b style="width: 80%" class="badge badge-success">Valid</b>
                            @else
                                <b style="width: 80%" class="badge badge-danger">Expired </b>
                            @endif
                        </td>
                        <td class="align-middle">
                            <a style="width: 25px;" class="btn btn-outline-info btn-xs" href="/admin/discount-codes/edit/{{$code->id}}"><i class="fas fa-edit"></i></a>
                            <a  style="width: 25px;" class="btn btn-outline-danger text-center btn-xs" href="#"
                                onclick="removeRow({{$code->id}},'/admin/discount-codes/destroy')"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>

    </div>
    {!! $codes->appends(request()->all())->links() !!}
@endsection

