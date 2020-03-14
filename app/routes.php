<?php

// Routes definitions

// Landing page route
$router->map( 'GET', '/', 'HomeController#displayHome', 'home');


// Routes function

// match current request url
$match = $router->match();

if( is_array($match) && is_callable( $match['target'] ) ) { //route matched with arrow function
	call_user_func_array( $match['target'], $match['params'] ); 
} else if(strpos($match['target'], '#') !== false && file_exists(__DIR__.'/controllers/'.explode('#', $match['target'])[0].'.php')) { //route matched with controller
    $controller = explode('#', $match['target']);
    require_once(__DIR__.'/controllers/'.$controller[0].'.php');
    $class = new $controller[0];
    call_user_func_array(array($class, $controller[1]), $match['params']);
} else {
	// no route was matched
	header( $_SERVER["SERVER_PROTOCOL"] . ' 404 Not Found');
}
