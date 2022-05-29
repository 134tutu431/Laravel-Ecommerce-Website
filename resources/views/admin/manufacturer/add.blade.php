@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Add A New Manufacture</h3>
        </div>
        <!-- /.card-header manufacturer -->
        <!-- form start -->
        <form action="" method="post">
            <div class="card-body">
                <div class="form-group">
                    <label>Manufacture name</label>
                    <input name="name" required="" value="{{old('name')}}" type="text" class="form-control"  placeholder="Enter manufacture name">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <input name="description" value="{{old('description')}}" type="text" class="form-control"  placeholder="Enter description">
                </div>
                <div class="form-group">
                    <label for="file">Select image</label>
                    <input accept="image/*" type="file" name="file" class="form-control-file" id="upload">
                    <div style="margin-top: 10px" class="row">
                        <div class="col-md-1 col-4">
                            <div name="image_show" id="image_show"></div>
                        </div>
                    </div>
                    <input type="hidden" name="file_sc"  id="file">
                </div>
                <div class="form-group">
                    <label>Active</label>
                    <div class="row">
                        <div class="col-md-1 col-3">
                            <div class="custom-control custom-radio">
                                <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="active" value="1" checked>
                                <label style="cursor: pointer" class="custom-control-label" for="active">
                                    Yes
                                </label>
                            </div>
                        </div>
                        <div class="col-md-1 col-3">
                            <div class="custom-control custom-radio">
                                <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="none_active" value="2">
                                <label style="cursor: pointer" class="custom-control-label" for="none_active">
                                    No
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit"  class="btn btn-info">Add category</button>
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
