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
            <h1 class="align-center">Update Password</h1>
            <br>
            <form class="join" action="" method="post">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <label >Old Password</label>
                            <input type="password" required name="old_password" value="" placeholder="Old Password"  class="form-control"><br>
                        </div>
                        <div class="col-sm-12">
                            <label >New Password</label>
                            <input type="password" required name="password" value="" placeholder="New Password"  class="form-control">
                            <br>

                        </div>
                        <div class="col-sm-12">
                            <label >Password Confirm</label>
                            <input type="password" required name="password-confirm" value="" placeholder="Confirm Password" class="form-control"><br>
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Save</button>
                <a href="#" class="xs-margin">Terms &gt;</a>
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

