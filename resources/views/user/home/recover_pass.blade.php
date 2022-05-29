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
            <h1 class="align-center">Password Recovery</h1>
            <br>

            <form class="signin" action="/recover-pass" method="post">
                @csrf
                <label class="form-check-label">Enter your email to reset your password</label>
                <input type="email"  name="email" value="" placeholder="E-mail" required="" class="form-control" />
                <br>
                <button type="submit" class="btn btn-primary">Check email</button>
                <a href="/login"  class="xs-margin">Login ></a>
                <br><br>
                @include('user.alert')
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

