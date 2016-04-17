$(document).ready(function(){
    var submitForm = false;
    $('#title-input').focus();
    $("#add-post").on('click', redirect2AddNewPost);

    $('#add-new-post-form').on('submit', function(){
        if(!submitForm){
            $('#detect-modal').modal();
        }
        return submitForm;
    });
    $('#detect-modal').on('shown.bs.modal', function(){
        $('#username').focus();
    });
    $('.verify-auth').on('keyup', function(e){
        if(e.keyCode == 13 || e.which == 13)
            $('#detect-user-button').click();
    });
    $('#detect-user-button').on('click', function(){
        var result = detect();
        //console.log('before submit : ' + result);
        if(result != 'not found' && result != 'error'){
            $('#createby').val(result)
            //console.log('in submit : ' + result);
            submitForm = true;
            $('#add-new-post-form').submit();
        }else{
            alert('Username and/or Password was invalid.');
        }
    });

    function detect(){
        var result = 'empty';
        $.ajax({
            url: 'index.php?r=site/detectcreateby',
            type: 'post',
            data: {
                username : $('#username').val(),
                password : $('#password').val()
            },
            success: function(data){
                result = data;
            },
            error: function(data){
                result = 'error';
            },
            async: false
        });
        return result;
    }

    function redirect2AddNewPost(){
        location.href = 'index.php?r=site/addnewpostform';
    }
});
