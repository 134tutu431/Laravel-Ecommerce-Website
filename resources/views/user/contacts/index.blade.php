<!DOCTYPE html>
<html lang="en">
<head>
    @include('user.head')
</head>
<body>
@include('user.header')
<hr class="offset-md">
<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <div id="Address">
                <address>
                    <label class="h3">Unistore, Inc.</label><br>
                    470 Tran Đai Nghia, <br> Hoa Hai, Ngu Hanh Son,<br>  Đa Nang 550000,Viet Nam<br>
                    <abbr title="Phone">P:</abbr> (+84) 913-312-904
                </address>

                <address>
                    <strong>Support</strong><br>
                    <a href="mailto:lvchuong.20it12@vku.udn.com">lvchuong.20it12@vku.udn.com</a>
                    <br>

                    <strong>Partners</strong><br>
                    <a href="mailto:#">apple@gmail.com</a><br>
                    <a href="mailto:#">hp@gmail.com</a><br>
                    <a href="mailto:#">samsung@gmail.com</a>
                </address>
            </div>
        </div>
        <div class="col-sm-8">
            <div id="GoMap" style="position: relative; overflow: hidden;">
                <div style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.738711613724!2d108.25104871433561!3d15.975015746200409!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142108997dc971f%3A0x1295cb3d313469c9!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiB2w6AgVHJ1eeG7gW4gdGjDtG5nIFZp4buHdCAtIEjDoG4!5e0!3m2!1svi!2s!4v1637470618172!5m2!1svi!2s" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </div>
            </div>
        </div>
    </div>
    <br>
</div>
<div class="gray">
    <div class="container align-center">
        <h1> Need our help? </h1>
        <p> Please select a question above first so we can connect you <br class="visible-md visible-lg"> to the right agent. </p>

        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <form class="contact" action="index.php" method="post">
                    <textarea class="form-control" name="message" placeholder="Message" required="" rows="5"></textarea>
                    <br>

                    <input type="email" name="email" value="" placeholder="E-mail" required="" class="form-control">
                    <br>

                    <button type="submit" class="btn btn-primary justify"> Send question <i class="ion-android-send"></i> </button>
                </form>
            </div>
        </div>
    </div>
    <br>
</div>
<hr class="offset-lg">
<hr class="offset-lg">
@include('user.footer')
</body>
</html>
