<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<body>
<div class="container" style="background-color: #1c1c1c">
    <h1 class="text-center text-white " style="margin-left:63px;padding-top: 50px;font-weight: bold;font-size: 50px;color: white"><a style="text-decoration: none;color: white;" class="text-light" href="">Unistore</a></h1>
    <div class="row" style="margin-left:63px;margin-right:63px;padding-bottom: 50px;">
        <div class="col-md-12">
            <h3 style="font-weight: bold;color: white;font-size: 40px;" class="text-white ">
                Hello,
            </h3>
            <p  style="font-weight: bold;color: white;font-size: 30px;" class="text-white " >
                To continue with password recovery, please click on the link below.
            </p>
            <div class="col-md-12 text-center " style="background-color: black; padding: 30px;border-radius: 10px;">
                <a href="{{$data['link_reset_pass']}}" style="padding:13px 35px;text-decoration:none;color:#f1f1f1;width: 50%;border-radius: 10px;" class="btn btn-info text-center ">
                    <div style="font-size: 30px;font-weight: bold;">Reset new password</div>
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>

