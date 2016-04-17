<div class='row pad-row post-content'>
    <div class='col-md-8'>
        <form method='post' action='index.php?r=site/addnewpost' id='add-new-post-form'
            enctype="multipart/form-data" name='add-new-post-form'>
            <div class="form-group">
                <label for="title-input">Title :</label>
                <input name='title-input' type="text" class="form-control" id="title-input">
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
                <label for="content-input">Content :</label>
                <textarea name='content-input' class='form-control' id="content-input"></textarea>
            </div>
            <button type="submit" class="btn btn-default">เพิ่ม</button>
        </form>
    </div>
</div>
<br/>
<script src='<?php echo Yii::app()->request->baseUrl; ?>/ck/ckeditor.js'></script>
