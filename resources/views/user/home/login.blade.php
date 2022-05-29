<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<body>
    @include('user.header')
<hr class="offset-lg hidden-xs">
<hr class="offset-md">

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 md-padding">
            <h1 class="align-center">Customer Login</h1>
            <br>

            <form class="signin" action="/login" method="post">
                <input type="email" va name="email" value="" placeholder="E-mail" required="" class="form-control" />
                <br>
                <input type="password" name="password" value="" placeholder="Password" required="" class="form-control" />
                <br>
                <button type="submit" class="btn btn-primary">Sign In</button>
                <a href="/recover-pass" class="xs-margin">Password recovery ></a>
                <br><br>
                @include('user.alert')
                <p>
                    If you already have an account with us, please login.
                </p>
                <hr class="offset-xs">
                <a href="/facebook/auth" class="btn btn-facebook btn-user btn-block">
                    <i class="ion-social-facebook"></i>
                    Login with Facebook
                </a>
                <br class="hidden-xs">
                <p>
                    Don't have an account? Create one now! <a href="/signup"> Registration > </a>
                </p>
                @csrf
            </form>
        </div>
    </div>
</div>
<br><br>
<br class="hidden-xs">
<br class="hidden-xs">
@include('user.footer')
</body>
</html>
