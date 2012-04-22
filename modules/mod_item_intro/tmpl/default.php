<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<ul class="latestnews<?php echo $params->get('moduleclass_sfx'); 
$image_path = JPATH_SITE . DS . 'modules' . DS . 'mod_latestnewswithintro' . DS . 'images' . DS; ?>">
<?php for ($i=0;$i<count($list);$i++) :  
	 $item = $list[$i];?>
	<li class="latestnews<?php echo $params->get('moduleclass_sfx'); ?>">
		
		<img src="/internship/modules/mod_latestnewswithintro/images/bullet.png"/><a href="<?php echo $item->link; ?>" class="latestnews<?php echo $params->get('moduleclass_sfx'); ?>">
			<?php echo $item->text1; ?>			
		</a><br/>
		<?php 
		if ($i==0) 
			echo '<br/>'.$item->text4;
		if ( $params->get('section')==1)
				echo '<i>'.$item->text2.'</i>';
			  if ( $params->get('section')==1 && $params->get('category')==1)
				echo '<i> / </i>';
			  if ( $params->get('category')==1)
				echo '<i>'.$item->text3.'</i>';
			  //if ( $params->get('intro_text')==1)
				//echo '<br/>'.$item->text4; 
		?>
	</li>
<?php endfor; ?>
</ul>