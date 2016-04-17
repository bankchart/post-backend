<?php

class UserModel extends CActiveRecord {
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
    public function tableName(){
        return 'user_tb';
    }
    public function attributeLabels(){
        return array(
            'user_id' => 'User Id',
            'username' => 'Username',
            'password' => 'Password',
            'fullname' => 'Fullname'
        );
    }
}

?>
