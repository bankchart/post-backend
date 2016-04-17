<?php

class SiteController extends Controller
{
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('index');
	}

	public function actionAddNewPostForm(){
			$this->render('_add-new-post-form');
	}

	public function actionAddNewPost(){
		print_r($_POST);
		if(!isset($_FILES['thumbnail-input']))
			$this->redirect(array('index'));
		if(($_FILES['thumbnail-input'] == "none") OR (empty($_FILES['thumbnail-input']['name']))){

			$message = "No file thumbnail-inputed.";

		}else if($_FILES['thumbnail-input']["size"] == 0){

			$message = "The file is of zero length.";

		}else if(($_FILES['thumbnail-input']["type"] != "image/pjpeg") AND
			($_FILES['thumbnail-input']["type"] != "image/jpeg") AND
			($_FILES['thumbnail-input']["type"] != "image/png") AND
			($_FILES['thumbnail-input']["type"] != "image/gif")){

				$message = "The image must be in either GIF , JPG or PNG format.
							Please thumbnail-input a JPG or PNG instead.";
		}else if(!is_thumbnail-inputed_file($_FILES['thumbnail-input']["tmp_name"])){
			$message = "You may be attempting to hack our server. We're on to you;
							expect a knock on the door sometime soon.";
		}else{
			$message = "";
			$move =  move_thumbnail-inputed_file($_FILES['thumbnail-input']['tmp_name'], $url);
			if(!$move){
				$message = "Error moving thumbnail-inputed file. Check the script is granted
								Read/Write/Modify permissions.";
			}
		}

		if($message != ''){
			header('refresh: 5; url=index.php?r=site/addnewpostform');
			echo $message;
		}else{
			/* start: regular expression */
			
			/* end: regular expression */
		}
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}
}
