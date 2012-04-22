<?php
/**
* @version		$Id: helper.php 2008 vargas $
* @package		Joomla
* @license		GNU/GPL, see LICENSE.php
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class modDinamodsHelper {

	function buildCSS ( &$params,$dinamods_id ) {

		$tpos     = $params->get('tabs_pos', 'top');
		$width    = $params->get('width', 'auto');
		$heigh    = $params->get( 'height', 'auto');
		$border   = $params->get('border', '1px solid #CCCCCC');
		$bgcolor  = $params->get('bgcolor', '#FFFFFF');
		$padding  = $params->get('padding', '5px');
		$trmarg   = $params->get('tab_margin_right', 0);
		$tlmarg	  = $params->get('tab_margin_left', 0);
		$tbgcol	  = $params->get('tab_bgcolor', '#F6F6F6');
		$tfont    = $params->get('tab_font', 'bold 13px Arial');
		$tfcol    = $params->get('tab_font_color', '#000000');
		$tpad	  = $params->get('tab_padding', '5px 11px 5px 11px');
		$stbgcol  = $params->get('sel_tab_bgcolor', '#FFFFFF');
		$stfcol	  = $params->get('sel_tab_font_color', '#135CAE');
		$htbgcol  = $params->get('hover_tab_bgcolor', '#FFFFFF');
		$htfcol   = $params->get('hover_tab_font_color', '#135CAE');

		$style = "#dm_tabs_".$dinamods_id." ul.dm_menu_".$dinamods_id." {"
			. " width:".$width.";"
			. " margin:0;"
			. " padding:0;"
			. " list-style:none;"
			. " }\n"
			. "#dm_tabs_".$dinamods_id." ul.dm_menu_".$dinamods_id." li.dm_menu_item_".$dinamods_id." {"
			. " display: inline;"
			. " margin:0 ".$trmarg." 0 ".$tlmarg.";"
			. " padding:0;"
			. " float:left;"
			. " border:".$border.";"
			. " border-".($tpos == 'top' ? "bottom" : "top").":none;"
			. " background-color:".$tbgcol.";"
			. " background-image:none;"
			. " }\n"
			. "#dm_tabs_".$dinamods_id." ul.dm_menu_".$dinamods_id." li.dm_menu_item_".$dinamods_id." a {"
			. " font:".$tfont.";"
			. " float:left;"
			. " border:none;"
			. " color:".$tfcol.";"
			. " padding:".$tpad.";"
			. " text-decoration:none;"
			. " }\n"
			. "#dm_tabs_".$dinamods_id." ul.dm_menu_".$dinamods_id." li.dm_menu_item_".$dinamods_id." a.dm_selected {"
			. " position:relative;"
			. ($tpos == 'top' ? "top" : "bottom").":".(int)$border."px;"
			. "background-color:".$stbgcol.";"
			. "color:".$stfcol.";"
			. " }\n"
			. "#dm_tabs_".$dinamods_id." ul.dm_menu_".$dinamods_id." li.dm_menu_item_".$dinamods_id." a:hover {"
			. "background-color:".$htbgcol.";"
			. "color:".$htfcol.";"
			. " }\n"
			. "#dm_container_".$dinamods_id." {"
			. "border:".$border.";"
			. "width:".$width.";"
			. "height:".$heigh.";"
			. "background-color:".$bgcolor.";"
			. "padding:".$padding.";"
			. "overflow:hidden;"
			. " }\n"
			. "#dm_container_".$dinamods_id." .dm_tabcontent {"
			. "display:none;"
			. " }\n"
			. "@media print {"
			. " #dm_container_".$dinamods_id." .dm_tabcontent {"
			. "display:block !important;"
			. " }"
			. " }";

		return $style;
	}
}