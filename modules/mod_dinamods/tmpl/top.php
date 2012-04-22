<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>

<div id="dm_tabs_<?php echo $dinamods_id; ?>">
  <ul class="dm_menu_<?php echo $dinamods_id; ?>">
    <?php
$k=1;
foreach ( $dinamods as $dinamod ) {
	if ($params->get('tracker', 0)) {
		$href = '/' . $dinamod->id . ':' . JFilterOutput::stringURLSafe( $dinamod->title );
	} else {
		$href = '#';
	}
?>
    <li class="dm_menu_item_<?php echo $dinamods_id; ?>"><a href="<?php echo $href; ?>" rel="dm_tab_<?php echo $dinamods_id; ?>_<?php echo $k; ?>"<?php echo $k == 1 ? ' class="dm_selected"' : ''; ?>><?php echo $dinamod->title; ?></a></li>
    <?php
$k++; 
} ?>
  </ul>
</div>
<br style="clear:left;" />
<div id="dm_container_<?php echo $dinamods_id; ?>">
  <?php
$k=1;
foreach ( $dinamods as $dinamod ) {
  $modParams = new JParameter( $dinamod->params );
  $class_sfx = $modParams->get( 'moduleclass_sfx' );?>
  <div id="dm_tab_<?php echo $dinamods_id; ?>_<?php echo $k; ?>" class="dm_tabcontent">
    <div class="moduletable<?php echo $class_sfx; ?>">
      <?php
        echo JModuleHelper::renderModule($dinamod); ?>
    </div>
  </div>
  <?php
$k++;
}
?>
</div>