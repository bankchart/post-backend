<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <link rel='stylesheet' href='<?php echo Yii::app()->request->baseUrl; ?>/bootstrap/css/bootstrap.min.css' />
    <link rel='stylesheet' href='<?php echo Yii::app()->request->baseUrl; ?>/css/post-backend.css' />
    <title>Post - Backend</title>
</head>

<body>

    <div class='container header-padding'>
        <div class='row pad-row' style='padding-bottom: 5px;border-bottom: 1px solid #dcddde;'>
            <div class='col-md-12 post-phone-text-color'>
                <div class='post-phone-inline'>
                    <i class='glyphicon glyphicon-earphone head-social-icon post-phone-size'></i>
                    02-693-9391 ถึง 2
                    <button id='add-post' class='btn btn-default pull-right'>เพิ่มโพสต์</button>
                </div>
            </div>
        </div>
        <div class='row pad-row'>
            <div class='col-md-12'>
                <div onclick='javascript: location.href="index.php";' class='logo'></div>
            </div>
        </div>
        <?php echo $content; ?>
    </div>

</body>
</html>
<script src='<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.js'></script>
<script src='<?php echo Yii::app()->request->baseUrl; ?>/js/post-backend.js'></script>
