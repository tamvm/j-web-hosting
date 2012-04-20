<?php

$br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.

if(ereg("msie 6", $br)) {
$browserr = "ie6";
} 

else if(ereg("msie 7", $br)) {
$browserr = "ie7";
} 

?>

<div id="s5_ts_top_left" style="background:#FFFFFF;height:1px;width:15px;float:left;margin:0px">
</div>

<div id="s5_ts_top" style="float:left; margin:0px;">
<?php if($this->countModules('s5_tab1')) { ?>
	<?php if ($tab1title != "") { ?>
		<div onclick="s5_ts_tab1()" id="s5_a_ts_tab1" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab1()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab1title ?></a>
		</div>
	<?php } ?>
<?php } ?>
	
<?php if($this->countModules('s5_tab2')) { ?>
	<?php if ($tab2title != "") { ?>
		<div id="s5_a_ts_tab2" onclick="s5_ts_tab2()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab2()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab2title ?></a>
		</div>
	<?php } ?>
<?php } ?>
	
<?php if($this->countModules('s5_tab3')) { ?>
	<?php if ($tab3title != "") { ?>
		<div id="s5_a_ts_tab3" onclick="s5_ts_tab3()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab3()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab3title ?></a>
		</div>
	<?php } ?>
<?php } ?>
	
<?php if($this->countModules('s5_tab4')) { ?>
	<?php if ($tab4title != "") { ?>
		<div id="s5_a_ts_tab4" onclick="s5_ts_tab4()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab4()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab4title ?></a>
		</div>
	<?php } ?>
<?php } ?>
	
<?php if($this->countModules('s5_tab5')) { ?>
	<?php if ($tab5title != "") { ?>
		<div id="s5_a_ts_tab5" onclick="s5_ts_tab5()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab5()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab5title ?></a>
		</div>
	<?php } ?>
<?php } ?>
	
<?php if($this->countModules('s5_tab6')) { ?>
	<?php if ($tab6title != "") { ?>
		<div id="s5_a_ts_tab6" onclick="s5_ts_tab6()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab6()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab6title ?></a>
		</div>
	<?php } ?>
<?php } ?>
	
<?php if($this->countModules('s5_tab7')) { ?>
	<?php if ($tab7title != "") { ?>
		<div id="s5_a_ts_tab7" onclick="s5_ts_tab7()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab7()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab7title ?></a>
		</div>
	<?php } ?>
<?php } ?>
	
<?php if($this->countModules('s5_tab8')) { ?>
	<?php if ($tab8title != "") { ?>
		<div id="s5_a_ts_tab8" onclick="s5_ts_tab8()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab8()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab8title ?></a>
		</div>
	<?php } ?>
<?php } ?>
	
<?php if($this->countModules('s5_tab9')) { ?>
	<?php if ($tab9title != "") { ?>
		<div id="s5_a_ts_tab9" onclick="s5_ts_tab9()" style="cursor:pointer; float:left; margin-right:6px; padding-top:6px; padding-bottom:5px; <?php if($browserr == "ie6") { ?>padding-top:3px; padding-bottom:8px; margin-bottom:-3px; <?php } ?><?php if($browserr == "ie7") { ?>padding-top:3px; padding-bottom:7px; <?php } ?>padding-left:12px; padding-right:12px; border-left:solid 1px #CCCCCC; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab9()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab9title ?></a>
		</div>
	<?php } ?>
<?php } ?>
	
<?php if($this->countModules('s5_tab10')) { ?>
	<?php if ($tab10title != "") { ?>
		<div id="s5_a_ts_tab10" onclick="s5_ts_tab10()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab10()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab10title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab11')) { ?>
	<?php if ($tab11title != "") { ?>
		<div id="s5_a_ts_tab11" onclick="s5_ts_tab11()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab11()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab11title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab12')) { ?>
	<?php if ($tab12title != "") { ?>
		<div id="s5_a_ts_tab12" onclick="s5_ts_tab12()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab12()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab12title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab13')) { ?>
	<?php if ($tab13title != "") { ?>
		<div id="s5_a_ts_tab13" onclick="s5_ts_tab13()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab13()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab13title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab14')) { ?>
	<?php if ($tab14title != "") { ?>
		<div id="s5_a_ts_tab14" onclick="s5_ts_tab14()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab14()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab14title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab15')) { ?>
	<?php if ($tab15title != "") { ?>
		<div id="s5_a_ts_tab15" onclick="s5_ts_tab15()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab15()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab15title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab16')) { ?>
	<?php if ($tab16title != "") { ?>
		<div id="s5_a_ts_tab16" onclick="s5_ts_tab16()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab16()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab16title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab17')) { ?>
	<?php if ($tab17title != "") { ?>
		<div id="s5_a_ts_tab17" onclick="s5_ts_tab17()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab17()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab17title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab18')) { ?>
	<?php if ($tab18title != "") { ?>
		<div id="s5_a_ts_tab18" onclick="s5_ts_tab18()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab18()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab18title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab19')) { ?>
	<?php if ($tab19title != "") { ?>
		<div id="s5_a_ts_tab19" onclick="s5_ts_tab19()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab19()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab19title ?></a>
		</div>
	<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab20')) { ?>
	<?php if ($tab20title != "") { ?>
		<div id="s5_a_ts_tab20" onclick="s5_ts_tab20()" style="cursor:pointer; float:left; border-right:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC">
			<a onclick="s5_ts_tab20()" class="s5_a_ts" style="font-size: 11px; font-weight:bold; cursor:pointer; text-decoration:none"><?php echo $tab20title ?></a>
		</div>
	<?php } ?>
<?php } ?>
</div>

<div style="clear:both"></div>

<div id="s5_ts_bottom" style="<?php if($browserr == "ie6") { ?>margin-top:-15px; <?php } ?>font-size:75%; background:#FFFFFF; border-left:solid 1px #CCCCCC; border-top:solid 1px #CCCCCC; border-right:solid 1px #CCCCCC; border-bottom:solid 1px #CCCCCC">
	<?php if($this->countModules('s5_tab1')) { ?>
	<?php if ($tab1title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts1"><jdoc:include type="modules" name="s5_tab1" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab2')) { ?>
	<?php if ($tab2title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts2"><jdoc:include type="modules" name="s5_tab2" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab3')) { ?>
	<?php if ($tab3title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts3"><jdoc:include type="modules" name="s5_tab3" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab4')) { ?>
	<?php if ($tab4title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts4"><jdoc:include type="modules" name="s5_tab4" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab5')) { ?>
	<?php if ($tab5title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts5"><jdoc:include type="modules" name="s5_tab5" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab6')) { ?>
	<?php if ($tab6title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts6"><jdoc:include type="modules" name="s5_tab6" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab7')) { ?>
	<?php if ($tab7title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts7"><jdoc:include type="modules" name="s5_tab7" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab8')) { ?>
	<?php if ($tab8title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts8"><jdoc:include type="modules" name="s5_tab8" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab9')) { ?>
	<?php if ($tab9title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts9"><jdoc:include type="modules" name="s5_tab9" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab10')) { ?>
	<?php if ($tab10title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts10"><jdoc:include type="modules" name="s5_tab10" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab11')) { ?>
	<?php if ($tab11title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts11"><jdoc:include type="modules" name="s5_tab11" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab12')) { ?>
	<?php if ($tab12title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts12"><jdoc:include type="modules" name="s5_tab12" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab13')) { ?>
	<?php if ($tab13title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts13"><jdoc:include type="modules" name="s5_tab13" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab14')) { ?>
	<?php if ($tab14title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts14"><jdoc:include type="modules" name="s5_tab14" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab15')) { ?>
	<?php if ($tab15title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts15"><jdoc:include type="modules" name="s5_tab15" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab16')) { ?>
	<?php if ($tab16title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts16"><jdoc:include type="modules" name="s5_tab16" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab17')) { ?>
	<?php if ($tab17title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts17"><jdoc:include type="modules" name="s5_tab17" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab18')) { ?>
	<?php if ($tab18title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts18"><jdoc:include type="modules" name="s5_tab18" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab19')) { ?>
	<?php if ($tab19title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts19"><jdoc:include type="modules" name="s5_tab19" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
	
	<?php if($this->countModules('s5_tab20')) { ?>
	<?php if ($tab20title != "") { ?>
		<div style="display:none" class="s5_div_ts" id="s5_div_ts20"><jdoc:include type="modules" name="s5_tab20" style="xhtml" /></div>
	<?php } ?>
	<?php } ?>
</div>

<div style="clear:both"></div>

<script type="text/javascript">

function s5_ts_tab1() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts1").style.display = "block";
document.getElementById("s5_a_ts_tab1").style.background = "#F5F5F5";
}

function s5_ts_tab2() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts2").style.display = "block";
document.getElementById("s5_a_ts_tab2").style.background = "#F5F5F5";
}

function s5_ts_tab3() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts3").style.display = "block";
document.getElementById("s5_a_ts_tab3").style.background = "#F5F5F5";
}

function s5_ts_tab4() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts4").style.display = "block";
document.getElementById("s5_a_ts_tab4").style.background = "#F5F5F5";
}

function s5_ts_tab5() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts5").style.display = "block";
document.getElementById("s5_a_ts_tab5").style.background = "#F5F5F5";
}

function s5_ts_tab6() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts6").style.display = "block";
document.getElementById("s5_a_ts_tab6").style.background = "#F5F5F5";
}

function s5_ts_tab7() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts7").style.display = "block";
document.getElementById("s5_a_ts_tab7").style.background = "#F5F5F5";
}

function s5_ts_tab8() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts8").style.display = "block";
document.getElementById("s5_a_ts_tab8").style.background = "#F5F5F5";
}

function s5_ts_tab9() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts9").style.display = "block";
document.getElementById("s5_a_ts_tab9").style.background = "#F5F5F5";
}

function s5_ts_tab10() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts10").style.display = "block";
document.getElementById("s5_a_ts_tab10").style.background = "#F5F5F5";
}

function s5_ts_tab11() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts11").style.display = "block";
document.getElementById("s5_a_ts_tab11").style.background = "#F5F5F5";
}

function s5_ts_tab12() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts12").style.display = "block";
document.getElementById("s5_a_ts_tab12").style.background = "#F5F5F5";
}

function s5_ts_tab13() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts13").style.display = "block";
document.getElementById("s5_a_ts_tab13").style.background = "#F5F5F5";
}

function s5_ts_tab14() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts14").style.display = "block";
document.getElementById("s5_a_ts_tab14").style.background = "#F5F5F5";
}

function s5_ts_tab15() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts15").style.display = "block";
document.getElementById("s5_a_ts_tab15").style.background = "#F5F5F5";
}

function s5_ts_tab16() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts16").style.display = "block";
document.getElementById("s5_a_ts_tab16").style.background = "#F5F5F5";
}

function s5_ts_tab17() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts17").style.display = "block";
document.getElementById("s5_a_ts_tab17").style.background = "#F5F5F5";
}

function s5_ts_tab18() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts18").style.display = "block";
document.getElementById("s5_a_ts_tab18").style.background = "#F5F5F5";
}

function s5_ts_tab19() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts19").style.display = "block";
document.getElementById("s5_a_ts_tab19").style.background = "#F5F5F5";
}

function s5_ts_tab20() {
s5_ts_hide_divs();
document.getElementById("s5_div_ts20").style.display = "block";
document.getElementById("s5_a_ts_tab20").style.background = "#F5F5F5";
}

function s5_ts_hide_divs() {

<?php if($this->countModules('s5_tab1')) { ?>
<?php if ($tab1title != "") { ?>
document.getElementById("s5_div_ts1").style.display = "none";
document.getElementById("s5_a_ts_tab1").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab2')) { ?>
<?php if ($tab2title != "") { ?>
document.getElementById("s5_div_ts2").style.display = "none";
document.getElementById("s5_a_ts_tab2").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab3')) { ?>
<?php if ($tab3title != "") { ?>
document.getElementById("s5_div_ts3").style.display = "none";
document.getElementById("s5_a_ts_tab3").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab4')) { ?>
<?php if ($tab4title != "") { ?>
document.getElementById("s5_div_ts4").style.display = "none";
document.getElementById("s5_a_ts_tab4").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab5')) { ?>
<?php if ($tab5title != "") { ?>
document.getElementById("s5_div_ts5").style.display = "none";
document.getElementById("s5_a_ts_tab5").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab6')) { ?>
<?php if ($tab6title != "") { ?>
document.getElementById("s5_div_ts6").style.display = "none";
document.getElementById("s5_a_ts_tab6").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab7')) { ?>
<?php if ($tab7title != "") { ?>
document.getElementById("s5_div_ts7").style.display = "none";
document.getElementById("s5_a_ts_tab7").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab8')) { ?>
<?php if ($tab8title != "") { ?>
document.getElementById("s5_div_ts8").style.display = "none";
document.getElementById("s5_a_ts_tab8").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab9')) { ?>
<?php if ($tab9title != "") { ?>
document.getElementById("s5_div_ts9").style.display = "none";
document.getElementById("s5_a_ts_tab9").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab10')) { ?>
<?php if ($tab10title != "") { ?>
document.getElementById("s5_div_ts10").style.display = "none";
document.getElementById("s5_a_ts_tab10").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab11')) { ?>
<?php if ($tab11title != "") { ?>
document.getElementById("s5_div_ts11").style.display = "none";
document.getElementById("s5_a_ts_tab11").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab12')) { ?>
<?php if ($tab12title != "") { ?>
document.getElementById("s5_div_ts12").style.display = "none";
document.getElementById("s5_a_ts_tab12").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab13')) { ?>
<?php if ($tab13title != "") { ?>
document.getElementById("s5_div_ts13").style.display = "none";
document.getElementById("s5_a_ts_tab13").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab14')) { ?>
<?php if ($tab14title != "") { ?>
document.getElementById("s5_div_ts14").style.display = "none";
document.getElementById("s5_a_ts_tab14").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab15')) { ?>
<?php if ($tab15title != "") { ?>
document.getElementById("s5_div_ts15").style.display = "none";
document.getElementById("s5_a_ts_tab15").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab16')) { ?>
<?php if ($tab16title != "") { ?>
document.getElementById("s5_div_ts16").style.display = "none";
document.getElementById("s5_a_ts_tab16").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab17')) { ?>
<?php if ($tab17title != "") { ?>
document.getElementById("s5_div_ts17").style.display = "none";
document.getElementById("s5_a_ts_tab17").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab18')) { ?>
<?php if ($tab18title != "") { ?>
document.getElementById("s5_div_ts18").style.display = "none";
document.getElementById("s5_a_ts_tab18").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab19')) { ?>
<?php if ($tab19title != "") { ?>
document.getElementById("s5_div_ts19").style.display = "none";
document.getElementById("s5_a_ts_tab19").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab20')) { ?>
<?php if ($tab20title != "") { ?>
document.getElementById("s5_div_ts20").style.display = "none";
document.getElementById("s5_a_ts_tab20").style.background = "#FFFFFF";
<?php } ?>
<?php } ?>

}

function s5_ts_show_first() {

<?php if($this->countModules('s5_tab1')) { ?>
<?php if ($tab1title != "") { ?>
document.getElementById("s5_div_ts1").style.display = "block";
document.getElementById("s5_a_ts_tab1").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab2')) { ?>
<?php if ($tab2title != "") { ?>
document.getElementById("s5_div_ts2").style.display = "block";
document.getElementById("s5_a_ts_tab2").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab3')) { ?>
<?php if ($tab3title != "") { ?>
document.getElementById("s5_div_ts3").style.display = "block";
document.getElementById("s5_a_ts_tab3").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab4')) { ?>
<?php if ($tab4title != "") { ?>
document.getElementById("s5_div_ts4").style.display = "block";
document.getElementById("s5_a_ts_tab4").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab5')) { ?>
<?php if ($tab5title != "") { ?>
document.getElementById("s5_div_ts5").style.display = "block";
document.getElementById("s5_a_ts_tab5").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab6')) { ?>
<?php if ($tab6title != "") { ?>
document.getElementById("s5_div_ts6").style.display = "block";
document.getElementById("s5_a_ts_tab6").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab7')) { ?>
<?php if ($tab7title != "") { ?>
document.getElementById("s5_div_ts7").style.display = "block";
document.getElementById("s5_a_ts_tab7").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab8')) { ?>
<?php if ($tab8title != "") { ?>
document.getElementById("s5_div_ts8").style.display = "block";
document.getElementById("s5_a_ts_tab8").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab9')) { ?>
<?php if ($tab9title != "") { ?>
document.getElementById("s5_div_ts9").style.display = "block";
document.getElementById("s5_a_ts_tab9").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab10')) { ?>
<?php if ($tab10title != "") { ?>
document.getElementById("s5_div_ts10").style.display = "block";
document.getElementById("s5_a_ts_tab10").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab11')) { ?>
<?php if ($tab11title != "") { ?>
document.getElementById("s5_div_ts11").style.display = "block";
document.getElementById("s5_a_ts_tab11").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab12')) { ?>
<?php if ($tab12title != "") { ?>
document.getElementById("s5_div_ts12").style.display = "block";
document.getElementById("s5_a_ts_tab12").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab13')) { ?>
<?php if ($tab13title != "") { ?>
document.getElementById("s5_div_ts13").style.display = "block";
document.getElementById("s5_a_ts_tab13").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab14')) { ?>
<?php if ($tab14title != "") { ?>
document.getElementById("s5_div_ts14").style.display = "block";
document.getElementById("s5_a_ts_tab14").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab15')) { ?>
<?php if ($tab15title != "") { ?>
document.getElementById("s5_div_ts15").style.display = "block";
document.getElementById("s5_a_ts_tab15").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab16')) { ?>
<?php if ($tab16title != "") { ?>
document.getElementById("s5_div_ts16").style.display = "block";
document.getElementById("s5_a_ts_tab16").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab17')) { ?>
<?php if ($tab17title != "") { ?>
document.getElementById("s5_div_ts17").style.display = "block";
document.getElementById("s5_a_ts_tab17").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab18')) { ?>
<?php if ($tab18title != "") { ?>
document.getElementById("s5_div_ts18").style.display = "block";
document.getElementById("s5_a_ts_tab18").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab19')) { ?>
<?php if ($tab19title != "") { ?>
document.getElementById("s5_div_ts19").style.display = "block";
document.getElementById("s5_a_ts_tab19").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

<?php if($this->countModules('s5_tab20')) { ?>
<?php if ($tab20title != "") { ?>
document.getElementById("s5_div_ts20").style.display = "block";
document.getElementById("s5_a_ts_tab20").style.background = "#F5F5F5";
return false;
<?php } ?>
<?php } ?>

}

s5_ts_show_first();

</script>