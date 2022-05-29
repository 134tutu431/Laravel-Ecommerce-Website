
<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<style>
    #text-page{
        display: none !important;
    }
    .blog .item img{
        height:330px ;
    }
    @media only screen and (max-width: 736px){
        .blog .item img{
            height: 223px ;
        }
        .body {
            height: 650px !important;
        }
    }
    .body {
        height: 650px;
    }
</style>
<body>
@include('user.header')
<hr class="offset-sm">
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center" style="font-weight: bold;font-size: 30px">The New Articles</h2>
        </div>
    </div>
</div>
<hr class="offset-sm">
<div class="blog">
    <div class="container">
        <div class="row">
            @foreach($articles as $article)
                <div class="col-sm-6 col-md-6 item">

                    <div class="body">
                        <a href="/blog/{{$article->id}}-{{$article->slug}}" class="view"><i class="ion-ios-book-outline"></i></a>

                        <a href="/blog/{{$article->id}}-{{$article->slug}}">
                            <img src="{{$article->thumb}}" title="Apple Devices" alt="Apple Devices">
                        </a>

                        <div class="caption">
                            <h1 class="h3">{{$article->name}}</h1>
                            <label>{{date_format($article->updated_at,'d.m.y')}}</label>
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

        {{$articles->links()}}

    </div>
</div>
<hr class="offset-lg">
<hr class="offset-lg">
@include('user.footer')
</body>
</html>

