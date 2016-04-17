<?php

class PostModel extends CActiveRecord {
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
    public function tableName(){
        return 'post_tb';
    }
    public function attributeLabels(){
        return array(
            'post_id' => 'Post Id',
            'user_id' => 'User Id',
            'title' => 'Title',
            'content' => 'Content',
            'thumbnail' => 'Thumbnail',
            'content_preview' => 'Content Preview'
        );
    }
    public function relations(){
        return array(
            'user' => array(self::BELONGS_TO, 'UserModel', 'user_id')
        );
    }
}

?>
