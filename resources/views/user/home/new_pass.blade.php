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
            <form class="signin" method="post">
                @csrf
                <div class="col-sm-12">
                    <label class="form-check-label">Enter your new password</label>
                    <input type="password" name="password" value="" placeholder="Password" required="" class="form-control"><br>
                </div>
                <div class="col-sm-12">
                    <input type="password" name="password-confirm" value="" placeholder="Confirm Password" required="" class="form-control"><br>
                </div>                <br>
                <div class="col-sm-12">
                    <button type="submit" class="btn btn-primary">Change password</button>
                    <a href="/login"  class="xs-margin">Login ></a>
                    <br><br>
                    @include('user.alert')
                    <br class="hidden-xs">
                    <p>
                        Don't have an account? Create one now! <a href="/signup"> Registration > </a>
                    </p>
                    @csrf
                </div>
                @php
                $token=$_GET['token'];
                $email=$_GET['email'];
                @endphp
                <input type="hidden" name="email" value="{{$email}}">
                <input type="hidden" name="token" value="{{$token}}">
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

