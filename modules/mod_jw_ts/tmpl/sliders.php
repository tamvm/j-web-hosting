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

/*
Here we call the stylesheet style.css from a folder called 'css' and located at the same directory with this template file. If Joomla!'s cache is turned on, we print out the CSS include within a script tag so we're valid and the styling is included properly (it's how Joomla! works unfortunately).
*/
$filePath = substr(JURI::base(), 0, -1).str_replace(JPATH_SITE,'',dirname(__FILE__));

?>

<?php if($mainframe->getCfg('caching') && $params->get('cache')==1): ?>
<?php if(!defined('JW_TS_MOD_CSS')): ?>
<script type="text/javascript">
	//<![CDATA[
	document.write('\
	<style type="text/css" media="all">\
		@import "<?php echo $filePath; ?>/css/template.css";\
	</style>\
	');
	//]]>
</script>
<?php define('JW_TS_MOD_CSS', true); ?>
<?php endif; ?>
<?php else: ?>
<?php $document->addStyleSheet($filePath.'/css/template.css'); ?>
<?php endif; ?>

<div id="jwTabsAndSlidersModule<?php echo $module->id; ?>" class="jwts_slider<?php if($params->get('moduleclass_sfx')) echo ' '.$params->get('moduleclass_sfx'); ?>">
	<?php foreach($modulesInPosition as $mod): ?>
	<div class="jwts_title">
		<div class="jwts_title_left">
			<a href="javascript:void(null);" class="jwts_title_text" title="<?php echo JText::_('MOD_JW_TS_CLICK_TO_OPEN'); ?>">
				<?php echo $mod->title; ?>
			</a>
		</div>
	</div>
	<div class="jwts_slidewrapper">
		<div>
			<?php if($jwts_showmodtitle): ?>
			<div class="jwts_modtitle">
				<?php echo $mod->title; ?>
			</div>
			<?php endif; ?>
			<?php echo $jwts_renderer->render($mod, $jwts_params); ?>
		</div>
	</div>
	<?php endforeach; ?>
</div>
<div class="jwts_clr"></div>
