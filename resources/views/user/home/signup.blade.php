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
            <h1 class="align-center">New Customer</h1>
            <br>

            <form class="join" action="" method="post">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="text" name="name" value="{{old('name')}}" placeholder="Name" required="" class="form-control"><br>
                        </div>
                        <div class="col-sm-12">
                            <input type="text" name="phone" value="{{old('phone')}}" placeholder="Phone" required="" class="form-control"><br>
                        </div>
                        <div class="col-sm-12">
                            <input type="email" name="email" value="{{old('email')}}" placeholder="E-mail" required="" class="form-control"><br>
                        </div>
                        <div class="col-sm-12">
                            <input type="password" name="password" value="" placeholder="Password" required="" class="form-control"><br>
                        </div>
                        <div class="col-sm-12">
                            <input type="password" name="password-confirm" value="" placeholder="Confirm Password" required="" class="form-control"><br>
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Join free</button>
                <a href="#" class="xs-margin">Terms &gt;</a>
                <br><br>
                @include('user.alert')
                <p>
                    By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.
                </p>
                @csrf
            </form>

            <br class="hidden-sm hidden-md hidden-lg">
        </div>
    </div>
</div>
<br><br>
<br class="hidden-xs">
<br class="hidden-xs">
@include('user.footer')
</body>
</html>

