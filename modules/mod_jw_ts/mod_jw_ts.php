<?php
/**
 * @version		2.0
 * @package		Tabs & Sliders (module)
 * @author    JoomlaWorks - http://www.joomlaworks.net
 * @copyright	Copyright (c) 2006 - 2012 JoomlaWorks Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

// JoomlaWorks reference parameters
$mod_name               = "mod_jw_ts";
$mod_copyrights_start   = "\n\n<!-- JoomlaWorks \"Tabs & Sliders\" Module (v2.0) starts here -->\n";
$mod_copyrights_end     = "\n<!-- JoomlaWorks \"Tabs & Sliders\" Module (v2.0) ends here -->\n\n";

// API
$mainframe	= &JFactory::getApplication();
$document 	= &JFactory::getDocument();
$db 				= &JFactory::getDBO();
$user 			= &JFactory::getUser();
$aid 				= $user->get('aid');

// Assign paths
$sitePath 	= JPATH_SITE;
$siteUrl  	= substr(JURI::base(), 0, -1);

// Module parameters
$jwts_position			= trim($params->get('jwts_position','left'));
$jwts_displaytype		= $params->get('jwts_displaytype','tabs');
$jwts_showmodtitle	= intval($params->get('jwts_showmodtitle',0));

// Load the module position
$jwts_renderer			= $document->loadRenderer('module');
$jwts_params				= array('style'=>'none');
$modulesInPosition 	= JModuleHelper::getModules($jwts_position);

// Load required JS
if($mainframe->getCfg('caching') && $params->get('cache')==1){
	if(!defined('JW_TS_MOD_JS')){
		echo '<script type="text/javascript" src="'.JURI::root(true).'/modules/'.$mod_name.'/includes/js/behaviour.js"></script>';
		define('JW_TS_MOD_JS', true);
	}
} else {
	$document->addScript(JURI::root(true).'/modules/'.$mod_name.'/includes/js/behaviour.js');
}

// Output content with template
echo $mod_copyrights_start;
if($jwts_displaytype=="tabs") {
	require(JModuleHelper::getLayoutPath($mod_name,'tabs'));
} else {
	require(JModuleHelper::getLayoutPath($mod_name,'sliders'));
}
echo $mod_copyrights_end;
