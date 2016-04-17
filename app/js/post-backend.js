$(document).ready(function(){
    $("#add-post").on('click', redirect2AddNewPost);

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
    CKEDITOR.replace('content-input');
    /* end: ckeditor */

});
