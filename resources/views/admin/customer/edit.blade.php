@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Edit Customer</h3>
        </div>
        <!-- form start -->
        <form action="" method="post">
            <div class="card-body">
                <div class="form-group">
                    <label>Name</label>
                    <input name="name" type="text" required="" value="{{$cutomer->name}}" class="form-control"  placeholder="Enter customer name">
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email"  readonly value="{{$cutomer->email}}" placeholder="E-mail" required="" class="form-control">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" value=""  placeholder="Password"  class="form-control">
                </div>
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" name="password-confirm" value=""  placeholder="Password" class="form-control">
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit"  class="btn btn-info">Update Customer</button>
            </div>
            @csrf
        </form>
    </div>
@endsection
@section('footer')
    <script>
        CKEDITOR.replace('content');
    </script>
@endsection

