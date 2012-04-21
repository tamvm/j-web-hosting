<?php
/**
@version 1.0: mod_S5_frontpageslide
Author: Shape 5 - Professional Template Community
Available for download at www.shape5.com
Copyright Shape 5 LLC
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

$s5_shadows	= $params->get( 's5_shadows', '' );
$pretext		= $params->get( 'pretext', '' );
$height		    = $params->get( 's5_height', '' );
$buttonheight	= $params->get( 's5_buttonheight', '' );
$lineheight		= $params->get( 's5_lineheight', '' );
$text1line		= $params->get( 'text1line', '' );
$text1image		= $params->get( 'text1image', '' );
$text2line		= $params->get( 'text2line', '' );
$text2image		= $params->get( 'text2image', '' );
$text3line		= $params->get( 'text3line', '' );
$text3image		= $params->get( 'text3image', '' );
$text4line		= $params->get( 'text4line', '' );
$text4image		= $params->get( 'text4image', '' );
$text5line		= $params->get( 'text5line', '' );
$text5image		= $params->get( 'text5image', '' );
$text6line		= $params->get( 'text6line', '' );
$text6image		= $params->get( 'text6image', '' );
$text7line		= $params->get( 'text7line', '' );
$text7image		= $params->get( 'text7image', '' );
$text8line		= $params->get( 'text8line', '' );
$text8image		= $params->get( 'text8image', '' );
$text9line		= $params->get( 'text9line', '' );
$text9image		= $params->get( 'text9image', '' );
$text10line		= $params->get( 'text10line', '' );
$text10image	= $params->get( 'text10image', '' );
$s5_buttoncolor = $params->get( 's5_buttoncolor', '' );
$s5_hoverimage = $params->get( 's5_hoverimage', '' );
$s5_hovercolor = $params->get( 's5_hovercolor', '' );
$s5_buttonimage = $params->get( 's5_buttonimage', '' );
$width  = $params->get( 's5_width', '' );
$s5_buttoncolumnwidth  = $params->get( 's5_buttoncolumnwidth', '' );
$s5_contentwidth = (($width - $s5_buttoncolumnwidth) - 60) . 'px';
$s5_aligncolumn = $params->get( 's5_aligncolumn', '' );
$s5_fontcolor = $params->get( 's5_fontcolor', '' );
$s5_javascript = $params->get( 's5_javascript', '' );
$s5_mootoolsmouse = $params->get( 's5_mootoolsmouse', '' );
$s5_effectsani = $params->get( 's5_effectsani', '' );
$s5_effectmouse = $params->get( 's5_effectmouse', '' );

$s5_ifvisible = 0;
if ($text1line != "" && $text2line == "" && $text3line == "" && $text4line == "" && $text5line == "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 1;
}
if ($text1line != "" && $text2line != "" && $text3line == "" && $text4line == "" && $text5line == "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 2;
}
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line == "" && $text5line == "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 3;
}
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line == "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 4;
}
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 5;
}
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 6;
}
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line != "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 7;
}
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line != "" && $text8line != "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 8;
}
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line != "" && $text8line != "" && $text9line != "" && $text10line == "")  {
$s5_ifvisible = 9;
}
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line != "" && $text8line != "" && $text9line != "" && $text10line != "")  {
$s5_ifvisible = 10;
}

echo "<script language=\"javascript\" type=\"text/javascript\" >var s5_ifvisible = ".$s5_ifvisible.";</script>";

?>

<?php if ($pretext != "") { ?>
<br />
<?php echo $pretext ?>
<br /><br />
<?php } ?>


<?php

$iss_ie6 = null;

$br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.
if(ereg("msie 6", $br)) {
$iss_ie6 = "yes";
}
else {
$iss_ie6 = "no";
}
?>

<script type="text/javascript">//<![CDATA[
    document.write('<link href="modules/mod_s5_frontpageslide/s5_frontpageslide/styles.css" rel="stylesheet" type="text/css" media="screen" />');
//]]></script><script type="text/javascript">//<![CDATA[
    document.write('<style type="text/css">#s5_button_frame ul li {color:<?php echo $s5_fontcolor ?>;line-height:<?php echo $lineheight ?>;height:<?php echo $buttonheight ?>;background:<?php echo $s5_buttoncolor ?> url(<?php echo $s5_buttonimage ?>) repeat-x;}</style>');
//]]></script><script type="text/javascript">//<![CDATA[
    document.write('<style type="text/css">#s5_button_frame ul li:hover, #s5_button_frame ul li.over {color:<?php echo $s5_fontcolor ?>;background:<?php echo $s5_hovercolor ?> url(<?php echo $s5_hoverimage ?>) no-repeat right;}</style>');
//]]></script><script type="text/javascript">//<![CDATA[
    document.write('<style type="text/css">#s5_button_frame ul li.s5_fsfirst {color:<?php echo $s5_fontcolor ?>;border-top:1px solid <?php if ($iss_ie6 == "yes") { ?>none<?php } else {?>transparent<?php } ?>;background:<?php echo $s5_buttoncolor ?>;}</style>');
//]]></script><script type="text/javascript">//<![CDATA[
    document.write('<style type="text/css">#s5_button_frame ul li.s5_fsfirst:hover, #s5_button_frame ul li.s5_fsfirst.over {color:<?php echo $s5_fontcolor ?>;background:<?php echo $s5_hovercolor ?> url(<?php echo $s5_hoverimage ?>) no-repeat right;}</style>');
//]]></script>
<?php if ($iss_ie6 == "yes") { ?>
<style type="text/css">
	.s5_shadowleft {
	background:none;
	filter:
	progid:dximagetransform.microsoft.alphaimageloader(src='modules/mod_s5_frontpageslide/s5_frontpageslide/modules_03.png) sizingmethod='crop');}


	.s5_shadowright {
	background:none;
	filter:
	progid:dximagetransform.microsoft.alphaimageloader(src='modules/mod_s5_frontpageslide/s5_frontpageslide/modules_04.png) sizingmethod='crop');}
</style>
<?php } ?>


<?php if ($iss_ie6 == "yes") { ?>
<script language="javascript" type="text/javascript">

startList = function() {
	var sfElss = document.getElementById("s5navfs").getElementsByTagName("LI");
	for (var ii=0; ii<sfElss.length; ii++) {
		sfElss[ii].onmouseover=function() {
			this.className+=" over";
			this.className+=" sfhover";
		}
		sfElss[ii].onmouseout=function() {
			this.className=this.className.replace(new RegExp(" over\\b"), "");
			this.className=this.className.replace(new RegExp(" sfhover\\b"), "");

		}
	}
}
if (window.attachEvent) window.attachEvent("onload", startList);

</script>
<?php } ?>


<?php if ($s5_javascript == "mootools") { ?>
<script type="text/javascript" src="modules/mod_s5_frontpageslide/s5_frontpageslide/mootoolsv11.js"></script>
<script type="text/javascript" src="modules/mod_s5_frontpageslide/s5_frontpageslide/iCarousel.js"></script>
<script language="javascript" type="text/javascript" >
window.addEvent("domready", function() {
	var s5Carousel = new iCarousel("s5_button_content", {
		idPrevious: "s5_button_previous",
		idNext: "",
		idToggle: "",
		item: {
			klass: "s5_button_item",
			size: <?php echo $s5_contentwidth ?>},
		animation: {
			type: "scroll",
			duration: 1000,
			amount: 1 }
	});
	<?php if ($text1line != "") { ?>
	$("thumb0").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(0)});<?php } ?>
	<?php if ($text2line != "") { ?>
	$("thumb1").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(1)});<?php } ?>
	<?php if ($text3line != "") { ?>
	$("thumb2").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(2)});<?php } ?>
	<?php if ($text4line != "") { ?>
	$("thumb3").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(3)});<?php } ?>
	<?php if ($text5line != "") { ?>
	$("thumb4").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(4)});<?php } ?>
	<?php if ($text6line != "") { ?>
	$("thumb5").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(5)});<?php } ?>
	<?php if ($text7line != "") { ?>
	$("thumb6").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(6)});<?php } ?>
	<?php if ($text8line != "") { ?>
	$("thumb7").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(7)});<?php } ?>
	<?php if ($text9line != "") { ?>
	$("thumb8").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(8)});<?php } ?>
	<?php if ($text10line != "") { ?>
	$("thumb9").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(9)});<?php } ?>
});
</script>
<?php } ?>

<?php if ($s5_javascript == "s5effects") { ?>
<?php if ($s5_effectsani == "snap") { ?>
<script type="text/javascript" src="modules/mod_s5_frontpageslide/s5_frontpageslide/s5_effects_snap.js"></script>
<?php } ?>

<?php if ($s5_effectsani == "fade") { ?>
<script type="text/javascript" src="modules/mod_s5_frontpageslide/s5_frontpageslide/s5_effects_fade.js"></script>
<?php } ?>
<?php } ?>

<div style="padding-top:10px;height:<?php echo $height ?>; width:<?php echo $width ?>; overflow:hidden;">
<?php if ($s5_shadows == "1") { ?>
<div class="s5_shadowleft" style="float:left;<?php if ($s5_aligncolumn == "right") { ?>width:26px;<?php } else {?>width:13px;<?php } ?>height:<?php echo $height ?>;"></div>
<?php } else {?>
<div style="float:left;<?php if ($s5_aligncolumn == "right") { ?>width:26px;<?php } else {?>width:13px;<?php } ?>height:<?php echo $height ?>;"></div>
<?php } ?>

<?php if ($s5_aligncolumn == "right") { ?>
<?php if ($s5_shadows == "1") { ?>
<div class="s5_shadowright" style="float:right;width:13px;height:<?php echo $height ?>;"></div>
<?php } else {?>
<div style="float:right;width:13px;height:<?php echo $height ?>;"></div>
<?php } ?>
<?php } ?>

<div style="<?php if ($s5_aligncolumn == "left") { ?>float:left;<?php } else {?>float:right;<?php } ?>width:<?php echo $s5_buttoncolumnwidth ?>;height:<?php echo $height ?>;">
	<div id="s5_button_frame">
       <ul id="s5navfs">
		<?php if ($text1line != "") { ?>
             <li id="thumb0" class="s5_fsfirst" style="color:<?php echo $s5_fontcolor ?>;" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb0op();shiftOpacity('s5_button_item1');<?php } ?>s5thumb0();"<?php } ?>><a href="#" <?php if ($text1image != "") { ?>style="background: url(<?php echo $text1image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text1line ?></a></li>
		<?php } ?>
		<?php if ($text2line != "") { ?>
			<li id="thumb1" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb1op();shiftOpacity('s5_button_item2');<?php } ?>s5thumb1();"<?php } ?>><a href="#" <?php if ($text2image != "") { ?>style="background:url(<?php echo $text2image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text2line ?></a></li>
        <?php } ?>
		<?php if ($text3line != "") { ?>
			<li id="thumb2" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb2op();shiftOpacity('s5_button_item3');<?php } ?>s5thumb2();"<?php } ?>><a href="#" <?php if ($text3image != "") { ?>style="background:url(<?php echo $text3image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text3line ?></a></li>
        <?php } ?>
		<?php if ($text4line != "") { ?>
			<li id="thumb3" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb3op();shiftOpacity('s5_button_item4');<?php } ?>s5thumb3();"<?php } ?>><a href="#" <?php if ($text4image != "") { ?>style="background:url(<?php echo $text4image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text4line ?></a></li>
        <?php } ?>
		<?php if ($text5line != "") { ?>
			<li id="thumb4" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb4op();shiftOpacity('s5_button_item5');<?php } ?>s5thumb4();"<?php } ?>><a href="#" <?php if ($text5image != "") { ?>style="background:url(<?php echo $text5image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text5line ?></a></li>
        <?php } ?>
		<?php if ($text6line != "") { ?>
			<li id="thumb5" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb5op();shiftOpacity('s5_button_item6');<?php } ?>s5thumb5();"<?php } ?>><a href="#" <?php if ($text6image != "") { ?>style="background:url(<?php echo $text6image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text6line ?></a></li>
        <?php } ?>
		<?php if ($text7line != "") { ?>
			<li id="thumb6" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb6op();shiftOpacity('s5_button_item7');<?php } ?>s5thumb6();"<?php } ?>><a href="#" <?php if ($text7image != "") { ?>style="background:url(<?php echo $text7image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text7line ?></a></li>
		<?php } ?>
		<?php if ($text8line != "") { ?>
			<li id="thumb7" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb7op();shiftOpacity('s5_button_item8');<?php } ?>s5thumb7();"<?php } ?>><a href="#" <?php if ($text8image != "") { ?>style="background:url(<?php echo $text8image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text8line ?></a></li>
		<?php } ?>
		<?php if ($text9line != "") { ?>
			<li id="thumb8" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb8op();shiftOpacity('s5_button_item9');<?php } ?>s5thumb8();"<?php } ?>><a href="#" <?php if ($text9image != "") { ?>style="background:url(<?php echo $text9image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text9line ?></a></li>
		<?php } ?>
		<?php if ($text10line != "") { ?>
			<li id="thumb9" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb9op();shiftOpacity('s5_button_item10');<?php } ?>s5thumb9();"<?php } ?>><a href="#" <?php if ($text10image != "") { ?>style="background:url(<?php echo $text10image ?>) no-repeat left;padding-left:26px;"<?php } ?>><?php echo $text10line ?></a></li>
        <?php } ?>
		</ul>
     </div>
</div>

<?php if ($s5_aligncolumn == "right") { ?>
<?php if ($s5_shadows == "1") { ?>
<div class="s5_shadowleft" style="float:right;width:13px;height:<?php echo $height ?>;"></div>
<?php } else {?>
<div style="float:right;width:13px;height:<?php echo $height ?>;"></div>
<?php } ?>
<?php } ?>


<?php if ($s5_aligncolumn == "left") { ?>
<?php if ($s5_shadows == "1") { ?>
<div class="s5_shadowright" style="float:left;width:13px;height:<?php echo $height ?>;"></div>
<?php } else {?>
<div style="float:left;width:13px;height:<?php echo $height ?>;"></div>
<?php } ?>
<?php } ?>


<div style="float:left;width:<?php echo $s5_contentwidth ?>;height:<?php echo $height ?>;overflow:hidden;">
 <div id="s5_button" style="width:<?php echo $s5_contentwidth ?>;height:<?php echo $height ?>;">
     <ul id="s5_button_content">
		<?php if ($text1line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item1" style="left:0px;display:block;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12 ?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_1' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div> </li>
		<?php } ?>
		<?php if ($text2line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item2" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12 ?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_2' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>
		<?php } ?>
		<?php if ($text3line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item3" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12 ?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_3' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>
		<?php } ?>
		<?php if ($text4line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item4" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12 ?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_4' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>
		<?php } ?>
		<?php if ($text5line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item5" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12 ?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_5' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>
		<?php } ?>
		<?php if ($text6line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item6" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12 ?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_6' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>
		<?php } ?>
		<?php if ($text7line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item7" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_7' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>
		<?php } ?>
		<?php if ($text8line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item8" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12 ?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_8' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>
		<?php } ?>
		<?php if ($text9line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item9" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12 ?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_9' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>
		<?php } ?>
		<?php if ($text10line != "") { ?>
			<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item10" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($s5_contentwidth) -12 ?>px;height:<?php echo $height ?>;padding:6px;"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_fs_10' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>
		<?php } ?>
     </ul>
 </div>
</div>

<?php if ($s5_aligncolumn == "left") { ?>
<?php if ($s5_shadows == "1") { ?>
<div class="s5_shadowright" style="float:left;width:32px;height:<?php echo $height ?>;"></div>
<?php } else {?>
<div style="float:left;width:13px;height:<?php echo $height ?>;"></div>
<?php } ?>
<?php } ?>


</div>




