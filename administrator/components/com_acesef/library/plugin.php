<?php
/**
* @version		1.5.0
* @package		AceSEF Library
* @subpackage	Plugin
* @copyright	2009-2010 JoomAce LLC, www.joomace.net
* @license		GNU/GPL http://www.gnu.org/copyleft/gpl.html
*/

// No Permission
defined('_JEXEC') or die('Restricted Access');

// Plugin class
class AcesefPlugin {
	
	function __construct() {
		// Get config object
		$this->AcesefConfig = AcesefFactory::getConfig();
	}

	function onAfterInitialise() {
		$mainframe =& JFactory::getApplication();

		// Store J! router for later use
		$router =& $mainframe->getRouter();
		$mainframe->set('acesef.global.jrouter', $router);
		
		// Activate AceSEF router
		$router = new JRouterAcesef();
		
		// Instantiate JoomFishManager before JFDatabase loading to prevent infinity loop...
		if (AcesefUtility::JoomFishInstalled() && class_exists('JoomFishManager')) {
			JoomFishManager::getInstance();
		}
		
		// Post varsa yönlendirme
		$post = JRequest::get('post');
		if (is_array($post) && !empty($post)) {
			return;
		}

        // Ajax durumunda yönlendirme yapma
        $tmpl = JRequest::getCmd('tmpl');
        $format = JRequest::getCmd('format');
        if ($tmpl == 'component' || $format == 'raw') {
            return;
        }
		
		// SSL and non-www settings
		$uri  =& JURI::getInstance();
		$host =& $uri->getHost();
		
		$redirect = false;
		
		// www redirection
		$wwwredirect = $this->AcesefConfig->redirect_to_www;
		if ($wwwredirect != 0) {
			if ($wwwredirect == 1 && strpos($host, 'www') !== 0) {
				$redirect = true;
				$uri->setHost('www.'.$host);
			}
			elseif ($wwwredirect == 2 && strpos($host, 'www') === 0) {
				$redirect = true;
				$uri->setHost(substr($host, 4, strlen($host)));
			}
		}
		
		// SSL
		$Itemid = $uri->getVar('Itemid');
		$menu_items = $this->AcesefConfig->force_ssl;
		
		if (!empty($menu_items) && is_array($menu_items)) {
			$is_ssl = $uri->isSSL();
			
			if (!$is_ssl) {
				if (in_array($Itemid, $menu_items)) {
					$redirect = true;
					$uri->setScheme('https');
				}
			}
			else {
				if (!in_array($Itemid, $menu_items)) {
					$redirect = true;
					$uri->setScheme('http');
				}
			}
		}
		
		if ($redirect === true) {
			$mainframe->redirect($uri->toString());
            $mainframe->close();
		}
	}

	function onPrepareContent(&$text) {		
		// No follow
		if (JString::strpos($text, 'href="') === false) {
			return;
		}
		
		if ($this->AcesefConfig->seo_nofollow == 1) {
			$regex = '/<a (.*?)href=[\"\'](.*?)\/\/(.*?)[\"\'](.*?)>(.*?)<\/a>/i';
			$text = preg_replace_callback($regex, array('AcesefUtility', 'noFollow'), $text);
		}
	}
	
	function onBeforeDisplayContent(&$text) {
		// Set h1 tag
		if ($this->AcesefConfig->seo_h1 == 1) {
			$text = '{h1}'.$text.'{/h1}';
		}
	}

    function onAfterDispatch() {
		$document =& JFactory::getDocument();
		
        if ((strlen($this->AcesefConfig->download_id) != 32) && (!class_exists('AcesefURI') || AcesefURI::bas($this) == '')){
			return;
		}
		
		// Metadata
		AcesefMetadata::plugin($document);
		
		// Set base href
		if ($this->AcesefConfig->base_href == 2) {
			$document->setBase(JURI::current());
		} elseif ($this->AcesefConfig->base_href == 3) {
			$document->setBase(JURI::base());
		} elseif ($this->AcesefConfig->base_href == 4) {
			$document->setBase('');
		}
    }
    
	function onAfterRender() {
		$sef_plugin = JPATH_SITE.DS.'plugins'.DS.'system'.DS.'sef.php';
		if (!JPluginHelper::isEnabled('system', 'sef') && file_exists($sef_plugin)) {
			require_once($sef_plugin);
			if (class_exists('plgSystemSEF')) {
				plgSystemSEF::onAfterRender();
			}
		}
		
		// H1 tag
		if ($this->AcesefConfig->seo_h1 == 1) {
			$body = JResponse::getBody();
			$body = str_replace('{h1}', '<h1>', $body);
			$body = str_replace('{/h1}', '</h1>', $body);
			JResponse::setBody($body);
		}
		
		// Generator
		if ($this->AcesefConfig->meta_generator_rem == 1) {
			$body = JResponse::getBody();
			$body = preg_replace('/<meta\s*name="generator"\s*content=".*\/>/isU', '', $body);
			JResponse::setBody($body);
		}
	}

	function onAcesefTags(&$text) {
	}

	function onAcesefIlinks(&$text) {
	}

	function onAcesefBookmarks(&$text) {
	}
}