<?php
defined( '_JEXEC' ) or die();

function mosRecurseListMenu( $id, $level, &$children, $open, &$indents, $class_sfx, $highlight ) {
	global $Itemid;
	global $HTTP_SERVER_VARS;
	if (@$children[$id]) {
		$n = min( $level, count( $indents )-1 );
			if ($level==0) echo '<ul onmouseover="check_id()">';
			else
        echo $indents[$n][0];
		foreach ($children[$id] as $row) {
		        switch ($row->type) {
          		case 'separator':
          		$row->link = "javascript:;";
          		break;
          		case 'url':
				if ($row->link == "javascript:;") {
					$row->link = "javascript:;";
				}
          		else {
					$row->link .= "";
				}
          		break;
          		default:
          			$row->link .= "&Itemid=$row->id";
          		break;
          	}
            $li =  "\n".$indents[$n][1] ;
            $current_itemid = trim( JRequest::getVar( 'Itemid', 0 ) );
            if ($row->link != "seperator" &&
								$current_itemid == $row->id || 
            		$row->id == $highlight || 
                (JRoute::_( substr($_SERVER['PHP_SELF'],0,-9) . $row->link)) == $_SERVER['REQUEST_URI'] ||
                (JRoute::_( substr($_SERVER['PHP_SELF'],0,-9) . $row->link)) == $HTTP_SERVER_VARS['REQUEST_URI']) {
                               
							if ($row->type != "url") {
							$li = "<li class=\"active\">";
							}
							
						}
	          echo $li;
								
            echo mosGetLink( $row, $level, $class_sfx );
						mosRecurseListMenu( $row->id, $level+1, $children, $open, $indents, $class_sfx, "" );
            echo $indents[$n][2];

        }
		echo "\n".$indents[$n][3];

	}
}

function getTheParentRow($rows, $id) {
		if (isset($rows[$id]) && $rows[$id]) {
			if($rows[$id]->parent > 0) {
				return $rows[$id]->parent;
			}	
		}
		return -1;
	}
function mosGetLink( $mitem, $level, $class_sfx='' ) {
	global $Itemid;
	$txt = '';
	$menuclass = '';
	$main = 'top';
	$router = JSite::getRouter();
	$mitem->url2 = $router->getMode() == JROUTER_MODE_SEF ? 'index.php?Itemid='.$mitem->id : $mitem->link.'&Itemid='.$mitem->id;
	JRoute::_('$mitem->link');
	if ($mitem->url2{10} == "I") {
	if ($mitem->type != "url" && $mitem->type != "separator") {
	
	$sef_suf =& JFactory::getApplication();
	$sef_value = $sef_suf->getCfg('sef_suffix');

	$mitem->link = JRoute::_($mitem->alias);
	
	if ($sef_value == "1") {
		$mitem->link = "$mitem->link.html";		
		$router = JSite::getRouter();
		$mitem->link = $router->getMode() == JROUTER_MODE_SEF ? 'index.php?Itemid='.$mitem->id : $mitem->link.'&Itemid='.$mitem->id;
		}
		
	else if ($sef_value == "0") {
		$router = JSite::getRouter();
		$mitem->link = $router->getMode() == JROUTER_MODE_SEF ? 'index.php?Itemid='.$mitem->id : $mitem->link.'&Itemid='.$mitem->id;
		}
	else  {
		$mitem->link = $mitem->link;		
		}
		
	}
	}

    switch ($mitem->browserNav) {
		case 1:
    if ($mitem->cnt > 0) {
		   if ($level == 0) {
                $txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a class=\"main\" target=\"_window\"  href=\"$mitem->link\">$mitem->name</a></span></span>";
								$main = "main";
		   } else {
                $txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a class=\"sub\" target=\"_window\"  href=\"$mitem->link\">$mitem->name</a></span></span>";
		   }
		} else {
		   	$txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a href=\"$mitem->link\" target=\"_window\" >$mitem->name</a></span></span>\n";
		}
		break;

		case 2:
    if ($mitem->cnt > 0) {
				if ($level == 0) {
                $txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a href=\"#\" class=\"main\" onClick=\"javascript: window.open('$mitem->link', '', 'toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=780,height=550');\" class=\"$menuclass\">$mitem->name</a></span></span>\n";
		   					$main = "main";
		} else {
                $txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a href=\"#\" class=\"sub\" onClick=\"javascript: window.open('$mitem->link', '', 'toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=780,height=550');\" class=\"$menuclass\">$mitem->name</a></span></span>\n";
		   }
		} else {
		    $txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a href=\"#\" onClick=\"javascript: window.open('$mitem->link', '', 'toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=780,height=550');\" class=\"$menuclass\">$mitem->name</a></span></span>\n";
		}

		break;

		case 3:
    if ($mitem->cnt > 0) {
		   if ($level == 0) {
                $txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a class=\"main\">$mitem->name</a></span></span>";
								$main = "main";
		   } else {
                $txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a class=\"sub\">$mitem->name</a></span></span>";
		   }
		} else {
		   	$txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a>$mitem->name</a></span></span>\n";
		}
		break;
		default:
		if (isset($mitem->cnt) && $mitem->cnt > 0) {
		$random = (rand()%30000000000000);
		    if ($level == 0) {
                $txt = "<span class=\"s5_ls\"><span class=\"s5_rs\"><a class=\"active\" id=\"tempID$random\" href=\"$mitem->link\">$mitem->name</a></span></span>";
								$main = "main";
		   } else {
                $txt = "<span><span><a class=\"parent\" id=\"tempID$random\" href=\"$mitem->link\"> $mitem->name</a></span></span>";
		   }
		} else {

if ($level == 0) {

		   $txt = "<span><span class=\"s5_rs\"><a class=\"active\" href=\"$mitem->link\">$mitem->name</a></span></span>";	  

}

else if ($level > 0) {

		   $txt = "<span><span><a class=\"sub\" href=\"$mitem->link\">$mitem->name</a></span></span>";

}


		}
        break;
	}
    return $txt;
}
ini_set('arg_separator.output','&amp;');
function mosShowListMenu($menutype) {
	global $mainframe, $Itemid;
	$database = JFactory::getDBO();    
    $user = JFactory::getUser();
	$class_sfx = null;
	error_reporting(E_ALL);
	$hilightid = null;
    if ($mainframe->getCfg('shownoauth')) {
     $sql = ("SELECT m.*, count(p.parent) as cnt" .
	"\nFROM #__menu AS m" .
	"\nLEFT JOIN #__menu AS p ON p.parent = m.id" .
    "\nWHERE m.menutype='$menutype' AND m.published='1'" .
	"\nGROUP BY m.id ORDER BY m.parent, m.ordering ");
      } else {
     $sql = ("SELECT m.*, sum(case when p.published=1 then 1 else 0 end) as cnt" .
	"\nFROM #__menu AS m" .
	"\nLEFT JOIN #__menu AS p ON p.parent = m.id" .
    "\nWHERE m.menutype='$menutype' AND m.published='1' AND m.access <= " . $user->get('gid') .      // Picks up the access-id
	"\nGROUP BY m.id ORDER BY m.parent, m.ordering ");
   }
     $database->setQuery($sql);
	$rows = $database->loadObjectList( 'id' );
	echo $database->getErrorMsg();
		$sql = "SELECT m.* FROM #__menu AS m"
		. "\nWHERE menutype='". $menutype ."' AND m.published='1'"; 
		$database->setQuery( $sql );
		$subrows = $database->loadObjectList( 'id' );
		$maxrecurse = 5;
		$parentid = $Itemid;
		while ($maxrecurse-- > 0) {
			$parentid = getTheParentRow($subrows, $parentid);
			if (isset($parentid) && $parentid >= 0 && $subrows[$parentid]) {
				$hilightid = $parentid;
			} else {
				break;	
			}
		}	
	$indents = array(
	array( "<ul class='s5_menu_grad' onmouseover='check_id()'>", "<li>" , "</li>", "</ul>" ),
	);
	$children = array();
    foreach ($rows as $v ) {
		$pt = $v->parent;
		$list = @$children[$pt] ? $children[$pt] : array();
		array_push( $list, $v );

        $children[$pt] = $list;
    }
	$open = array( $Itemid );
	$count = 20; // maximum levels - to prevent runaway loop
	$id = $Itemid;
	while (--$count) {
		if (isset($rows[$id]) && $rows[$id]->parent > 0) {
			$id = $rows[$id]->parent;
			$open[] = $id;
		} else {
			break;
		}
	}

	$class_sfx = null;

    mosRecurseListMenu( 0, 0, $children, $open, $indents, $class_sfx, $hilightid );
}
?>



