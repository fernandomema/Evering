<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.lang.php
 * Type:     function
 * Name:     lang
 * Purpose:  get translation from easy-lang Localization library
 * -------------------------------------------------------------
 */

function smarty_function_lang($params)
{
    global $lang;
    return $lang->getTranslate($params['key']);
}
?>