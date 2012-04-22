<?php
// no direct access
defined('_JEXEC') or die('Restricted access');

require_once (JPATH_SITE.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php');

class ModMyJobsHelper
{
	function getList(&$params)
	{
		global $mainframe;

		$db			=& JFactory::getDBO();
		$user		=& JFactory::getUser();
		$userId		= (int) $user->get('id');

		$count		= (int) $params->get('count', 5);
		$catid		= trim( $params->get('catid') );
		$secid		= trim( $params->get('secid') );
		$section    = $params->get('section',0);
		$category   = $params->get('category',0);
		$intro_text = $params->get('intro_text',0);
		$show_front	= $params->get('show_front', 1);
		$aid		= $user->get('aid', 0);

		$contentConfig = &JComponentHelper::getParams( 'com_content' );
		$access		= !$contentConfig->get('show_noauth');

		$nullDate	= $db->getNullDate();

		$date =& JFactory::getDate();
		$now = $date->toMySQL();

		$where		= 'a.state = 1'
			. ' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )'
			. ' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )'
			;

		// User Filter
		switch ($params->get( 'user_id' ))
		{
			case 'by_me':
				$where .= ' AND (created_by = ' . (int) $userId . ' OR modified_by = ' . (int) $userId . ')';
				break;
			case 'not_me':
				$where .= ' AND (created_by <> ' . (int) $userId . ' AND modified_by <> ' . (int) $userId . ')';
				break;
		}

		// Ordering
		switch ($params->get( 'ordering' ))
		{
			case 'm_dsc':
				$ordering		= 'a.modified DESC, a.created DESC';
				break;
			case 'c_dsc':
			default:
				$ordering		= 'a.created DESC';
				break;
		}

		if ($catid)
		{
			$ids = explode( ',', $catid );
			JArrayHelper::toInteger( $ids );
			$catCondition = ' AND (cc.id=' . implode( ' OR cc.id=', $ids ) . ')';
		}
		if ($secid)
		{
			$ids = explode( ',', $secid );
			JArrayHelper::toInteger( $ids );
			$secCondition = ' AND (s.id=' . implode( ' OR s.id=', $ids ) . ')';
		    
		}

		if ($intro_text)
		{
 			$introCondition= '';

		}
		// Content Items only
		$query = 'SELECT a.title as at, introtext as it, images, s.title as st , cc.title as ct , ' .
			' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
			' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug'.
			' FROM #__content AS a ' .
			($show_front == '0' ? ' LEFT JOIN #__content_frontpage AS f ON f.content_id = a.id' : '') .
			' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
			' INNER JOIN #__sections AS s ON s.id = a.sectionid' .
			' WHERE '. $where .' AND s.id > 0' .
			($access ? ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid. ' AND s.access <= ' .(int) $aid : '').
			($catid ? $catCondition : '').
			($secid ? $secCondition : '').
			($show_front == '0' ? ' AND f.content_id IS NULL ' : '').
			
			' AND s.published = 1' .
			' AND cc.published = 1' .
			' ORDER BY '. $ordering;
		$db->setQuery($query, 0, $count);
		$rows = $db->loadObjectList();

		$i		= 0;
		$lists	= array();
		
		foreach ( $rows as $row )
		{
			if($row->access <= $aid)
			{
				$lists[$i]->link = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid));
			} else {
				$lists[$i]->link = JRoute::_('index.php?option=com_user&view=login');
			}
			$lists[$i]->text1 = htmlspecialchars( $row->at );//title
			$lists[$i]->text2 = htmlspecialchars( $row->st );//Section
		    $lists[$i]->text3 =	htmlspecialchars( $row->ct );//Category
			
			//Thumbnail
			preg_match('<img src="(.+?)" .*?/>',$row->it,$matches_thumb);
			if ($matches_thumb[1] != '')
				$thumb = '<img height="100" width="100" border="0" style="float: left; padding: 2px; margin: 1px; border: 1px solid rgb(204, 204, 204);" src="'. $matches_thumb[1] . '"/>';
			
			preg_match("/<p>(.*)<\/p>/",$row->it,$matches);
			$intro = strip_tags($matches[1]); //removes anchors and other tags from the intro
			$lists[$i]->text4 = $thumb . '<span style="text-align:justify">' . $intro . '</span>' . ' [<a href="' . $lists[$i]->link . '">' . JText::_('Read more...') . '</a>]';
			//$lists[$i]->text4 = $row->it;//Intro text
			
			$i++;
		}

		return $lists;
	}
}
