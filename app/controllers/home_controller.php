<?php
require_once(__DIR__.'/../models/User.php');

class home_controller {
	public function display_item() {
		$user = User::findOne(array('id' => 1));
		echo $user->username;
	}
}