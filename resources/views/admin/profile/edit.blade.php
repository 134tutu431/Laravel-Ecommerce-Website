@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Profile</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form action="" method="post">
            <div class="card-body">
                <div class="form-group">
                    <label>Name</label>
                    <input name="name" type="text" value="{{auth()->user()->name}}" class="form-control"  placeholder="Enter category name">
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" readonly value="{{auth()->user()->email}}" placeholder="E-mail" required="" class="form-control">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" value="" placeholder="Password"  class="form-control">
                </div>
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" name="password-confirm" value="" placeholder="Password" class="form-control">
                </div>
                <div class="form-group">
                    <label>Is Admin</label>
                    <div class="row">
                        <div class="col-md-1 col-2">
                            <div class="custom-control custom-radio">
                                <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="role" id="none_active" value="0"
                                    {{ auth()->user()->is_admin !=1?'checked':'' }}>
                                <label style="cursor: pointer" class="custom-control-label" for="none_active">
                                    No
                                </label>
                            </div>
                        </div>
                        <div class="col-md-1 col-2">
                            <div class="custom-control custom-radio">
                                <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="role" id="active" value="1"
                                    {{ auth()->user()->is_admin ==1?'checked':'' }}>
                                <label style="cursor: pointer" class="custom-control-label" for="active">
                                    Yes
                                </label>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit"  class="btn btn-info">Save Profile</button>
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
