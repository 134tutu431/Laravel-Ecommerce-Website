<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<body>
@include('user.header')
<hr class="offset-lg hidden-xs">
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 md-padding">
            <h1 class="align-center">Personal Profile</h1>
            <br>
            <form class="join" action="" method="post">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="text" name="name" value="{{\Illuminate\Support\Facades\Auth::user()->name}}" placeholder="Name" required="" class="form-control"><br>
                        </div>
                        <div class="col-sm-12">
                            <input type="text" name="phone" value="{{\Illuminate\Support\Facades\Auth::user()->phone}}" placeholder="Phone" required="" class="form-control"><br>
                        </div>
                        <div class="col-sm-12">
                            <input type="email" name="email" {{\Illuminate\Support\Facades\Auth::user()->email!=null?'readonly':''}}  value="{{\Illuminate\Support\Facades\Auth::user()->email}}" placeholder="E-mail" required="" class="form-control"><br>
                        </div>
                    </div>
                </div>
                <br>
                <button type="submit" class="btn btn-primary">Save</button>
                <a href="/edit-pass" class="xs-margin">Update password &gt;</a>
                <br><br>
                @include('user.alert')
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

