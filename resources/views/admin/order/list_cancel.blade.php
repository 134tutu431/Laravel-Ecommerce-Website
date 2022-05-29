
@extends('admin.main')

@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3  class="card-title">List Of Cancel Requests</h3>
        </div>

        <br class="offset-sm">
        <div class="table-responsive">
            <table class="table table-bordered table-hover"id="dtBasicExample">
                <thead >
                <tr>
                    <th class="text-center" scope="col">Approval status</th>
                    <th scope="col">ID</th>
                    <th scope="col">Customer</th>
                    <th scope="col">Reason</th>
                    <th class="text-center" scope="col">Total Price</th>
                    <th class="text-center" scope="col">Status</th>
                    <th scope="col">Update</th>
                </tr>
                </thead>
                <tbody>
                @foreach($cancels as $cancel)
                    <tr>
                        <td class="align-middle text-center">@if($cancel->cancel_status==1)
                                    <button class="btn btn-danger btn-sm approve_cancel" data-cancel_status="2" data-cancel_id="{{$cancel->id}}">Unapprove</button>
                            @endif
                            @if($cancel->cancel_status==2)
                                <button class="btn btn-success btn-sm approve_cancel" data-cancel_status="1" data-cancel_id="{{$cancel->id}}" >Approve</button>
                            @endif
                        </td>
                        <td class="align-middle">{{$cancel->id}}</td>
                        <td class="align-middle ">{{$cancel->customer->name}}</td>
                        <td class="align-middle">{{$cancel->cancel_reason}}</td>
                        <td class="align-middle text-center">&dollar;{{$cancel->total_price}}</td>
                        <td class="align-middle text-center">{!! \App\Helpers\Helper::status($cancel->status) !!}</td>
                        <td class="align-middle">{{$cancel->updated_at}}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>

    </div>
    {!! $cancels->links() !!}
@endsection

