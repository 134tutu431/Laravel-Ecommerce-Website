
<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<style>
    .products .product img{
        height:170px ;
    }
    @media only screen and (max-width: 736px){
        .products .product img{
            height: 210px ;
        }
        .col-sm-6.col-md-4.product {
            height: 450px !important;
        }
    }
    #text-page{
        display: none;
    }
    .col-sm-6.col-md-4.product {
        height: 380px;
    }
    .range-slider {
        width: 100%;
        text-align: center;
        position: relative;
    }
    .rangeValues {
        display: block;
    }
    .item input[type=range] {
        -webkit-appearance: none;
        border: 1px solid white;
        width: 100%;
        position: absolute;
        left: 0;
    }

    input[type=range]::-webkit-slider-runnable-track {
        width: 100%;
        height: 5px;
        background: #ddd;
        border: none;
        border-radius: 3px;

    }

    input[type=range]::-webkit-slider-thumb {
        -webkit-appearance: none;
        border: none;
        height: 16px;
        width: 16px;
        border-radius: 50%;
        background: #00a1b4;
        margin-top: -4px;
        cursor: pointer;
        position: relative;
        z-index: 1;
    }

    input[type=range]:focus {
        outline: none;
    }

    input[type=range]:focus::-webkit-slider-runnable-track {
        background: #ccc;
    }

    input[type=range]::-moz-range-track {
        width: 100%;
        height: 5px;
        background: #ddd;
        border: none;
        border-radius: 3px;
    }

    input[type=range]::-moz-range-thumb {
        border: none;
        height: 16px;
        width: 16px;
        border-radius: 50%;
        background: #00a1b4;

    }


    /*hide the outline behind the border*/

    input[type=range]:-moz-focusring {
        outline: 1px solid white;
        outline-offset: -1px;
    }

    input[type=range]::-ms-track {
        width: 100%;
        height: 5px;
        /*remove bg colour from the track, we'll use ms-fill-lower and ms-fill-upper instead */
        background: transparent;
        /*leave room for the larger thumb to overflow with a transparent border */
        border-color: transparent;
        border-width: 6px 0;
        /*remove default tick marks*/
        color: transparent;
        z-index: -4;

    }

    input[type=range]::-ms-fill-lower {
        background: #777;
        border-radius: 10px;
    }

    input[type=range]::-ms-fill-upper {
        background: #ddd;
        border-radius: 10px;
    }

    input[type=range]::-ms-thumb {
        border: none;
        height: 16px;
        width: 16px;
        border-radius: 50%;
        background: #00a1b4;
    }

    input[type=range]:focus::-ms-fill-lower {
        background: #888;
    }

    input[type=range]:focus::-ms-fill-upper {
        background: #ccc;
    }
</style>
<body>
<script>
    function getVals(){
        // Get slider values
        let parent = this.parentNode;
        let slides = parent.getElementsByTagName("input");
        let slide1 = parseFloat( slides[0].value );
        let slide2 = parseFloat( slides[1].value );
        // Neither slider will clip the other, so make sure we determine which is larger
        if( slide1 > slide2 ){ let tmp = slide2; slide2 = slide1; slide1 = tmp; }

        let displayElement = parent.getElementsByClassName("rangeValues")[0];
        displayElement.innerHTML = "$" + slide1 + " - $" + slide2;
    }

    window.onload = function(){
        // Initialize Sliders
        let sliderSections = document.getElementsByClassName("range-slider");
        for( let x = 0; x < sliderSections.length; x++ ){
            let sliders = sliderSections[x].getElementsByTagName("input");
            for( let y = 0; y < sliders.length; y++ ){
                if( sliders[y].type ==="range" ){
                    sliders[y].oninput = getVals;
                    // Manually trigger event first time to display values
                    sliders[y].oninput();
                }
            }
        }
    }
</script>
<div id="cart" class="cart" data-toggle="inactive">
    <div class="label">
        <i class="ion-bag"> </i> <span class="count-cart"></span>
    </div>
    <div class="overlay"></div>
    <div class="window modal-cart">
    </div>
</div>
@include('user.header')
    <hr class="offset-sm">
    <div class="container tags">
        <div class="btn-group " >
            <form class="form-inline form-search">
                <div class="input-group">
                    <input size="28.5" required="" value="{{$key}}" name="key" type="text" class="form-control input-sm" placeholder="Search">
                    <span class="input-group-btn">
                        <button class="btn btn-primary btn-sm" type="submit">Search</button>
                    </span>
                </div>
            </form>
        </div>
        <div class="btn-group pull-right">
                <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="ion-arrow-down-b"></i> Sorting by
                </button>
{{--                <div class="dropdown-menu" >--}}
{{--                    <li class="sort" data-status="asc"><a href="#"> <i class="ion-arrow-down-c"></i> Price [Low-High]</a></li>--}}
{{--                    <li class="sort" data-status="desc"><a href="#"> <i class="ion-arrow-up-c"></i> Price [High-Low]</a></li>--}}
{{--                </div>--}}
                <div class="dropdown-menu" >
                    <li class="@if(\Illuminate\Support\Facades\Request::get('sort')=='nameasc') active @endif" ><a href="@if(\Illuminate\Support\Facades\Request::has('category') || \Illuminate\Support\Facades\Request::has('manufacturer') || \Illuminate\Support\Facades\Request::has('key') || \Illuminate\Support\Facades\Request::has('rangeMin') ){{\Illuminate\Support\Facades\Request::fullUrl()}}&sort=nameasc @elseif(\Illuminate\Support\Facades\Request::has('sort')) {{\Illuminate\Support\Facades\Request::path()}}?sort=nameasc @elseif(\Illuminate\Support\Facades\Request::has('page')) {{\Illuminate\Support\Facades\Request::fullUrl()}}&sort=nameasc @else{{\Illuminate\Support\Facades\Request::fullUrl()}}?sort=nameasc @endif"> <i class="ion-arrow-down-c"></i> Name [A-Z]</a></li>
                    <li class="@if(\Illuminate\Support\Facades\Request::get('sort')=='namedesc') active @endif" ><a href="@if(\Illuminate\Support\Facades\Request::has('category') || \Illuminate\Support\Facades\Request::has('manufacturer') || \Illuminate\Support\Facades\Request::has('key') || \Illuminate\Support\Facades\Request::has('rangeMin')  ){{\Illuminate\Support\Facades\Request::fullUrl()}}&sort=namedesc @elseif(\Illuminate\Support\Facades\Request::has('sort')){{\Illuminate\Support\Facades\Request::path()}}?sort=namedesc @elseif(\Illuminate\Support\Facades\Request::has('page')) {{\Illuminate\Support\Facades\Request::fullUrl()}}&sort=namedesc @else{{\Illuminate\Support\Facades\Request::fullUrl()}}?sort=namedesc @endif"> <i class="ion-arrow-up-c"></i> Name [Z-A]</a></li>
                    <li class="@if(\Illuminate\Support\Facades\Request::get('sort')=='priceasc') active @endif" > <a href="@if(\Illuminate\Support\Facades\Request::has('category') || \Illuminate\Support\Facades\Request::has('manufacturer') || \Illuminate\Support\Facades\Request::has('key') || \Illuminate\Support\Facades\Request::has('rangeMin')  ){{\Illuminate\Support\Facades\Request::fullUrl()}}&sort=priceasc @elseif(\Illuminate\Support\Facades\Request::has('sort')){{\Illuminate\Support\Facades\Request::path()}}?sort=priceasc @elseif(\Illuminate\Support\Facades\Request::has('page')) {{\Illuminate\Support\Facades\Request::fullUrl()}}&sort=priceasc @else{{\Illuminate\Support\Facades\Request::fullUrl()}}?sort=priceasc @endif"> <i class="ion-arrow-down-c"></i> Price [Low-High]</a></li>
                    <li class="@if(\Illuminate\Support\Facades\Request::get('sort')=='pricedesc') active @endif" ><a href="@if(\Illuminate\Support\Facades\Request::has('category') || \Illuminate\Support\Facades\Request::has('manufacturer') || \Illuminate\Support\Facades\Request::has('key') || \Illuminate\Support\Facades\Request::has('rangeMin')  ){{\Illuminate\Support\Facades\Request::fullUrl()}}&sort=pricedesc @elseif(\Illuminate\Support\Facades\Request::has('sort')){{\Illuminate\Support\Facades\Request::path()}}?sort=pricedesc @elseif(\Illuminate\Support\Facades\Request::has('page')) {{\Illuminate\Support\Facades\Request::fullUrl()}}&sort=pricedesc @else{{\Illuminate\Support\Facades\Request::fullUrl()}}?sort=pricedesc  @endif"> <i class="ion-arrow-up-c"></i> Price [High-Low]</a></li>
                </div>
            </div>
        </div>
    <div class="container">
        <div class="row">
            <!-- Filter -->
            <div class="col-sm-3 filter">
                <form id="target" class="item" action="{{\Illuminate\Support\Facades\URL::current()}}" method="get">
                    <div class="title">
                        <a data-action="open" class="down"> <i class="ion-android-arrow-dropdown"></i> Open</a>
                        <a href="/catalog"  > <i style="color: #0c84ff" class="ion-ios-trash-outline"></i> Clear</a>
                        <a id="other"  style="cursor: pointer;border: none;background-color: white;color: #0c84ff" type="submit" > <i style="color: #00a1b4" class="ion-ios-color-filter"></i> Filter</a>
                        <h1 class="h4 text-muted">Type</h1>
                    </div>
                    <div class="controls">
                        @foreach($categories as $category)
                            @php
                            $active =[];
                            if(isset($_GET['category'])){
                                $active=$_GET['category'];
                            }
                            @endphp
                            <div class="checkbox-group" data-status="{{isset($_GET['category'])&&in_array($category->id,$active)?'active':'inactive'}}">
                                <div class="checkbox"><i class="ion-android-done"></i></div>
                                <div class="label" data-value="Hp">{{$category->name}}</div>
                                <input {{isset($_GET['category'])&&in_array($category->id,$active)?'checked':''}} type="checkbox" name="category[]" value="{{$category->id}}">
                            </div>
                        @endforeach
                    </div>
                </form>
                <br>
                <form id="target1" class="item" action="{{\Illuminate\Support\Facades\URL::current()}}" method="get">
                    <div class="title">
                        <a data-action="open" class="down"> <i class="ion-android-arrow-dropdown"></i> Open</a>
                        <a  href="/catalog" > <i style="color: #00a1b4" class="ion-ios-trash-outline"></i> Clear</a>
                        <a id="other1" style="cursor: pointer;border: none;background-color: white;color: #00a1b4" type="submit" > <i style="color: #00a1b4" class="ion-ios-color-filter"></i> Filter</a>
                        <h1 class="h4 text-muted">Manufacturer</h1>
                    </div>
                    <div class="controls">
                    @foreach($manufacturers as $manufacturer)
                            @php
                                $active_manu =[];
                                if(isset($_GET['manufacturer'])){
                                    $active_manu=$_GET['manufacturer'];
                                }
                            @endphp
                            <div class="checkbox-group" data-status="{{in_array($manufacturer->id,$active_manu)?'active':'inactive'}}">
                                <div class="checkbox"><i class="ion-android-done"></i></div>
                                <div class="label" data-value="Hp">{{$manufacturer->name}}</div>
                                <input {{in_array($manufacturer->id,$active_manu)?'checked':''}}  type="checkbox" name="manufacturer[]" value="{{$manufacturer->id}}">
                            </div>
                    @endforeach
                    </div>
                </form>
                <br>
                <form id="target2" class="item" action="{{\Illuminate\Support\Facades\URL::current()}}" method="get">
                    <div class="title">
                        <a  href="/catalog" > <i style="color: #00a1b4" class="ion-ios-trash-outline"></i> Clear</a>
                        <a id="other2" style="cursor: pointer;border: none;background-color: white;color: #00a1b4" type="submit" > <i style="color: #00a1b4" class="ion-ios-color-filter"></i> Filter</a>
                        <h1 class="h4 text-muted">Range Price</h1>
                    </div>
                        <div class="range-slider">
                            <span class="rangeValues"></span>
                            <input name="rangeMin" value="@if($rangeMin!=0){{$rangeMin}}@else{{200}}@endif" min="200" max="1500" step="100" type="range">
                            <input name="rangeMax" value="@if($rangeMax!=0){{$rangeMax}}@else{{1500}}@endif" min="200" max="1500" step="100" type="range">
                        </div>
                </form>

            </div>
            <!-- /// -->
            <!-- Products -->
            <div  id="products">
                <div class="col-sm-9 products" >
                    <div class="row" >
                        @if(isset($_GET['key']))
                            <div style="font-size: 15px" class="col-md-12 text-center">Found <b class="text-primary">{{$count}}</b> results for the keyword: "<b class="text-primary">{{$key}}</b> "</div>
                        @endif
                        @foreach($products as $product)
                            <div class="col-sm-6 col-md-4 product">
                                <a href="#favorites" class="favorites" data-favorite="inactive"><i class="ion-ios-heart-outline"></i></a>
                                <a href="/catalog/{{$product->id}}-{{$product->slug}}"><img src="{{$product->thumb}}" alt="HP Chromebook 14"></a>
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
                    {{$products->appends(request()->all())->links()}}
                </div>
            </div>
            <!-- /// -->
        </div>
    </div>
    <hr class="offset-lg">
    <hr class="offset-lg">
@include('user.footer')
<script type="text/javascript">
        $( "#other" ).click(function() {
            $( "#target" ).submit();
        });
        $( "#other1" ).click(function() {
            $( "#target1" ).submit();
        });
        $( "#other2" ).click(function() {
            $( "#target2" ).submit();
        });
        // $('.sort').click(function (){
        //     var sort_status = $(this).data('status');
        //     $.ajax({
        //         url:'product/sort',
        //         method:'GET',
        //         data:{
        //             sort_status:sort_status,
        //         },
        //         success:function (data){
        //             $('#products').html(data);
        //         }
        //     });
        // });

</script>
</body>
</html>
