<?php
/**
* @version		$Id: mod_dinamods.php 2008 vargas $
* @package		Joomla
* @license		GNU/GPL, see LICENSE.php
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// Include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');

$position = trim( $params->get('position', 'dinamod') );

$dinamods = JModuleHelper::getModules( $position );

if ( !$dinamods ) :  return; endif;

global $dinamods_id;

if ( !$dinamods_id ) : $dinamods_id = 1; endif;

$doc =& JFactory::getDocument();
$doc->addStyleDeclaration(modDinamodsHelper::buildCSS( $params, $dinamods_id ));

JHTML::script('dinamods.js','modules/mod_dinamods/js/',false );

require( JModuleHelper::getLayoutPath('mod_dinamods') );

$dinamods_id++;