<?php
session_start();

$_ENV = parse_ini_file (__DIR__.'/../.env');
if ($_ENV['ROOT'] == '/') {
    $_ENV['ROOT'] = realpath(__DIR__.'/../').'/';
}

// Load composer autoloader
require_once($_ENV['ROOT'].'vendor/autoload.php');


//load template engine
$smarty = new Smarty();
$smarty->template_dir = $_ENV['ROOT'].'app/views/';
$smarty->compile_dir = $_ENV['ROOT'].'cache/smarty_compile';
$smarty->cache_dir = $_ENV['ROOT'].'cache/smarty_cache';
$smarty->setPluginsDir($_ENV['ROOT'].'core/smarty_addons/');
$smarty->caching = true;
$smarty->assign('title', $_ENV['TITLE']);
$smarty->assign('site_root', $_ENV['PUBLIC_ROOT']);

// Load AltoRouter Router
$router = new AltoRouter();
$router->setBasePath($_ENV['PUBLIC_ROOT']);
$smarty->assign('router', $router);

// Load easy-lang Localization library
require_once($_ENV['ROOT'].'vendor/puresoft/easy-lang/easylang.php');
use puresoft\easylang\EasyLang;
$lang = new EasyLang( ($_ENV['ROOT'].'app/langs/'), 'en', false );
// laod addon for Smarty
require_once($_ENV['ROOT'].'core/smarty_addons/lang.php');

//load PicORM
\PicORM\PicORM::configure(array(
	'datasource' => new PDO($_ENV['DATABASE_TYPE'].':dbname='.$_ENV['DATABASE_NAME'].';host='.$_ENV['DATABASE_SERVER'], $_ENV['DATABASE_USERNAME'], $_ENV['DATABASE_PASSWORD'])
));