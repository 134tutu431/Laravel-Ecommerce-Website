@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Update Category</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form action="" method="post">
            <div class="card-body">
                <div class="form-group">
                    <label>Category name</label>
                    <input name="name" type="text" value="{{$category->name}}" class="form-control"  placeholder="Enter category name">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <input name="description" value="{{$category->description}}" type="text" class="form-control"  placeholder="Enter description">
                </div>
                <div class="form-group">
                    <label>Content</label>
                    <textarea id="content" name="content" rows="5" class="form-control" placeholder="Content">{{$category->content}} </textarea>
                </div>
                <div class="form-group">
                    <label>Active</label>
                    <div class="custom-control custom-radio">
                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="active" value="1" {{ $category->active==1?'checked':'' }}>
                        <label style="cursor: pointer" class="custom-control-label" for="active">
                            Yes
                        </label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="none_active" value="2"
                            {{ $category->active!=1?'checked':'' }}>
                        <label style="cursor: pointer" class="custom-control-label" for="none_active">
                            No
                        </label>
                    </div>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit"  class="btn btn-info">Save category</button>
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
