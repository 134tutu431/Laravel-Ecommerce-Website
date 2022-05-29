@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
    <style>
        .card img{
            height: 180px;
        }
        @media only screen and (max-width: 736px){
            .display-img img{
                height: 300px !important;
            }
        }
        .display-img img{
            height: 50% !important;
        }
    </style>
@endsection
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Add A New Product</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form action="/admin/products/add" method="post" enctype='multipart/form-data'>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-8 border rounded" >
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Product name</label>
                                    <input name="name" type="text" class="form-control" value="{{old('name')}}" placeholder="Enter product name">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="category_id" class="form-control">
                                        @foreach($list_category as $list)
                                            <option value="{{$list->id}}">{{$list->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Manufacturer</label>
                                    <select name="manufacturer_id" class="form-control">
                                        @foreach($list_manufacturer as $listmanu)
                                            <option value="{{$listmanu->id}}">{{$listmanu->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Price Through</label>
                                    <input step=".01" name="price" {{old('price')}} type="number" class="form-control"  placeholder="Enter price through">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label> Price</label>
                                    <input step=".01" name="price_sale" {{old('price_sale')}} type="number" class="form-control"  placeholder="Enter price">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input name="quantity" {{old('quantity')}} type="number" class="form-control"  placeholder="Enter quantity">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description"  class="form-control">{{old('description')}}</textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Content</label>
                                    <textarea name="content" class="form-control">{{old('content')}}</textarea>
                                </div>
                            </div>
                            <div class="col-md-12 col-6">
                                <div class="form-group">
                                    <label for="file">Select image</label>
                                    <input accept="image/*" type="file" name="file" class="form-control-file" id="upload">
                                    <div style="margin-top: 10px" class="row">
                                        <div class="col-md-3">
                                            <div name="image_show" id="image_show"></div>
                                        </div>
                                    </div>
                                    <input type="hidden" name="file_sc"  id="file">
                                </div>
                            </div>
                            <div class="col-md-12">
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
                    <div class="col-md-4 border-right border-bottom border-top rounded">
                        <div class="form-group">
                            <label>Product specifications</label>
                            <textarea  name="specification" class="form-control">{{old('specification')}}
                            </textarea>
                        </div>
                        @for($i=1;$i<=5;$i++)
                            <div class="form-group">
                                <label>Select Images Product Detail {!! $i !!} </label>
                                <input accept="image/*" type="file" id="upload{!! $i !!}" name="fProductDetail[]" onchange="imagedisplay{!! $i !!}()" class="form-control-file">
                                <div class="row">
                                    <div class="col-md-5 col-6">
                                        <div class="display-img text-center" id="displayImg{!! $i !!}"></div>
                                        <script type="text/javascript">
                                            function imagedisplay{!! $i !!}(){
                                                var fileSeclect = document.getElementById('upload{!! $i !!}').files;
                                                if(fileSeclect.length >0){
                                                    var filetoLoad = fileSeclect[0];
                                                    var fileRender =new FileReader();
                                                    fileRender.onload = function (fileLoaderEvent){
                                                        var srcData = fileLoaderEvent.target.result;
                                                        var newImage = document.createElement('img');
                                                        newImage.src = srcData;
                                                        document.getElementById('displayImg{!! $i !!}').innerHTML= newImage.outerHTML;
                                                    };
                                                    fileRender.readAsDataURL(filetoLoad);
                                                }
                                            }
                                        </script>
                                    </div>
                                </div>

                            </div>
                        @endfor
                    </div>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit"  class="btn btn-info">Add Product</button>
            </div>
            @csrf
        </form>
    </div>
@endsection
@section('footer')
    <script>
        CKEDITOR.replace('content');
        CKEDITOR.replace('specification');
    </script>
@endsection

