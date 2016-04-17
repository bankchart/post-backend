<?php

class ImageModel extends CActiveRecord {
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
    public function tableName(){
        return 'image_tb';
    }
    public function attributeLabels(){
        return array(
            'image_id' => 'Image Id',
            'image_path' => 'Image Path',
            'post_id' => 'Post Id'
        );
    }
}

?>
