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
            height: 130px !important;
        }
    </style>
@endsection
@section('content')
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Update Product</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form action="" method="post" enctype='multipart/form-data'>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-8 border rounded">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Category name</label>
                                    <input name="name" type="text" value="{{$product->name}}" class="form-control"  placeholder="Enter product name">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="category_id" class="form-control">
                                        @foreach($list_category as $list)
                                            <option {{$list->id==$product->category_id?'selected':''}}  value="{{$list->id}}">{{$list->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Manufacturer</label>
                                    <select name="manufacturer_id" class="form-control">
                                        @foreach($list_manufacturer as $listmanu)
                                            <option {{$listmanu->id==$product->manufacturer_id?'selected':''}}  value="{{$listmanu->id}}">{{$listmanu->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label> Price Through</label>
                                    <input step=".01" name="price" value="{{$product->price_sale}}" type="number" class="form-control"  placeholder="Enter price through">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Price</label>
                                    <input step=".01" name="price_sale" value="{{$product->price}}" type="number" class="form-control"  placeholder="Enter price">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input name="quantity" value="{{$product->quantity}}" type="number"  class="form-control"  placeholder="Enter quantity">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" class="form-control">{{$product->description}}</textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group" >
                                    <label>Content</label>
                                    <div id="area">
                                        <textarea name="content" class="form-control">{{$product->content}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-6">
                                <div class="form-group">
                                    <label for="file">Image Product</label>
                                    <input accept="image/*" type="file"  name="file" class="form-control-file" id="upload">
                                    <div style="margin-top: 10px" class="row">
                                        <div class="col-md-3">
                                            <div name="image_show" id="image_show">
                                                <a href="{{$product->thumb}}" target="_blank"><img style="width: 100%"  src="{{$product->thumb}}"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" value="{{$product->thumb}}" name="file_sc" id="file">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Active</label>
                                    <div class="custom-control custom-radio">
                                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="active" value="1" {{ $product->active==1?'checked':'' }}>
                                        <label style="cursor: pointer" class="custom-control-label" for="active">
                                            Yes
                                        </label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input style="cursor: pointer" class="custom-control-input custom-control-input-info custom-control-input-outline" type="radio" name="active" id="none_active" value="2"
                                            {{ $product->active!=1?'checked':'' }}>
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
                            <textarea rows="7" name="specification" class="form-control">{{$product->specification}}
                            </textarea>
                        </div>
                        @foreach($images as $key => $image)
                            <div id="input_image{{$image->id}}" class="form-group">
                                <label> Images Product Detail {{$key+1}}</label>
                                <div  class="row">
                                    <div class="col-md-5 col-6 text-right">
                                        <a href="/admin/products/delimage/{{$image->id}}" style="color: inherit;cursor: pointer" onclick="remove{{$image->id}}()"><i class="fa fa-minus-circle btn-outline-danger"></i></a>
                                        <a href="{{$image->thumb}}" target="_blank"><img  style="width: 100%;height: 90%"  src="{{$image->thumb}}"></a>
                                        <input type="hidden"  value="">
                                        <script>
                                            function remove{{$image->id}}() {
                                                var a{{$image->id}}=document.getElementById('input_image{{$image->id}}');
                                                a{{$image->id}}.remove();
                                            }
                                        </script>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                        <div style="padding-bottom: 10px" id="insert"></div>
                        <a style="cursor: pointer;margin-bottom: 5px" id="addInput" class="btn btn-outline-success">Add input select image</a>
                    </div>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button type="submit"  class="btn btn-info">Save Product</button>
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
    <script type="text/javascript">
        $(document).ready(function (){
            $("#addInput").click(function (){
                $("#insert").append('<div class="form-group"><label>Select Images Product Detail </label><input accept="image/*" type="file" name="fProductDetail[]" class="form-control-file"> </div>');
            });
        });
    </script>
@endsection

