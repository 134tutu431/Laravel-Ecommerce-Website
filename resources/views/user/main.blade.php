
<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<style>
    .products .product3 img{
        height:230px ;
    }
    .products .product4 img{
        height:180px ;
    }
    .blog .item img{
        height:330px
    }

    @media only screen and (max-width: 736px){
        .products .product3 img{
            height: 210px ;
        }
        .products .product4 img{
            height: 210px ;
        }
        .blog .item img{
            height: 223px ;
        }

    }
</style>
<body>
    @include('user.header')
<header>
    <div class="carousel" data-count="3" data-current="2">
        <!-- <button class="btn btn-control"></button> -->
        <div class="items">
            @foreach($sliders as $key => $slider)
                <div class="item {{$key == 2 ?'active':''}}" data-marker="{{$key}}">
                    <img src="/template/assets/img/carousel/bckg.jpg" alt="Background" class="background"/>
                    <div style="margin-top:-20px" class="content">
                        <div class="outside-content">
                            <div class="inside-content">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2 align-centerr">
                                            <img src="{{$slider->thumb}}" alt="Laptops"/>
                                        </div>
                                        <div class="col-sm-6 col-sm-offset-3 align-center">
                                        </div>
                                        <div class="col-sm-12 align-center">
                                            <h1>{{$slider->name}}</h1>
                                            <p>{{$slider->description}}</p>
                                            <a href="./catalog/">View surfaces &gt;</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <ul class="markers">
            @foreach($sliders as $key => $slider)
            <li class="{{$key == 2 ?'active':''}}"  data-marker="{{$key}}"><img style="margin-left: -40px" src="{{$slider->thumb}}" alt="Background"/></li>
            @endforeach
        </ul>
    </div>
</header>
<br><br>
<div class="container">
    <div class="row">
        <div class="col-6 col-sm-3 align-center">
            <a href="/blog/">
                <img style="width: 100%" src="/template/assets/img/tiles/blog.jpg" alt="Blog" class="image"/>
            </a>
            <br><br>

            <a href="/blog/">Blog headlines</a>
        </div>
        <div class="col-6 col-sm-3 align-center">
            <a href="/catalog?manufacturer%5B%5D=7" data-gallery="#video" data-source="vimeo" data-id="110691368" data-id="110691368" data-title="Apple iPad Air" data-description="So capable, you won’t want to put it down. So thin and light, you won’t have to.">
                <img src="/template/assets/img/tiles/video-apple.jpg" alt="New devices" class="image"/>
            </a>
            <br><br>

            <a href="/catalog?manufacturer%5B%5D=7" data-gallery="#video" data-source="vimeo" data-id="110691368" data-title="Apple iPad Air" data-description="So capable, you won’t want to put it down. So thin and light, you won’t have to.">New apple diveces</a>
        </div>
        <div class="col-6 col-sm-3 align-center">
            <a href="/catalog?manufacturer%5B%5D=2" data-gallery="#video" data-source="youtube" data-id="6g-ZIm0wge4" data-title="Best New Dell Laptops" data-description="Best of dell's laptops that you can consider buying in 2016. 4 Laptops are featured in the video and all of them has equal importance and there is no order that #1 is better than #2">
                <img src="/template/assets/img/tiles/video-dell.jpg" alt="Dell" class="image"/>
            </a>
            <br><br>
            <a href="/catalog?manufacturer%5B%5D=2" data-gallery="#video" data-source="youtube" data-id="6g-ZIm0wge4" data-title="Best New Dell Laptops" data-description="Best of dell's laptops that you can consider buying in 2016. 4 Laptops are featured in the video and all of them has equal importance and there is no order that #1 is better than #2">Brand new DELL </a>
        </div>
        <div class="col-6 col-sm-3 align-center">
            <a href="/catalog">
                <img src="/template/assets/img/tiles/gallery.jpg" alt="Gallery" class="image"/>
            </a>
            <br><br>

            <a href="/catalog">Products gallery</a>
        </div>
    </div>
</div>
<hr class="offset-lg">
<hr class="offset-lg">
<div class="container">
    <h2>NEW PRODUCTS</h2>
    <hr class="offset-md">
    <div class="row products">
        @foreach($new_products as $product)
            <div class="col-sm-6 col-md-4 product product3">
                <a href="#favorites" class="favorites" data-favorite="inactive"><i class="ion-ios-heart-outline"></i></a>
                <a href="/catalog/{{$product->id}}-{{$product->slug}}"><img src="{{$product->thumb}}" alt="Surface Pro"/></a>
                <div class="content">
                    <form>
                        @csrf
                        <input class="cart_product_type_{{$product->id}}" type="hidden" value="{{$product->category->name}}">
                        <input class="cart_product_id_{{$product->id}}" type="hidden" value="{{$product->id}}">
                        <input class="cart_product_name_{{$product->id}}" type="hidden" value="{{$product->name}}">
                        <input class="cart_product_price_{{$product->id}}" type="hidden" value="{{$product->price}}">
                        <input class="cart_product_image_{{$product->id}}" type="hidden" value="{{$product->thumb}}">
                        <input class="cart_product_quantity_{{$product->id}}" type="hidden" value="1">
                        <h1 class="h4">{{$product->name}}</h1>
                        <p class="sale">${{$product->price}}</p>
                        <p class="price through">${{$product->price_sale}}</p>
                        <label>{{$product->category->name}}</label>
                    </form>
                    <a href="/catalog/{{$product->id}}-{{$product->slug}}" class="btn btn-link"> Details</a>
                    <button  class="btn btn-primary btn-rounded btn-sm add-to-cart" data-id_product="{{$product->id}}"> <i class="ion-bag"></i> Add to cart</button>
                </div>
            </div>
        @endforeach
    </div>
</div>

<div class="container">
    <h2>RECOMMENDATION FOR YOU</h2>
    <hr class="offset-md">

    <div class="row products">
        @foreach($recommend_products as $reproduct)
            <div class="col-sm-6 col-md-3 product product4">
                <a href="#favorites" class="favorites" data-favorite="inactive"><i class="ion-ios-heart-outline"></i></a>
                <a href="/catalog/{{$reproduct->id}}-{{$reproduct->slug}}"><img src="{{$reproduct->thumb}}" alt="HP Chromebook 11"/></a>
                <div class="content">
                    <form>
                        @csrf
                        <input class="cart_product_type_{{$reproduct->id}}" type="hidden" value="{{$reproduct->category->name}}">
                        <input class="cart_product_id_{{$reproduct->id}}" type="hidden" value="{{$reproduct->id}}">
                        <input class="cart_product_name_{{$reproduct->id}}" type="hidden" value="{{$reproduct->name}}">
                        <input class="cart_product_price_{{$reproduct->id}}" type="hidden" value="{{$reproduct->price}}">
                        <input class="cart_product_image_{{$reproduct->id}}" type="hidden" value="{{$reproduct->thumb}}">
                        <input class="cart_product_quantity_{{$reproduct->id}}" type="hidden" value="1">
                        <h1 class="h4">{{$reproduct->name}}</h1>
                        <p class="sale">${{$reproduct->price}}</p>
                        <p class="price through">${{$reproduct->price_sale}}</p>
                        <label>{{$reproduct->category->name}}</label>
                    </form>
                    <a href="/catalog/{{$reproduct->id}}-{{$reproduct->slug}}" class="btn btn-link"> Details</a>
                    <button  class="btn btn-primary btn-rounded btn-sm add-to-cart" data-id_product="{{$reproduct->id}}"> <i class="ion-bag"></i> Add to cart</button>
                </div>

            </div>

        @endforeach
    </div>
</div>


<div class="container">
    <h2>NEW ARTICLES</h2>
    <hr class="offset-md">

    <div class="row blog">
        @foreach($new_articles as $article)
            <div class="col-sm-6 col-md-6 item">

                <div class="body">
                    <a href="/blog/{{$article->id}}-{{$article->slug}}" class="view"><i class="ion-ios-book-outline"></i></a>

                    <a href="/blog/{{$article->id}}-{{$article->slug}}">
                        <img src="{{$article->thumb}}" title="Apple Devices" alt="Apple Devices">
                    </a>

                    <div class="caption">
                        <h1 class="h3">{{$article->name}}</h1>
                        <label> {{date_format($article->updated_at,'d.m.y')}}</label>
                        <hr class="offset-sm">
                        <p>
                            {{$article->description}}
                        </p>
                        <hr class="offset-sm">

                        <a href="/blog/{{$article->id}}-{{$article->slug}}"> View article <i class="ion-ios-arrow-right"></i> </a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
<hr class="offset-lg">
<hr class="offset-lg">

 @include('user.footer')
</body>
</html>
