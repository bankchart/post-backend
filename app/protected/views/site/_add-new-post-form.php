<div class='row pad-row post-content'>
    <div class='col-md-8'>
        <form method='post' action='index.php?r=site/addnewpost' id='add-new-post-form'
            enctype="multipart/form-data" name='add-new-post-form'>
            <div class="form-group">
                <label for="title-input">Title :</label>
                <input name='title-input' placeholder='enter 1-100 character(s)' type="text" class="form-control" id="title-input">
            </div>
            <div class="form-group">
                <label for="content-input">Thumbnail :</label>
                <input name='thumbnail-input' id="thumbnail-input" type='file'/>
            </div>
            <div class="form-group">
                <label for="article-preview-input">Article - Preview :</label>
                <textarea name='article-preview-input' class="form-control"
                    id="article-preview-input"></textarea>
            </div>
            <div class="form-group">
                <label for="content-input">Article :</label>
                <textarea name='article-input' class='form-control' id="article-input"></textarea>
            </div>
            <button id='add-post-button' type="submit" class="btn btn-default">เพิ่ม</button>
            <input name='createby' id='createby' type='hidden' />
        </form>
    </div>
</div>
<br/>
<div id='detect-modal' class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">ตรวจสอบสิทธิ์การโพสต์</h4>
            </div>
            <div class="modal-body">
                <form class='form-horizontal' action='index.php?r=site/detectcreateby'
                        method='post' id='detect-user-form'>
                    <div class='form-group'>
                        <label for='username' class='col-md-2 control-label'>
                            <?=UserModel::model()->attributeLabels()['username']?>
                        </label>
                        <div class='col-md-8'>
                            <input placeholder='enter : admin' class='form-control verify-auth'
                                type='text' name='username' id='username' />
                        </div>
                    </div>
                    <div class='form-group'>
                        <label for='password' class='col-md-2 control-label'>
                            <?=UserModel::model()->attributeLabels()['password']?>
                        </label>
                        <div class='col-md-8'>
                            <input placeholder='enter : 123456' class='form-control verify-auth'
                                type='password' name='password' id='password' />
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
                <button type="button" id='detect-user-button' class="btn btn-primary">ตรวจสอบ</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script src='<?php echo Yii::app()->request->baseUrl; ?>/ck/ckeditor.js'></script>
<?php if(Yii::app()->controller->id == 'site' &&
            Yii::app()->controller->action->id == 'addnewpostform'): ?>
<script>
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
</script>
<?php endif; ?>
