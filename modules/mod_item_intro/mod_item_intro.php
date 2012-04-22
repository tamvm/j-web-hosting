<?php
/**
* @version		$Id: mod_latestnews.php 10381 2008-06-01 03:35:53Z pasamio $
* @package		Joomla
* @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// Include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');

$document =& JFactory::getDocument();
$document->addStyleSheet(JURI::base() . 'modules/mod_item_intro/css/style.css');
?>
<div class="host_container box">
  <h3>Web Hosting</h3>
  <div>The main author of the open-source text editor Vim writes about how it ..... Since most of the world appears to be moving to Unicode, that is what </div>
  <div class="buttons">
    <div class="button1 blue right">Buy Now</div>
    <div class="price right">20.000VND/thang</div>
  </div>
</div>
<div class="domain_container box">
  <h3>Web Hosting</h3>
  <div>The main author of the open-source text editor Vim writes about how it ..... Since most of the world appears to be moving to Unicode, that is what </div>
  <div class="buttons">
    <div class="button1 blue">Buy Now</div>
  </div>
</div>
<div class="vps_container box">
  <h3>Web Hosting</h3>
  <div>The main author of the open-source text editor Vim writes about how it ..... Since most of the world appears to be moving to Unicode, that is what </div>
  <div class="buttons">
    <div class="button1 blue">Buy Now</div>
  </div>
</div>
