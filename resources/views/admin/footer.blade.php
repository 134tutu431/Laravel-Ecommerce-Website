
<!-- jQuery -->
<script src="/template/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/template/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jquery-validation -->
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<script src="/template/admin/plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="/template/admin/plugins/jquery-validation/additional-methods.min.js"></script>
<script src="/template/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>

<script src='https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.min.js'></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>

<!-- AdminLTE App -->
<script src="/template/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="/template/admin/dist/js/adminlte.min.js"></script>
<!-- Page specific script -->
<script src="/template/admin/js/main.js"></script>
<script src="/template/assets/js/custom.js"></script>
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    //Statistical
    $(document).ready(function (){
        charthome();
        var chart = new Morris.Bar({
            // ID of the element in which to draw the chart.
            element: 'myfirstchart',
            barColors:['#5a6268','#17a2b8','#28a745','#23272b'],
            parseTime:false,
            hideHover:'auto',
            gridTextSize:15,
            gridTextWeight:'bold',
            behaveLikeLine:true,
            xkey: 'period',
            // A list of names of data record attributes that contain y-values.
            ykeys: ['order','sales','profit','quantity'],
            // Labels for the ykeys -- will be displayed when you hover over the
            // chart.
            labels: ['Order','Sales','Profit','Quantity']
        });
        $('#filter').click(function (){
            var from_date=$('#from_date').val();
            var to_date=$('#to_date').val();
            var _token = $('input[name="_token"]').val();
            $.ajax({
                url:'admin/filter',
                method:'POST',
                dataType:'JSON',
                data:{
                    from_date:from_date,
                    to_date:to_date,
                    _token:_token
                },
                success:function(data){
                    // alert(data);
                    chart.setData(data);
                }
            });
        });
        function charthome(){
            var _token = $('input[name="_token"]').val();
            $.ajax({
                url:'admin/normal',
                method:'POST',
                dataType:'JSON',
                data:{
                    _token:_token
                },
                success:function(data){
                    chart.setData(data);
                }
            });
        }
        $('.filter-by').change(function (){
            var filter_by = $(this).val();
            var _token = $('input[name="_token"]').val();
            $.ajax({
                url:'admin/filter-by',
                method:'POST',
                dataType:'JSON',
                data:{
                    filter_by:filter_by,
                    _token:_token
                },
                success:function(data){
                    chart.setData(data);
                }
            });
        });
    });

    //Update_Status_Comment
    $('.approve_cancel').click(function (){
        var cancel_status = $(this).data('cancel_status');
        var cancel_id = $(this).data('cancel_id');
        if(cancel_status==2){
            var alert='Successful unapproval !!!';
        }else if(cancel_status==1){
            var alert='Successful approval   !!!';
        }
        $.ajax({
            url:'/admin/orders/list-cancel',
            method:'POST',
            data:{
                cancel_status:cancel_status,
                cancel_id:cancel_id,
            },
            success:function(data){
                swal({
                    title: alert,
                    type:'success',
                    confirmButtonClass: "btn-success",
                },function (){
                    location.reload();
                });

            }
        });
    });

    //Update_Status_Comment
    $('.btn_approve').click(function (){
        var comment_status = $(this).data('comment_status');
        var comment_id = $(this).data('comment_id');
        var product_id = $(this).data('product_id');
        if(comment_status){
            var alert='Successful approval !!!';
        }else{
            var alert='Successful unapproval  !!!';
        }
        $.ajax({
            url:'/admin/comments/approve-comment',
            method:'POST',
            data:{
                comment_status:comment_status,
                comment_id:comment_id,
                product_id:product_id,
            },
            success:function(data){
                swal({
                    title: alert,
                    type:'success',
                    confirmButtonClass: "btn-success",
                },function (){
                    location.reload();
                });

            }
        });
    });
    //Reply_Comment
    $('.reply').click(function (){
        var comment_id = $(this).data('comment_id');
        var product_id = $(this).data('product_id');
        var name = $('.name').val();
        var content = $('#content'+comment_id).val();
        $.ajax({
            url:'/admin/comments/reply-comment',
            method:'POST',
            data:{
                comment_id:comment_id,
                product_id:product_id,
                name:name,
                content:content,
            },
            success:function(data){
                $('#Modal-Reply-Comment'+comment_id).modal('hide');
                swal({
                    title: 'Reply successfully !!!',
                    type:'success',
                    confirmButtonClass: "btn-success",
                },function (){

                    location.reload();
                });

            }
        });
    });
    //DataTable
    $(document).ready(function() {
        $(document).ready(function () {
            $('#dtBasicExample').DataTable({
                "paging":   false,
                "info":   false,
                "filter": false
            });
        });
    });
</script>
{{-- Scrip web --}}
<script>
    $(function () {
        $.validator.setDefaults({
            submitHandler: function () {
                alert( "Form successful submitted!" );
            }
        });
        $('#quickForm').validate({
            rules: {
                email: {
                    required: true,
                    email: true,
                },
                password: {
                    required: true,
                    minlength: 5
                },
                terms: {
                    required: true
                },
            },
            messages: {
                email: {
                    required: "Please enter a email address",
                    email: "Please enter a vaild email address"
                },
                password: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 5 characters long"
                },
                terms: "Please accept our terms"
            },
            errorElement: 'span',
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function (element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            }
        });
    });
</script>
<script>
    $(function () {
        bsCustomFileInput.init();
    });
</script>
@yield('footer')
