@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Add A New Category</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form action="/admin/category/store" method="post">
            <div class="card-body">
                <div class="form-group">
                    <label>Category name</label>
                    <input name="name" type="text" class="form-control"  placeholder="Enter category name">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <input name="description" type="text" class="form-control"  placeholder="Enter description">
                </div>
                <div class="form-group">
                    <label>Content</label>
                    <textarea id="content" name="content" rows="5" class="form-control" placeholder="Content"></textarea>
                </div>
                <div class="form-group">
                    <label>Active</label>
                    <div class="custom-control custom-radio">
                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="active" value="1" checked>
                        <label style="cursor: pointer" class="custom-control-label" for="active">
                            Yes
                        </label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="none_active" value="2">
                        <label style="cursor: pointer" class="custom-control-label" for="none_active">
                            No
                        </label>
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
