
<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<style>

    .carousel > .items > .item img{
        height: 400px;
    }
    .carousel > .items > .item img :hover{
        transform: scale(1.2);
    }
    @media only screen and (max-width: 736px){
        .carousel > .items > .item img{
            height: 260px;
        }
        .carousel.product{
            height: 50vh;
        }
    }
    input .number {
        text-align:center;
    }

    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        margin: 0;
    }
    div .number{
        border: none;
        height: 30px;
    }
    button.number {
        width: 30px !important;
    }
    #logo{
        width: 50px;
        height: 53px;
    }
</style>
<body>
@include('user.header')
<hr class="offset-sm">
<hr class="offset-md">
<div class="product">
    <div class="container">
        <div class="row">
            <div class="col-sm-7 col-md-7">
                <div class="carousel product" data-count="6" data-current="0" >
                    <!-- <button class="btn btn-control"></button> -->
                    <div class="items">
                        @foreach($images as $key => $image)
                            <div class="item {{$key==0?'active':''}}" data-marker="{{$key}}">
                                <img src="{{$image->thumb}}" alt="ChromeBook 11">
                            </div>
                        @endforeach
                    </div>
                    <ul class="markers">
                        @foreach($images as $key => $image)
                        <li data-marker="{{$key}}" class="{{$key==0?'active':''}}">
                            <img src="{{$image->thumb}}" alt="Background">
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="align-middle col-sm-5 col-md-5 ">
                <img id="logo" src="{{$product->manufacturer->logo}}" alt="HP" class="brand hidden-xs">
                <h1>{{$product->name}}</h1>
                {!!$product->specification!!}
                <p class="price">${{$product->price}}</p>
                <p class="price through">
                    @if($product->price_sale != null)
                        {{$product->price_sale}}
                    @endif
                </p>
                @if($product->quantity > 0)
                    <div style="margin-bottom: 5px" class="text-muted">Quantity : {{$product->quantity}}</div>
                @else
                    <div style="margin-bottom: 5px;color: red" ><b>Out of stock</b></div>
                @endif
                <form action="/catalog/add-cart" method="post">
                    <button class="number" type="button" onclick="this.parentNode.querySelector('[type=number]').stepDown();">
                        -
                    </button>
                    <input class="number text-center" type="number" name="product_qty" min="1" max="{{$product->quantity}}" value="1">
                    <button class="number" type="button" onclick="this.parentNode.querySelector('[type=number]').stepUp();">
                        +
                    </button>
                    <input type="hidden" name="product_id" value="{{$product->id}}">
                    <br>
                    <br>
                    @csrf
                <button type="submit" class="btn btn-primary btn-rounded"> <i class="ion-bag"></i> Add to cart</button>
                </form>
            </div>
        </div>
        <br><br><br>
        <div class="row">
            <div class="col-sm-7">
                <h2>{{$product->name}}</h2>
                <br>

                <p>
                    {{$product->description}}
                </p>
                <br>

                {!!$product->content!!}
            </div>
            <div class="col-sm-5">
                <div class="comments">
                    <h2 class="h3">What do you think? (#3)</h2>
                    <br>
                        <form class="wrapper">
                            @csrf
                            <input type="hidden" name="product_id" class="comment_product_id" value="{{$product->id}}">
                            <div class="content" id="comment_show"></div>
                        </form>
                    <br>
                    <button class="btn btn-default btn-sm" data-toggle="modal" data-target="#Modal-Comment"> <i class="ion-chatbox-working"></i> Add comment </button>
                </div>
                <br><br>

                <div class="talk">
                    <h2 class="h3">Do you have any questions?</h2>
                    <p>Online chat with our manager</p>

                    <button class="btn btn-default btn-sm"> <i class="ion-android-contact"></i> Lat's talk </button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="Modal-Comment" tabindex="-1" role="dialog" style="display: none;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header align-center">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="ion-android-close"></i></span></button>
                <h1 class="h4 modal-title">Add your comment</h1>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form class="join">
                        <div class="row">
                            <div class="col-sm-12">
                                <textarea name="comment" placeholder="Type here" required="" class="form-control comment_content" rows="5" ></textarea>
                                <br>
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="name" value="@if(\Illuminate\Support\Facades\Auth::check()){{\Illuminate\Support\Facades\Auth::user()->name}}@endif" placeholder="Name" required="" class="form-control comment_name">
                            </div>
                            <div class="col-sm-6">
                                <input type="email" name="email" value="
                                @if(\Illuminate\Support\Facades\Auth::check())
                                {{\Illuminate\Support\Facades\Auth::user()->email}}
                                @endif" placeholder="E-mail" required="" class="form-control">
                            </div>
                            <div class="col-sm-12">
                                <div class="align-center">
                                    <br>
                                    <button type="button" id="send-comment" class="btn btn-primary btn-sm send-comment"> <i class="ion-android-send"></i> Send</button>
                                    <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal"> <i class="ion-android-share"></i> No, thanks </button>
                                    <br><br>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="offset-lg">
<hr class="offset-lg">
@include('user.footer')
<script type="text/javascript">
    $(document).ready(function() {
        load_comment();
        function load_comment(){
            var product_id= $('.comment_product_id').val();
            var _token=$('input[name="_token"]').val();
            $.ajax({
                url:'/autoload-comment',
                method:'POST',
                data:{product_id:product_id,
                    _token:_token
                },
                success:function(data){
                    $('#comment_show').html(data);
                }
            });
        };
        $('#send-comment').click(function (){
            var product_id= $('.comment_product_id').val();
            var name = $('.comment_name').val();
            var content = $('.comment_content').val();
            var _token=$('input[name="_token"]').val();
            $.ajax({
                url:'/send-comment',
                method:'POST',
                data:{
                    product_id:product_id,
                    _token:_token,
                    name:name,
                    content:content
                },
                success:function(data){
                    load_comment();
                    swal({
                        title: 'Add comment successfully !!!',
                        text:'Comment is waiting for approval',
                        confirmButtonClass: "btn-success",
                    });
                    $('#Modal-Comment').modal('hide');

                }
            });
        });
    });
</script>
</body>
</html>
