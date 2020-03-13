<?php

class User extends \PicORM\Model {
    protected static $_tableName = 'users';
    protected static $_primaryKey = 'id';

    protected static $_tableFields = array(
        'username',
        'email',
        'password',
    );

    public $id;
    public $username;
    public $email;
    public $password;

}