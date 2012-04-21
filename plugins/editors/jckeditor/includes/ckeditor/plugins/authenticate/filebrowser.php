<?php


defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.event.plugin');


class plgAuthenticateFilebrowser extends JPlugin 
{
		
  	function plgAuthenticateFilebrower(& $subject, $config) 
	{
		parent::__construct($subject, $config);
	}

	function authorise()
	{
		jckimport('ckeditor.user.user');
		$user = JCKUser::getInstance();
		return 	 $user->gid > 0;
	}

}