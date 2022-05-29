
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
function removeRow(id,url)
{
    if (confirm('Delete will not be able to recover,are you sure?')){
        $.ajax({
            type:'DELETE',
            datatype: 'JSON',
            data:{ id },
            url: url,
            success: function (result){
                if(result.error === false){
                    alert(result.message);
                    location.reload();
                }else {
                    alert('An error occurred, please try again !!!');
                }
            }
        })
    }
}
/* Upload file */
$('input[name=file]').change(function() {
    const form = new FormData();
    form.append('file',$(this)[0].files[0]);
    $.ajax({
        processData: false,
        contentType: false,
        type:'POST',
        datatype:'JSON',
        data: form,
        url: '/admin/upload/services',
        success: function (result){
            if (result.error===false){
                $('div[name=image_show]').html('<a href="'+result.url+'" target="_blank"><img style="width: 100%" src="'+result.url+'"></img></a>')
                $('input[name=file_sc]').val(result.url);
            }else {
                alert('Upload file failed !!!');
            }
        }
    });
});
/* Delete Image */
$(document).ready(function (){
    $("a#del_img").on('click',function (){
        alert(111);
    });

});
