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
		$postModel = PostModel::model()->findAll();
		$this->render('index', array(
			'postModel' => $postModel
		));
	}

	public function actionHashPassword(){
		echo CPasswordHelper::hashPassword(123456);
	}

	public function actionAddNewPostForm(){
			$this->render('_add-new-post-form');
	}

	public function actionDetectCreateBy(){
		if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && isset($_POST['username']) &&
				isset($_POST['password']) &&
				strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
			$uname = $_POST['username'];
			$pass = $_POST['password'];
			$criteria = new CDbCriteria;
			$criteria->condition = 'username = :uname';
			$criteria->params = array(
					':uname' => $uname
			);
			$model = UserModel::model()->find($criteria);
			if(count($model) > 0)
				echo CPasswordHelper::verifyPassword($pass, $model->password) ? $model->user_id : 'not found';
			else
				echo 'not found';
		}else{
			$this->redirect(array('index'));
		}
	}

	public function actionAddNewPost(){
		if(!isset($_FILES['thumbnail-input']))
			$this->redirect(array('index'));
		$path = 'images/post/' . time() . $_FILES['thumbnail-input']['name'];
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
		}else if(!is_uploaded_file($_FILES['thumbnail-input']["tmp_name"])){
			$message = "You may be attempting to hack our server. We're on to you;
							expect a knock on the door sometime soon.";
		}else{
			$message = "";
			$move =  move_uploaded_file($_FILES['thumbnail-input']['tmp_name'], $path);
			if(!$move){
				$message = "Error moving thumbnail-inputed file. Check the script is granted
								Read/Write/Modify permissions.";
			}
		}

		if($message != ''){
			header('refresh: 2; url=index.php?r=site/addnewpostform');
			echo $message;
		}else{
			if(trim($_POST['title-input']) === "" || trim($_POST['article-input']) === "" ||
				trim($_POST['article-preview-input']) === ""){
					header('refresh: 2; url=index.php?r=site/addnewpostform');
					echo 'Text fields must be exist.';
					exit;
			}
			// title-input, article-input, article-preview-input
			$fields = array();
			$fields['title'] = htmlspecialchars(addslashes(trim($_POST['title-input'])));

			$titleModel = PostModel::model()->findAll(array(
				'condition' => 'title = :tt',
				'params' => array(':tt' => $fields['title'])
			));

			if(count($titleModel) > 0){
				header('refresh: 2; url=index.php?r=site/addnewpostform');
				echo 'Title post must be unique.';
				exit;
			}

			$fields['content'] = htmlspecialchars(addslashes($_POST['article-input']));
			$fields['thumbnail'] = $path;
			$fields['content_preview'] = htmlspecialchars(addslashes($_POST['article-preview-input']));
			$fields['user_id'] = $_POST['createby'];

			$postModel = new PostModel;
			$postModel->_attributes = $fields;
			if($postModel->save()){
				header('refresh: 2; url=index.php');
				echo 'created a new post.';
			}else{
				header('refresh: 2; url=index.php?r=site/addnewpostform');
				echo 'can not create a new post.';
			}
		}
	}

	public function actionPost($p){
		if(isset($p) && $p!=''){
			$postModel = PostModel::model()->find(array(
				'condition' => 'post_id = :p',
				'params' => array(':p' => $p)
			));
			if(count($postModel) == 0)
				$this->redirect(array('index'));

			$this->render('_post', array(
				'postModel' => $postModel
			));
		}else{
			$this->redirect(array('index'));
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
