<?php
require_once(__DIR__.'/../models/User.php');

class HomeController {
	public function displayHome() {
		global $smarty;
    	$smarty->display("welcome.tpl");
	}
}