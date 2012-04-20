// s5_fading_no_moo_menu.js is copyrighted material by Shape5.com 2007 - current

// Title: Shape 5Fading  No-Moo Menu - Joomla 1.5
// URL: http://www.shape5.com
// Date: 11/07/2007
// Notes: This script is copyrighted material of shape5.com and may not be redistributed or resold by any means.

	//set ids to the unordered lists
	var s5_fm_ul = document.getElementById("navv").getElementsByTagName("UL");
	var aa = 0;
	for (var y=0; y<s5_fm_ul.length; y++) {
		s5_fm_ul[y].id="s5_fm_ul" + aa;
		aa = aa + 1;
	}
	
	//set ids to a's 
	var s5_fm_a = document.getElementById("navv").getElementsByTagName("A");
	var x;
	var bb = 1;
	for (var x=0; x<s5_fm_a.length; x++) {
	if(s5_fm_a[x].id) {
	var s5_temp_id = s5_fm_a[x].id;
		if (s5_temp_id.charAt(4) == "I") {
		s5_fm_a[x].id = "s5_fm_aa" + bb;
		bb = bb + 1;
		}
	}
	}
	
var id_s5_fm;

var s5_height1 = 0;
var s5_width1 = 0;
var s5_height2 = 0;
var s5_width2 = 0;
var s5_height3 = 0;
var s5_width3 = 0;
var s5_height4 = 0;
var s5_width4 = 0;
var s5_height5 = 0;
var s5_width5 = 0;
var s5_height6 = 0;
var s5_width6 = 0;
var s5_height7 = 0;
var s5_width7 = 0;
var s5_height8 = 0;
var s5_width8 = 0;
var s5_height9 = 0;
var s5_width9 = 0;
var s5_height10 = 0;
var s5_width10 = 0;
var s5_height11 = 0;
var s5_width11 = 0;
var s5_height12 = 0;
var s5_width12 = 0;
var s5_height13 = 0;
var s5_width13 = 0;
var s5_height14 = 0;
var s5_width14 = 0;
var s5_height15 = 0;
var s5_width15 = 0;
var s5_height16 = 0;
var s5_width16 = 0;
var s5_height17 = 0;
var s5_width17 = 0;
var s5_height18 = 0;
var s5_width18 = 0;
var s5_height19 = 0;
var s5_width19 = 0;
var s5_height20 = 0;
var s5_width20 = 0;
var s5_height21 = 0;
var s5_width21 = 0;
var s5_height22 = 0;
var s5_width22 = 0;
var s5_height23 = 0;
var s5_width23 = 0;
var s5_height24 = 0;
var s5_width24 = 0;
var s5_height25 = 0;
var s5_width25 = 0;
var s5_height26 = 0;
var s5_width26 = 0;
var s5_height27 = 0;
var s5_width27 = 0;
var s5_height28 = 0;
var s5_width28 = 0;
var s5_height29 = 0;
var s5_width29 = 0;
var s5_height30 = 0;
var s5_width30 = 0;
var s5_height31 = 0;
var s5_width31 = 0;
var s5_height32 = 0;
var s5_width32 = 0;
var s5_height33 = 0;
var s5_width33 = 0;
var s5_height34 = 0;
var s5_width34 = 0;
var s5_height35 = 0;
var s5_width35 = 0;
var s5_height36 = 0;
var s5_width36 = 0;
var s5_height37 = 0;
var s5_width37 = 0;
var s5_height38 = 0;
var s5_width38 = 0;
var s5_height39 = 0;
var s5_width39 = 0;
var s5_height40 = 0;
var s5_width40 = 0;
var s5_height41 = 0;
var s5_width41 = 0;
var s5_height42 = 0;
var s5_width42 = 0;
var s5_height43 = 0;
var s5_width43 = 0;
var s5_height44 = 0;
var s5_width44 = 0;
var s5_height45 = 0;
var s5_width45 = 0;
var s5_height46 = 0;
var s5_width46 = 0;
var s5_height47 = 0;
var s5_width47 = 0;
var s5_height48 = 0;
var s5_width48 = 0;
var s5_height49 = 0;
var s5_width49 = 0;
var s5_height50 = 0;
var s5_width50 = 0;
var s5_height51 = 0;
var s5_width51 = 0;
var s5_height52 = 0;
var s5_width52 = 0;
var s5_height53 = 0;
var s5_width53 = 0;
var s5_height54 = 0;
var s5_width54 = 0;
var s5_height55 = 0;
var s5_width55 = 0;
var s5_height56 = 0;
var s5_width56 = 0;
var s5_height57 = 0;
var s5_width57 = 0;
var s5_height58 = 0;
var s5_width58 = 0;
var s5_height59 = 0;
var s5_width59 = 0;
var s5_height60 = 0;
var s5_width60 = 0;
var s5_height61 = 0;
var s5_width61 = 0;
var s5_height62 = 0;
var s5_width62 = 0;
var s5_height63 = 0;
var s5_width63 = 0;
var s5_height64 = 0;
var s5_width64 = 0;
var s5_height65 = 0;
var s5_width65 = 0;
var s5_height66 = 0;
var s5_width66 = 0;
var s5_height67 = 0;
var s5_width67 = 0;
var s5_height68 = 0;
var s5_width68 = 0;
var s5_height69 = 0;
var s5_width69 = 0;
var s5_height70 = 0;
var s5_width70 = 0;
var s5_height71 = 0;
var s5_width71 = 0;
var s5_height72 = 0;
var s5_width72 = 0;
var s5_height73 = 0;
var s5_width73 = 0;
var s5_height74 = 0;
var s5_width74 = 0;
var s5_height75 = 0;
var s5_width75 = 0;
var s5_height76 = 0;
var s5_width76 = 0;
var s5_height77 = 0;
var s5_width77 = 0;
var s5_height78 = 0;
var s5_width78 = 0;
var s5_height79 = 0;
var s5_width79 = 0;
var s5_height80 = 0;
var s5_width80 = 0;
var s5_height81 = 0;
var s5_width81 = 0;
var s5_height82 = 0;
var s5_width82 = 0;
var s5_height83 = 0;
var s5_width83 = 0;
var s5_height84 = 0;
var s5_width84 = 0;
var s5_height85 = 0;
var s5_width85 = 0;
var s5_height86 = 0;
var s5_width86 = 0;
var s5_height87 = 0;
var s5_width87 = 0;
var s5_height88 = 0;
var s5_width88 = 0;
var s5_height89 = 0;
var s5_width89 = 0;
var s5_height90 = 0;
var s5_width90 = 0;
var s5_height91 = 0;
var s5_width91 = 0;
var s5_height92 = 0;
var s5_width92 = 0;
var s5_height93 = 0;
var s5_width93 = 0;
var s5_height94 = 0;
var s5_width94 = 0;
var s5_height95 = 0;
var s5_width95 = 0;
var s5_height96 = 0;
var s5_width96 = 0;
var s5_height97 = 0;
var s5_width97 = 0;
var s5_height98 = 0;
var s5_width98 = 0;
var s5_height99 = 0;
var s5_width99 = 0;
var s5_height100 = 0;
var s5_width100 = 0;

	// stores all offsetheights and offsetwidths of ul's
	var s5_fm_ul_store = document.getElementById("navv").getElementsByTagName("UL");	
	for (var f=0; f<s5_fm_ul_store.length; f++) {
		if (s5_fm_ul_store.length >= 1) {
		if (f==1) {
		s5_height1 = s5_fm_ul_store[f].offsetHeight;
		s5_width1 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 2) {
		if (f==2) {
		s5_height2 = s5_fm_ul_store[f].offsetHeight;
		s5_width2 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 3) {
		if (f==3) {
		s5_height3 = s5_fm_ul_store[f].offsetHeight;
		s5_width3 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 4) {
		if (f==4) {
		s5_height4 = s5_fm_ul_store[f].offsetHeight;
		s5_width4 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 5) {
		if (f==5) {
		s5_height5 = s5_fm_ul_store[f].offsetHeight;
		s5_width5 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 6) {
		if (f==6) {
		s5_height6 = s5_fm_ul_store[f].offsetHeight;
		s5_width6 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 7) {
		if (f==7) {
		s5_height7 = s5_fm_ul_store[f].offsetHeight;
		s5_width7 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 8) {
		if (f==8) {
		s5_height8 = s5_fm_ul_store[f].offsetHeight;
		s5_width8 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 9) {
		if (f==9) {
		s5_height9 = s5_fm_ul_store[f].offsetHeight;
		s5_width9 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 10) {
		if (f==10) {
		s5_height10 = s5_fm_ul_store[f].offsetHeight;
		s5_width10 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 11) {
		if (f==11) {
		s5_height11 = s5_fm_ul_store[f].offsetHeight;
		s5_width11 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 12) {
		if (f==12) {
		s5_height12 = s5_fm_ul_store[f].offsetHeight;
		s5_width12 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 13) {
		if (f==13) {
		s5_height13 = s5_fm_ul_store[f].offsetHeight;
		s5_width13 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 14) {
		if (f==14) {
		s5_height14 = s5_fm_ul_store[f].offsetHeight;
		s5_width14 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 15) {
		if (f==15) {
		s5_height15 = s5_fm_ul_store[f].offsetHeight;
		s5_width15 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 16) {
		if (f==16) {
		s5_height16 = s5_fm_ul_store[f].offsetHeight;
		s5_width16 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 17) {
		if (f==17) {
		s5_height17 = s5_fm_ul_store[f].offsetHeight;
		s5_width17 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 18) {
		if (f==18) {
		s5_height18 = s5_fm_ul_store[f].offsetHeight;
		s5_width18 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 19) {
		if (f==19) {
		s5_height19 = s5_fm_ul_store[f].offsetHeight;
		s5_width19 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 20) {
		if (f==20) {
		s5_height20 = s5_fm_ul_store[f].offsetHeight;
		s5_width20 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==21) {
		s5_height21 = s5_fm_ul_store[f].offsetHeight;
		s5_width21 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==22) {
		s5_height22 = s5_fm_ul_store[f].offsetHeight;
		s5_width22 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==23) {
		s5_height23 = s5_fm_ul_store[f].offsetHeight;
		s5_width23 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==24) {
		s5_height24 = s5_fm_ul_store[f].offsetHeight;
		s5_width24 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 25) {
		if (f==25) {
		s5_height25 = s5_fm_ul_store[f].offsetHeight;
		s5_width25 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==26) {
		s5_height26 = s5_fm_ul_store[f].offsetHeight;
		s5_width26 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==27) {
		s5_height27 = s5_fm_ul_store[f].offsetHeight;
		s5_width27 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==28) {
		s5_height28 = s5_fm_ul_store[f].offsetHeight;
		s5_width28 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==29) {
		s5_height29 = s5_fm_ul_store[f].offsetHeight;
		s5_width29 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 30) {
		if (f==30) {
		s5_height30 = s5_fm_ul_store[f].offsetHeight;
		s5_width30 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==31) {
		s5_height31 = s5_fm_ul_store[f].offsetHeight;
		s5_width31 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==32) {
		s5_height32 = s5_fm_ul_store[f].offsetHeight;
		s5_width32 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==33) {
		s5_height33 = s5_fm_ul_store[f].offsetHeight;
		s5_width33 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==34) {
		s5_height34 = s5_fm_ul_store[f].offsetHeight;
		s5_width34 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 35) {
		if (f==35) {
		s5_height35 = s5_fm_ul_store[f].offsetHeight;
		s5_width35 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==36) {
		s5_height36 = s5_fm_ul_store[f].offsetHeight;
		s5_width36 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==37) {
		s5_height37 = s5_fm_ul_store[f].offsetHeight;
		s5_width37 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==38) {
		s5_height38 = s5_fm_ul_store[f].offsetHeight;
		s5_width38 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==39) {
		s5_height39 = s5_fm_ul_store[f].offsetHeight;
		s5_width39 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 40) {
		if (f==40) {
		s5_height40 = s5_fm_ul_store[f].offsetHeight;
		s5_width40 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==41) {
		s5_height41 = s5_fm_ul_store[f].offsetHeight;
		s5_width41 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==42) {
		s5_height42 = s5_fm_ul_store[f].offsetHeight;
		s5_width42 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==43) {
		s5_height43 = s5_fm_ul_store[f].offsetHeight;
		s5_width43 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==44) {
		s5_height44 = s5_fm_ul_store[f].offsetHeight;
		s5_width44 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 45) {
		if (f==45) {
		s5_height45 = s5_fm_ul_store[f].offsetHeight;
		s5_width45 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==46) {
		s5_height46 = s5_fm_ul_store[f].offsetHeight;
		s5_width46 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==47) {
		s5_height47 = s5_fm_ul_store[f].offsetHeight;
		s5_width47 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==48) {
		s5_height48 = s5_fm_ul_store[f].offsetHeight;
		s5_width48 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==49) {
		s5_height49 = s5_fm_ul_store[f].offsetHeight;
		s5_width49 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 50) {
		if (f==50) {
		s5_height50 = s5_fm_ul_store[f].offsetHeight;
		s5_width50 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==51) {
		s5_height51 = s5_fm_ul_store[f].offsetHeight;
		s5_width51 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==52) {
		s5_height52 = s5_fm_ul_store[f].offsetHeight;
		s5_width52 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==53) {
		s5_height53 = s5_fm_ul_store[f].offsetHeight;
		s5_width53 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==54) {
		s5_height54 = s5_fm_ul_store[f].offsetHeight;
		s5_width54 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 55) {
		if (f==55) {
		s5_height55 = s5_fm_ul_store[f].offsetHeight;
		s5_width55 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==56) {
		s5_height56 = s5_fm_ul_store[f].offsetHeight;
		s5_width56 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==57) {
		s5_height57 = s5_fm_ul_store[f].offsetHeight;
		s5_width57 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==58) {
		s5_height58 = s5_fm_ul_store[f].offsetHeight;
		s5_width58 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==59) {
		s5_height59 = s5_fm_ul_store[f].offsetHeight;
		s5_width59 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 60) {
		if (f==60) {
		s5_height60 = s5_fm_ul_store[f].offsetHeight;
		s5_width60 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==61) {
		s5_height61 = s5_fm_ul_store[f].offsetHeight;
		s5_width61 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==62) {
		s5_height62 = s5_fm_ul_store[f].offsetHeight;
		s5_width62 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==63) {
		s5_height63 = s5_fm_ul_store[f].offsetHeight;
		s5_width63 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==64) {
		s5_height64 = s5_fm_ul_store[f].offsetHeight;
		s5_width64 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 65) {
		if (f==65) {
		s5_height65 = s5_fm_ul_store[f].offsetHeight;
		s5_width65 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==66) {
		s5_height66 = s5_fm_ul_store[f].offsetHeight;
		s5_width66 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==67) {
		s5_height67 = s5_fm_ul_store[f].offsetHeight;
		s5_width67 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==68) {
		s5_height68 = s5_fm_ul_store[f].offsetHeight;
		s5_width68 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==69) {
		s5_height69 = s5_fm_ul_store[f].offsetHeight;
		s5_width69 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 70) {
		if (f==70) {
		s5_height70 = s5_fm_ul_store[f].offsetHeight;
		s5_width70 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==71) {
		s5_height71 = s5_fm_ul_store[f].offsetHeight;
		s5_width71 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==72) {
		s5_height72 = s5_fm_ul_store[f].offsetHeight;
		s5_width72 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==73) {
		s5_height73 = s5_fm_ul_store[f].offsetHeight;
		s5_width73 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==74) {
		s5_height74 = s5_fm_ul_store[f].offsetHeight;
		s5_width74 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 75) {
		if (f==75) {
		s5_height75 = s5_fm_ul_store[f].offsetHeight;
		s5_width75 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==76) {
		s5_height76 = s5_fm_ul_store[f].offsetHeight;
		s5_width76 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==77) {
		s5_height77 = s5_fm_ul_store[f].offsetHeight;
		s5_width77 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==78) {
		s5_height78 = s5_fm_ul_store[f].offsetHeight;
		s5_width78 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==79) {
		s5_height79 = s5_fm_ul_store[f].offsetHeight;
		s5_width79 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 80) {
		if (f==80) {
		s5_height80 = s5_fm_ul_store[f].offsetHeight;
		s5_width80 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==81) {
		s5_height81 = s5_fm_ul_store[f].offsetHeight;
		s5_width81 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==82) {
		s5_height82 = s5_fm_ul_store[f].offsetHeight;
		s5_width82 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==83) {
		s5_height83 = s5_fm_ul_store[f].offsetHeight;
		s5_width83 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==84) {
		s5_height84 = s5_fm_ul_store[f].offsetHeight;
		s5_width84 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 85) {
		if (f==85) {
		s5_height85 = s5_fm_ul_store[f].offsetHeight;
		s5_width85 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==86) {
		s5_height86 = s5_fm_ul_store[f].offsetHeight;
		s5_width86 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==87) {
		s5_height87 = s5_fm_ul_store[f].offsetHeight;
		s5_width87 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==88) {
		s5_height88 = s5_fm_ul_store[f].offsetHeight;
		s5_width88 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==89) {
		s5_height89 = s5_fm_ul_store[f].offsetHeight;
		s5_width89 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 90) {
		if (f==90) {
		s5_height90 = s5_fm_ul_store[f].offsetHeight;
		s5_width90 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==91) {
		s5_height91 = s5_fm_ul_store[f].offsetHeight;
		s5_width91 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==92) {
		s5_height92 = s5_fm_ul_store[f].offsetHeight;
		s5_width92 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==93) {
		s5_height93 = s5_fm_ul_store[f].offsetHeight;
		s5_width93 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==94) {
		s5_height94 = s5_fm_ul_store[f].offsetHeight;
		s5_width94 = s5_fm_ul_store[f].offsetWidth;
		}
		if (s5_fm_ul_store.length >= 95) {
		if (f==95) {
		s5_height95 = s5_fm_ul_store[f].offsetHeight;
		s5_width95 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==96) {
		s5_height96 = s5_fm_ul_store[f].offsetHeight;
		s5_width96 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==97) {
		s5_height97 = s5_fm_ul_store[f].offsetHeight;
		s5_width97 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==98) {
		s5_height98 = s5_fm_ul_store[f].offsetHeight;
		s5_width98 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==99) {
		s5_height99 = s5_fm_ul_store[f].offsetHeight;
		s5_width99 = s5_fm_ul_store[f].offsetWidth;
		}
		if (f==100) {
		s5_height100 = s5_fm_ul_store[f].offsetHeight;
		s5_width100 = s5_fm_ul_store[f].offsetWidth;
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
		}
	}
	
	var nn_global;
	var nn_holder_global;
	
	// resets all off-screen ul's
	function s5_fader_menu_set_none() {
	var s5_fm_ul2 = document.getElementById("navv").getElementsByTagName("UL");
	var nn = 0;
	for (var n =0; n<s5_fm_ul2.length; n++) {
		id_s5_fm = s5_fm_ul2[n].id;
		s5_fm_ul2[n].style.filter = "none";
		if (id_s5_fm.charAt(8) != "0") {
			if (s5_fm_ul2[n].offsetLeft < 0) {
			
					var s5_opacc = 0; 
					document.getElementById(id_s5_fm).style.opacity = (s5_opacc / 100);
					document.getElementById(id_s5_fm).style.MozOpacity = (s5_opacc / 100);
					document.getElementById(id_s5_fm).style.KhtmlOpacity = (s5_opacc / 100);
					document.getElementById(id_s5_fm).style.filter = "alpha(opacity=" + s5_opacc + ")";
	
					if (s5_fm_ul2.length >= 1) {
					if (n==1) {
					s5_fm_ul2[n].style.height = (s5_height1 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width1 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 2) {
					if (n==2) {
					s5_fm_ul2[n].style.height = (s5_height2 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width2 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 3) {
					if (n==3) {
					s5_fm_ul2[n].style.height = (s5_height3 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width3 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 4) {
					if (n==4) {
					s5_fm_ul2[n].style.height = (s5_height4 - 3) + "px";
					s5_fm_ul2[n].style.width = (s5_width4 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 5) {
					if (n==5) {
					s5_fm_ul2[n].style.height = (s5_height5 - 3) + "px";
					s5_fm_ul2[n].style.width = (s5_width5 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 6) {
					if (n==6) {
					s5_fm_ul2[n].style.height = (s5_height6 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width6 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 7) {
					if (n==7) {
					s5_fm_ul2[n].style.height = (s5_height7 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width7 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 8) {
					if (n==8) {
					s5_fm_ul2[n].style.height = (s5_height8 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width8 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 9) {
					if (n==9) {
					s5_fm_ul2[n].style.height = (s5_height9 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width9 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 10) {
					if (n==10) {
					s5_fm_ul2[n].style.height = (s5_height10 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width10 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 11) {
					if (n==11) {
					s5_fm_ul2[n].style.height = (s5_height11 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width11 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 12) {
					if (n==12) {
					s5_fm_ul2[n].style.height = (s5_height12 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width12 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 13) {
					if (n==13) {
					s5_fm_ul2[n].style.height = (s5_height13 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width13 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 14) {
					if (n==14) {
					s5_fm_ul2[n].style.height = (s5_height14 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width14 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 15) {
					if (n==15) {
					s5_fm_ul2[n].style.height = (s5_height15 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width15 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 16) {
					if (n==16) {
					s5_fm_ul2[n].style.height = (s5_height16 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width16 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 17) {
					if (n==17) {
					s5_fm_ul2[n].style.height = (s5_height17 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width17 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 18) {
					if (n==18) {
					s5_fm_ul2[n].style.height = (s5_height18 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width18 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 19) {
					if (n==19) {
					s5_fm_ul2[n].style.height = (s5_height19 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width19 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 20) {
					if (n==20) {
					s5_fm_ul2[n].style.height = (s5_height20 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width20 - 2) + "px";
					}
					if (n==21) {
					s5_fm_ul2[n].style.height = (s5_height21 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width21 - 2) + "px";
					}
					if (n==22) {
					s5_fm_ul2[n].style.height = (s5_height22 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width22 - 2) + "px";
					}
					if (n==23) {
					s5_fm_ul2[n].style.height = (s5_height23 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width23 - 2) + "px";
					}
					if (n==24) {
					s5_fm_ul2[n].style.height = (s5_height24 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width24 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 25) {
					if (n==25) {
					s5_fm_ul2[n].style.height = (s5_height25 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width25 - 2) + "px";
					}
					if (n==26) {
					s5_fm_ul2[n].style.height = (s5_height26 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width26 - 2) + "px";
					}
					if (n==27) {
					s5_fm_ul2[n].style.height = (s5_height27 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width27 - 2) + "px";
					}
					if (n==28) {
					s5_fm_ul2[n].style.height = (s5_height28 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width28 - 2) + "px";
					}
					if (n==29) {
					s5_fm_ul2[n].style.height = (s5_height29 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width29 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 30) {
					if (n==30) {
					s5_fm_ul2[n].style.height = (s5_height30 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width30 - 2) + "px";
					}
					if (n==31) {
					s5_fm_ul2[n].style.height = (s5_height31 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width31 - 2) + "px";
					}
					if (n==32) {
					s5_fm_ul2[n].style.height = (s5_height32 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width32 - 2) + "px";
					}
					if (n==33) {
					s5_fm_ul2[n].style.height = (s5_height33 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width33 - 2) + "px";
					}
					if (n==34) {
					s5_fm_ul2[n].style.height = (s5_height34 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width34 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 35) {
					if (n==35) {
					s5_fm_ul2[n].style.height = (s5_height35 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width35 - 2) + "px";
					}
					if (n==36) {
					s5_fm_ul2[n].style.height = (s5_height36 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width36 - 2) + "px";
					}
					if (n==37) {
					s5_fm_ul2[n].style.height = (s5_height37 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width37 - 2) + "px";
					}
					if (n==38) {
					s5_fm_ul2[n].style.height = (s5_height38 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width38 - 2) + "px";
					}
					if (n==39) {
					s5_fm_ul2[n].style.height = (s5_height39 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width39 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 40) {
					if (n==40) {
					s5_fm_ul2[n].style.height = (s5_height40 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width40 - 2) + "px";
					}
					if (n==41) {
					s5_fm_ul2[n].style.height = (s5_height41 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width41 - 2) + "px";
					}
					if (n==42) {
					s5_fm_ul2[n].style.height = (s5_height42 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width42 - 2) + "px";
					}
					if (n==43) {
					s5_fm_ul2[n].style.height = (s5_height43 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width43 - 2) + "px";
					}
					if (n==44) {
					s5_fm_ul2[n].style.height = (s5_height44 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width44 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 45) {
					if (n==45) {
					s5_fm_ul2[n].style.height = (s5_height45 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width45 - 2) + "px";
					}
					if (n==46) {
					s5_fm_ul2[n].style.height = (s5_height46 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width46 - 2) + "px";
					}
					if (n==47) {
					s5_fm_ul2[n].style.height = (s5_height47 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width47 - 2) + "px";
					}
					if (n==48) {
					s5_fm_ul2[n].style.height = (s5_height48 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width48 - 2) + "px";
					}
					if (n==49) {
					s5_fm_ul2[n].style.height = (s5_height49 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width49 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 50) {
					if (n==50) {
					s5_fm_ul2[n].style.height = (s5_height50 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width50 - 2) + "px";
					}
					if (n==51) {
					s5_fm_ul2[n].style.height = (s5_height51 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width51 - 2) + "px";
					}
					if (n==52) {
					s5_fm_ul2[n].style.height = (s5_height52 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width52 - 2) + "px";
					}
					if (n==53) {
					s5_fm_ul2[n].style.height = (s5_height53 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width53 - 2) + "px";
					}
					if (n==54) {
					s5_fm_ul2[n].style.height = (s5_height54 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width54 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 55) {
					if (n==55) {
					s5_fm_ul2[n].style.height = (s5_height55 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width55 - 2) + "px";
					}
					if (n==56) {
					s5_fm_ul2[n].style.height = (s5_height56 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width56 - 2) + "px";
					}
					if (n==57) {
					s5_fm_ul2[n].style.height = (s5_height57 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width57 - 2) + "px";
					}
					if (n==58) {
					s5_fm_ul2[n].style.height = (s5_height58 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width58 - 2) + "px";
					}
					if (n==59) {
					s5_fm_ul2[n].style.height = (s5_height59 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width59 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 60) {
					if (n==60) {
					s5_fm_ul2[n].style.height = (s5_height60 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width60 - 2) + "px";
					}
					if (n==61) {
					s5_fm_ul2[n].style.height = (s5_height61 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width61 - 2) + "px";
					}
					if (n==62) {
					s5_fm_ul2[n].style.height = (s5_height62 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width62 - 2) + "px";
					}
					if (n==63) {
					s5_fm_ul2[n].style.height = (s5_height63 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width63 - 2) + "px";
					}
					if (n==64) {
					s5_fm_ul2[n].style.height = (s5_height64 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width64 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 65) {
					if (n==65) {
					s5_fm_ul2[n].style.height = (s5_height65 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width65 - 2) + "px";
					}
					if (n==66) {
					s5_fm_ul2[n].style.height = (s5_height66 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width66 - 2) + "px";
					}
					if (n==67) {
					s5_fm_ul2[n].style.height = (s5_height67 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width67 - 2) + "px";
					}
					if (n==68) {
					s5_fm_ul2[n].style.height = (s5_height68 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width68 - 2) + "px";
					}
					if (n==69) {
					s5_fm_ul2[n].style.height = (s5_height69 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width69 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 70) {
					if (n==70) {
					s5_fm_ul2[n].style.height = (s5_height70 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width70 - 2) + "px";
					}
					if (n==71) {
					s5_fm_ul2[n].style.height = (s5_height71 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width71 - 2) + "px";
					}
					if (n==72) {
					s5_fm_ul2[n].style.height = (s5_height72 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width72 - 2) + "px";
					}
					if (n==73) {
					s5_fm_ul2[n].style.height = (s5_height73 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width73 - 2) + "px";
					}
					if (n==74) {
					s5_fm_ul2[n].style.height = (s5_height74 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width74 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 75) {
					if (n==75) {
					s5_fm_ul2[n].style.height = (s5_height75 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width75 - 2) + "px";
					}
					if (n==76) {
					s5_fm_ul2[n].style.height = (s5_height76 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width76 - 2) + "px";
					}
					if (n==77) {
					s5_fm_ul2[n].style.height = (s5_height77 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width77 - 2) + "px";
					}
					if (n==78) {
					s5_fm_ul2[n].style.height = (s5_height78 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width78 - 2) + "px";
					}
					if (n==79) {
					s5_fm_ul2[n].style.height = (s5_height79 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width79 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 80) {
					if (n==80) {
					s5_fm_ul2[n].style.height = (s5_height80 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width80 - 2) + "px";
					}
					if (n==81) {
					s5_fm_ul2[n].style.height = (s5_height81 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width81 - 2) + "px";
					}
					if (n==82) {
					s5_fm_ul2[n].style.height = (s5_height82 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width82 - 2) + "px";
					}
					if (n==83) {
					s5_fm_ul2[n].style.height = (s5_height83 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width83 - 2) + "px";
					}
					if (n==84) {
					s5_fm_ul2[n].style.height = (s5_height84 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width84 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 85) {
					if (n==85) {
					s5_fm_ul2[n].style.height = (s5_height85 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width85 - 2) + "px";
					}
					if (n==86) {
					s5_fm_ul2[n].style.height = (s5_height86 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width86 - 2) + "px";
					}
					if (n==87) {
					s5_fm_ul2[n].style.height = (s5_height87 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width87 - 2) + "px";
					}
					if (n==88) {
					s5_fm_ul2[n].style.height = (s5_height88 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width88 - 2) + "px";
					}
					if (n==89) {
					s5_fm_ul2[n].style.height = (s5_height89 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width89 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 90) {
					if (n==90) {
					s5_fm_ul2[n].style.height = (s5_height90 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width90 - 2) + "px";
					}
					if (n==91) {
					s5_fm_ul2[n].style.height = (s5_height91 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width91 - 2) + "px";
					}
					if (n==92) {
					s5_fm_ul2[n].style.height = (s5_height92 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width92 - 2) + "px";
					}
					if (n==93) {
					s5_fm_ul2[n].style.height = (s5_height93 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width93 - 2) + "px";
					}
					if (n==94) {
					s5_fm_ul2[n].style.height = (s5_height94 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width94 - 2) + "px";
					}
					if (s5_fm_ul2.length >= 95) {
					if (n==95) {
					s5_fm_ul2[n].style.height = (s5_height95 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width95 - 2) + "px";
					}
					if (n==96) {
					s5_fm_ul2[n].style.height = (s5_height96 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width96 - 2) + "px";
					}
					if (n==97) {
					s5_fm_ul2[n].style.height = (s5_height97 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width97 - 2) + "px";
					}
					if (n==98) {
					s5_fm_ul2[n].style.height = (s5_height98 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width98 - 2) + "px";
					}
					if (n==99) {
					s5_fm_ul2[n].style.height = (s5_height99 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width99 - 2) + "px";
					}
					if (n==100) {
					s5_fm_ul2[n].style.height = (s5_height100 - 2) + "px";
					s5_fm_ul2[n].style.width = (s5_width100 - 2) + "px";
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					}
					
				s5_fm_ul2[n].style.display = "none";
				s5_fm_ul2[n].style.visibility = "hidden";
			}
		}
		nn = nn + 1;
	}

	}
	
	s5_fader_menu_set_none();
	document.onmouseover=s5_fader_menu_set_none;
	
function s5_fader_menu_hide() {
	opacity_s5_fm(id_s5_fm, 100, 0, 1);
}

var s5_fm_height;
var s5_fm_width;

function s5_fader_menu_show() {
	opacity_s5_fm(id_s5_fm, 0, 100, 600);
	s5_fader_menu_show_block();
}

var s5_n;

// show the ul's
function s5_fader_menu_show_block() {
	document.getElementById(s5_ul).style.overflow = "hidden";
	document.getElementById(s5_ul).style.visibility = "hidden";
	document.getElementById(s5_ul).style.display = "block";
	s5_fm_height = document.getElementById(s5_ul).offsetHeight;
	s5_fm_width = document.getElementById(s5_ul).offsetWidth;
	document.getElementById(s5_ul).style.height = "0px";
	document.getElementById(s5_ul).style.width = "0px";
			var s5_id_num1 = s5_ul.charAt(8);
			var s5_id_num2 = 0;
			var s5_id_num3 = 0;
			s5_id_num2 = theId.charAt(9);
			s5_id_num3 = theId.charAt(10);
			s5_n = s5_id_num1 + s5_id_num2 + s5_id_num3;
			document.getElementById(s5_ul).style.visibility = "visible";
			document.getElementById(s5_ul).style.filter = "none";
			
	checkVersion_s5();
	s5_fader_menu_effect_loader();
}

// detect IE
var s5_browser_detect_fader = 0;

function getInternetExplorerVersion_s5() {
  var rv = -1; // Return value assumes failure.
  if (navigator.appName == 'Microsoft Internet Explorer')
  {
  s5_browser_detect_fader = 1;
    var ua = navigator.userAgent;
    var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
    if (re.exec(ua) != null)
      rv = parseFloat( RegExp.$1 );
  }
  return rv;
}

function checkVersion_s5() {
  var ver = getInternetExplorerVersion_s5();
}

var myInterval_s5 = 0;

function s5_fader_menu_effect_loader() {
if (s5_browser_detect_fader == "1") {
clearInterval(myInterval_s5);
myInterval_s5 = 0;
myInterval_s5 = window.setInterval("s5_fader_menu_effect()",30);
}
else {
clearInterval(myInterval_s5);
myInterval_s5 = 0;
myInterval_s5 = window.setInterval("s5_fader_menu_effect()",30);
}
}

// drop in effect
function s5_fader_menu_effect() {
			
			if (document.getElementById(s5_ul).offsetHeight < ((s5_fm_height)-1)) {

			if (document.getElementById(s5_ul).offsetHeight > (s5_fm_height*.75)) {
			document.getElementById(s5_ul).style.filter = "none";
			}
					document.getElementById(s5_ul).style.height = document.getElementById(s5_ul).offsetHeight + (s5_fm_height * 1) -4 + "px";
					document.getElementById(s5_ul).style.width = document.getElementById(s5_ul).offsetWidth + (s5_fm_width * 1) + "px";
			}
			
			else {
			
			window.clearInterval(myInterval_s5);
			myInterval_s5 = 0;
			
					if (s5_n=="1") {
					document.getElementById(s5_ul).style.height = (s5_height1 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width1 - 2) + "px";
					}
					if (s5_n=="2") {
					document.getElementById(s5_ul).style.height = (s5_height2 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width2 - 2) + "px";
					}
					if (s5_n=="3") {
					document.getElementById(s5_ul).style.height = (s5_height3 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width3 - 2) + "px";
					}
					if (s5_n=="4") {
					document.getElementById(s5_ul).style.height = (s5_height4 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width4 - 2) + "px";
					}
					if (s5_n=="5") {
					document.getElementById(s5_ul).style.height = (s5_height5 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width5 - 2) + "px";
					}
					if (s5_n=="6") {
					document.getElementById(s5_ul).style.height = (s5_height6 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width6 - 2) + "px";
					}
					if (s5_n=="7") {
					document.getElementById(s5_ul).style.height = (s5_height7 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width7 - 2) + "px";
					}
					if (s5_n=="8") {
					document.getElementById(s5_ul).style.height = (s5_height8 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width8 - 2) + "px";
					}
					if (s5_n=="9") {
					document.getElementById(s5_ul).style.height = (s5_height9 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width9 - 2) + "px";
					}
					if (s5_n=="10") {
					document.getElementById(s5_ul).style.height = (s5_height10 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width10 - 2) + "px";
					}
					if (s5_n=="11") {
					document.getElementById(s5_ul).style.height = (s5_height11 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width11 - 2) + "px";
					}
					if (s5_n=="12") {
					document.getElementById(s5_ul).style.height = (s5_height12 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width12 - 2) + "px";
					}
					if (s5_n=="13") {
					document.getElementById(s5_ul).style.height = (s5_height13 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width13 - 2) + "px";
					}
					if (s5_n=="14") {
					document.getElementById(s5_ul).style.height = (s5_height14 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width14 - 2) + "px";
					}
					if (s5_n=="15") {
					document.getElementById(s5_ul).style.height = (s5_height15 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width15 - 2) + "px";
					}
					if (s5_n=="16") {
					document.getElementById(s5_ul).style.height = (s5_height16 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width16 - 2) + "px";
					}
					if (s5_n=="17") {
					document.getElementById(s5_ul).style.height = (s5_height17 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width17 - 2) + "px";
					}
					if (s5_n=="18") {
					document.getElementById(s5_ul).style.height = (s5_height18 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width18 - 2) + "px";
					}
					if (s5_n=="19") {
					document.getElementById(s5_ul).style.height = (s5_height19 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width19 - 2) + "px";
					}
					if (s5_n=="20") {
					document.getElementById(s5_ul).style.height = (s5_height20 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width20 - 2) + "px";
					}
					if (s5_n=="21") {
					document.getElementById(s5_ul).style.height = (s5_height21 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width21 - 2) + "px";
					}
					if (s5_n=="22") {
					document.getElementById(s5_ul).style.height = (s5_height22 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width22 - 2) + "px";
					}
					if (s5_n=="23") {
					document.getElementById(s5_ul).style.height = (s5_height23 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width23 - 2) + "px";
					}
					if (s5_n=="24") {
					document.getElementById(s5_ul).style.height = (s5_height24 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width24 - 2) + "px";
					}
					if (s5_n=="25") {
					document.getElementById(s5_ul).style.height = (s5_height25 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width25 - 2) + "px";
					}
					if (s5_n=="26") {
					document.getElementById(s5_ul).style.height = (s5_height26 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width26 - 2) + "px";
					}
					if (s5_n=="27") {
					document.getElementById(s5_ul).style.height = (s5_height27 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width27 - 2) + "px";
					}
					if (s5_n=="28") {
					document.getElementById(s5_ul).style.height = (s5_height28 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width28 - 2) + "px";
					}
					if (s5_n=="29") {
					document.getElementById(s5_ul).style.height = (s5_height29 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width29 - 2) + "px";
					}
					if (s5_n=="30") {
					document.getElementById(s5_ul).style.height = (s5_height30 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width30 - 2) + "px";
					}
					if (s5_n=="31") {
					document.getElementById(s5_ul).style.height = (s5_height31 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width31 - 2) + "px";
					}
					if (s5_n=="32") {
					document.getElementById(s5_ul).style.height = (s5_height32 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width32 - 2) + "px";
					}
					if (s5_n=="33") {
					document.getElementById(s5_ul).style.height = (s5_height33 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width33 - 2) + "px";
					}
					if (s5_n=="34") {
					document.getElementById(s5_ul).style.height = (s5_height34 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width34 - 2) + "px";
					}
					if (s5_n=="35") {
					document.getElementById(s5_ul).style.height = (s5_height35 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width35 - 2) + "px";
					}
					if (s5_n=="36") {
					document.getElementById(s5_ul).style.height = (s5_height36 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width36 - 2) + "px";
					}
					if (s5_n=="37") {
					document.getElementById(s5_ul).style.height = (s5_height37 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width37 - 2) + "px";
					}
					if (s5_n=="38") {
					document.getElementById(s5_ul).style.height = (s5_height38 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width38 - 2) + "px";
					}
					if (s5_n=="39") {
					document.getElementById(s5_ul).style.height = (s5_height39 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width39 - 2) + "px";
					}
					if (s5_n=="40") {
					document.getElementById(s5_ul).style.height = (s5_height40 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width40 - 2) + "px";
					}
					if (s5_n=="41") {
					document.getElementById(s5_ul).style.height = (s5_height41 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width41 - 2) + "px";
					}
					if (s5_n=="42") {
					document.getElementById(s5_ul).style.height = (s5_height42 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width42 - 2) + "px";
					}
					if (s5_n=="43") {
					document.getElementById(s5_ul).style.height = (s5_height43 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width43 - 2) + "px";
					}
					if (s5_n=="44") {
					document.getElementById(s5_ul).style.height = (s5_height44 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width44 - 2) + "px";
					}
					if (s5_n=="45") {
					document.getElementById(s5_ul).style.height = (s5_height45 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width45 - 2) + "px";
					}
					if (s5_n=="46") {
					document.getElementById(s5_ul).style.height = (s5_height46 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width46 - 2) + "px";
					}
					if (s5_n=="47") {
					document.getElementById(s5_ul).style.height = (s5_height47 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width47 - 2) + "px";
					}
					if (s5_n=="48") {
					document.getElementById(s5_ul).style.height = (s5_height48 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width48 - 2) + "px";
					}
					if (s5_n=="49") {
					document.getElementById(s5_ul).style.height = (s5_height49 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width49 - 2) + "px";
					}
					if (s5_n=="50") {
					document.getElementById(s5_ul).style.height = (s5_height50 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width50 - 2) + "px";
					}
					if (s5_n=="51") {
					document.getElementById(s5_ul).style.height = (s5_height51 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width51 - 2) + "px";
					}
					if (s5_n=="52") {
					document.getElementById(s5_ul).style.height = (s5_height52 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width52 - 2) + "px";
					}
					if (s5_n=="53") {
					document.getElementById(s5_ul).style.height = (s5_height53 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width53 - 2) + "px";
					}
					if (s5_n=="54") {
					document.getElementById(s5_ul).style.height = (s5_height54 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width54 - 2) + "px";
					}
					if (s5_n=="55") {
					document.getElementById(s5_ul).style.height = (s5_height55 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width55 - 2) + "px";
					}
					if (s5_n=="56") {
					document.getElementById(s5_ul).style.height = (s5_height56 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width56 - 2) + "px";
					}
					if (s5_n=="57") {
					document.getElementById(s5_ul).style.height = (s5_height57 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width57 - 2) + "px";
					}
					if (s5_n=="58") {
					document.getElementById(s5_ul).style.height = (s5_height58 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width58 - 2) + "px";
					}
					if (s5_n=="59") {
					document.getElementById(s5_ul).style.height = (s5_height59 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width59 - 2) + "px";
					}
					if (s5_n=="60") {
					document.getElementById(s5_ul).style.height = (s5_height60 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width60 - 2) + "px";
					}
					if (s5_n=="61") {
					document.getElementById(s5_ul).style.height = (s5_height61 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width61 - 2) + "px";
					}
					if (s5_n=="62") {
					document.getElementById(s5_ul).style.height = (s5_height62 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width62 - 2) + "px";
					}
					if (s5_n=="63") {
					document.getElementById(s5_ul).style.height = (s5_height63 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width63 - 2) + "px";
					}
					if (s5_n=="64") {
					document.getElementById(s5_ul).style.height = (s5_height64 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width64 - 2) + "px";
					}
					if (s5_n=="65") {
					document.getElementById(s5_ul).style.height = (s5_height65 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width65 - 2) + "px";
					}
					if (s5_n=="66") {
					document.getElementById(s5_ul).style.height = (s5_height66 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width66 - 2) + "px";
					}
					if (s5_n=="67") {
					document.getElementById(s5_ul).style.height = (s5_height67 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width67 - 2) + "px";
					}
					if (s5_n=="68") {
					document.getElementById(s5_ul).style.height = (s5_height68 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width68 - 2) + "px";
					}
					if (s5_n=="69") {
					document.getElementById(s5_ul).style.height = (s5_height69 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width69 - 2) + "px";
					}
					if (s5_n=="70") {
					document.getElementById(s5_ul).style.height = (s5_height70 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width70 - 2) + "px";
					}
					if (s5_n=="71") {
					document.getElementById(s5_ul).style.height = (s5_height71 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width71 - 2) + "px";
					}
					if (s5_n=="72") {
					document.getElementById(s5_ul).style.height = (s5_height72 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width72 - 2) + "px";
					}
					if (s5_n=="73") {
					document.getElementById(s5_ul).style.height = (s5_height73 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width73 - 2) + "px";
					}
					if (s5_n=="74") {
					document.getElementById(s5_ul).style.height = (s5_height74 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width74 - 2) + "px";
					}
					if (s5_n=="75") {
					document.getElementById(s5_ul).style.height = (s5_height75 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width75 - 2) + "px";
					}
					if (s5_n=="76") {
					document.getElementById(s5_ul).style.height = (s5_height76 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width76 - 2) + "px";
					}
					if (s5_n=="77") {
					document.getElementById(s5_ul).style.height = (s5_height77 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width77 - 2) + "px";
					}
					if (s5_n=="78") {
					document.getElementById(s5_ul).style.height = (s5_height78 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width78 - 2) + "px";
					}
					if (s5_n=="79") {
					document.getElementById(s5_ul).style.height = (s5_height79 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width79 - 2) + "px";
					}
					if (s5_n=="80") {
					document.getElementById(s5_ul).style.height = (s5_height80 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width80 - 2) + "px";
					}
					if (s5_n=="81") {
					document.getElementById(s5_ul).style.height = (s5_height81 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width81 - 2) + "px";
					}
					if (s5_n=="82") {
					document.getElementById(s5_ul).style.height = (s5_height82 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width82 - 2) + "px";
					}
					if (s5_n=="83") {
					document.getElementById(s5_ul).style.height = (s5_height83 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width83 - 2) + "px";
					}
					if (s5_n=="84") {
					document.getElementById(s5_ul).style.height = (s5_height84 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width84 - 2) + "px";
					}
					if (s5_n=="85") {
					document.getElementById(s5_ul).style.height = (s5_height85 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width85 - 2) + "px";
					}
					if (s5_n=="86") {
					document.getElementById(s5_ul).style.height = (s5_height86 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width86 - 2) + "px";
					}
					if (s5_n=="87") {
					document.getElementById(s5_ul).style.height = (s5_height87 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width87 - 2) + "px";
					}
					if (s5_n=="88") {
					document.getElementById(s5_ul).style.height = (s5_height88 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width88 - 2) + "px";
					}
					if (s5_n=="89") {
					document.getElementById(s5_ul).style.height = (s5_height89 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width89 - 2) + "px";
					}
					if (s5_n=="90") {
					document.getElementById(s5_ul).style.height = (s5_height90 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width90 - 2) + "px";
					}
					if (s5_n=="91") {
					document.getElementById(s5_ul).style.height = (s5_height91 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width91 - 2) + "px";
					}
					if (s5_n=="92") {
					document.getElementById(s5_ul).style.height = (s5_height92 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width92 - 2) + "px";
					}
					if (s5_n=="93") {
					document.getElementById(s5_ul).style.height = (s5_height93 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width93 - 2) + "px";
					}
					if (s5_n=="94") {
					document.getElementById(s5_ul).style.height = (s5_height94 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width94 - 2) + "px";
					}
					if (s5_n=="95") {
					document.getElementById(s5_ul).style.height = (s5_height95 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width95 - 2) + "px";
					}
					if (s5_n=="96") {
					document.getElementById(s5_ul).style.height = (s5_height96 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width96 - 2) + "px";
					}
					if (s5_n=="97") {
					document.getElementById(s5_ul).style.height = (s5_height97 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width97 - 2) + "px";
					}
					if (s5_n=="98") {
					document.getElementById(s5_ul).style.height = (s5_height98 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width98 - 2) + "px";
					}
					if (s5_n=="99") {
					document.getElementById(s5_ul).style.height = (s5_height99 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width99 - 2) + "px";
					}
					if (s5_n=="100") {
					document.getElementById(s5_ul).style.height = (s5_height100 - 2) + "px";
					document.getElementById(s5_ul).style.width = (s5_width100 - 2) + "px";
					}
					
					document.getElementById(s5_ul).style.overflow = "visible";
	
					}
}

// grabs the id of element hover overed
var theId;
function grabID_s5_fm(e) {
var targ;
if (!e) var e = window.event;
if (e.target) targ = e.target;
else if (e.srcElement) targ = e.srcElement;
if (targ.nodeType == 3)
targ = targ.parentNode;
theId=targ.id
check_id_second();
}

function check_id_timer() {
window.setTimeout('check_id()',1);
}

function check_id() {
if (myInterval_s5 != "0") {
document.getElementById(s5_ul).style.overflow = "hidden";
s5_fader_menu_effect_loader();
}
else {
document.getElementById("navv").onmouseover=grabID_s5_fm;
}
}

function check_id_second() {
document.getElementById("navv").onmouseover=grabID_s5_fm;
if (theId) {

if (theId.charAt(6) == "a" || theId.charAt(6) == "l" || theId.charAt(6) == "u" &&  theId.charAt(8) != "0") {

			var s5_id_text = "s5_fm_ul";
			var s5_id_num1 = theId.charAt(8);
			var s5_id_num2 = 0;
			var s5_id_num3 = 0;
			s5_id_num2 = theId.charAt(9);
			s5_id_num3 = theId.charAt(10);
			s5_ul = s5_id_text + s5_id_num1 + s5_id_num2 + s5_id_num3;
			id_s5_fm = s5_ul;

			if (document.getElementById(s5_ul).style.display != "block") {
				s5_fader_menu_hide();
				s5_fader_menu_show();
			}

	}
}
}

var is_ie_s5_fm/*@cc_on = {
  // quirksmode : (document.compatMode=="BackCompat"),
  version : parseFloat(navigator.appVersion.match(/MSIE (.+?);/)[1])
}@*/;

function opacity_s5_fm(id_s5_fm, opacStart_s5_fm, opacEnd_s5_fm, millisec_s5_fm) {
	//speed for each frame
	var speed_s5_fm = Math.round(millisec_s5_fm / 100);
	var timer_s5_fm = 0;
	//determine the direction for the blending, if start and end are the same nothing happens
	if(opacStart_s5_fm > opacEnd_s5_fm) {
		for(i = opacStart_s5_fm; i >= opacEnd_s5_fm; i--) {
			setTimeout("changeOpac_s5_fm(" + i + ",'" + id_s5_fm + "')",(timer_s5_fm * speed_s5_fm));
			timer_s5_fm++;
		}
	} else if(opacStart_s5_fm < opacEnd_s5_fm) {
		for(i = opacStart_s5_fm; i <= opacEnd_s5_fm; i++)
			{
			setTimeout("changeOpac_s5_fm(" + i + ",'" + id_s5_fm + "')",(timer_s5_fm * speed_s5_fm));
			timer_s5_fm++;
		}
	}
}

//change the opacity for different browsers
function changeOpac_s5_fm(opacity_s5_fm, id_s5_fm) {
	var object_s5_fm = document.getElementById(id_s5_fm).style; 
	object_s5_fm.opacity = (opacity_s5_fm / 100);
	object_s5_fm.MozOpacity = (opacity_s5_fm / 100);
	object_s5_fm.KhtmlOpacity = (opacity_s5_fm / 100);
    object_s5_fm.filter = "alpha(opacity=" + opacity_s5_fm + ")";
}

function blendimage_s5_fm(divid_s5_fm, imageid_s5_fm, imagefile_s5_fm, millisec_s5_fm) {
	var speed_s5_fm = Math.round(millisec_s5_fm / 100);
	var timer_s5_fm = 0;
	
	//set the current image as background
	document.getElementById(divid_s5_fm).style.backgroundImage = "url(" + document.getElementById(imageid_s5_fm).src + ")";
	
	//make image transparent
	changeOpac_s5_fm(0, imageid_s5_fm);
	
	//make new image
	document.getElementById(imageid_s5_fm).src = imagefile;

	//fade in image
	for(i = 0; i <= 100; i++) {
		setTimeout("changeOpac_s5_fm(" + i + ",'" + imageid_s5_fm + "')",(timer_s5_fm * speed_s5_fm));
		timer_s5_fm++;
	}
}

function currentOpac_s5_fm(id_s5_fm, opacEnd_s5_fm, millisec_s5_fm) {
	//standard opacity is 100
	var currentOpac_s5_fm = 100;
	
	//if the element has an opacity set, get it
	if(document.getElementById(id_s5_fm).style.opacity < 100) {
		currentOpac_s5_fm = document.getElementById(id_s5_fm).style.opacity * 100;
	}

	//call for the function that changes the opacity
	opacity_s5_fm(id_s5_fm, currentOpac_s5_fm, opacEnd_s5_fm, millisec_s5_fm)
}
