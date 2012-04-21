<?php
defined( '_JEXEC' ) or die( 'Restricted index access' );
define( 'TEMPLATEPATH', dirname(__FILE__) );
/*
-----------------------------------------
Hosticity - August 2008 Shape 5 Club Template
-----------------------------------------
Site:      www.shape5.com
Email:     contact@shape5.com
@license:  Copyrighted Commercial Software
@copyright (C) 2008 Shape 5


*/

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />

<?php

///////////////////////////////////////////////////////////////////////////////////////

		$s5_style = $this->params->get ("xml_s5_style");

		$s5_shade = $this->params->get ("xml_s5_shade");

		$s5_s5box_effect = $this->params->get ("xml_s5_s5box_effect");

		$s5_phone_number = '0938-365-140'; //$this->params->get ("xml_s5_phone_number");

		$s5_body_width = $this->params->get ("xml_s5_body_width");

		$s5_left_width = $this->params->get ("xml_s5_left_width");

		$s5_right_width = $this->params->get ("xml_s5_right_width");

		$s5_tooltips = $this->params->get ("xml_s5_tooltips");

		$s5_menu = $this->params->get ("xml_s5_menu");

		$s5_no_moo_type = $this->params->get ("xml_s5_no_moo_type");

		$s5_tab_show_pos = $this->params->get ("xml_s5_tab_show_pos");

		$tab1title = $this->params->get ("xml_tab1title");

		$tab2title = $this->params->get ("xml_tab2title");

		$tab3title = $this->params->get ("xml_tab3title");

		$tab4title = $this->params->get ("xml_tab4title");

		$tab5title = $this->params->get ("xml_tab5title");

		$tab6title = $this->params->get ("xml_tab6title");

		$tab7title = $this->params->get ("xml_tab7title");

		$tab8title = $this->params->get ("xml_tab8title");

		$tab9title = $this->params->get ("xml_tab9title");

		$tab10title = $this->params->get ("xml_tab10title");

		$tab11title = $this->params->get ("xml_tab11title");

		$tab12title = $this->params->get ("xml_tab12title");

		$tab13title = $this->params->get ("xml_tab13title");

		$tab14title = $this->params->get ("xml_tab14title");

		$tab15title = $this->params->get ("xml_tab15title");

		$tab16title = $this->params->get ("xml_tab16title");

		$tab17title = $this->params->get ("xml_tab17title");

		$tab18title = $this->params->get ("xml_tab18title");

		$tab19title = $this->params->get ("xml_tab19title");

		$tab20title = $this->params->get ("xml_tab20title");



// End Template Configuration - It is recommended that you do not edit below this line.
///////////////////////////////////////////////////////////////////////////////////////



$br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.
if(ereg("msie 7", $br)) {
$is_ie7 = "yes";
}
else {
$is_ie7 = "no";
}

if(ereg("msie 6", $br)) {
$is_ie6 = "yes";
}
else {
$is_ie6 = "no";
}

if ($s5_menu  == "1") {
require( TEMPLATEPATH.DS."s5_no_moo_menu.php");
}
else if ($s5_menu  == "2")  {
require( TEMPLATEPATH.DS."s5_suckerfish.php");
}

$menu_name = $this->params->get ("xml_menuname");

// Sizing calculations

if (!$this->countModules("s5_tab1") && !$this->countModules("s5_tab2") && !$this->countModules("s5_tab3") && !$this->countModules("s5_tab4") && !$this->countModules("s5_tab5") && !$this->countModules("s5_tab6") && !$this->countModules("s5_tab7") && !$this->countModules("s5_tab8") && !$this->countModules("s5_tab9") && !$this->countModules("s5_tab10") && !$this->countModules("s5_tab11") && !$this->countModules("s5_tab12") && !$this->countModules("s5_tab13") && !$this->countModules("s5_tab14") && !$this->countModules("s5_tab15") && !$this->countModules("s5_tab16") && !$this->countModules("s5_tab17") && !$this->countModules("s5_tab18") && !$this->countModules("s5_tab19") && !$this->countModules("s5_tab20")) {
$s5_tab_show_pos = "none";
}

if ($this->countModules("user3") && $this->countModules("user4")  && $this->countModules("user5")) { $s5_row1="33.3%"; }
else if ($this->countModules("user3") && $this->countModules("user4") && !$this->countModules("user5")) { $s5_row1="50%"; }
else if ($this->countModules("user3") && !$this->countModules("user4") && $this->countModules("user5")) { $s5_row1="50%"; }
else if (!$this->countModules("user3") && $this->countModules("user4") && $this->countModules("user5")) { $s5_row1="50%"; }
else if ($this->countModules("user3") && !$this->countModules("user4") && !$this->countModules("user5")) { $s5_row1="100%"; }
else if (!$this->countModules("user3") && $this->countModules("user4") && !$this->countModules("user5")) { $s5_row1="100%"; }
else if (!$this->countModules("user3") && !$this->countModules("user4") && $this->countModules("user5")) { $s5_row1="100%"; }

if ($this->countModules("user6") && $this->countModules("user7")  && $this->countModules("user8")) { $s5_row2="33.3%"; }
else if ($this->countModules("user6") && $this->countModules("user7") && !$this->countModules("user8")) { $s5_row2="50%"; }
else if ($this->countModules("user6") && !$this->countModules("user7") && $this->countModules("user8")) { $s5_row2="50%"; }
else if (!$this->countModules("user6") && $this->countModules("user7") && $this->countModules("user8")) { $s5_row2="50%"; }
else if ($this->countModules("user6") && !$this->countModules("user7") && !$this->countModules("user8")) { $s5_row2="100%"; }
else if (!$this->countModules("user6") && $this->countModules("user7") && !$this->countModules("user8")) { $s5_row2="100%"; }
else if (!$this->countModules("user6") && !$this->countModules("user7") && $this->countModules("user8")) { $s5_row2="100%"; }

if ($this->countModules("footer") && $this->countModules("newsflash")  && $this->countModules("legals")) { $s5_row3="33.3%"; }
else if ($this->countModules("footer") && $this->countModules("newsflash") && !$this->countModules("legals")) { $s5_row3="50%"; }
else if ($this->countModules("footer") && !$this->countModules("newsflash") && $this->countModules("legals")) { $s5_row3="50%"; }
else if (!$this->countModules("footer") && $this->countModules("newsflash") && $this->countModules("legals")) { $s5_row3="50%"; }
else if ($this->countModules("footer") && !$this->countModules("newsflash") && !$this->countModules("legals")) { $s5_row3="100%"; }
else if (!$this->countModules("footer") && $this->countModules("newsflash") && !$this->countModules("legals")) { $s5_row3="100%"; }
else if (!$this->countModules("footer") && !$this->countModules("newsflash") && $this->countModules("legals")) { $s5_row3="100%"; }

if (!$this->countModules("left")) {
$s5_left_width="0";
}

if (!$this->countModules("right")) {
$s5_right_width="0";
}


?>

<meta http-equiv="Content-Type" content="text/html; <?php echo _ISO; ?>" />
<meta http-equiv="Content-Style-Type" content="text/css" />

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />

<link href="<?php echo $this->baseurl ?>/templates/hosticity/css/template_css.css" rel="stylesheet" type="text/css" media="screen" />

<link href="<?php echo $this->baseurl ?>/templates/hosticity/css/s5_suckerfish.css" rel="stylesheet" type="text/css" media="screen" />

<link href="<?php echo $this->baseurl ?>/templates/hosticity/css/editor.css" rel="stylesheet" type="text/css" media="screen" />

<link href="<?php echo $this->baseurl ?>/templates/hosticity/css/<?php echo $s5_style ?>.css" rel="stylesheet" type="text/css" media="screen" />

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/hosticity/css/lytebox.css" type="text/css" media="screen" />

<link href="<?php echo $this->baseurl ?>/templates/hosticity/css/application.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript" language="javascript" src="<?php echo $this->baseurl ?>/templates/hosticity/js/lytebox.js"></script>

<script type="text/javascript" language="javascript" src="<?php echo $this->baseurl ?>/templates/hosticity/js/s5_effects_<?php echo $s5_s5box_effect ?>.js"></script>

<?php if($is_ie6 == "yes" || $is_ie7 == "yes") { ?>

<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/hosticity/js/IEsuckerfish.js"></script>

<?php } ?>


<?php if ( $my->id ) { initEditor(); } ?>

<style type="text/css">

#s5_offline {
background:url(<?php echo $this->baseurl ?>/modules/mod_s5_habla_chat/s5_habla_chat/offline.png) no-repeat top left;
}

#s5_online {
background:url(<?php echo $this->baseurl ?>/modules/mod_s5_habla_chat/s5_habla_chat/online.png) no-repeat top left;
}

<?php if ($is_ie6 == "yes") { ?>

* html #s5_header_shadow_l {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/hosticity/images/s5_header_shadow_l.png', sizingmethod='crop');}
}

* html #s5_header_shadow_r {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/hosticity/images/s5_header_shadow_r.png', sizingmethod='crop');}
}

* html #s5_cpanel {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/hosticity/images/s5_search.png', sizingmethod='crop');}
}

* html #s5_bot_l {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/hosticity/images/s5_bot_shadow_l.png', sizingmethod='crop');}
}

* html #s5_bot_r {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/hosticity/images/s5_bot_shadow_r.png', sizingmethod='crop');}
}

* html #s5_bot_m {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/hosticity/images/s5_bot_shadow_m.png', sizingmethod='scale');}
}

* html #s5_online {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/modules/s5_habla_chat/online.png', sizingmethod='crop');}
}

* html #s5_offline {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/modules/s5_habla_chat/offline.png', sizingmethod='crop');}
}

* html #popup_div {
	 background:url(<?php echo $this->baseurl ?>/templates/hosticity/images/s5_box_bg_ie.png) no-repeat center center;
}

<?php } ?>

#s5_l_shadow {
background:url(<?php echo $this->baseurl ?>/templates/hosticity/images/s5_left_shadow_<?php echo $s5_shade ?>.png) repeat-y top left;
}

#s5_r_shadow {
background:url(<?php echo $this->baseurl ?>/templates/hosticity/images/s5_right_shadow_<?php echo $s5_shade ?>.png) repeat-y top right;
}

body {
<?php if ($s5_shade == "light") { ?>
background:#F1F1F1;
<?php } ?>
<?php if ($s5_shade != "light") { ?>
background:#333333;
<?php } ?>
}

</style>

</head>

<body>

<!-- Start Wrapper -->

<div id="s5_outer">

<!-- Start Header -->

<div id="s5_header_wrap">

	<div id="s5_header_inner" style="width:<?php echo $s5_body_width + 22 ?>px">

		<div id="s5_header_shadow_l"></div>

		<div id="s5_header_m" style="width:<?php echo $s5_body_width ?>px">

		<!-- Start Cpanel -->

		<div id="s5_cpanel_pos_holder">

			<div id="s5_cpanel">
				<jdoc:include type="modules" name="cpanel" style="notitle" />
			</div>

		</div>

			<div style="clear:both"></div>

		<!-- End Cpanel -->

		<!-- Start Top and Phone -->

			<div id="s5_top_pos_holder">

				<?php if($this->countModules('top')) { ?>
				<div id="s5_top">
					<jdoc:include type="modules" name="top" style="notitle" />
				</div>
				<?php } ?>

				<?php if($s5_phone_number != "none") { ?>
				<div id="s5_number">
					<?php echo $s5_phone_number ?>
				</div>
				<?php } ?>

				<div style="clear:both"></div>

			</div>

			<!-- End Top and Phone -->

			<!-- Start Menu-->

			<div id="s5_menu_holder">

				<div id="navv">
					<?php mosShowListMenu($menu_name);	?>
					<?php if ($s5_menu  == "1") { ?>
					<?php if ($s5_no_moo_type  == "drop") { ?>
					<script type="text/javascript" src="templates/hosticity/js/s5_no_moo_menu.js"></script>
					<?php } ?>
					<?php if ($s5_no_moo_type  == "fade") { ?>
					<script type="text/javascript" src="templates/hosticity/js/s5_fading_no_moo_menu.js"></script>
					<?php } ?>
					<?php } ?>
				</div>

			</div>

			<!-- End Menu -->

		</div>

		<div id="s5_header_shadow_r"></div>

	</div>

</div>

<div style="clear:both"></div>

<!-- Start Bottom Section -->

<div id="s5_body">

	<div id="s5_body_inner" style="width:<?php echo $s5_body_width + 18 ?>px">

		<div id="s5_l_shadow" style="width:<?php echo $s5_body_width + 18 ?>px">
			<div id="s5_r_shadow" style="width:<?php echo $s5_body_width + 9 ?>px">
				<div id="s5_middle" style="width:<?php echo $s5_body_width ?>px">

					<?php if($this->countModules('user1')) { ?>
						<div id="s5_user1">
							<jdoc:include type="modules" name="user1" style="notitle" />
							<div style="clear:both"></div>
						</div>
					<?php } ?>

					<!-- Start Pathway -->

						<div id="s5_pathway">
							<?php if($this->countModules('breadcrumb')) { ?>
								<jdoc:include type="modules" name="breadcrumb" style="notitle" />
							<?php } ?>
						</div>

					<!-- End Pathway -->

					<div style="clear:both"></div>

					<div id="s5_body_padding">

						<?php if($this->countModules('user2')) { ?>
							<div id="s5_user2">
								<jdoc:include type="modules" name="user2" style="rounded" />
							</div>
						<?php } ?>

						<!-- Start Top Row -->

						<?php if($this->countModules('user3') || $this->countModules('user4') || $this->countModules('user5')) { ?>
							<div id="s5_row1">

								<?php if($this->countModules('user3')) { ?>
								<div id="s5_user3" style="width:<?php echo $s5_row1 ?>">
								<div id="s5_user3_inner">
									<jdoc:include type="modules" name="user3" style="xhtml" />
								</div>
								</div>
								<?php } ?>
								<?php if($this->countModules('user4')) { ?>
								<div id="s5_user4" style="width:<?php echo $s5_row1 ?>">
								<div id="s5_user4_inner">
									<jdoc:include type="modules" name="user4" style="xhtml" />
								</div>
								</div>
								<?php } ?>
								<?php if($this->countModules('user5')) { ?>
								<div id="s5_user5" style="width:<?php echo $s5_row1 ?>">
								<div id="s5_user5_inner">
									<jdoc:include type="modules" name="user5" style="xhtml />
								</div>
								</div>
								<?php } ?>
								<div style="clear:both"></div>

							</div>
							<div class="s5_row_shadow"></div>
						<?php } ?>

						<!-- End Top Row -->

						<?php if($this->countModules('advert1')) { ?>
							<div id="s5_advert1">
								<jdoc:include type="modules" name="advert1" style="rounded" />
							</div>
						<?php } ?>

						<?php if($this->countModules('toolbar')) { ?>

					     <div <?php if($this->countModules('user3') || $this->countModules('user4') || $this->countModules('user5')) { ?>style="margin-top:-10px" <?php } ?> id="s5_box_button" onclick="<?php if ($is_ie6 == "yes") { ?>ie_popup_fix();<?php } ?>shiftOpacity3('popup_div');shiftOpacity2('popup_outer');show_popup()">
					     </div>

					     <?php } ?>

						 <?php if ($s5_tab_show_pos == "1") { ?>
							<div style="height:10px"></div>
								<?php include("templates/hosticity/s5_tab_show_HI.php"); ?>
							<div style="height:25px"></div>
						<?php } ?>

						<!-- Start Left Right and Main Content -->

						 <div id="s5_column_wrap">

						<?php if($this->countModules('left')) { ?>
							 <div id="s5_left_column" style="width:<?php echo $s5_left_width ?>px">
							 <div id="s5_left_column_inner">
								<jdoc:include type="modules" name="left" style="rounded" />
							 </div>
							 </div>
						<?php } ?>

							 <div id="s5_middle_column" style="width:<?php echo $s5_body_width - $s5_left_width - $s5_right_width - 36 ?>px">
							 <div id="s5_middle_column_inner"<?php if($this->countModules('left') || $this->countModules('right')) { ?> style="<?php if($this->countModules('right')) { ?>padding-right:20px;<?php } ?><?php if($this->countModules('left')) { ?>padding-left:20px;<?php } ?>"<?php } ?>>
								<jdoc:include type="message" />
								<jdoc:include type="component" />
							 </div>
							 </div>

						<?php if($this->countModules('right')) { ?>
							 <div id="s5_right_column" style="width:<?php echo $s5_right_width ?>px">
							 <div id="s5_right_column_inner">
								<jdoc:include type="modules" name="right" style="rounded" />
							 </div>
							 </div>
						<?php } ?>

						<div style="clear:both"></div>

						</div>

						<!-- End Left Rigth and Main Content -->

						<?php if ($s5_tab_show_pos == "2") { ?>
							<div style="height:10px"></div>
								<?php include("templates/hosticity/s5_tab_show_HI.php"); ?>
							<div style="height:25px"></div>
						<?php } ?>

					<div style="clear:both"></div>

					<?php if($this->countModules('advert2')) { ?>
							<div id="s5_advert2">
								<jdoc:include type="modules" name="advert2" style="rounded" />
							</div>
						<?php } ?>

					<!-- Start Row 2 -->

					<?php if($this->countModules('user6') || $this->countModules('user7') || $this->countModules('user8')) { ?>
							<div id="s5_row2">

								<?php if($this->countModules('user6')) { ?>
								<div id="s5_user6" style="width:<?php echo $s5_row2 ?>">
								<div id="s5_user6_inner">
									<jdoc:include type="modules" name="user6" style="xhtml" />
								</div>
								</div>
								<?php } ?>
								<?php if($this->countModules('user7')) { ?>
								<div id="s5_user7" style="width:<?php echo $s5_row2 ?>">
								<div id="s5_user7_inner">
									<jdoc:include type="modules" name="user7" style="xhtml" />
								</div>
								</div>
								<?php } ?>
								<?php if($this->countModules('user8')) { ?>
								<div id="s5_user8" style="width:<?php echo $s5_row2 ?>">
								<div id="s5_user8_inner">
									<jdoc:include type="modules" name="user8" style="xhtml" />
								</div>
								</div>
								<?php } ?>
								<div style="clear:both"></div>

							</div>
							<div class="s5_row_shadow"></div>
					<?php } ?>

					<div style="clear:both"></div>

					</div>

					<!-- End Row 2 -->

					<?php if($this->countModules('bottom')) { ?>
						<div id="s5_bottom">
							<jdoc:include type="modules" name="bottom" style="notitle" />
							<div style="clear:both"></div>
						</div>
					<?php } ?>

					<div id="s5_bottom_wrap_outer">
					<div id="s5_bottom_wrap">

						<?php if($this->countModules('footer')) { ?>
								<div id="s5_footer_pos" style="width:<?php echo $s5_row3 ?>">
								<div id="s5_footer_pos_inner">
									<jdoc:include type="modules" name="footer" style="xhtml" />
								</div>
								</div>
								<?php } ?>
								<?php if($this->countModules('newsflash')) { ?>
								<div id="s5_newsflash_pos" style="width:<?php echo $s5_row3 ?>">
								<div id="s5_newsflash_pos_inner">
									<jdoc:include type="modules" name="newsflash" style="xhtml" />
								</div>
								</div>
								<?php } ?>
								<?php if($this->countModules('legals')) { ?>
								<div id="s5_legals_pos" style="width:<?php echo $s5_row3 ?>">
								<div id="s5_legals_pos_inner">
									<jdoc:include type="modules" name="legals" style="xhtml" />
								</div>
								</div>
								<div style="clear:both"></div>
						<?php } ?>
					<div style="clear:both"></div>
					</div>
					<div style="clear:both"></div>
					</div>
				</div>
			</div>
		</div>
		<div id="s5_bot_shadows" style="width:<?php echo $s5_body_width ?>px">
					<div id="s5_bot_l"></div>
					<div id="s5_bot_m" style="width:<?php echo $s5_body_width - 380 ?>px"></div>
					<div id="s5_bot_r"></div>
		</div>

	</div>

</div>

<div style="clear:both"></div>

<div id="s5_footer_text" style="width:<?php echo $s5_body_width ?>px">
	<?php include("templates/hosticity/footer.php"); ?>
	<div style="height:17px"></div>
</div>

<!-- Start S5 Box -->

<?php if($this->countModules('toolbar')) { ?>


<div onclick="shiftOpacity3('popup_div');shiftOpacity2('popup_outer')" id="popup_outer" style="display:none;opacity:.0; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?> height: 0px; z-index:1;

<?php if ($is_ie6 == "yes") { ?>
position:absolute;
<?php } ?>

<?php if ($is_ie6 == "no") { ?>
position:fixed;
<?php } ?>
width: 100%; margin: 0px; padding: 0px; left: 0px; top:0px"></div>

<div id="popup_div" style="display:none;height:0px; top: 50%; width: 414px; z-index:2; left: 50%; margin-left:-207px; margin-top:-175px;


<?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>
position:absolute;
<?php } ?>

<?php if ($is_ie6 == "no" && $is_ie7 == "no") { ?>
position:fixed;
<?php } ?>">

<div id="s5_toolbar" style="height:250px; margin-bottom:9px; width:337px; padding:10px; font-size:0.8em; margin-top:24px; <?php if ($is_ie6 == "yes" || $is_ie7 == "yes") { ?>margin-top:34px; <?php } ?> margin-left:28px; color:#000000; overflow-y:auto; overflow-x:hidden"><jdoc:include type="modules" name="toolbar" style="xhtml" /></div>

<div style="height:25px; color:#FFFFFF; font-size:0.85em; width:280px; margin-top:10px; padding-left:32px; overflow:hidden"><?php echo $s5_box_content ?></div>

<div id="close_popup_div" style="cursor:pointer; height:15px; width:100px; margin-top:-24px; float:right" onclick="shiftOpacity3('popup_div');shiftOpacity2('popup_outer')"></div></div>

<script type="text/javascript" language="javascript" src="<?php echo $this->baseurl ?>/templates/hosticity/js/s5_box.js"></script>

<?php } ?>

<!-- End S5 Box -->

</div>

<?php if ($s5_tooltips  == "yes") { ?>
<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/hosticity/js/tooltips.js"></script>
<?php } ?>

<?php if($this->countModules('debug')) { ?>

	<jdoc:include type="modules" name="debug" style="notitle" />

<?php } ?>

</body>

</html>
