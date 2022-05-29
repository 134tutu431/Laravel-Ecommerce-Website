@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Update The Article</h3>
        </div>
        <form action="" method="post">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Title</label>
                            <input value="{{$article->name}}" name="name" type="text" class="form-control"  placeholder="Enter article title">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Description</label>
                            <textarea rows="3" name="description" class="form-control">{{$article->description}}</textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Content</label>
                            <textarea style="height: 800px" name="content" class="form-control">{{$article->content}}</textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="file">Image Product</label>
                            <input accept="image/*" type="file"  name="file" class="form-control-file" id="upload">
                            <div style="margin-top: 10px" class="row">
                                <div class="col-md-3">
                                    <div name="image_show" id="image_show">
                                        <a href="{{$article->thumb}}" target="_blank"><img style="width: 100%"  src="{{$article->thumb}}"></a>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" value="{{$article->thumb}}" name="file_sc" id="file">
                        </div>
                    </div>
                    <div class="col-md-6">
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
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit"  class="btn btn-info">Save article</button>
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
