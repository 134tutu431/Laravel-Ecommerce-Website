
<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<style>

    @media only screen and (max-width: 736px){
        .card-img{
            height: 200px !important; ;
        }
    }

</style>
<body>
@include('user.header')
<div class="blog-item">
        <img src="{{$article->thumb}}" class="card-img " style="width: 100%;height: 550px;"  alt="...">
    <div class="container">
        <br><br>
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <h2>{{$article->name}}</h2>
                {!! $article->content !!}
                <br>
                <button class="btn btn-primary btn-sm facebook"> <i class="ion-social-facebook"></i> Share </button>
                <button class="btn btn-primary btn-sm twitter"> <i class="ion-social-twitter"></i> Retweet</button>
                <button class="btn btn-primary btn-sm googleplus"> <i class="ion-social-googleplus"></i> Plus </button>
                <hr>
                <div class="comments">
                    <h2 class="h3">What do you think? (#2)</h2>
                    <br>
                    <h3>Anne Hathaway</h3>
                    <label>2 years ago</label>
                    <p>
                        Apple Music brings iTunes music streaming to the UK. But is it worth paying for? In our Apple Music review, we examine the service's features, UK pricing, audio quality and music library
                    </p>
                    <h3>Chris Hemsworth</h3>
                    <label>Today</label>
                    <p>
                        Samsung's Galaxy S7 smartphone is getting serious hype. Here's what it does better than Apple's iPhone 6s.
                    </p>
                    <br>
                    <button class="btn btn-default btn-sm" data-toggle="modal" data-target="#Modal-Comment"> <i class="ion-chatbox-working"></i> Add comment </button>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="offset-lg">
<hr class="offset-lg">
@include('user.footer')
</body>
</html>
