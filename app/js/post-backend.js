$(document).ready(function(){
    var submitForm = false;
    $("#add-post").on('click', redirect2AddNewPost);

    $('#add-new-post-form').on('submit', function(){
        if(!submitForm)
            $('#detect-modal').modal();
        return submitForm;
    });

    $('#detect-user-button').on('click', function(){
        var result = detect();
        console.log('before submit : ' + result);
        if(result != 'not found' && result != 'error'){
            $('#createby').val(result)
            console.log('in submit : ' + result);
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

    /* start: ckeditor */
    CKEDITOR.replace( 'article-preview-input', {
        toolbar: [
            { name: 'document', items: [ 'Source', '-', 'NewPage', 'Preview', '-', 'Templates' ] },
            [ 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord' ],
            '/',
            { name: 'basicstyles', items: [ 'Bold', 'Italic', 'Underline' ] }
        ]
    });
    CKEDITOR.replace('article-input');
    /* end: ckeditor */

});
