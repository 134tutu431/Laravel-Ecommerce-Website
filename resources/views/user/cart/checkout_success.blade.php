
<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<style>
    @media only screen and (max-width: 736px){

    }
</style>
<body>
@include('user.header')
<div class="box">
    <div class="container">
        <h1>Successful payment procedure</h1>
    </div>
</div>
<hr class="offset-md">
<div class="container">
    <div class="row">
        <div class="col-md-12 col-8">
          <h3>@include('user.alert')</h3>
        </div>
        <div class="col-md-12 col col-4">
            <a href="/" class="btn btn-success">Way back Home</a>
        </div>
    </div>
</div>
<hr class="offset-md">
<hr class="offset-md">
@include('user.footer')
</body>
</html>

