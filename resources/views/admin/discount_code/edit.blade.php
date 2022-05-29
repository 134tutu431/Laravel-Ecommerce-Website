@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3  class="card-title">Edit this Discount Code</h3>
        </div>
        <form action="" method="post">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Name</label>
                            <input name="name" value="{{$discount_code->name}}" required="" type="text" class="form-control"  placeholder="Enter discount name">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Discount Code</label>
                            <input name="code" value="{{$discount_code->code}}" required="" type="text" class="form-control"  placeholder="Enter discount code">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Start date</label>
                            <input value="{{$discount_code->start_date}}" name="start_date" type="date" class="form-control ">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Expiry Date</label>
                            <div class='input-group date'>
                                <input value="{{$discount_code->expiry_date}}" name="expiry_date" type="date" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Feature</label>
                            <select class="form-control" name="feature">
                                <option value="1">Discount by %</option>
                                <option value="2">Discount by $</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>% / $ Discount </label>
                            <input step=".01" name="discount" value="{{$discount_code->discount}}"  required="" type="number" class="form-control" placeholder="Enter discount">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Quantity</label>
                            <input name="quantity" min="1"  value="{{$discount_code->quantity}}" required="" type="number" class="form-control"  placeholder="Enter quantity code">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Active</label>
                            <div class="row">
                                <div class="col-md-2 col-3">
                                    <div class="custom-control custom-radio">
                                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="active" value="1"
                                               {{$discount_code->active==1?'checked':''}}>
                                        <label style="cursor: pointer" class="custom-control-label" for="active">
                                            Yes
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-2 col-3">
                                    <div class="custom-control custom-radio">
                                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="none_active" value="2"
                                            {{$discount_code->active==2?'checked':''}}>
                                        <label style="cursor: pointer" class="custom-control-label" for="none_active">
                                            No
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <input name="id" type="hidden" value="{{$discount_code->id}}">
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit"  class="btn btn-info">Update discount code</button>
            </div>
            @csrf
        </form>
    </div>
@endsection
@section('footer')
    <script>
        CKEDITOR.replace('content');
        CKEDITOR.config.width="100%";
        CKEDITOR.config.height="500px"
    </script>
@endsection
