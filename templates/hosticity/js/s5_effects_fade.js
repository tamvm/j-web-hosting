

var is_ie/*@cc_on = {
  // quirksmode : (document.compatMode=="BackCompat"),
  version : parseFloat(navigator.appVersion.match(/MSIE (.+?);/)[1])
}@*/;

var is_ie;

var x = 0
function transition_effect() {
if (x == 0)
{
transition_big()
}
else if (x == 1)
{
transition_small()
}
}

var big = 0
var small = 27
function transition_big() {
if (big < 27)
{
window.setTimeout('increase()',30);
}
else {
x = 1;
big = 0;
}
}



function transition_small() {
if (small > 0)
{
window.setTimeout('decrease()',30);
}
else {
x = 0;
small = 27;
}
}


function increase() {
document.getElementById("transition_div").style.height = big +'px';
document.getElementById("s5_topbuttonswrap").style.top = big +'px';
transition_big();
big = big + 3;
}



function decrease() {
document.getElementById("transition_div").style.height = small +'px';
document.getElementById("s5_topbuttonswrap").style.top = small +'px';
transition_small();
small = small - 3;
}

function show_popup() {
if (is_ie && (is_ie.version < 7))
{ 
document.getElementById("popup_outer").style.height = document.getElementById("s5_outer").offsetHeight +'px';
document.getElementById("popup_div").style.height = 350 +'px';
document.getElementById("popup_outer").style.width = document.documentElement.clientWidth +'px';
document.getElementById("popup_div").style.width = 414 +'px';
}
else {
document.getElementById("popup_outer").style.height = 100 +'%';
document.getElementById("popup_div").style.height = 350 +'px';
document.getElementById("popup_outer").style.width = 100 +'%';
document.getElementById("popup_div").style.width = 414 +'px';
}
}
function hide_popup() {
document.getElementById("popup_outer").style.height = 0 +'%';
document.getElementById("popup_div").style.height = 0 +'px';

if (document.getElementById("popup_div").style.height == '0px')
  {
	document.getElementById("popup_div").style.display = 'none'; 
	document.getElementById("popup_outer").style.display = 'none';
  }

}


function show_popupie() {
if (is_ie && (is_ie.version < 7))
{ 
document.getElementById("popup_outerie").style.height = document.documentElement.clientHeight +'px';
document.getElementById("popup_divie").style.height = 350 +'px';
document.getElementById("popup_outerie").style.width = document.documentElement.clientWidth +'px';
document.getElementById("popup_divie").style.width = 414 +'px';
}
else { 
document.getElementById("popup_outerie").style.height = 100 + '%';
document.getElementById("popup_divie").style.height = 350 +'px';
document.getElementById("popup_outerie").style.width = 100 +'%';
document.getElementById("popup_divie").style.width = 340 +'px';
}
}
function hide_popupie() {
document.getElementById("popup_outerie").style.height = 0 +'%';
document.getElementById("popup_divie").style.height = 0 +'px';

if (document.getElementById("popup_divie").style.height == '0px')
  {
	document.getElementById("popup_divie").style.display = 'none'; 
	document.getElementById("popup_outerie").style.display = 'none';
  }

}



function ie_popup_fix(){
scroll(0,0)
}



function opacity(id, opacStart, opacEnd, millisec) {
	//speed for each frame
	var speed = Math.round(millisec / 100);
	var timer = 0;
	//determine the direction for the blending, if start and end are the same nothing happens
	if(opacStart > opacEnd) {
		for(i = opacStart; i >= opacEnd; i--) {
			setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed));
			timer++;
		}
	} else if(opacStart < opacEnd) {
		for(i = opacStart; i <= opacEnd; i++)
			{
			setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed));
			timer++;
		}
	}
}

//change the opacity for different browsers
function changeOpac(opacity, id) {
	var object = document.getElementById(id).style; 
	object.opacity = (opacity / 100);
	object.MozOpacity = (opacity / 100);
	object.KhtmlOpacity = (opacity / 100);
	object.filter = "alpha(opacity=" + opacity + ")";
}

function shiftOpacity(id) {
	//if an element is invisible, make it visible, else make it ivisible
	if(document.getElementById(id).style.height == '0px') {
		opacity(id, 0, 70, 1000);
	} else {
		opacity(id, 70, 0, 1000);
	}
}

function shiftOpacity2(id) {
	//if an element is invisible, make it visible, else make it ivisible
	if(document.getElementById(id).style.height == '0px' || document.getElementById(id).style.height == '0%') {
		document.getElementById(id).style.display = 'block'
		opacity(id, 0, 70, 1000);
		
	} else {
		opacity(id, 70, 0, 1000);
                window.setTimeout('hide_popup()',1100);
		
	}
}

function shiftOpacity3(id) {
	//if an element is invisible, make it visible, else make it ivisible
	if(document.getElementById(id).style.height == '0px' || document.getElementById(id).style.height == '0%') {
		window.setTimeout('show_pop()',1100); }
 else {
		document.getElementById("popup_div").style.display = 'none';
				
	}
}



function show_pop() {
document.getElementById("popup_div").style.display = 'block';
}



function blendimage(divid, imageid, imagefile, millisec) {
	var speed = Math.round(millisec / 100);
	var timer = 0;
	
	//set the current image as background
	document.getElementById(divid).style.backgroundImage = "url(" + document.getElementById(imageid).src + ")";
	
	//make image transparent
	changeOpac(0, imageid);
	
	//make new image
	document.getElementById(imageid).src = imagefile;

	//fade in image
	for(i = 0; i <= 100; i++) {
		setTimeout("changeOpac(" + i + ",'" + imageid + "')",(timer * speed));
		timer++;
	}
}

function currentOpac(id, opacEnd, millisec) {
	//standard opacity is 100
	var currentOpac = 100;
	
	//if the element has an opacity set, get it
	if(document.getElementById(id).style.opacity < 100) {
		currentOpac = document.getElementById(id).style.opacity * 100;
	}

	//call for the function that changes the opacity
	opacity(id, currentOpac, opacEnd, millisec)
}



function shiftOpacity3ie(id) {
	//if an element is invisible, make it visible, else make it ivisible
	
	if(document.getElementById(id).style.height == '0px' || document.getElementById(id).style.height == '0%') {
	document.getElementById(id).style.display = 'block'
	} 
	
	else {
        window.setTimeout('hide_popupie()',1100);
		
	}
				

}


function shiftOpacity2ie(id) {
	//if an element is invisible, make it visible, else make it ivisible
	if(document.getElementById(id).style.height == '0px' || document.getElementById(id).style.height == '0%') {
	document.getElementById(id).style.display = 'block'
	} 
	
	else {
        window.setTimeout('hide_popupie()',1100);
		
	}
}

