-- MySQL dump 10.13  Distrib 5.5.22, for Linux (x86_64)
--
-- Host: localhost    Database: joomla2
-- ------------------------------------------------------
-- Server version	5.5.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bak_banner`
--

DROP TABLE IF EXISTS `bak_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_banner`
--

LOCK TABLES `bak_banner` WRITE;
/*!40000 ALTER TABLE `bak_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_bannerclient`
--

DROP TABLE IF EXISTS `bak_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_bannerclient`
--

LOCK TABLES `bak_bannerclient` WRITE;
/*!40000 ALTER TABLE `bak_bannerclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_bannertrack`
--

DROP TABLE IF EXISTS `bak_bannertrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_bannertrack`
--

LOCK TABLES `bak_bannertrack` WRITE;
/*!40000 ALTER TABLE `bak_bannertrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_bannertrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_categories`
--

DROP TABLE IF EXISTS `bak_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_categories`
--

LOCK TABLES `bak_categories` WRITE;
/*!40000 ALTER TABLE `bak_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_components`
--

DROP TABLE IF EXISTS `bak_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_components`
--

LOCK TABLES `bak_components` WRITE;
/*!40000 ALTER TABLE `bak_components` DISABLE KEYS */;
INSERT INTO `bak_components` VALUES (1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),(3,'Clients','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),(4,'Web Links','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),(5,'Links','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),(6,'Categories','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),(7,'Contacts','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(8,'Contacts','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),(9,'Categories','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(10,'Polls','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),(13,'Categories','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),(14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),(18,'Mail To','',0,0,'','','com_mailto',0,'',1,'',1),(19,'Media Manager','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html',1),(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n',1),(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'',1),(24,'Mass mail','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(27,'Messaging','',0,0,'','Messages','com_messages',0,'',1,'',1),(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1);
/*!40000 ALTER TABLE `bak_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_contact_details`
--

DROP TABLE IF EXISTS `bak_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_contact_details`
--

LOCK TABLES `bak_contact_details` WRITE;
/*!40000 ALTER TABLE `bak_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_content`
--

DROP TABLE IF EXISTS `bak_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_content`
--

LOCK TABLES `bak_content` WRITE;
/*!40000 ALTER TABLE `bak_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_content_frontpage`
--

DROP TABLE IF EXISTS `bak_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_content_frontpage`
--

LOCK TABLES `bak_content_frontpage` WRITE;
/*!40000 ALTER TABLE `bak_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_content_rating`
--

DROP TABLE IF EXISTS `bak_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_content_rating`
--

LOCK TABLES `bak_content_rating` WRITE;
/*!40000 ALTER TABLE `bak_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_core_acl_aro`
--

DROP TABLE IF EXISTS `bak_core_acl_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_core_acl_aro`
--

LOCK TABLES `bak_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `bak_core_acl_aro` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `bak_core_acl_aro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_core_acl_aro_groups`
--

LOCK TABLES `bak_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `bak_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `bak_core_acl_aro_groups` VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `bak_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_core_acl_aro_map`
--

DROP TABLE IF EXISTS `bak_core_acl_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_core_acl_aro_map`
--

LOCK TABLES `bak_core_acl_aro_map` WRITE;
/*!40000 ALTER TABLE `bak_core_acl_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_core_acl_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `bak_core_acl_aro_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_core_acl_aro_sections`
--

LOCK TABLES `bak_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `bak_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `bak_core_acl_aro_sections` VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `bak_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `bak_core_acl_groups_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_core_acl_groups_aro_map`
--

LOCK TABLES `bak_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `bak_core_acl_groups_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_core_log_items`
--

DROP TABLE IF EXISTS `bak_core_log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_core_log_items`
--

LOCK TABLES `bak_core_log_items` WRITE;
/*!40000 ALTER TABLE `bak_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_core_log_searches`
--

DROP TABLE IF EXISTS `bak_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_core_log_searches`
--

LOCK TABLES `bak_core_log_searches` WRITE;
/*!40000 ALTER TABLE `bak_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_groups`
--

DROP TABLE IF EXISTS `bak_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_groups`
--

LOCK TABLES `bak_groups` WRITE;
/*!40000 ALTER TABLE `bak_groups` DISABLE KEYS */;
INSERT INTO `bak_groups` VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `bak_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_menu`
--

DROP TABLE IF EXISTS `bak_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_menu`
--

LOCK TABLES `bak_menu` WRITE;
/*!40000 ALTER TABLE `bak_menu` DISABLE KEYS */;
INSERT INTO `bak_menu` VALUES (1,'mainmenu','Home','home','index.php?option=com_content&view=frontpage','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,1);
/*!40000 ALTER TABLE `bak_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_menu_migration`
--

DROP TABLE IF EXISTS `bak_menu_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_menu_migration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_menu_migration`
--

LOCK TABLES `bak_menu_migration` WRITE;
/*!40000 ALTER TABLE `bak_menu_migration` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_menu_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_menu_types`
--

DROP TABLE IF EXISTS `bak_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_menu_types`
--

LOCK TABLES `bak_menu_types` WRITE;
/*!40000 ALTER TABLE `bak_menu_types` DISABLE KEYS */;
INSERT INTO `bak_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `bak_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_messages`
--

DROP TABLE IF EXISTS `bak_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_messages`
--

LOCK TABLES `bak_messages` WRITE;
/*!40000 ALTER TABLE `bak_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_messages_cfg`
--

DROP TABLE IF EXISTS `bak_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_messages_cfg`
--

LOCK TABLES `bak_messages_cfg` WRITE;
/*!40000 ALTER TABLE `bak_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_migration_backlinks`
--

DROP TABLE IF EXISTS `bak_migration_backlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_migration_backlinks`
--

LOCK TABLES `bak_migration_backlinks` WRITE;
/*!40000 ALTER TABLE `bak_migration_backlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_migration_backlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_modules`
--

DROP TABLE IF EXISTS `bak_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_modules`
--

LOCK TABLES `bak_modules` WRITE;
/*!40000 ALTER TABLE `bak_modules` DISABLE KEYS */;
INSERT INTO `bak_modules` VALUES (1,'Main Menu','',1,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=mainmenu\nmoduleclass_sfx=_menu\n',1,0,''),(2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),(4,'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),(5,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),(6,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),(7,'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),(9,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),(10,'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(14,'User Status','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),(15,'Title','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,'');
/*!40000 ALTER TABLE `bak_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_modules_menu`
--

DROP TABLE IF EXISTS `bak_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_modules_menu`
--

LOCK TABLES `bak_modules_menu` WRITE;
/*!40000 ALTER TABLE `bak_modules_menu` DISABLE KEYS */;
INSERT INTO `bak_modules_menu` VALUES (1,0);
/*!40000 ALTER TABLE `bak_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_modules_migration`
--

DROP TABLE IF EXISTS `bak_modules_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_modules_migration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_modules_migration`
--

LOCK TABLES `bak_modules_migration` WRITE;
/*!40000 ALTER TABLE `bak_modules_migration` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_modules_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_modules_migration_menu`
--

DROP TABLE IF EXISTS `bak_modules_migration_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_modules_migration_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_modules_migration_menu`
--

LOCK TABLES `bak_modules_migration_menu` WRITE;
/*!40000 ALTER TABLE `bak_modules_migration_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_modules_migration_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_newsfeeds`
--

DROP TABLE IF EXISTS `bak_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_newsfeeds`
--

LOCK TABLES `bak_newsfeeds` WRITE;
/*!40000 ALTER TABLE `bak_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_plugins`
--

DROP TABLE IF EXISTS `bak_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_plugins`
--

LOCK TABLES `bak_plugins` WRITE;
/*!40000 ALTER TABLE `bak_plugins` DISABLE KEYS */;
INSERT INTO `bak_plugins` VALUES (1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(6,'Search - Content','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),(7,'Search - Contacts','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(8,'Search - Categories','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(9,'Search - Sections','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(13,'Content - Rating','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE 2.0','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,0,'0000-00-00 00:00:00',''),(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),(27,'System - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),(28,'System - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(29,'System - Legacy','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),(30,'System - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),(31,'System - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(33,'System - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `bak_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_poll_data`
--

DROP TABLE IF EXISTS `bak_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_poll_data`
--

LOCK TABLES `bak_poll_data` WRITE;
/*!40000 ALTER TABLE `bak_poll_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_poll_date`
--

DROP TABLE IF EXISTS `bak_poll_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_poll_date`
--

LOCK TABLES `bak_poll_date` WRITE;
/*!40000 ALTER TABLE `bak_poll_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_poll_menu`
--

DROP TABLE IF EXISTS `bak_poll_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_poll_menu`
--

LOCK TABLES `bak_poll_menu` WRITE;
/*!40000 ALTER TABLE `bak_poll_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_poll_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_polls`
--

DROP TABLE IF EXISTS `bak_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_polls`
--

LOCK TABLES `bak_polls` WRITE;
/*!40000 ALTER TABLE `bak_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_sections`
--

DROP TABLE IF EXISTS `bak_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_sections`
--

LOCK TABLES `bak_sections` WRITE;
/*!40000 ALTER TABLE `bak_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_session`
--

DROP TABLE IF EXISTS `bak_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_session`
--

LOCK TABLES `bak_session` WRITE;
/*!40000 ALTER TABLE `bak_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_stats_agents`
--

DROP TABLE IF EXISTS `bak_stats_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_stats_agents`
--

LOCK TABLES `bak_stats_agents` WRITE;
/*!40000 ALTER TABLE `bak_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_templates_menu`
--

DROP TABLE IF EXISTS `bak_templates_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_templates_menu`
--

LOCK TABLES `bak_templates_menu` WRITE;
/*!40000 ALTER TABLE `bak_templates_menu` DISABLE KEYS */;
INSERT INTO `bak_templates_menu` VALUES ('khepri',0,1);
/*!40000 ALTER TABLE `bak_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_users`
--

DROP TABLE IF EXISTS `bak_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_users`
--

LOCK TABLES `bak_users` WRITE;
/*!40000 ALTER TABLE `bak_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_weblinks`
--

DROP TABLE IF EXISTS `bak_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_weblinks`
--

LOCK TABLES `bak_weblinks` WRITE;
/*!40000 ALTER TABLE `bak_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_banner`
--

DROP TABLE IF EXISTS `jos_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_banner`
--

LOCK TABLES `jos_banner` WRITE;
/*!40000 ALTER TABLE `jos_banner` DISABLE KEYS */;
INSERT INTO `jos_banner` VALUES (1,1,'banner','OSM 1','osm-1',0,130255,960,'osmbanner1.png','http://www.opensourcematters.org','2004-07-07 15:31:29',1,0,'0000-00-00 00:00:00','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(2,1,'banner','OSM 2','osm-2',0,129322,941,'osmbanner2.png','http://www.opensourcematters.org','2004-07-07 15:31:29',1,0,'0000-00-00 00:00:00','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','','');
/*!40000 ALTER TABLE `jos_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannerclient`
--

DROP TABLE IF EXISTS `jos_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannerclient`
--

LOCK TABLES `jos_bannerclient` WRITE;
/*!40000 ALTER TABLE `jos_bannerclient` DISABLE KEYS */;
INSERT INTO `jos_bannerclient` VALUES (1,'Open Source Matters','Administrator','admin@opensourcematters.org','',0,'00:00:00','');
/*!40000 ALTER TABLE `jos_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannertrack`
--

DROP TABLE IF EXISTS `jos_bannertrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannertrack`
--

LOCK TABLES `jos_bannertrack` WRITE;
/*!40000 ALTER TABLE `jos_bannertrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannertrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_categories`
--

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS */;
INSERT INTO `jos_categories` VALUES (1,0,'Latest','Latest News','latest','taking_notes.jpg','1','left','The latest news from the Joomla! Team',1,0,'0000-00-00 00:00:00','',0,0,1,''),(2,0,'Joomla!','Joomla!','joomla','clock.jpg','com_weblinks','left','A selection of links that are all related to the Joomla! Project.',1,0,'0000-00-00 00:00:00','',0,0,0,''),(3,0,'Newsflash','Newsflash','newsflash','','2','left','',1,0,'0000-00-00 00:00:00','',1,0,0,''),(4,0,'Joomla!','Joomla!','joomla','','com_newsfeeds','left','',1,0,'0000-00-00 00:00:00','',2,0,0,''),(5,0,'Business: general','Business: general','business-general','','com_newsfeeds','left','',1,0,'0000-00-00 00:00:00','',1,0,0,''),(7,0,'Examples','Example FAQs','examples','key.jpg','3','left','Here you will find an example set of FAQs.',1,0,'0000-00-00 00:00:00','',0,0,2,''),(9,0,'Finance','Finance','finance','','com_newsfeeds','left','',1,0,'0000-00-00 00:00:00','',5,0,0,''),(10,0,'Linux','Linux','linux','','com_newsfeeds','left','<br />\r\n',1,0,'0000-00-00 00:00:00','',6,0,0,''),(11,0,'Internet','Internet','internet','','com_newsfeeds','left','',1,0,'0000-00-00 00:00:00','',7,0,0,''),(12,0,'Contacts','Contacts','contacts','','com_contact_details','left','Contact Details for this website',1,0,'0000-00-00 00:00:00','',0,0,0,''),(13,0,'Top','Top','top','','2','left','',1,0,'0000-00-00 00:00:00','',2,0,0,'imagefolders=*2*');
/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_components`
--

DROP TABLE IF EXISTS `jos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_components`
--

LOCK TABLES `jos_components` WRITE;
/*!40000 ALTER TABLE `jos_components` DISABLE KEYS */;
INSERT INTO `jos_components` VALUES (1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),(3,'Clients','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),(4,'Web Links','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),(5,'Links','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),(6,'Categories','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),(7,'Contacts','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(8,'Contacts','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),(9,'Categories','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(10,'Polls','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),(13,'Categories','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),(14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),(18,'Mail To','',0,0,'','','com_mailto',0,'',1,'',1),(19,'Media Manager','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',1),(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'link_titles=0\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_email_icon=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_hits=1\nshow_icons=1\nshow_readmore=1\nshow_noauth=0\nshow_item_navigation=1\nshow_vote=0\nshow_title=1\nshow_intro=1\nshow_noauth=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\n',1),(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'site=vi-VN\n\n',1),(24,'Mass mail','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(27,'Messaging','',0,0,'','Messages','com_messages',0,'',1,'',1),(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),(34,'Joom!Fish','option=com_joomfish',0,0,'option=com_joomfish','Joom!Fish','com_joomfish',0,'components/com_joomfish/assets/images/icon-16-joomfish.png',0,'noTranslation=0\ndefaultText=\noverwriteGlobalConfig=1\ndirectory_flags=/media/com_joomfish/default\nstorageOfOriginal=md5\nfrontEndPublish=1\nfrontEndPreview=1\nshowDefaultLanguageAdmin=0\ncopyparams=1\ntranscaching=0\ncachelife=180\nqacaching=1\nqalogging=0\nusersplash=0\n\n',1),(35,'Control Panel','',0,34,'option=com_joomfish','Control Panel','com_joomfish',0,'components/com_joomfish/assets/images/icon-16-cpanel.png',0,'',1),(36,'Translation','',0,34,'option=com_joomfish&task=translate.overview','Translation','com_joomfish',1,'components/com_joomfish/assets/images/icon-16-translation.png',0,'',1),(37,'Orphan Translations','',0,34,'option=com_joomfish&task=translate.orphans','Orphan Translations','com_joomfish',2,'components/com_joomfish/assets/images/icon-16-orphan.png',0,'',1),(38,'Manage Translations','',0,34,'option=com_joomfish&task=manage.overview','Manage Translations','com_joomfish',3,'components/com_joomfish/assets/images/icon-16-manage.png',0,'',1),(39,'Statistics','',0,34,'option=com_joomfish&task=statistics.overview','Statistics','com_joomfish',4,'components/com_joomfish/assets/images/icon-16-statistics.png',0,'',1),(40,'','',0,34,'option=com_joomfish','','com_joomfish',5,'components/com_joomfish/assets/images/icon-10-blank.png',0,'',1),(41,'Languages','',0,34,'option=com_joomfish&task=languages.show','Languages','com_joomfish',6,'components/com_joomfish/assets/images/icon-16-language.png',0,'',1),(42,'Content elements','',0,34,'option=com_joomfish&task=elements.show','Content elements','com_joomfish',7,'components/com_joomfish/assets/images/icon-16-extension.png',0,'',1),(43,'Plugins','',0,34,'option=com_joomfish&task=plugin.show','Plugins','com_joomfish',8,'components/com_joomfish/assets/images/icon-16-plugin.png',0,'',1),(44,'','',0,34,'option=com_joomfish','','com_joomfish',9,'components/com_joomfish/assets/images/icon-10-blank.png',0,'',1),(45,'Help','',0,34,'option=com_joomfish&task=help.show','Help','com_joomfish',10,'components/com_joomfish/assets/images/icon-16-help.png',0,'',1);
/*!40000 ALTER TABLE `jos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_contact_details`
--

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS */;
INSERT INTO `jos_contact_details` VALUES (1,'Liên hệ','lien-he','','37 Phạm Viết Chánh, Phường 19, Quận Bình Thạnh','','','','','(08) 2210 2233 - (08) 2216 5389 - 0938365140','','','','top','info@hostfreevietnam.com',0,1,0,'0000-00-00 00:00:00',1,'show_name=0\nshow_position=0\nshow_email=1\nshow_street_address=1\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=1\nshow_mobile=0\nshow_fax=0\nshow_webpage=1\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=',0,12,0,'','');
/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content`
--

LOCK TABLES `jos_content` WRITE;
/*!40000 ALTER TABLE `jos_content` DISABLE KEYS */;
INSERT INTO `jos_content` VALUES (17,'Installing Hosticity','installing-hosticity','Installing Hosticity','<br /><p><font size=\"4\"><b>Joomla 1.0</b></font><br /></p><ol><li class=\"li_number1\">Download the installation package from our download section.</li><li class=\"li_number2\">Once the download is complete go to the backend of Joomla.</li><li class=\"li_number3\">Navigate through your menu system to Installers/Templates - Site</li><li class=\"li_number4\">Once at the installation screen click the browse button and navigate to where you downloaded the template file.</li><li class=\"li_number5\">Once you have the file selected click &#39;Upload File and Install&#39;</li></ul><br /><div style=\"text-align: center\"><img src=\"http://www.shape5.com/demo/bliss/images/template_install.gif\" border=\"0\" alt=\" \" width=\"400\" height=\"69\" /></div><ul><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The template is now installed, now let&#39;s set it as the default template:<br /><br /><li class=\"li_number6\">Navigate through your menu system to Site/Template Manager/SiteTemplates.</li><li class=\"li_number7\">Find the radio button next to the newly installed template.</li><li class=\"li_number8\">Click on the Default button at the top right of the screen and you&#39;re done!</li></ol><ul class=\"bullet_list\"><ul class=\"bullet_list\"><br />&nbsp;&nbsp;<div style=\"text-align: center\"><img src=\"http://www.shape5.com/demo/bliss/images/default_button.gif\" alt=\" \" width=\"154\" height=\"108\" /></div>\r\n  </ul>\r\n  <p><font size=\"4\"><b>Joomla 1.5</b></font><br /></p><ol><li class=\"li_number1\">Download the installation package from our download section.</li><li class=\"li_number2\">Once the download is complete go to the backend of Joomla.</li><li class=\"li_number3\">\r\n    Navigate through your menu system to Extensions/Install Uninstall.</li>\r\n    \r\n    <li class=\"li_number4\">Once at the installation screen click the browse button and navigate to where you downloaded the template file.</li>\r\n    <li class=\"li_number5\">Once you have the file selected click &#39;Upload File and Install&#39;</li></li>\r\n    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The template is now installed, now let&#39;s set it as the default template:<br />\r\n    </p>\r\n    <li class=\"li_number6\">Navigate through your menu system to Extensions/Template Manager.</li><li class=\"li_number7\">Find the radio button next to the newly installed template.</li><li class=\"li_number8\">Click on the Default button at the top right of the screen and you&#39;re done!</ol>\r\n  </ul>\r\n  <p>&nbsp;</p>\r\n','',1,1,0,1,'2007-12-11 19:38:14',62,'','2008-08-13 18:39:16',62,0,'0000-00-00 00:00:00','2007-12-11 19:37:21','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',12,0,14,'','',0,6633,''),(18,'Configuring The Template\'s Settings','configuring-the-templates-settings','Configuring The Template\'s Settings','<p>This template comes loaded with options that you can use to customize your site exactly how you want it. Here&#39;s how to get to these custom settings:</p><p>&nbsp;</p>   <b><font size=\"4\">Joomla 1.0</font></b><br /><br /><ol> <li>In the backend of Joomla navigate to the menu item Site/Template Manager/Site Templates.</li> <li>Select this template\'s radio button.</li> <li>Find the Edit HTML button at the top right of your screen and click it.</li> <li>After clicking the Edit HTML button you will be brought to an editor screen. If you&#39;ve never seen this screen before or have never done any programming relax, just take a deep breath and follow the next few steps.</li> <li>Find the part of the text that looks like this: <br /><br />/////////////////////////////////////////////////////////////////////////////////////// // Template Configuration<br /><br />It should be right in front of you on page load.</li> <li>Begin answering the questions below that line and when you are done click Save at the top.</li> <li>Finally, sit back and relax, you&#39;ve just completed one of the hardest parts of template configuration!</li><br /><br /></ol><img src=\"http://www.shape5.com/demo/images/template_edit.jpg\" alt=\" \" width=\"500\" height=\"114\" />\r\n\r\n<br /><br />\r\n\r\n<b><font size=\"4\">Joomla 1.5</font></b><br /><br />\r\n\r\n<ol> <li>In the backend of Joomla go menu item Extensions/Template Manager.</li> <li>Click on the title of the template.</li> <li>This will bring you to the template manager screen where you can edit the template\'s parameters.</li><li>Click save when you are done</li></ol>\r\n\r\n<br /><br /></ol><img src=\"http://www.shape5.com/demo/images/template_edit15.jpg\" alt=\" \" width=\"500\" height=\"156\" />\r\n\r\n<br /><br /><br />\r\n<div>I like what I see! I want to <a style=\"text-decoration:underline\" href=\"http://www.shape5.com/join-now.html\" target=\"_top\">join today</a>.</div>','',1,1,0,1,'2007-12-11 19:46:04',62,'','2008-06-11 09:54:12',62,0,'0000-00-00 00:00:00','2007-12-11 19:45:45','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',3,0,13,'','',0,6806,''),(5,'Joomla! License Guidelines','joomla-license-guidelines','','<p>This website is powered by <a href=\"http://www.joomla.org/\">Joomla!</a>  The software and default templates on which it runs are Copyright 2005 <a href=\"http://www.opensourcematters.org/\">Open Source Matters</a>.  All other content and data, including data entered into this website and templates added after installation, are copyrighted by their respective copyright owners.</p><p>If you want to distribute, copy or modify Joomla!, you are welcome to do so under the terms of the <a href=\"http://www.gnu.org/copyleft/gpl.html#SEC1\">GNU General Public License</a>.  If you are unfamiliar with this license, you might want to read <a href=\"http://www.gnu.org/copyleft/gpl.html#SEC4\">\'How To Apply These Terms To Your Program\'</a> and the <a href=\"http://www.gnu.org/licenses/gpl-faq.html\">\'GNU General Public License FAQ\'</a>.</p>','',1,0,0,0,'2004-08-19 20:11:07',62,'','2004-08-19 20:14:49',62,0,'0000-00-00 00:00:00','2004-08-19 00:00:00','0000-00-00 00:00:00','','','menu_image=\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=',1,0,11,'','',0,18,''),(22,'Easy To Follow Steps','easy-to-follow-steps','Easy To Follow Steps','<p>We go through great lengths to make sure our templates are easy to setup by means of very user friendly step by step questions in the template configuration. The Native 1.5 version uses the same questions but through the Joomla interface. Below are some generic examples to show how easy our setup is to follow:</p><p>&nbsp;</p><p>// Would you like to enable the page width buttons? Type yes or no.</p><p>// Would you like to show the pathway?&nbsp;</p><p>// Would you like the main, drop down suckerfish menu shown?</p><p>// What color style would you like to use for this template?</p><p>// What width in pixels would you like the left column to be?</p><p>&nbsp;</p><p>Those are just some examples there are plenty of easy to follow steps in the template configuration of all our templates to ensure that your template is setup correctly in a very easy to follow manner.&nbsp;</p>','',1,1,0,1,'2007-12-11 21:14:30',62,'','2008-06-11 10:26:38',62,0,'0000-00-00 00:00:00','2007-12-11 21:14:14','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',2,0,11,'','',0,5655,''),(24,'Custom Page and Column Widths','custom-page-and-column-widths','Custom Page and Column Widths','<p>Easily set your own widths! This template gives you the ability to set your own \r\nwidth for:</p>\r\n<p>1. Page body</p>\r\n<p>2. Main column width</p>\r\n<p>3. Inset width</p>\r\n<p>All of this is done very easily in the template configuration.</p>\r\n<p>&nbsp;</p>\r\n<p align=\"center\">\r\n<img style=\"border:solid 1px #dedede\" border=\"0\" src=\"http://www.shape5.com/demo/hosticity/images/width.png\" width=\"399\" height=\"453\"></p>\r\n<br />','',1,1,0,1,'2007-12-11 21:25:09',62,'','2008-08-13 17:55:05',62,0,'0000-00-00 00:00:00','2007-12-11 21:24:39','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',6,0,10,'','',0,6380,''),(19,'LyteBox Setup','lytebox-setup','LyteBox Setup','<br />\r\n<p><b><font size=\"4\">The already enabled LyteBox feature gives your site a \r\ndazzling picture display!</font></b></p>\r\n<p>Make sure to click on each of the examples.</p>\r\n<p>LyteBox comes pre-installed with this template just follow the tutorials below to setup your images.</p>\r\n<p><b><font size=\"4\">Single Image Example</font></b></p>\r\n\r\n\r\n\r\n\r\n<a href=\"http://www.shape5.com/demo/images/large1.jpg\" rel=\"lytebox\" title=\"Aliquam laoreet elementum tellus.\" style=\"text-decoration: none\"> \r\n<img class=\"boxed\" src=\"http://www.shape5.com/demo/images/small1.jpg\" alt=\"one\" width=\"214\" height=\"61\" align=\"top\" /></a>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>To enable use the following around any image:</p>\r\n<p>&lt;a href=&quot;http://www.yoursite.com/images/popup.jpg&quot; rel=&quot;lytebox&quot; title=&quot;Your \r\nDescription.&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img class=&quot;boxed&quot; src=&quot;http://www.yoursite.com/images/thumbnail.jpg&quot; \r\nalt=&quot;Description&quot; width=&quot;214&quot; height=&quot;61&quot; /&gt;&lt;/p&gt;&lt;/a&gt;</p>\r\n<p><b><font size=\"4\">Grouped Images Example</font></b></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<a href=\"http://www.shape5.com/demo/images/large1.jpg\" rel=\"lytebox[gallery]\" title=\"Loirem le as telaiu proen.\" style=\"text-decoration: none\">\r\n\r\n<img class=\"boxed\" src=\"http://www.shape5.com/demo/images/small1.jpg\" alt=\"Description\" width=\"214\" height=\"61\" align=\"top\" /></a>\r\n<a href=\"http://www.shape5.com/demo/images/large2.jpg\" rel=\"lytebox[gallery]\" title=\"Loirem le as telaiu proen.\" style=\"text-decoration: none\">\r\n\r\n<img class=\"boxed\" src=\"http://www.shape5.com/demo/images/small2.jpg\" alt=\"Description\" width=\"214\" height=\"61\" align=\"top\" /></a>\r\n<a href=\"http://www.shape5.com/demo/images/large3.jpg\" rel=\"lytebox[gallery]\" title=\"Loirem le as telaiu proen.\" style=\"text-decoration: none\">\r\n\r\n<img class=\"boxed\" src=\"http://www.shape5.com/demo/images/small3.jpg\" alt=\"Description\" width=\"214\" height=\"61\" align=\"top\" /></a>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>To enable use the following around any group of images:</p>\r\n<p>&lt;a href=&quot;http://www.yoursite.com/images/popup1.jpg&quot; rel=&quot;lytebox[gallery]&quot; \r\ntitle=&quot;Your Description&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img class=&quot;boxed&quot; src=&quot;http://www.yoursite.com/images/thumbnail1.jpg&quot; \r\nalt=&quot;Description&quot; width=&quot;214&quot; height=&quot;61&quot; /&gt;&lt;/p&gt;&lt;/a&gt;<br />\r\n&lt;a href=&quot;http://www.yoursite.com/images/popup2.jpg&quot; rel=&quot;lytebox[gallery]&quot; \r\ntitle=&quot;Your Description&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img class=&quot;boxed&quot; src=&quot;http://www.yoursite.com/images/thumbnail2.jpg&quot; \r\nalt=&quot;Description&quot; width=&quot;214&quot; height=&quot;61&quot; /&gt;&lt;/p&gt;&lt;/a&gt;<br />\r\n&lt;a href=&quot;http://www.yoursite.com/images/popup3.jpg&quot; rel=&quot;lytebox[gallery]&quot; \r\ntitle=&quot;Your Description&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img class=&quot;boxed&quot; src=&quot;http://www.yoursite.com/images/thumbnail3.jpg&quot; \r\nalt=&quot;Description&quot; width=&quot;214&quot; height=&quot;61&quot; /&gt;&lt;/p&gt;&lt;/a&gt;</p>\r\n<p><b><font size=\"4\">Slideshow Example</font></b></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<a href=\"http://www.shape5.com/demo/images/large1.jpg\" rel=\"lyteshow[gallery]\" title=\"Loirem le as telaiu proen.\" style=\"text-decoration: none\">\r\n\r\n<img class=\"boxed\" src=\"http://www.shape5.com/demo/images/small1.jpg\" alt=\"Description\" width=\"214\" height=\"61\" align=\"top\" /></a>\r\n<a href=\"http://www.shape5.com/demo/images/large2.jpg\" rel=\"lyteshow[gallery]\" title=\"Loirem le as telaiu proen.\" style=\"text-decoration: none\">\r\n\r\n<img class=\"boxed\" src=\"http://www.shape5.com/demo/images/small2.jpg\" alt=\"Description\" width=\"214\" height=\"61\" align=\"top\" /></a>\r\n<a href=\"http://www.shape5.com/demo/images/large3.jpg\" rel=\"lyteshow[gallery]\" title=\"Loirem le as telaiu proen.\" style=\"text-decoration: none\">\r\n\r\n<img class=\"boxed\" src=\"http://www.shape5.com/demo/images/small3.jpg\" alt=\"Description\" width=\"214\" height=\"61\" align=\"top\" /></a>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>To enable use the following around any group of images:</p>\r\n\r\n&lt;a href=&quot;http://www.yoursite.com/images/popup1.jpg&quot; rel=&quot;lyteshow[gallery]&quot; \r\ntitle=&quot;Your Description&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img class=&quot;boxed&quot; src=&quot;http://www.yoursite.com/images/thumbnail1.jpg&quot; \r\nalt=&quot;Description&quot; width=&quot;214&quot; height=&quot;61&quot; /&gt;&lt;/p&gt;&lt;/a&gt;<br />\r\n&lt;a href=&quot;http://www.yoursite.com/images/popup2.jpg&quot; rel=&quot;lyteshow[gallery]&quot; \r\ntitle=&quot;Your Description&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img class=&quot;boxed&quot; src=&quot;http://www.yoursite.com/images/thumbnail2.jpg&quot; \r\nalt=&quot;Description&quot; width=&quot;214&quot; height=&quot;61&quot; /&gt;&lt;/p&gt;&lt;/a&gt;<br />\r\n&lt;a href=&quot;http://www.yoursite.com/images/popup3.jpg&quot; rel=&quot;lyteshow[gallery]&quot; \r\ntitle=&quot;Your Description&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img class=&quot;boxed&quot; src=&quot;http://www.yoursite.com/images/thumbnail3.jpg&quot; \r\nalt=&quot;Description&quot; width=&quot;214&quot; height=&quot;61&quot; /&gt;&lt;/p&gt;&lt;/a&gt;</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<br /><br /><br />\r\n\r\n<div class=\"check_box\">I like what I see! I want to <a style=\"text-decoration:underline\" href=\"http://www.shape5.com/join-now.html\" target=\"_top\">join today</a>.</div><br />','',1,1,0,1,'2007-12-11 19:49:11',62,'','2008-08-13 18:41:19',62,0,'0000-00-00 00:00:00','2007-12-11 19:48:50','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',23,0,12,'','',0,10204,''),(39,'SQL Dumps/Site Shapers','sql-dumpssite-shapers','SQL Dumps/Site Shapers','<h3>Site Shaper</h3> <br />So what are Site Shapers? They are quick installs of Joomla combined with all the modules, images, etc used on our demo. Within a few minutes you can have your site up, running and looking just like our demo. No more importing SQL dumps and installing modules.  Just head on over to the download section of this template and grab a Site Shaper.  Simply install the Site Shaper like any other Joomla installation, it\'s that easy!<br /><br /> Both Joomla 1.0.x and Joomla 1.5 Site Shapers are available.<br /><br /> <h3>SQL Dumps</h3> <br />  It is highly recommended that you use a Site Shaper if you want to get your site looking like our demos.  If you just want the data we have used then an SQL dump is for you.   <br /><br /><ul class=\"ul_bullet\"> <li>Login to your phpmyadmin via cpanel or another server database admin panel.</li> <li>Navigate to the database your Joomla install is using</li> <li>Select all tables and drop them. (NOTE: This will delete all your website data on this current Joomla install)</li> <li>Next, click import and import the SQL dump we provide</li> <li>Now you are done, just login via your Joomla admin with username=admin and password=admin</li> </ul>  <br /><br />','',1,1,0,1,'2008-08-13 18:43:32',62,'','2008-08-13 18:48:52',62,0,'0000-00-00 00:00:00','2008-08-13 18:42:56','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',5,0,3,'','',0,5,''),(12,'Typography','typography','Typography','<blockquote><p>This is a sample blockquote. Use <strong>&lt;blockquote&gt;&lt;p&gt;Your content goes \r\nhere!&lt;/p&gt;&lt;/blockquote&gt;</strong> to create a blockquote.</p></blockquote>\r\n\r\n<br />\r\n\r\n<div class=\"red_box\">This is a styled box. Use <strong>&lt;div class=&quot;red_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class=\"blue_box\">This is a styled box. Use <strong>&lt;div class=&quot;blue_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class=\"green_box\">This is a styled box. Use <strong>&lt;div class=&quot;green_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class=\"yellow_box\">This is a styled box. Use <strong>&lt;div class=&quot;yellow_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class=\"orange_box\">This is a styled box. Use <strong>&lt;div class=&quot;orange_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n\r\n\r\nThis is an image with the \"boxed\" class applied:<br /><br />\r\n\r\n<img class=\"boxed\" src=\"http://www.shape5.com/demo/images/small1.jpg\" alt=\"\"></img>\r\n<br />\r\n\r\n<br />\r\n\r\n<h1>Heading 1</h1>\r\n<h2>Heading 2</h2>\r\n<h3>Heading 3</h3>\r\n<h4>Heading 4</h4>\r\n<h5>Heading 5</h5>\r\n\r\n<br />\r\n\r\n<div class=\"code\">This is a sample code div. Use <strong>&lt;div \r\n  class=&quot;code&quot;&gt;Your content goes here!&lt;/div&gt;</strong> to create a code div.<br /><br />#s5_code { width: 30px; color: #fff; line-height: 45px; } </div>\r\n\r\n<br />\r\n\r\n<ol>\r\n<li>This is an <strong>Ordered List</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ol>\r\n\r\n<br />\r\n\r\n<ul>\r\n<li>This is an <strong>Unordered List</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n<ul class=\"ul_arrow\">\r\n<li>This is an <strong>Unordered List with class ul_arrow</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ul>\r\n\r\n\r\n<br />\r\n\r\n<ul class=\"ul_star\">\r\n<li>This is an <strong>Unordered List with class ul_star</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n<ul class=\"ul_bullet\">\r\n<li>This is an <strong>Unordered List with class ul_bullet</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n<ul class=\"ul_bullet_small\">\r\n<li>This is an <strong>Unordered List with class ul_bullet_small</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\nThe following list will support lists up to number 9:\r\n<br /><br />\r\n\r\n<ul>\r\n\r\n<li class=\"li_number1\">This is a sample styled number list <strong>&lt;li class=&quot;li_number1&quot;&gt;Your content \r\ngoes here!&lt;/li&gt;</strong></li>\r\n\r\n<li class=\"li_number2\">This is a sample styled number list <strong>&lt;li class=&quot;li_number2&quot;&gt;Your content \r\ngoes here!&lt;/li&gt;</strong></li>\r\n\r\n<li class=\"li_number3\">This is a sample styled number list <strong>&lt;li class=&quot;li_number3&quot;&gt;Your content \r\ngoes here!&lt;/li&gt;</strong></li>\r\n\r\n<li class=\"li_number4\">This is a sample styled number list <strong>&lt;li class=&quot;li_number4&quot;&gt;Your content \r\ngoes here!&lt;/li&gt;</strong></li>\r\n\r\n</ul>\r\n\r\n<br />\r\n\r\n','',1,1,0,1,'2007-12-05 11:25:14',62,'','2008-08-12 09:58:47',62,0,'0000-00-00 00:00:00','2007-12-05 11:24:52','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',12,0,18,'','',0,15333,''),(13,'S5 No-MooMenu With Multiple Effects','s5-no-moomenu-with-multiple-effects','S5 No-MooMenu With Multiple Effects','<p>The S5 No-MooMenu is one of the most advanced menu systems for Joomla! Unlike \r\nother similar menu systems that use mootools and cause script conflictions with \r\nyour modules and components the S5 No-MooMenu is completely powered by S5 \r\nEffects so your modules and components won\'t cause any conflictions using this \r\nmenu system. Just mouse over the top menu and you will notice the menu smoothly \r\nexpand and fade in.</p><br />\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n<img border=\"0\" src=\"http://www.shape5.com/demo/hosticity/images/nomoo.png\" width=\"542\" height=\"259\"></p><br />\r\n<p><b><font size=\"4\">3 Options:</font></b></p><br />\r\n<ul>\r\n<li class=\"li_number1\">S5 No-MooMenu with fade-in effect (<a href=\"http://www.shape5.com/demo/hosticity/ex2/index.php\">click here for an example</a>)</li>\r\n<li class=\"li_number2\">S5 No-MooMenu with drop-in effect (<a href=\"http://www.shape5.com/demo/hosticity/index.php\">click here for an example</a>)</li>\r\n<li class=\"li_number3\">Standard Snap-in Suckerfish Menu&nbsp; (<a href=\"http://www.shape5.com/demo/hosticity/ex3/index.php\">click here for an example</a>)</li>\r\n\r\n<br /><br />\r\n\r\n<div class=\"check_box\">I like what I see! I want to <a style=\"text-decoration:underline\" href=\"http://www.shape5.com/join-now.html\" target=\"_top\">join today</a>.</div><br />','',1,1,0,1,'2007-12-05 11:32:41',62,'','2008-08-13 19:00:03',62,0,'0000-00-00 00:00:00','2007-12-05 11:32:07','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',21,0,17,'','',0,19402,''),(14,'13 Module Styles and 20 Module Positions','13-module-styles-and-20-module-positions','13 Module Styles and 20 Module Positions','<p>On this page you will see all the module styles and module positions \r\navailable plus how to setup each of them.<br/>for this template. </p><br />\r\n<p><b><font size=\"3\">All modules are fully collapsible!</font></b></p><br />\r\n<p><font size=\"3\"><b>How to install modules and setup module styles:</b></font></p>\r\n<p><font size=\"4\"><b>Joomla 1.0</b></font></p>\r\n<p>\r\n\r\n\r\n\r\n<ol>\r\n<li>Download only module you wish to publish to your site.</li>\r\n<li>In the backend of Joomla navigate to the menu item Installers/Modules.</li>\r\n\r\n<li>Browse for the module\'s install file and click Upload File & Install.</li>\r\n\r\n<li>Once the module has installed navigate to the menu item Modules/Site Modules.</li>\r\n\r\n<li>Find the Module just installed and click on it\'s title.</li>\r\n\r\n<li>Change any parameters that you wish and be sure to set it to published and publish it to your desired module position.<br /><br /><img border=\"0\" src=\"http://www.shape5.com/demo/images/mod10pos.png\" width=\"330\" height=\"242\"><br /></li><br />\r\n\r\n<li>To apply a module style simply fill in the module class suffix field with any of this template\'s included module styles.\r\n<br /><br /><img border=\"0\" src=\"http://www.shape5.com/demo/images/mod10suf.png\" width=\"330\" height=\"73\"><br /></li><br />\r\n\r\n<li>Assign what pages you would like the module to appear on and finally click Save.</li>\r\n\r\n\r\n</ol>\r\n\r\n</p>\r\n\r\n<p><font size=\"4\"><b>Joomla 1.5</b></font></p>\r\n<p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<ol>\r\n<li>Download only module you wish to publish to your site.</li>\r\n<li>In the backend of Joomla navigate to the menu item Extensions/Install Uninstall.</li>\r\n\r\n<li>Browse for the module\'s install file and click Upload File & Install.</li>\r\n\r\n<li>Once the module has installed navigate to the menu item Extensions/Module Manager.</li>\r\n\r\n<li>Find the Module just installed and click on it\'s title.</li>\r\n\r\n<li>Change any parameters that you wish and be sure to set it to published and publish it to your desired module position.<br /><br /><img border=\"0\" src=\"http://www.shape5.com/demo/images/mod15pos.png\" width=\"330\" height=\"242\"><br /></li><br />\r\n\r\n<li>To apply a module style simply fill in the module class suffix field with any of this template\'s included module styles. This parameter setting is found under Module Parameters on the right side of the screen.\r\n</li>\r\n\r\n<li>Assign what pages you would like the module to appear on and finally click Save.</li>\r\n\r\n\r\n</ol>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p>\r\n\r\n','',1,1,0,1,'2007-12-05 13:16:18',62,'','2008-08-13 17:36:46',62,0,'0000-00-00 00:00:00','2007-12-05 13:16:05','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',13,0,16,'','',0,16681,''),(35,'S5 Box Enabled','s5-box-enabled','S5 Box Enabled','<br /><br />\r\n<div class=\"blue_box\">The S5 Box comes with two display options, drop down or fade in. This can easily be setup in the template configuration.</div>\r\n<br /><br />\r\n<div class=\"star_box\">Click the link on the right side of this screen that says \"S5 Box - Learn How To Create Multiple Links On Multiple Pages\" for a full description and demo.</div>\r\n<br /><br />','',1,1,0,1,'2008-02-14 10:39:03',62,'','2008-08-13 17:43:49',62,0,'0000-00-00 00:00:00','2008-02-14 10:38:41','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',11,0,7,'','',0,6078,''),(16,'S5 Tab Show','s5-tab-show','S5 Tab Show','<p><b>There are two configurations you need to make in the template \r\nconfiguration as well. You will see both of these settings towards the bottom of the template configuration:</b></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n<li class=\"li_number1\">Unlike all other template clubs who assign these types of tab systems to a static non-moving position we have decided to let you choose where to place it! You can pick from 2 locations to place the S5 Tab Show!</li>\r\n<li class=\"li_number2\">Finally you will need to assign titles to each of the tabs. You will see a section at the very bottom where you can name each of the 20 tabs.</li>\r\n</ul>\r\n\r\n\r\n<p><b>Joomla 1.0  requires you to setup 20 new module positions, but it\'s easy and only takes seconds. Here\'s how you do it:</b></p>\r\n\r\n\r\n<br />\r\n<ul class=\"ul_star\">\r\n<li>Login to the backend of Joomla.</li>\r\n<li>Navigate through the menu system to Site/Template Manager/Module Positions</li>\r\n<li>Starting at the first blank position field enter s5_tab1 as a name.</li>\r\n<li>Continue adding s5_tab2, s5_tab3 in the next fields up to s5_tab20</li>\r\n<li>Click the save button in the upper right hand corner and you\'re done!</li>\r\n</ul>\r\n\r\n<br /><br />\r\n\r\n\r\n<div class=\"check_box\">I like what I see! I want to <a style=\"text-decoration:underline\" href=\"http://www.shape5.com/join-now.html\" target=\"_top\">join today</a>.</div><br />','',1,1,0,1,'2007-12-10 18:30:18',62,'','2008-08-13 17:38:02',62,0,'0000-00-00 00:00:00','2007-12-10 18:29:57','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',19,0,15,'','',0,13072,''),(36,'How To Setup the Search Box and Menus','how-to-setup-the-search-box-and-menus','How To Setup the Search Box and Menus','<br />\r\n<p><b><font size=\"4\">1. Search Setup</font></b></p>\r\n<p><font size=\"4\"><b>&nbsp;&nbsp;&nbsp;&nbsp;\r\n<img border=\"0\" src=\"http://www.shape5.com/demo/hosticity/images/search.png\" width=\"252\" height=\"54\"></b></font></p>\r\n<ul class=\"ul_arrow\">\r\n<li>Publish the default Joomla search module to the \'cpanel\' position.</li>\r\n<li>Do not show the search button.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n\r\n<br />\r\n<p><b><font size=\"4\">2. Column Menu Setup</font></b></p>\r\n<p><font size=\"4\"><b>&nbsp;&nbsp;&nbsp;&nbsp;\r\n<img border=\"0\" src=\"http://www.shape5.com/demo/hosticity/images/mainmenu.png\" width=\"220\" height=\"397\"></b></font></p>\r\n<ul class=\"ul_arrow\">\r\n<li>No special settings are required for this menu in Joomla 1.0 but in Joomla 1.5 make sure to remove the menu class suffix (Found under advanced parameters) and set the menu style to Legacy Vertical.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n\r\n<br />\r\n<p><b><font size=\"4\">3. Sub Menu Setup</font></b></p>\r\n<p><font size=\"4\"><b>&nbsp;&nbsp;&nbsp;&nbsp;\r\n<img border=\"0\" src=\"http://www.shape5.com/demo/hosticity/images/sub.png\" width=\"272\" height=\"43\"></b></font></p>\r\n<ul class=\"ul_arrow\">\r\n<li>Publish any menu to the \'user1\' position.</li>\r\n<li>Set the menu class suffix to -sub (Found under advanced parameters in Joomla 1.5)</li>\r\n<li>Make sure there are no module styles applied.</li>\r\n<li>Set the menu style to flat list (Legacy Flat List in Joomla 1.5)</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n\r\n<br />\r\n<p><b><font size=\"4\">4. Bottom Menu Setup</font></b></p>\r\n<p><font size=\"4\"><b>&nbsp;&nbsp;&nbsp;&nbsp;\r\n<img border=\"0\" src=\"http://www.shape5.com/demo/hosticity/images/bottom.png\" width=\"337\" height=\"90\"></b></font></p>\r\n<ul class=\"ul_arrow\">\r\n<li>Publish any menu to the \'bottom\' position.</li>\r\n<li>Set the menu class suffix to -bottom (Found under advanced parameters in Joomla 1.5)</li>\r\n<li>Make sure there are no module styles applied.</li>\r\n<li>Set the menu style to flat list (Legacy Flat List in Joomla 1.5)</li>\r\n</ul>\r\n\r\n<br />','',1,1,0,1,'2008-02-14 15:10:56',62,'','2008-08-13 18:08:29',62,0,'0000-00-00 00:00:00','2008-02-14 15:10:36','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',16,0,6,'','',0,4247,''),(29,'Hosticity - Your Hosting Resource','hosticity-your-hosting-resource','Hosticity - Your Hosting Resource','<img src=\"http://www.shape5.com/demo/hosticity/images/mainbody.jpg\" alt=\"\" style=\"height:429px; width:655px\"></img>','',1,1,0,1,'2007-12-12 13:41:14',62,'','2008-08-13 10:53:47',62,0,'0000-00-00 00:00:00','2007-12-12 13:39:40','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',40,0,9,'','',0,4944,''),(38,'S5 Habla Chat & S5 Domain Checker','s5-habla-chat-a-s5-domain-checker','S5 Habla Chat & S5 Domain Checker','<br />\r\n<p><font size=\"4\"><b>S5 Habla Chat Module</b></font></p>\r\n<p>&nbsp;</p>\r\n<p><font size=\"4\"><b>&nbsp;&nbsp;&nbsp;&nbsp; </b></font>\r\n<img border=\"0\" src=\"http://www.shape5.com/demo/hosticity/images/offline.png\" width=\"242\" height=\"110\"></p>\r\n<p><font size=\"4\"><b>&nbsp;&nbsp;&nbsp;&nbsp; </b></font>\r\n<img border=\"0\" src=\"http://www.shape5.com/demo/hosticity/images/online.png\" width=\"242\" height=\"110\"></p>\r\n<p>&nbsp;</p>\r\n<p>An easy chat module to communicate with your  customers. The \r\nS5 Habla Chat module is powered by the free chat software found at\r\n<a href=\"http://www.hab.la\">www.hab.la</a></p>\r\n<ul class=\"ul_arrow\">\r\n<li>Install the module and publish it to the \'top\' position.</li>\r\n<li>Signup for a free account at : <a href=\"http://www.hab.la/habla/signup\">\r\nhttp://www.hab.la/habla/signup</a></li>\r\n<li>Once you are signed up look for your Hab.la Site ID at : http://www.hab.la/account \r\n(about half way down the page)</li>\r\n<li>Enter your Site Id into the module through the backend of Joomla.</li>\r\n<li>Download and install Pidgin through the following tutorial : http://www.hab.la/tutorials/pidgin.html</li>\r\n</ul>\r\n\r\n<p>\r\n\r\n\r\n<br />\r\n</p>\r\n<p><font size=\"4\"><b>S5 Domain Check Module</b></font></p>\r\n<p>&nbsp;</p>\r\n<p><font size=\"4\"><b>&nbsp;&nbsp;&nbsp;&nbsp;\r\n<img border=\"0\" src=\"http://www.shape5.com/demo/hosticity/images/domaincheck.png\" width=\"220\" height=\"216\"></b></font></p>\r\n<p>&nbsp;</p>\r\nThis free module is a great way for your viewers to check if a domain name is \r\navailable. Simply install the module and publish it to any position.\r\n\r\n\r\n<br /><br /><br />\r\n\r\n<div class=\"check_box\">I like what I see! I want to <a style=\"text-decoration:underline\" href=\"http://www.shape5.com/join-now.html\" target=\"_top\">join today</a>.</div>','',1,1,0,1,'2008-08-13 18:21:51',62,'','2008-08-13 18:25:42',62,0,'0000-00-00 00:00:00','2008-08-13 18:21:29','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',4,0,4,'','',0,8,''),(30,'Create Your Own Logo','create-your-own-logo','Create Your Own Logo','<p>\r\n\r\n<br />\r\n</p>\r\n<p><b><font size=\"4\">Easily Create and Upload Your Own Logo</font></b></p>\r\n<ul class=\"ul_arrow\">\r\n<li>Download the file s5_hosticity_psds.zip from the downloads section.</li>\r\n<li>Open the psd called s5_hosticity_logo.psd</li>\r\n<li>Edit the file as you wish. Edit the logo and create a custom background as desired.</li>\r\n<li>Save the file as s5_logo.png (8-bit if possible to save on size)</li>\r\n<li>Upload the file to templates/hosticity/images and over-write the existing image.</li>\r\n</ul>\r\n\r\n','',1,1,0,1,'2008-02-06 19:08:42',62,'','2008-08-13 18:00:36',62,0,'0000-00-00 00:00:00','2008-02-06 19:08:26','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',30,0,8,'','',0,12592,''),(37,'Tool Tips Setup','tool-tips-setup','Tool Tips Setup','<br/>\r\n<strong>\r\nDemo 1:\r\n</strong>\r\n<br />\r\n<div class=\"code\">\r\n&lt;a onmouseover=\"Tip(\'This is a sample tooltip.\', WIDTH, 140, OPACITY, 80, ABOVE, true, OFFSETX, 1, FADEIN, 200, FADEOUT, 300,SHADOW, true, SHADOWCOLOR, \'#000000\',SHADOWWIDTH, 2, BGCOLOR, \'#000000\',BORDERCOLOR, \'#000000\',FONTCOLOR, \'#FFFFFF\', PADDING, 9)\" href=\"http://www.shape5.com/demo/etensity/\"><br/><br/>\r\n&lt;img class=\"boxed2\" alt=\"\" src=\"http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg\"/><br/><br/>\r\n&lt;/a>\r\n</div>\r\n\r\n<br/>\r\n\r\n\r\n\r\n\r\n<a onmouseover=\"Tip(\'This is a sample tooltip.\', WIDTH, 140, OPACITY, 80, ABOVE, true, OFFSETX, 1, FADEIN, 200, FADEOUT, 300,SHADOW, true, SHADOWCOLOR, \'#000000\',SHADOWWIDTH, 2, BGCOLOR, \'#000000\',BORDERCOLOR, \'#000000\',FONTCOLOR, \'#FFFFFF\', PADDING, 9)\" href=\"http://www.shape5.com/demo/etensity/\">\r\n\r\n<img class=\"boxed2\" alt=\"\" src=\"http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg\"/>\r\n\r\n</a>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<br/>\r\n\r\n\r\n<br/><br />\r\n<strong>\r\nDemo 2:\r\n</strong>\r\n<br />\r\n\r\n\r\n\r\n<div class=\"code\">\r\n&lt;a href=\"index.htm\" onmouseover=\"Tip(\'Image Demo<br /> <br />&lt;img src=http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg width=220 height=147>\')\">Demo 2 Image Tool Tip &lt;/a> \r\n</div>\r\n<br/>\r\n<a href=\"index.htm\" onmouseover=\"Tip(\'Image Demo<br /> <br /><img src=http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg width=220 height=147>\')\"><strong>Demo 2 Image Tool Tip</strong></a><br/><br/> \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<br/>\r\n<strong>\r\nDemo 3:\r\n</strong>\r\n<br />\r\n\r\n\r\n<div class=\"code\">\r\n&lt;a href=\"#\" onmouseover=\"Tip(\'Image Demo&lt;br /> &lt;br />&lt;img src=http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg width=220 height=147>\',SHADOW, true,  BGCOLOR, \'#000000\', FADEIN, 400, FADEOUT, 400, SHADOWCOLOR, \'#000000\', BORDERCOLOR, \'#000000\',OPACITY, 90,FONTCOLOR, \'#FFFFFF\')\">&lt;strong>Demo 3 Image Tool Tip&lt;/strong>&lt;/a>\r\n</div>\r\n\r\n\r\n<a href=\"#\" onmouseover=\"Tip(\'Image Demo<br /> <br /><img src=http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg width=220 height=147>\',SHADOW, true,  BGCOLOR, \'#000000\', FADEIN, 400, FADEOUT, 400, SHADOWCOLOR, \'#000000\', BORDERCOLOR, \'#000000\', OPACITY, 90,FONTCOLOR, \'#FFFFFF\')\"><strong>Demo 3 Image Tool Tip</strong></a>\r\n<br/><br/>\r\n\r\n','',1,1,0,1,'2008-08-13 18:09:50',62,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2008-08-13 18:09:37','0000-00-00 00:00:00','','','pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=',1,0,5,'','',0,8,''),(40,'Thanh toán','thanh-toan','','<p> </p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \"><strong>Quý khách có thể thanh toán 1 trong các hình thức sau </strong>:</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">1.<strong>Thanh toán trực tiếp tại văn phòng công ty P.A Vietnam Ltd</strong></p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \"><strong>Công ty TNHH P.A VIETNAM</strong><br />Trụ sở chính : 254A Nguyễn Đình Chiểu, Phường 6, Quận 3, Tp. Hồ Chí Minh<br />Phone: +84-8-6.2563737 (10 lines)</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">Chi nhánh phía Bắc : 57 Láng Hạ, Thành Công Tower (tầng 10, phòng 1002), Quận Ba Ðình, Hà Nội.<br />Phone: +84-8-3.8633630 (5 lines)</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">Giờ làm việc từ 8h-17h30 - Thứ 2 - Thứ 7</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">2.<strong>Thanh toán chuyển khoản qua ngân hàng</strong></p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">Bạn đến bất kỳ ngân hàng nào ở Việt Nam để chuyển tiền theo thông tin bên dưới (bạn không nhất thiết phải có tài khoản ngân hàng)</p>\r\n<table style=\"color: #000000; line-height: 18px; text-align: justify; font-family: sans-serif; font-size: 14px; \" border=\"0\" cellspacing=\"2\" cellpadding=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"font-family: Arial, Helvetica, sans-serif; line-height: 21px; \">-</td>\r\n<td style=\"font-family: Arial, Helvetica, sans-serif; line-height: 21px; \">Nếu chuyển từ các điểm giao dịch, chi nhánh hay trụ sở chính trực thuộc <strong>Vietcombank</strong> thời gian chuyển không quá 12h</td>\r\n<td style=\"font-family: Arial, Helvetica, sans-serif; line-height: 21px; \" width=\"13\"></td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"font-family: Arial, Helvetica, sans-serif; line-height: 21px; \">-</td>\r\n<td style=\"font-family: Arial, Helvetica, sans-serif; line-height: 21px; \">Nếu chuyển từ các điểm giao dịch, chi nhánh hay trụ sở chính từ các ngân hàng khác không thuộc <strong>Vietcombank</strong> thời gian chuyển 24h-72h</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style=\"line-height: 18px; text-align: justify; font-size: 14px; font-family: sans-serif;\">Tên ngân hàng : Ngân hàng Ngoại Thương Việt Nam (Chi nhánh Kỳ Đồng)</span><br style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; \" /><span style=\"line-height: 18px; text-align: justify; font-size: 14px; font-family: sans-serif;\">Chủ tài khoản : Phan Phương Quế</span><br style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; \" /><span style=\"line-height: 18px; text-align: justify; font-size: 14px; font-family: sans-serif;\">Số Tài Khoản : 0071004310011</span></p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">Tên ngân hàng : Ngân hàng Đông Á, TP.HCM<br />Chủ tài khoản : Phan Phương Quế<br />Số Tài Khoản : 0102878361</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">Tên ngân hàng : Ngân hàng <span style=\"font-weight: bold; \">Agribank</span>, chi nhánh Mạc Thị Bưởi, TPHCM.<br />Chủ tài khoản : Phan Phương Quế<br />Số Tài Khoản : 1900206084213</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 18px; font-size: 12px; \"> </p>\r\n<p><strong style=\"font-size: 12px; line-height: 18px; text-align: justify; font-family: sans-serif; \"><span style=\"text-decoration: underline;\"><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; \">Ghi chú :</span></span></strong><span style=\"text-align: justify; font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; \"><br /></span></p>\r\n<div style=\"font-size: 12px; line-height: 18px; font-family: sans-serif; text-align: left; \"><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; \">+ Khi thực hiện thanh toán đăng ký hoặc gia hạn bằng </span><strong><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; color: red; \">chuyển khoản</span></strong><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; \">, quý khách vui lòng </span><strong><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; color: red; \">nhờ ngân hàng ghi rõ tên miền của dịch vụ cần đăng ký hoặc gia hạn</span></strong><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; \"> trong nội dung thanh toán để bộ phận kế toán đăng ký hoặc gia hạn chính xác tên miền của Quý khách.</span><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; \"> </span></div>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 18px; font-size: 12px; \"> </p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \"><strong>3.Thanh toán chuyển khoản qua ATM Vietcombank</strong></p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">- Đến bất kỳ máy <strong>ATM</strong> thuộc <strong>Vietcombank</strong> để chuyển tiền theo thông tin<br />+ Chủ tài khoản : Phan Phương Quế<br />+ Số Tài Khoản : 0071004310011<br />+ Tên ngân hàng : Ngân hàng Ngoại Thương Việt Nam (Chi nhánh Kỳ Đồng)</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">- Đến bất kỳ máy <strong>ATM</strong> thuộc <strong>Đông Á</strong> để chuyển tiền theo thông tin<br />+ Chủ tài khoản : Phan Phương Quế<br />+ Số Tài Khoản : 0102878361<br />+ Tên ngân hàng : Ngân hàng Đông Á, TP.HCM</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">- Đến bất kỳ máy <strong>ATM</strong> thuộc <span style=\"font-weight: bold; \">Agribank</span>: để chuyển tiền theo thông tin<br />+ Chủ tài khoản : Phan Phương Quế<br />+ Số Tài Khoản : 1900206084213<br />+ Tên ngân hàng : Ngân hàng <span style=\"font-weight: bold; \">Agribank</span>, chi nhánh Mạc Thị Bưởi, TPHCM.</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 18px; font-size: 12px; \"> </p>\r\n<div style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: left; \"><strong><span style=\"text-decoration: underline;\"><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; \">Ghi chú :</span></span></strong><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; \"><br />+ Nếu quý khách chọn hình thức </span><strong><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; color: red; \">chuyển ATM</span></strong><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; color: red; \"> vui lòng liên hệ với số điện thoại <strong>08-62563737 (ext: 609)</strong></span><span style=\"font-size: 10.5pt; line-height: 16px; font-family: Arial, sans-serif; \"> hay email: <strong><a href=\"file:///C:/Documents%20and%20Settings/Pcoder/Desktop/New%20Microsoft%20Office%20Word%20Document.docx\" style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; text-decoration: none; \"><span style=\"color: blue; font-weight: normal; \">billing@pavietnam.vn</span></a></strong> để thông báo tên miền của dịch vụ cần đăng ký hoặc gia hạn. <br />+ Mọi thắc mắc vui lòng liên hệ số điện thoại 08-62563737 hoặc gửi yêu cầu vào website hỗ trợ khách hàng <a href=\"http://support.pavietnam.vn/\" target=\"_blank\" style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; text-decoration: none; \"><span style=\"color: blue; \">http://support.pavietnam.vn</span></a> hoặc email vào <a href=\"file:///C:/Documents%20and%20Settings/Pcoder/Desktop/New%20Microsoft%20Office%20Word%20Document.docx\" style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; text-decoration: none; \"><span style=\"color: blue; \">sales@pavietnam.vn</span></a></span></div>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 18px; font-size: 12px; \"> </p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">4.<strong>Thanh toán qua bưu điện</strong></p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">Nơi nhận tiền : Công ty P.A Việt Nam<br />Địa chỉ : 254A Nguyễn Đình Chiểu , Phường 6, Quận 3, Tp. Hồ Chí Minh</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">5.<strong>Thu phí tận nơi</strong></p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">Việc thu phí tận nơi chỉ áp dụng trong nội ô TP.HCM và Hà Nội, số điện thoại liên lạc của bạn đã nhập ở trên phài là số điện thoại cố định.</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">6.<strong>Thanh toán trực tuyến</strong></p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">Khởi tạo dịch vụ ngay lập tức</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">Chấp nhận thanh toán qua:</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">- Thẻ quốc tế (<strong>Visa, MasterCard</strong>) ( Chú ý: Nếu chọn hình thức thanh toán này, vui lòng scan + email CMND/Hộ chiếu của quý khách để chúng tôi xác minh đăng ký dịch vụ. )</p>\r\n<p style=\"font-family: sans-serif; text-align: justify; line-height: 21px; font-size: 14px; \">- Thẻ trong nước (<strong>Vietcombank, DongA</strong>)</p>\r\n<p> </p>','',1,1,0,1,'2012-04-21 11:18:46',62,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2012-04-21 11:18:46','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,2,'','',0,0,'robots=\nauthor='),(41,'Điều khoản','iu-khon','','<p>\r\n	&nbsp;</p>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"2\" class=\"font_11\" style=\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; \" width=\"100%\">\r\n	<tbody>\r\n		<tr valign=\"top\">\r\n			<td width=\"20\">\r\n				1.</td>\r\n			<td>\r\n				Chúng tôi không chịu trách nhiệm và không bảo đảm về tính chính xác của những thông tin từ bất kì ai gửi đến server và cũng không chịu bất cứ trách nhiệm pháp lý hoặc bồi thường thiệt hại nào về việc mất mát hay hư hỏng đối với dữ liệu được lưu trữ trên server.</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				2.</td>\r\n			<td>\r\n				Người sử dụng có trách nhiệm thực hiện việc duy trì và bảo quản dữ liệu trên server.</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				3.</td>\r\n			<td>\r\n				Người sử dụng phải tự chịu trách nhiệm và đảm bảo với chúng tôi trong việc sử dụng Website của mình trên server vào những mục đích hợp pháp. Đặc biệt trong những trường hợp sau:</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				<table border=\"0\" cellpadding=\"0\" cellspacing=\"2\" class=\"font_11\" width=\"100%\">\r\n					<tbody>\r\n						<tr valign=\"top\">\r\n							<td width=\"20\">\r\n								3.1.</td>\r\n							<td>\r\n								Không dùng server vào bất kì mục đích/hình thức nào vi phạm pháp luật Việt Nam, đặc biệt về vấn đề bản quyền phần mềm, ca khúc... Đồng thời có trách nhiệm kiểm soát và ngăn cấm người khác làm điều đó trên Website của mình.</td>\r\n						</tr>\r\n						<tr valign=\"top\">\r\n							<td>\r\n								3.2.</td>\r\n							<td>\r\n								Người sử dụng không được gửi, tạo liên kết hoặc trung chuyển cho:</td>\r\n						</tr>\r\n						<tr valign=\"top\">\r\n							<td>\r\n								&nbsp;</td>\r\n							<td>\r\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"2\" class=\"font_11\" width=\"100%\">\r\n									<tbody>\r\n										<tr valign=\"top\">\r\n											<td width=\"20\">\r\n												a.</td>\r\n											<td>\r\n												Bất kì loại dữ liệu nào mang tính bất hợp pháp, đe dọa, lừa dối, thù hằn, xuyên tạc, nói xấu, tục tĩu, khiêu dâm, xúc phạm, thông tin trộm cắp... hay các hình thức bị ngăn cấm khác dưới bất kì cách thức nào.</td>\r\n										</tr>\r\n										<tr valign=\"top\">\r\n											<td>\r\n												b.</td>\r\n											<td>\r\n												Bất kì loại dữ liệu nào mà cấu thành hoặc khuyến khích các hình thức phạm tội; hoặc các dữ liệu mang tính vi phạm luật sáng chế, nhãn hiệu, quyền thiết kế, bản quyền hay bất kì quyền sỡ hữu trí tuệ hoặc các quyền hạn của bất kì cá nhân nào.</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<tr valign=\"top\">\r\n							<td>\r\n								3.3.</td>\r\n							<td>\r\n								Người sử dụng không được gửi các hình thức bulk email mang mục đích phá hoại từ server hay mạng của chúng tôi và không được khuyến khích một site nào đó được đặt trên server sử dụng bulk email.</td>\r\n						</tr>\r\n						<tr valign=\"top\">\r\n							<td>\r\n								3.4.</td>\r\n							<td>\r\n								Người sử dụng không sử dụng các chương trình có khả năng làm tắc nghẽn hoặc đình trệ hệ thống, như gây cạn kiệt tài nguyên hệ thống, làm quá tải bộ vi xử lý và bộ nhớ.</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				4.</td>\r\n			<td>\r\n				Người sử dụng giữ một cách an toàn các thông tin nhận biết, mật khẩu hay những thông tin mật khác liên quan đến tài khoản của bạn và lập tức thông báo cho chúng tôi khi bạn phát hiện các hình thức truy cập trái phép bằng tài khoản của bạn hoặc các sơ hở về bảo mật, bao gồm việc mất mát, đánh cắp hoặc để lộ các thông tin về mật khẩu và các thông tin bảo mật khác.</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				5.</td>\r\n			<td>\r\n				Người sử dụng tuân thủ các thủ tục mà chúng tôi đưa ra và sẽ không được dùng server vào những mục đích có thể gây ảnh hưởng đến các khách hàng khác của chúng tôi.</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				6.</td>\r\n			<td>\r\n				Bất kì việc truy cập đến những mạng khác được liên kết với mạng chúng tôi đều phải tuân theo các luật tương ứng của các mạng đó.</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				7.</td>\r\n			<td>\r\n				Trong khi chúng tôi dùng các biện pháp có thể và nỗ lực nhằm bảo đảm sự toàn vẹn dữ liệu và an toàn cho server, chúng tôi không đảm bảo trong trường hợp server bị phá hoại từ những người dùng bất hợp pháp hay các hacker cũng như lỗi phần cứng do nhà sản xuất và cũng không chịu trách nhiệm đối với các trường hợp mất mát dữ liệu.</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				8.</td>\r\n			<td>\r\n				Nếu bạn vi phạm trong việc thanh toán chi phí, vi phạm các qui định nêu trên, chúng tôi có thể tạm ngưng các dịch vụ và/hoặc ngay lập tức kết thúc hợp đồng mà không thông báo trước.</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				9.</td>\r\n			<td>\r\n				Chúng tôi sẽ không hoàn trả lại bất kỳ khoản tiền nào do việc ngừng dịch vụ vì lý do vi phạm từ phía người sử dụng ở các mục đã nêu trên.</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				10.</td>\r\n			<td class=\"color_2\">\r\n				Chúng tôi có quyền loại bỏ account của bạn mà không thông báo trước. Nếu như bạn vi phạm các mục trên</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign=\"top\">\r\n			<td>\r\n				11.</td>\r\n			<td>\r\n				Chúng tôi sẽ không hoàn lại tiền bất cứ lý do gì trừ trường hợp chúng tôi không tiếp tục cung cấp dịch vụ.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','',1,1,0,1,'2012-04-21 11:43:06',62,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2012-04-21 11:43:06','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,1,'','',0,0,'robots=\nauthor=');
/*!40000 ALTER TABLE `jos_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_frontpage`
--

LOCK TABLES `jos_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jos_content_frontpage` DISABLE KEYS */;
INSERT INTO `jos_content_frontpage` VALUES (29,1);
/*!40000 ALTER TABLE `jos_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_rating`
--

LOCK TABLES `jos_content_rating` WRITE;
/*!40000 ALTER TABLE `jos_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro`
--

DROP TABLE IF EXISTS `jos_core_acl_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro`
--

LOCK TABLES `jos_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro` VALUES (10,'users','62',0,'Tam Vo',0);
/*!40000 ALTER TABLE `jos_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

LOCK TABLES `jos_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_groups` VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_map`
--

LOCK TABLES `jos_core_acl_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

LOCK TABLES `jos_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_sections` VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

LOCK TABLES `jos_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` DISABLE KEYS */;
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (25,'',10);
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_items`
--

DROP TABLE IF EXISTS `jos_core_log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_items`
--

LOCK TABLES `jos_core_log_items` WRITE;
/*!40000 ALTER TABLE `jos_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_searches`
--

LOCK TABLES `jos_core_log_searches` WRITE;
/*!40000 ALTER TABLE `jos_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_dbcache`
--

DROP TABLE IF EXISTS `jos_dbcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_dbcache` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `groupname` varchar(32) NOT NULL DEFAULT '',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` mediumblob NOT NULL,
  PRIMARY KEY (`id`,`groupname`),
  KEY `expire` (`expire`,`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_dbcache`
--

LOCK TABLES `jos_dbcache` WRITE;
/*!40000 ALTER TABLE `jos_dbcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_dbcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_groups`
--

DROP TABLE IF EXISTS `jos_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_groups`
--

LOCK TABLES `jos_groups` WRITE;
/*!40000 ALTER TABLE `jos_groups` DISABLE KEYS */;
INSERT INTO `jos_groups` VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `jos_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_jf_content`
--

DROP TABLE IF EXISTS `jos_jf_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_jf_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `reference_id` int(11) NOT NULL DEFAULT '0',
  `reference_table` varchar(100) NOT NULL DEFAULT '',
  `reference_field` varchar(100) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `original_value` varchar(255) DEFAULT NULL,
  `original_text` mediumtext NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `combo` (`reference_id`,`reference_field`,`reference_table`),
  KEY `jfContent` (`language_id`,`reference_id`,`reference_table`),
  KEY `jfContentLanguage` (`reference_id`,`reference_field`,`reference_table`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_jf_content`
--

LOCK TABLES `jos_jf_content` WRITE;
/*!40000 ALTER TABLE `jos_jf_content` DISABLE KEYS */;
INSERT INTO `jos_jf_content` VALUES (1,1,74,'menu','name','Giới thiệu','9e66e6bd4069124578736528a0432752','','2012-04-21 04:43:26',62,1),(2,1,74,'menu','alias','about-us-sub-74','b2bf05a928d9565be0105468a27f35c2','','2012-04-21 04:43:26',62,1),(3,1,74,'menu','params','menu_image=-1\n\n','321b703f52871b6e26c981ed2f7a6192','','2012-04-21 04:43:26',62,1),(4,1,74,'menu','link','javascript:;','ed8553192c8d124be55949cc1b2e99dc','','2012-04-21 04:43:26',62,1),(5,1,3,'menu','name','Liên hệ','9cfc9b74983d504ec71db33967591249','','2012-04-21 04:44:27',62,1),(6,1,3,'menu','alias','contact-us-mainmenu-3','c915bd8a2388993619816b0bc93cb24a','','2012-04-21 04:44:27',62,1),(7,1,3,'menu','params','display_num=20\nimage=-1\nimage_align=right\nshow_limit=0\nshow_feed_link=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\n\n','ac5c8f9153416cdfecd7fced508e29bb','','2012-04-21 04:44:27',62,1),(8,1,3,'menu','link','index.php?option=com_contact&view=category&catid=0','ddd9462f2e322cf01c06ff55b20d9bc3','','2012-04-21 04:44:27',62,1),(19,1,1,'menu','name','Trang chủ ',NULL,'','0000-00-00 00:00:00',62,1),(20,1,1,'menu','alias','home-mainmenu-1 ',NULL,'','0000-00-00 00:00:00',62,1),(21,1,33,'modules','title','advert1','2f8eec47ecc5ce7f05138711e14cec5f','','2012-04-21 09:37:26',62,1),(22,1,33,'modules','content','<p>Testing purpose.</p>','aab0194f8a9878e08e016e656d789e63','','2012-04-21 09:37:26',62,1),(23,1,33,'modules','params','moduleclass_sfx=\n\n','cf8a8faecbb00c5e582d0d313cee0e14','','2012-04-21 09:37:26',62,1);
/*!40000 ALTER TABLE `jos_jf_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `jos_jf_languages`
--

DROP TABLE IF EXISTS `jos_jf_languages`;
/*!50001 DROP VIEW IF EXISTS `jos_jf_languages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jos_jf_languages` (
  `lang_id` int(11) unsigned,
  `lang_code` char(7),
  `title` varchar(50),
  `title_native` varchar(50),
  `sef` varchar(50),
  `description` varchar(512),
  `published` int(11),
  `image` varchar(50),
  `image_ext` varchar(100),
  `fallback_code` varchar(20),
  `params` text,
  `ordering` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jos_jf_languages_ext`
--

DROP TABLE IF EXISTS `jos_jf_languages_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_jf_languages_ext` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_ext` varchar(100) DEFAULT NULL,
  `fallback_code` varchar(20) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_jf_languages_ext`
--

LOCK TABLES `jos_jf_languages_ext` WRITE;
/*!40000 ALTER TABLE `jos_jf_languages_ext` DISABLE KEYS */;
INSERT INTO `jos_jf_languages_ext` VALUES (1,'/media/com_joomfish/default/flags/en.gif','','MetaDesc=\r\nMetaKeys=\r\n\r\n',2),(2,'flags/vi.gif','','MetaDesc=\r\nMetaKeys=\r\n\r\n',1);
/*!40000 ALTER TABLE `jos_jf_languages_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_jf_tableinfo`
--

DROP TABLE IF EXISTS `jos_jf_tableinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_jf_tableinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joomlatablename` varchar(100) NOT NULL DEFAULT '',
  `tablepkID` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=511 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_jf_tableinfo`
--

LOCK TABLES `jos_jf_tableinfo` WRITE;
/*!40000 ALTER TABLE `jos_jf_tableinfo` DISABLE KEYS */;
INSERT INTO `jos_jf_tableinfo` VALUES (496,'banner','bid'),(497,'bannerclient','cid'),(498,'categories','id'),(499,'contact_details','id'),(500,'content','id'),(501,'languages','id'),(502,'menu','id'),(503,'modules','id'),(504,'newsfeeds','id'),(505,'plugins','id'),(506,'poll_data','id'),(507,'polls','id'),(508,'sections','id'),(509,'users','id'),(510,'weblinks','id');
/*!40000 ALTER TABLE `jos_jf_tableinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_languages`
--

DROP TABLE IF EXISTS `jos_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_languages`
--

LOCK TABLES `jos_languages` WRITE;
/*!40000 ALTER TABLE `jos_languages` DISABLE KEYS */;
INSERT INTO `jos_languages` VALUES (1,'en-GB','English (United Kingdom)','English (United Kingdom)','en','en','','','',1),(2,'vi-VN','Vietnamese-VN','Vietnamese-VN','vi','vi','','','',1);
/*!40000 ALTER TABLE `jos_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu`
--

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS */;
INSERT INTO `jos_menu` VALUES (1,'mainmenu','Home','home-mainmenu-1','index.php?option=com_content&view=frontpage','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=application_view_tile.png\npageclass_sfx=\npage_title=Welcome to the Frontpage\nshow_page_title=0\nback_button=0\nnum_leading_articles=1\nnum_intro_articles=2\nnum_columns=2\nnum_links=1\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nimage=1\nshow_section=0\nsection_num_links=0\nshow_category=0\ncategory_num_links=0\nshow_title=1\nlink_titles=\nshow_readmore=\nshow_vote=\nshow_author=\nshow_create_show_date=\nshow_modify_show_date=\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nunpublished=0\nshow_title=1\n',0,0,1),(2,'mainmenu','News','news-mainmenu-2','index.php?option=com_content&view=section&id=1','component',1,26,20,0,3,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\nshow_page_title=1\npageclass_sfx=\nback_button=\ndescription_sec=1\ndescription_sec_image=1\norderby=\nother_cat_show_section=1\nempty_cat_show_section=0\nshow_category_description=1\ndescription_cat_image=1\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\ncat_show_description=1\ndate_format=\nshow_date=\nshow_author=\nshow_hits=\nshow_headings=1\nshow_item_navigation=1\norder_select=1\nshow_pagination_limit=1\ndisplay_num=50\nfilter=1\nfilter_type=title\nunpublished=1\nshow_title=1\n',0,0,0),(3,'mainmenu','Contact Us','contact-us-mainmenu-3','index.php?option=com_contact&view=category','component',1,26,7,0,2,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\npageclass_sfx=\nback_button=\nshow_page_title=1\npage_title=\ncatid=0\nother_cat_show_section=1\nshow_categories=1\ncat_show_description=1\nshow_cat_num_articles=1\nshow_description=1\ndescription_text=\nimage=-1\nimage_align=right\nshow_headings=1\nposition=1\nshow_email_icon=0\ntelephone=1\nfax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsessionCheck=1\nshow_title=1\n',0,0,0),(23,'mainmenu','Links','links-mainmenu-23','index.php?option=com_weblinks&view=categories','component',1,26,4,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\npageclass_sfx=\nback_button=\nshow_page_title=1\npage_title=\nshow_headings=1\nshow_hits=\nitem_show_description=1\nother_cat_show_section=1\nshow_categories=1\nshow_description=1\ndescription_text=\nimage=-1\nimage_align=right\nweblink_icons=\nshow_title=1\n',0,0,0),(5,'mainmenu','Search','search-mainmenu-5','index.php?option=com_search','component',1,26,15,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=\npageclass_sfx=\nback_button=\nshow_page_title=1\npage_title=\nshow_title=1\n',0,0,0),(6,'mainmenu','Joomla! License','joomla-license-mainmenu-6','index.php?option=com_content&view=article&id=5','component',0,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(7,'mainmenu','News Feeds','news-feeds-mainmenu-7','index.php?option=com_newsfeeds&view=categories','component',1,26,11,0,4,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\npageclass_sfx=\nback_button=\nshow_page_title=1\npage_title=\nother_cat_show_section=1\nshow_categories=1\ncat_show_description=1\nshow_cat_num_articles=1\nshow_description=1\ndescription_text=\nimage=-1\nimage_align=right\nshow_headings=1\nname=1\narticles=1\nnum_links=0\nfeed_image=1\nfeed_descr=1\nitem_descr=1\nword_count=0\nshow_title=1\n',0,0,0),(8,'mainmenu','Wrapper','wrapper-mainmenu-8','index.php?option=com_wrapper&view=wrapper','component',1,26,17,0,6,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\npageclass_sfx=\nback_button=\nshow_page_title=1\npage_title=\nscrolling=auto\nwidth=100%\nheight=600\nheight_auto=0\nadd=1\nurl=http://www.mozilla.com/en-US/firefox/\nshow_title=1\n',0,0,0),(9,'mainmenu','Blog','blog-mainmenu-9','index.php?option=com_content&view=section&layout=blog&id=0','component',0,23,20,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\npageclass_sfx=\nback_button=\npage_title=A blog of all sections with no images\nshow_page_title=1\nnum_leading_articles=0\nnum_intro_articles=6\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nimage=0\nshow_description=0\nshow_description_image=0\nshow_category=0\ncategory_num_links=0\nshow_title=1\nlink_titles=\nshow_readmore=\nshow_vote=\nshow_author=\nshow_create_show_date=\nshow_modify_show_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nunpublished=0\nsectionid=0\nshow_title=1\n',0,0,0),(21,'usermenu','Your Details','your-details-usermenu-21','index.php?option=com_user&task=edit','url',1,0,0,0,1,0,'0000-00-00 00:00:00',0,0,1,3,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(13,'usermenu','Submit News','submit-news-usermenu-13','index.php?option=com_content&task=new&sectionid=1','url',1,0,0,0,2,0,'0000-00-00 00:00:00',0,0,1,2,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(14,'usermenu','Submit WebLink','submit-weblink-usermenu-14','index.php?option=com_weblinks&view=weblink&layout=form','url',1,0,0,0,4,0,'0000-00-00 00:00:00',0,0,1,2,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(15,'usermenu','Check-In My Items','check-in-my-items-usermenu-15','index.php?option=com_user&task=checkin','url',1,0,0,0,5,0,'0000-00-00 00:00:00',0,0,1,2,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(16,'usermenu','Logout','logout-usermenu-16','index.php?option=com_user&view=login','component',1,0,14,0,5,0,'0000-00-00 00:00:00',0,0,1,3,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(17,'topmenu','Home','home-topmenu-17','index.php','url',1,0,0,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(18,'topmenu','Contact Us','contact-us-topmenu-18','index.php?option=com_contact','url',1,0,0,0,2,0,'0000-00-00 00:00:00',0,0,0,3,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(19,'topmenu','News','news-topmenu-19','index.php?option=com_content&task=section&id=1','url',1,0,0,0,3,0,'0000-00-00 00:00:00',0,0,0,3,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(20,'topmenu','Links','links-topmenu-20','index.php?option=com_weblinks','url',1,0,0,0,4,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(25,'mainmenu','FAQs','faqs-mainmenu-25','index.php?option=com_content&view=category&id=7','component',1,26,20,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_page_title=1\npageclass_sfx=\nback_button=\nshow_category_description=1\ndescription_cat_image=1\norderby=\ndate_format=\nshow_date=\nshow_author=\nshow_hits=\nshow_headings=1\nshow_item_navigation=1\norder_select=1\nshow_pagination_limit=1\ndisplay_num=50\nfilter=1\nfilter_type=title\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\ncat_show_description=1\nunpublished=1\nshow_title=1\n',0,0,0),(26,'mainmenu','Joomla Stuff','joomla-stuff-mainmenu-26','javascript:;','url',1,0,0,0,6,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=page_white_code_red.png\nshow_title=1\nshow_page_title=1\n',0,0,0),(27,'mainmenu','Typography','typography-mainmenu-27','index.php?option=com_content&view=article&id=12','component',1,0,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=color_wheel.png\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(28,'mainmenu','S5 No-MooMenu','s5-no-moomenu-mainmenu-28','index.php?option=com_content&view=article&id=13','component',1,0,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=lightning.png\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(29,'mainmenu','Fading Effect Example','fading-effect-example-mainmenu-29','http://www.shape5.com/demo/hosticity/ex2/index.php','url',1,28,0,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(30,'mainmenu','Drop In Effect Example','drop-in-effect-example-mainmenu-30','http://www.shape5.com/demo/hosticity/index.php','url',1,28,0,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(31,'mainmenu','Standard Suckerfish Example','standard-suckerfish-example-mainmenu-31','http://www.shape5.com/demo/hosticity/ex3/index.php','url',1,28,0,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(32,'mainmenu','Dummy Item','dummy-item-mainmenu-32','javascript:;','url',1,28,0,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(33,'mainmenu','Dummy Item','dummy-item-mainmenu-33','javascript:;','url',1,32,0,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(34,'mainmenu','Dummy Item','dummy-item-mainmenu-34','javascript:;','url',1,32,0,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(35,'mainmenu','Dummy Item','dummy-item-mainmenu-35','javascript:;','url',1,32,0,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(36,'mainmenu','Dummy Item','dummy-item-mainmenu-36','javascript:;','url',1,35,0,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(37,'mainmenu','Dummy Item','dummy-item-mainmenu-37','javascript:;','url',1,35,0,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(38,'mainmenu','Dummy Item','dummy-item-mainmenu-38','javascript:;','url',1,35,0,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(42,'othermenu','Home','home-othermenu-42','index.php?option=com_content&view=frontpage','component',1,0,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(43,'othermenu','Contact Us','contact-us-othermenu-43','index.php?option=com_contact&view=category','component',1,0,7,0,6,0,'0000-00-00 00:00:00',0,0,0,0,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(44,'othermenu','Search','search-othermenu-44','index.php?option=com_search','component',1,0,15,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'\nshow_title=1\nshow_page_title=1\n',0,0,0),(45,'othermenu','About Us','about-us-othermenu-45','javascript:;','url',1,0,0,0,8,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(46,'othermenu','FAQs','faqs-othermenu-46','index.php?option=com_content&task=category&sectionid=3&id=7','url',1,0,0,0,9,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(47,'mainmenu','Features','features-mainmenu-47','javascript:;','url',1,0,0,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=database_table.png\nshow_title=1\nshow_page_title=1\n',0,0,0),(48,'mainmenu','Tutorials','tutorials-mainmenu-48','javascript:;','url',1,0,0,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=cog_go.png\nshow_title=1\nshow_page_title=1\n',0,0,0),(49,'mainmenu','20 Modules and 13 Styles!','20-modules-and-13-styles-mainmenu-49','index.php?option=com_content&view=article&id=14','component',1,47,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(52,'mainmenu','S5 Tab Show Enabled','s5-tab-show-enabled-mainmenu-52','index.php?option=com_content&view=article&id=16','component',1,47,20,0,6,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(53,'mainmenu','Installing The Template','installing-the-template-mainmenu-53','index.php?option=com_content&view=article&id=17','component',1,48,20,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(54,'mainmenu','Configuring The Template','configuring-the-template-mainmenu-54','index.php?option=com_content&view=article&id=18','component',1,48,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(55,'mainmenu','LyteBox Setup','lytebox-setup-mainmenu-55','index.php?option=com_content&view=article&id=19','component',1,48,20,0,6,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(56,'mainmenu','Setup Module Styles','setup-module-styles-mainmenu-56','index.php?option=com_content&view=article&id=14','component',1,48,20,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(59,'mainmenu','Easy To Follow Steps','easy-to-follow-steps-mainmenu-59','index.php?option=com_content&view=article&id=22','component',1,47,20,0,8,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(64,'mainmenu','S5 Tab Show Setup','s5-tab-show-setup-mainmenu-64','index.php?option=com_content&view=article&id=16','component',1,48,20,0,8,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(65,'mainmenu','Custom Page & Column Widths','custom-page-a-column-widths-mainmenu-65','index.php?option=com_content&view=article&id=24','component',1,47,20,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(70,'mainmenu','LyteBox Enabled','lytebox-enabled-mainmenu-70','index.php?option=com_content&view=article&id=19','component',1,47,20,0,9,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(73,'sub','Contact Us','contact-us-sub-73','javascript:;','url',1,0,0,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(74,'sub','About Us','about-us-sub-74','javascript:;','url',1,0,0,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(75,'sub','Terms','terms-sub-75','javascript:;','url',1,0,0,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(76,'sub','FAQs','faqs-sub-76','javascript:;','url',1,0,0,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(77,'mainmenu','Create Your Own Logo','create-your-own-logo-mainmenu-77','index.php?option=com_content&view=article&id=30','component',1,48,20,0,9,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(78,'mainmenu','S5 Box Enabled','s5-box-enabled-mainmenu-78','index.php?option=com_content&view=article&id=35','component',1,47,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(79,'mainmenu','S5 Box Setup','s5-box-setup-mainmenu-79','index.php?option=com_content&view=article&id=35','component',1,48,20,0,10,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(80,'mainmenu','Search and Menus Setup','search-and-menus-setup-mainmenu-80','index.php?option=com_content&view=article&id=36','component',1,48,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(82,'mainmenu','Tool Tips Setup','tool-tips-setup-mainmenu-82','index.php?option=com_content&view=article&id=37','component',1,48,20,0,11,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(83,'mainmenu','Tool Tips Enabled','tool-tips-enabled-mainmenu-83','index.php?option=com_content&view=article&id=37','component',1,47,20,0,10,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(84,'mainmenu','NEW! S5 Domain Checker','new-s5-domain-checker-mainmenu-84','index.php?option=com_content&view=article&id=38','component',1,47,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(85,'mainmenu','NEW! S5 Habla Chat','new-s5-habla-chat-mainmenu-85','index.php?option=com_content&view=article&id=38','component',1,47,20,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(86,'mainmenu','S5 Habla Chat Setup','s5-habla-chat-setup-mainmenu-86','index.php?option=com_content&view=article&id=38','component',1,48,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(87,'mainmenu','Site Shaper Available','site-shaper-available-mainmenu-87','index.php?option=com_content&view=article&id=39','component',1,47,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(88,'mainmenu','Site Shaper Setup','site-shaper-setup-mainmenu-88','index.php?option=com_content&view=article&id=39','component',1,48,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nunique_itemid=0\nshow_title=1\nshow_page_title=1\n',0,0,0),(89,'mainmenu','Preset Styles & Dark','preset-styles-a-dark-mainmenu-89','javascript:;','url',1,0,0,0,8,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(90,'mainmenu','With A Dark Background','with-a-dark-background-mainmenu-90','http://www.shape5.com/demo/hosticity/dark/index.php','url',1,89,0,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(91,'mainmenu','Preset Style 1','preset-style-1-mainmenu-91','http://www.shape5.com/demo/hosticity/index.php','url',1,89,0,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(92,'mainmenu','Preset Style 2','preset-style-2-mainmenu-92','http://www.shape5.com/demo/hosticity/ex2/index.php','url',1,89,0,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(93,'mainmenu','Preset Style 3','preset-style-3-mainmenu-93','http://www.shape5.com/demo/hosticity/ex3/index.php','url',1,89,0,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(94,'mainmenu','Preset Style 4','preset-style-4-mainmenu-94','http://www.shape5.com/demo/hosticity/ex4/index.php','url',1,89,0,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(95,'mainmenu','Preset Style 5','preset-style-5-mainmenu-95','http://www.shape5.com/demo/hosticity/ex5/index.php','url',1,89,0,0,6,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(96,'mainmenu','Preset Style 6','preset-style-6-mainmenu-96','http://www.shape5.com/demo/hosticity/ex6/index.php','url',1,89,0,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\nshow_title=1\nshow_page_title=1\n',0,0,0),(97,'mainmenu','Thông Tin','thong-tin','index.php?option=com_content&view=article&id=5','component',1,0,20,0,9,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(98,'mainmenu','Liên hệ','lien-h','index.php?option=com_contact&view=contact&id=1','component',1,97,7,1,1,0,'0000-00-00 00:00:00',0,0,0,0,'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0);
/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu_types`
--

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS */;
INSERT INTO `jos_menu_types` VALUES (1,'mainmenu','mainmenu',''),(2,'othermenu','othermenu',''),(3,'sub','sub',''),(4,'topmenu','topmenu',''),(5,'usermenu','usermenu','');
/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages`
--

LOCK TABLES `jos_messages` WRITE;
/*!40000 ALTER TABLE `jos_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages_cfg`
--

LOCK TABLES `jos_messages_cfg` WRITE;
/*!40000 ALTER TABLE `jos_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_migration_backlinks`
--

DROP TABLE IF EXISTS `jos_migration_backlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_migration_backlinks`
--

LOCK TABLES `jos_migration_backlinks` WRITE;
/*!40000 ALTER TABLE `jos_migration_backlinks` DISABLE KEYS */;
INSERT INTO `jos_migration_backlinks` VALUES (1,'Home','index.php?option=com_frontpage&Itemid=1','index.php?option=com_frontpage&Itemid=1',''),(2,'News','index.php?option=com_content&task=section&id=1&Itemid=2','index.php?option=com_content&task=section&id=1&Itemid=2',''),(3,'Contact Us','index.php?option=com_contact&Itemid=3','index.php?option=com_contact&Itemid=3',''),(23,'Links','index.php?option=com_weblinks&Itemid=23','index.php?option=com_weblinks&Itemid=23',''),(5,'Search','index.php?option=com_search&Itemid=5','index.php?option=com_search&Itemid=5',''),(6,'Joomla! License','index.php?option=com_content&task=view&id=5&Itemid=6','index.php?option=com_content&task=view&id=5&Itemid=6',''),(7,'News Feeds','index.php?option=com_newsfeeds&Itemid=7','index.php?option=com_newsfeeds&Itemid=7',''),(8,'Wrapper','index.php?option=com_wrapper&Itemid=8','index.php?option=com_wrapper&Itemid=8',''),(9,'Blog','index.php?option=com_content&task=blogsection&id=0&Itemid=9','index.php?option=com_content&task=blogsection&id=0&Itemid=9',''),(10,'Joomla! Home','http://www.joomla.org','http://www.joomla.org',''),(11,'Joomla! Forums','http://forum.joomla.org','http://forum.joomla.org',''),(12,'OSM Home','http://www.opensourcematters.org','http://www.opensourcematters.org',''),(24,'Administrator','administrator/','administrator/',''),(21,'Your Details','index.php?option=com_user&task=UserDetails&Itemid=21','index.php?option=com_user&task=UserDetails&Itemid=21',''),(13,'Submit News','index.php?option=com_content&task=new&sectionid=1&Itemid=0','index.php?option=com_content&task=new&sectionid=1&Itemid=0',''),(14,'Submit WebLink','index.php?option=com_weblinks&task=new&Itemid=14','index.php?option=com_weblinks&task=new&Itemid=14',''),(15,'Check-In My Items','index.php?option=com_user&task=CheckIn&Itemid=15','index.php?option=com_user&task=CheckIn&Itemid=15',''),(16,'Logout','index.php?option=com_login&Itemid=16','index.php?option=com_login&Itemid=16',''),(17,'Home','index.php','index.php',''),(18,'Contact Us','index.php?option=com_contact&Itemid=3','index.php?option=com_contact&Itemid=3',''),(19,'News','index.php?option=com_content&task=section&id=1&Itemid=2','index.php?option=com_content&task=section&id=1&Itemid=2',''),(20,'Links','index.php?option=com_weblinks&Itemid=23','index.php?option=com_weblinks&Itemid=23',''),(25,'FAQs','index.php?option=com_content&task=category&sectionid=3&id=7&Itemid=25','index.php?option=com_content&task=category&sectionid=3&id=7&Itemid=25',''),(26,'Joomla Stuff','javascript:;','javascript:;',''),(27,'Typography','index.php?option=com_content&task=view&id=12&Itemid=27','index.php?option=com_content&task=view&id=12&Itemid=27',''),(28,'S5 No-MooMenu','index.php?option=com_content&task=view&id=13&Itemid=28','index.php?option=com_content&task=view&id=13&Itemid=28',''),(29,'Fading Effect Example','http://www.shape5.com/demo/hosticity/ex2/index.php','ex2/index.php',''),(30,'Drop In Effect Example','http://www.shape5.com/demo/hosticity/index.php','index.php',''),(31,'Standard Suckerfish Example','http://www.shape5.com/demo/hosticity/ex3/index.php','ex3/index.php',''),(32,'Dummy Item','javascript:;','javascript:;',''),(33,'Dummy Item','javascript:;','javascript:;',''),(34,'Dummy Item','javascript:;','javascript:;',''),(35,'Dummy Item','javascript:;','javascript:;',''),(36,'Dummy Item','javascript:;','javascript:;',''),(37,'Dummy Item','javascript:;','javascript:;',''),(38,'Dummy Item','javascript:;','javascript:;',''),(39,'Dummy Item','javascript:;','javascript:;',''),(40,'Dummy Item','javascript:;','javascript:;',''),(41,'Dummy Item','javascript:;','javascript:;',''),(42,'Home','index.php?option=com_frontpage&Itemid=42','index.php?option=com_frontpage&Itemid=42',''),(43,'Contact Us','index.php?option=com_contact&Itemid=43','index.php?option=com_contact&Itemid=43',''),(44,'Search','index.php?option=com_search&Itemid=44','index.php?option=com_search&Itemid=44',''),(45,'About Us','javascript:;','javascript:;',''),(46,'FAQs','index.php?option=com_content&task=category&sectionid=3&id=7&Itemid=25','index.php?option=com_content&task=category&sectionid=3&id=7&Itemid=25',''),(47,'Features','javascript:;','javascript:;',''),(48,'Tutorials','javascript:;','javascript:;',''),(49,'20 Modules and 13 Styles!','index.php?option=com_content&task=view&id=14&Itemid=49','index.php?option=com_content&task=view&id=14&Itemid=49',''),(50,'42 Module Styles','index.php?option=com_content&task=view&id=14&Itemid=50','index.php?option=com_content&task=view&id=14&Itemid=50',''),(51,'30 Preset Styles or Custom!','index.php?option=com_content&task=view&id=15&Itemid=51','index.php?option=com_content&task=view&id=15&Itemid=51',''),(52,'S5 Tab Show Enabled','index.php?option=com_content&task=view&id=16&Itemid=52','index.php?option=com_content&task=view&id=16&Itemid=52',''),(53,'Installing The Template','index.php?option=com_content&task=view&id=17&Itemid=53','index.php?option=com_content&task=view&id=17&Itemid=53',''),(54,'Configuring The Template','index.php?option=com_content&task=view&id=18&Itemid=54','index.php?option=com_content&task=view&id=18&Itemid=54',''),(55,'LyteBox Setup','index.php?option=com_content&task=view&id=19&Itemid=55','index.php?option=com_content&task=view&id=19&Itemid=55',''),(56,'Setup Module Styles','index.php?option=com_content&task=view&id=14&Itemid=56','index.php?option=com_content&task=view&id=14&Itemid=56',''),(57,'Search & Bottom Menu Setup','index.php?option=com_content&task=view&id=20&Itemid=57','index.php?option=com_content&task=view&id=20&Itemid=57',''),(58,'Column Menu Setup','index.php?option=com_content&task=view&id=21&Itemid=58','index.php?option=com_content&task=view&id=21&Itemid=58',''),(59,'Easy To Follow Steps','index.php?option=com_content&task=view&id=22&Itemid=59','index.php?option=com_content&task=view&id=22&Itemid=59',''),(60,'S5 No-MooMenu','index.php?option=com_content&task=view&id=13&Itemid=60','index.php?option=com_content&task=view&id=13&Itemid=60',''),(61,'Horizontal Login Module','index.php?option=com_content&task=view&id=23&Itemid=61','index.php?option=com_content&task=view&id=23&Itemid=61',''),(62,'Horizontal Login Module','index.php?option=com_content&task=view&id=23&Itemid=62','index.php?option=com_content&task=view&id=23&Itemid=62',''),(63,'Create a Custom Color Style','index.php?option=com_content&task=view&id=15&Itemid=63','index.php?option=com_content&task=view&id=15&Itemid=63',''),(64,'S5 Tab Show Setup','index.php?option=com_content&task=view&id=16&Itemid=64','index.php?option=com_content&task=view&id=16&Itemid=64',''),(65,'Custom Page & Column Widths','index.php?option=com_content&task=view&id=24&Itemid=65','index.php?option=com_content&task=view&id=24&Itemid=65',''),(66,'Two Logo Options','index.php?option=com_content&task=view&id=25&Itemid=66','index.php?option=com_content&task=view&id=25&Itemid=66',''),(67,'S5 Ultimate Drop Down','index.php?option=com_content&task=view&id=26&Itemid=67','index.php?option=com_content&task=view&id=26&Itemid=67',''),(68,'2 Layout Options','index.php?option=com_content&task=view&id=27&Itemid=68','index.php?option=com_content&task=view&id=27&Itemid=68',''),(69,'No Script Conflictions!','index.php?option=com_content&task=view&id=28&Itemid=69','index.php?option=com_content&task=view&id=28&Itemid=69',''),(70,'LyteBox Enabled','index.php?option=com_content&task=view&id=19&Itemid=70','index.php?option=com_content&task=view&id=19&Itemid=70',''),(71,'Create Your Own Background','index.php?option=com_content&task=view&id=30&Itemid=71','index.php?option=com_content&task=view&id=30&Itemid=71',''),(72,'NEW! - S5 Frontpage Display','index.php?option=com_content&task=view&id=31&Itemid=72','index.php?option=com_content&task=view&id=31&Itemid=72',''),(73,'Contact Us','javascript:;','javascript:;',''),(74,'About Us','javascript:;','javascript:;',''),(75,'Terms','javascript:;','javascript:;',''),(76,'FAQs','javascript:;','javascript:;',''),(77,'Create Your Own Logo','index.php?option=com_content&task=view&id=30&Itemid=77','index.php?option=com_content&task=view&id=30&Itemid=77',''),(78,'S5 Box Enabled','index.php?option=com_content&task=view&id=35&Itemid=78','index.php?option=com_content&task=view&id=35&Itemid=78',''),(79,'S5 Box Setup','index.php?option=com_content&task=view&id=35&Itemid=79','index.php?option=com_content&task=view&id=35&Itemid=79',''),(80,'Search and Menus Setup','index.php?option=com_content&task=view&id=36&Itemid=80','index.php?option=com_content&task=view&id=36&Itemid=80',''),(81,'Take Two (Dark Version)','http://www.shape5.com/demo/forever_ace/taketwo/index.php','http://www.shape5.com/demo/forever_ace/taketwo/index.php',''),(82,'Tool Tips Setup','index.php?option=com_content&task=view&id=37&Itemid=82','index.php?option=com_content&task=view&id=37&Itemid=82',''),(83,'Tool Tips Enabled','index.php?option=com_content&task=view&id=37&Itemid=83','index.php?option=com_content&task=view&id=37&Itemid=83',''),(84,'NEW! S5 Domain Checker','index.php?option=com_content&task=view&id=38&Itemid=84','index.php?option=com_content&task=view&id=38&Itemid=84',''),(85,'NEW! S5 Habla Chat','index.php?option=com_content&task=view&id=38&Itemid=85','index.php?option=com_content&task=view&id=38&Itemid=85',''),(86,'S5 Habla Chat Setup','index.php?option=com_content&task=view&id=38&Itemid=86','index.php?option=com_content&task=view&id=38&Itemid=86',''),(87,'Site Shaper Available','index.php?option=com_content&task=view&id=39&Itemid=87','index.php?option=com_content&task=view&id=39&Itemid=87',''),(88,'Site Shaper Setup','index.php?option=com_content&task=view&id=39&Itemid=88','index.php?option=com_content&task=view&id=39&Itemid=88',''),(89,'Preset Styles & Dark','javascript:;','javascript:;',''),(90,'With A Dark Background','http://www.shape5.com/demo/hosticity/dark/index.php','dark/index.php',''),(91,'Preset Style 1','http://www.shape5.com/demo/hosticity/index.php','index.php',''),(92,'Preset Style 2','http://www.shape5.com/demo/hosticity/ex2/index.php','ex2/index.php',''),(93,'Preset Style 3','http://www.shape5.com/demo/hosticity/ex3/index.php','ex3/index.php',''),(94,'Preset Style 4','http://www.shape5.com/demo/hosticity/ex4/index.php','ex4/index.php',''),(95,'Preset Style 5','http://www.shape5.com/demo/hosticity/ex5/index.php','ex5/index.php',''),(96,'Preset Style 6','http://www.shape5.com/demo/hosticity/ex6/index.php','ex6/index.php','');
/*!40000 ALTER TABLE `jos_migration_backlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_migration_configuration`
--

DROP TABLE IF EXISTS `jos_migration_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_migration_configuration` (
  `cid` int(12) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_migration_configuration`
--

LOCK TABLES `jos_migration_configuration` WRITE;
/*!40000 ALTER TABLE `jos_migration_configuration` DISABLE KEYS */;
INSERT INTO `jos_migration_configuration` VALUES (1,'offline_message','This site is down for maintenance.<br /> Please check back again soon.'),(2,'sitename','Shape 5 Hosticity Demo'),(3,'debug','0'),(4,'MetaDesc','Joomla - the dynamic portal engine and content management system'),(5,'MetaKeys','Joomla, joomla'),(6,'MetaTitle','1'),(7,'MetaAuthor','1'),(8,'gzip','0'),(9,'editor','none'),(10,'smtpauth','0'),(11,'smtpuser',''),(12,'smtppass',''),(13,'smtphost','localhost'),(14,'sendmail','/usr/sbin/sendmail'),(15,'fromname','Shape 5 Hosticity Demo'),(16,'mailfrom','contact@shape5.com'),(17,'mailer','mail'),(18,'caching','0'),(19,'error_reporting','-1'),(20,'list_limit','30');
/*!40000 ALTER TABLE `jos_migration_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules`
--

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS */;
INSERT INTO `jos_modules` VALUES (1,'Main Menu','',0,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',1,0,''),(2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),(4,'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),(5,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),(6,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),(7,'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),(9,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),(10,'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(14,'User Status','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),(15,'Title','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),(16,'Polls','',10,'left',0,'0000-00-00 00:00:00',0,'mod_poll',0,0,1,'cache=0\nmoduleclass_sfx=',0,0,''),(17,'User Menu','',11,'left',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,1,1,'menutype=usermenu',1,0,''),(18,'Main Menu','',2,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'class_sfx=\nmoduleclass_sfx=\nmenutype=mainmenu\nmenu_style=vert_indent\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=',1,0,''),(19,'Login Form','',1,'s5_tab3',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'moduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\nlogin_message=0\nlogout_message=0\ngreeting=1\nname=0',1,0,''),(20,'Articles of Interest','',1,'user8',0,'0000-00-00 00:00:00',1,'mod_latestnews',0,0,1,'moduleclass_sfx=\ncache=0\ntype=1\nshow_front=1\ncount=5\ncatid=1\nsecid=1',1,0,''),(21,'Who\'s Online','',3,'user6',0,'0000-00-00 00:00:00',1,'mod_whosonline',0,0,1,'showmode=0\nmoduleclass_sfx=',0,0,''),(22,'Popular Items','',1,'user7',0,'0000-00-00 00:00:00',1,'mod_mostread',0,0,1,'moduleclass_sfx=\ncache=0\ntype=1\nshow_front=1\ncount=5\ncatid=\nsecid=',0,0,''),(23,'Archive','',13,'left',0,'0000-00-00 00:00:00',0,'mod_archive',0,0,1,'',1,0,''),(24,'Sections','',1,'s5_tab20',0,'0000-00-00 00:00:00',1,'mod_sections',0,0,1,'count=5\nmoduleclass_sfx=',1,0,''),(25,'Newsflash','',1,'top',0,'0000-00-00 00:00:00',0,'mod_newsflash',0,0,1,'catid=13\nstyle=random\nimage=0\nlink_titles=\nreadmore=0\nitem_title=0\nitems=3\ncache=0\nmoduleclass_sfx=',0,0,''),(26,'Related Items','',14,'left',0,'0000-00-00 00:00:00',0,'mod_related_items',0,0,1,'',0,0,''),(27,'Search','',1,'cpanel',0,'0000-00-00 00:00:00',1,'mod_search',0,0,0,'moduleclass_sfx=\ncache=0\nset_itemid=\nwidth=20\ntext=\nbutton=\nbutton_pos=right\nbutton_text=',0,0,''),(28,'Random Image','',2,'right',0,'0000-00-00 00:00:00',0,'mod_random_image',0,0,1,'',0,0,''),(29,'Top Menu','',1,'user3',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,0,0,'menutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0',1,0,''),(30,'Banners','',1,'banner',0,'0000-00-00 00:00:00',0,'mod_banners',0,0,0,'banner_cids=\nmoduleclass_sfx=',1,0,''),(31,'Other Menu','',1,'bottom',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,0,'class_sfx=-bottom\nmoduleclass_sfx=\nmenutype=othermenu\nmenu_style=list_flat\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=',0,0,''),(32,'Wrapper','',15,'left',0,'0000-00-00 00:00:00',0,'mod_wrapper',0,0,1,'',0,0,''),(33,'advert1','This is the default style for advert1, advert2, left and right.',1,'advert1',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(34,'left','This is the -blue style for advert1, advert2, left and right.',8,'left',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-blue\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(35,'left','This is the -green style for advert1, advert2, left and right.',6,'left',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-green\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(36,'left','This is the -red style for advert1, advert2, left and right.',7,'left',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-red\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(37,'left','This is the -grey style for advert1, advert2, left and right.',5,'left',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-grey\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(38,'right','This is the -no_border_white style for advert1, advert2, left and right.',3,'right',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-no_border_white\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(39,'right','This is the -no_border_red style for advert1, advert2, left and right.',7,'right',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-no_border_red\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(40,'right','This is the -no_border_blue style for advert1, advert2, left and right.',6,'right',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-no_border_blue\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(41,'right','This is the -no_border_green style for advert1, advert2, left and right.',5,'right',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-no_border_green\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(42,'right','This is the -no_border_grey style for advert1, advert2, left and right.',4,'right',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-no_border_grey\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(43,'advert2','This is the -boxed_grey style for advert1, advert2, left and right.',1,'advert2',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-boxed_grey\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(44,'advert2','This is the -boxed_color style for advert1, advert2, left and right.',2,'advert2',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-boxed_color\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(45,'left','This is the default style for advert1, advert2, left and right.',4,'left',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(46,'left','This is the -boxed_grey style for advert1, advert2, left and right.',3,'left',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-boxed_grey\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(47,'left','This is the -boxed_color style for advert1, advert2, left and right.',1,'left',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=-boxed_color\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(48,'legals','This is the default legals style.',1,'legals',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(49,'newsflash','This is the default newsflash style.',1,'newsflash',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(50,'footer','This is the default footer style.',1,'footer',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(51,'user6','This is the default user6 style.',1,'user6',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(52,'user7','This is the default user7 style.',2,'user7',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(53,'user8','This is the default user8 style.',2,'user8',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(54,'top','top position',3,'top',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(55,'Banner1','<img src=\"http://www.shape5.com/demo/hosticity/images/s5_banner1.png\" alt=\"\" style=\"width:625px; height:152px; padding:0px; margin:0px\"></img>',1,'s5_fs_1',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(56,'Banner1','<img src=\"http://www.shape5.com/demo/hosticity/images/s5_banner1.png\" alt=\"\" style=\"width:625px; height:152px; padding:0px; margin:0px\"></img>',1,'s5_fs_3',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(57,'Banner2','<img src=\"http://www.shape5.com/demo/hosticity/images/s5_banner2.png\" alt=\"\" style=\"width:625px; height:152px; padding:0px; margin:0px\"></img>',1,'s5_fs_2',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(58,'Banner2','<img src=\"http://www.shape5.com/demo/hosticity/images/s5_banner2.png\" alt=\"\" style=\"width:625px; height:152px; padding:0px; margin:0px\"></img>',1,'s5_fs_4',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(59,'S5 Tab Show Is A Great Addition To Your Site!','<strong>The S5 Tab Show is a great way to organize your site\'s content with a clean and professional display!</strong>\r\n\r\nWith the ability to use up to 20 tabs you will never run out of tabs again and each page can have its own unique tabs!\r\n\r\n<br /><br />\r\n\r\nHere\'s how it works - The S5 Tab Show uses 20 modules positions: s5_tab1, s5_tab2, s5_tab3, etc. Simply publish your module to any one of these module positions (you may publish to the same position more than once for multiple modules in one tab). In the module manager assign what page you want that module to show on. If the module is set to show on a certain page it\'s tab will also show on that page.\r\n\r\n<br /><br />\r\n\r\nAn example of this can be seen on this page. The modules on this page are assigned to positions: s5_tab1 - 5 and are assigned to this page only. You may use the other tab module positions to create a unique set of tabs on each page.',1,'s5_tab1',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(60,'World Class Service!','Take some time to read what our members \r\nare saying about Shape 5...\r\n<a target=\"_top\" href=\"http://www.shape5.com/component/option,com_smf/Itemid,75/board,17.0\">\r\nclick here</a>!\r\n<br /><br />',2,'user6',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(61,'S5 Box - Learn How To Create Multiple Links On Multiple Pages','To make the S5 Box visible simply publish any module to the \'toolbar\' position and make sure the title is set to shown.\r\n<br /><br />\r\nThe link that opens the box is created by the title of the module published inside of it. This means you can have multiple links on multiple pages. Simply assign each module\'s page through the module manager and have different modules on different pages published to the \'toolbar\' position. Our script will take care of the rest and dynamically pull the title of each module to be the link to open the S5 Box. For example the title of the module you are currently reading is \"S5 Box - Learn How To Create Multiple Links On Multiple Pages\" and is published to this page.\r\n<br /><br />Note - Internet Explorer 6 and 7 do not support the shadow around this box, a dark border is in it\'s place for these browsers.',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(62,'Dedicated Server','<img src=\"http://www.shape5.com/demo/hosticity/images/dedicated.png\" alt=\"\" style=\"width:912px; height:97px; padding:0px; margin:0px; margin-left:10px; margin-bottom:15px\"></img>',3,'user2',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(63,'S5 Effects','<div style=\"background-image:url(http://www.shape5.com/demo/hosticity/images/s5effects.png); background-repeat:no-repeat; background-position:top left; padding-left:107px; height:55px; padding-top:15px\">Having trouble with modules and or components conflicting with your template? Hosticity is completely powered by S5 Effects, our own home grown script that we write from scratch! This means you are guaranteed to experience no script conflictions with any modules or components you may be using on your website.</div>',2,'legals',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(64,'This is the toolbar position','This is the default toolbar position. Simply publish any module to the toolbar position to make the S5 Box appear.',2,'toolbar',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(65,'user2','This is the default user2 style.\r\n<br /><br />',0,'user2',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(66,'user3','This is the default user3 style.',2,'user3',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(67,'user4','This is the default user4 style.',1,'user4',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(68,'user5','This is the default user5 style.',2,'user5',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\ncache=0\nfirebots=1\nrssurl=\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\nrsscache=3600',0,0,''),(69,'sub','',2,'user1',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'class_sfx=-sub\nmoduleclass_sfx=\nmenutype=sub\nmenu_style=list_flat\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=',0,0,''),(70,'Breadcrumbs','',0,'breadcrumb',0,'0000-00-00 00:00:00',1,'mod_breadcrumbs',0,0,1,'showHome=1\nhomeText=Home\nshowLast=1\nseparator=\nmoduleclass_sfx=\ncache=0\n\n',1,0,''),(73,'S5 Habla Chat','',0,'top',0,'0000-00-00 00:00:00',1,'mod_s5_habla_chat',0,0,1,'moduleclass_sfx=\nhablaid=\n\n',0,0,''),(75,'S5 Domain Check','',0,'left',0,'0000-00-00 00:00:00',1,'mod_s5_domain_check',0,0,1,'moduleclass_sfx=-blue\npretext=\nlabel=Domain Name\nbuttontext=Check Domain\ncheckall=Check All Domain Types\nresulttext=Result\n\n',0,0,''),(76,'S5 Frontpage Slide','',2,'user2',0,'0000-00-00 00:00:00',1,'mod_s5_frontpageslide',0,0,0,'pretext=\nmoduleclass_sfx=\ns5_buttoncolumnwidth=220px\ns5_width=915px\ns5_height=150px\ns5_buttonheight=30px\ns5_lineheight=2.2em\ns5_buttoncolor=transparent\ns5_buttonimage=modules/s5_frontpageslide/repeatback.jpg\ns5_hovercolor=#FFFFFF\ns5_hoverimage=modules/s5_frontpageslide/arrow.jpg\ns5_fontcolor=#000000\ns5_shadows=1\ns5_aligncolumn=left\ns5_javascript=mootools\ns5_mootoolsmouse=mouse\ns5_effectsani=fade\ns5_effectmouse=mouse\ntext1line=# 1 Platinum Hosting Package\ntext1image=\ntext2line=# 2 Deluxe Hosting Package\ntext2image=\ntext3line=# 3 Reseller Hosting Package\ntext3image=\ntext4line=# 4 Value Hosting Package\ntext4image=\ntext5line=\ntext5image=\ntext6line=\ntext6image=\ntext7line=\ntext7image=\ntext8line=\ntext8image=\ntext9line=\ntext9image=\ntext10line=\ntext10image=\n\n',0,0,''),(77,'Language Selection','',-1,'user4',0,'0000-00-00 00:00:00',1,'mod_jflanguageselection',0,0,0,'',0,0,''),(78,'Direct Translation','',0,'status',0,'0000-00-00 00:00:00',1,'mod_translate',0,2,0,'',0,1,'');
/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules_menu`
--

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS */;
INSERT INTO `jos_modules_menu` VALUES (1,2),(1,3),(1,5),(1,7),(1,8),(1,23),(1,25),(16,1),(16,42),(17,0),(18,2),(18,3),(18,5),(18,7),(18,17),(18,23),(18,25),(18,26),(18,27),(18,42),(18,43),(18,44),(18,45),(18,48),(18,84),(18,85),(18,86),(19,52),(19,64),(20,1),(20,2),(20,3),(20,5),(20,7),(20,8),(20,17),(20,23),(20,25),(20,26),(20,27),(20,28),(20,29),(20,30),(20,31),(20,32),(20,33),(20,34),(20,35),(20,36),(20,37),(20,38),(20,42),(20,43),(20,44),(20,45),(20,47),(20,48),(20,52),(20,53),(20,54),(20,55),(20,59),(20,64),(20,65),(20,70),(20,73),(20,74),(20,75),(20,76),(20,77),(20,78),(20,79),(20,80),(20,82),(20,83),(20,84),(20,85),(20,86),(20,87),(20,88),(21,1),(21,2),(21,3),(21,5),(21,7),(21,8),(21,17),(21,23),(21,25),(21,26),(21,27),(21,28),(21,42),(21,43),(21,44),(21,45),(21,52),(21,53),(21,54),(21,55),(21,59),(21,64),(21,65),(21,70),(21,73),(21,74),(21,75),(21,76),(21,77),(21,78),(21,79),(21,80),(21,82),(21,83),(21,84),(21,85),(21,86),(21,87),(21,88),(22,1),(22,2),(22,3),(22,5),(22,7),(22,8),(22,17),(22,23),(22,25),(22,26),(22,27),(22,28),(22,29),(22,30),(22,31),(22,32),(22,33),(22,34),(22,35),(22,36),(22,37),(22,38),(22,42),(22,43),(22,44),(22,45),(22,47),(22,48),(22,52),(22,53),(22,54),(22,55),(22,59),(22,64),(22,65),(22,70),(22,73),(22,74),(22,75),(22,76),(22,77),(22,78),(22,79),(22,80),(22,82),(22,83),(22,84),(22,85),(22,86),(22,87),(22,88),(24,52),(24,64),(25,1),(25,2),(25,3),(25,5),(25,7),(25,8),(25,17),(25,23),(25,25),(25,26),(25,27),(25,28),(25,29),(25,30),(25,31),(25,42),(25,43),(25,44),(25,45),(25,47),(25,52),(25,53),(25,54),(25,55),(25,56),(25,59),(25,64),(25,65),(25,68),(25,70),(25,71),(25,72),(25,73),(25,74),(25,75),(25,76),(27,0),(29,0),(30,0),(31,0),(33,49),(33,56),(34,49),(34,56),(35,49),(35,56),(36,49),(36,56),(37,49),(37,56),(38,49),(38,56),(39,49),(39,56),(40,49),(40,56),(41,49),(41,56),(42,49),(42,56),(43,49),(43,56),(44,49),(44,56),(45,49),(45,56),(46,49),(46,56),(47,49),(47,56),(48,49),(48,56),(49,49),(49,56),(50,49),(50,56),(51,49),(51,56),(52,49),(52,56),(53,49),(53,56),(54,49),(55,0),(56,0),(57,0),(58,0),(59,52),(60,1),(60,2),(60,3),(60,5),(60,7),(60,8),(60,17),(60,23),(60,25),(60,26),(60,27),(60,28),(60,29),(60,30),(60,31),(60,32),(60,33),(60,34),(60,35),(60,36),(60,37),(60,38),(60,42),(60,43),(60,44),(60,45),(60,47),(60,48),(60,52),(60,53),(60,54),(60,55),(60,59),(60,64),(60,65),(60,70),(60,77),(60,78),(60,79),(60,80),(60,82),(60,83),(60,84),(60,85),(60,86),(60,87),(60,88),(61,78),(62,1),(62,42),(63,1),(63,42),(64,49),(64,56),(65,49),(65,56),(66,49),(66,56),(67,49),(67,56),(68,49),(68,56),(69,0),(70,0),(73,0),(75,1),(76,1),(77,0);
/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_newsfeeds`
--

LOCK TABLES `jos_newsfeeds` WRITE;
/*!40000 ALTER TABLE `jos_newsfeeds` DISABLE KEYS */;
INSERT INTO `jos_newsfeeds` VALUES (4,1,'Joomla! - Official News','joomla-official-news','http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1','',1,5,3600,0,'0000-00-00 00:00:00',8,0),(4,2,'Joomla! - Community News','joomla-community-news','http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33','',1,5,3600,0,'0000-00-00 00:00:00',9,0),(10,4,'Linux Today','linux-today','http://linuxtoday.com/backend/my-netscape.rdf','',1,3,3600,0,'0000-00-00 00:00:00',1,0),(5,5,'Business News','business-news','http://headlines.internet.com/internetnews/bus-news/news.rss','',1,3,3600,0,'0000-00-00 00:00:00',2,0),(11,6,'Web Developer News','web-developer-news','http://headlines.internet.com/internetnews/wd-news/news.rss','',1,3,3600,0,'0000-00-00 00:00:00',3,0),(10,7,'Linux Central:New Products','linux-centralnew-products','http://linuxcentral.com/backend/lcnew.rdf','',1,3,3600,0,'0000-00-00 00:00:00',4,0),(10,8,'Linux Central:Best Selling','linux-centralbest-selling','http://linuxcentral.com/backend/lcbestns.rdf','',1,3,3600,0,'0000-00-00 00:00:00',5,0),(10,9,'Linux Central:Daily Specials','linux-centraldaily-specials','http://linuxcentral.com/backend/lcspecialns.rdf','',1,3,3600,0,'0000-00-00 00:00:00',6,0),(9,10,'Internet:Finance News','internetfinance-news','http://headlines.internet.com/internetnews/fina-news/news.rss','',1,3,3600,0,'0000-00-00 00:00:00',7,0);
/*!40000 ALTER TABLE `jos_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_plugins`
--

DROP TABLE IF EXISTS `jos_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_plugins`
--

LOCK TABLES `jos_plugins` WRITE;
/*!40000 ALTER TABLE `jos_plugins` DISABLE KEYS */;
INSERT INTO `jos_plugins` VALUES (1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(6,'Search - Content','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),(7,'Search - Contacts','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(8,'Search - Categories','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(9,'Search - Sections','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(13,'Content - Rating','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE 2.0','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,0,'0000-00-00 00:00:00',''),(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),(27,'System - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),(28,'System - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(29,'System - Legacy','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),(30,'System - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),(31,'System - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(33,'System - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(34,'System - Mootools Upgrade','mtupgrade','system',0,0,0,0,0,0,'0000-00-00 00:00:00',''),(35,'System - jfdatabase','jfdatabase','system',0,-100,1,0,0,0,'0000-00-00 00:00:00',''),(36,'System - jfrouter','jfrouter','system',0,-101,1,0,0,0,'0000-00-00 00:00:00',''),(37,'Content - jfalternative','jfalternative','content',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(38,'Search - jfcategories','jfcategories','search',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(39,'Search - jfcontacts','jfcontacts','search',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(40,'Search - jfcontent','jfcontent','search',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(41,'Search - jfnewsfeeds','jfnewsfeeds','search',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(42,'Search - jfsections','jfsections','search',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(43,'Search - jfweblinks','jfweblinks','search',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(44,'Joomfish - Missing_translation','missing_translation','joomfish',0,0,1,0,0,62,'2012-04-21 04:35:44',''),(45,'Editor - JoomlaCK','jckeditor','editors',0,0,1,0,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_data`
--

DROP TABLE IF EXISTS `jos_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_data`
--

LOCK TABLES `jos_poll_data` WRITE;
/*!40000 ALTER TABLE `jos_poll_data` DISABLE KEYS */;
INSERT INTO `jos_poll_data` VALUES (18,15,'',0),(17,15,'',0),(16,15,'Clean and Professional Look',0),(15,15,'All The Module Styles',0),(14,15,'The Multiple Color Themes',0),(13,15,'S5 Box With Drop In Effect',0),(19,15,'',0),(20,15,'',0),(21,15,'',0),(22,15,'',0),(23,15,'',0),(24,15,'',0);
/*!40000 ALTER TABLE `jos_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_date`
--

DROP TABLE IF EXISTS `jos_poll_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_date`
--

LOCK TABLES `jos_poll_date` WRITE;
/*!40000 ALTER TABLE `jos_poll_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_menu`
--

DROP TABLE IF EXISTS `jos_poll_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_menu`
--

LOCK TABLES `jos_poll_menu` WRITE;
/*!40000 ALTER TABLE `jos_poll_menu` DISABLE KEYS */;
INSERT INTO `jos_poll_menu` VALUES (15,1),(15,42);
/*!40000 ALTER TABLE `jos_poll_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_polls`
--

DROP TABLE IF EXISTS `jos_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_polls`
--

LOCK TABLES `jos_polls` WRITE;
/*!40000 ALTER TABLE `jos_polls` DISABLE KEYS */;
INSERT INTO `jos_polls` VALUES (15,'I like the....','i-like-the',0,0,'0000-00-00 00:00:00',1,0,86400);
/*!40000 ALTER TABLE `jos_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sections`
--

DROP TABLE IF EXISTS `jos_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_sections`
--

LOCK TABLES `jos_sections` WRITE;
/*!40000 ALTER TABLE `jos_sections` DISABLE KEYS */;
INSERT INTO `jos_sections` VALUES (1,'News','The News','news','articles.jpg','content','right','Select a news topic from the list below, then select a news article to read.',1,0,'0000-00-00 00:00:00',1,0,1,''),(2,'Newsflashes','Newsflashes','newsflashes','','content','left','',1,0,'0000-00-00 00:00:00',2,0,2,''),(3,'FAQs','Frequently Asked Questions','faqs','pastarchives.jpg','content','left','From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.',1,0,'0000-00-00 00:00:00',2,0,1,'');
/*!40000 ALTER TABLE `jos_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_session`
--

DROP TABLE IF EXISTS `jos_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_session`
--

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS */;
INSERT INTO `jos_session` VALUES ('','1335005677','7hg2gb3gk8f8okqaeua82k4jg6',1,0,'',0,1,'__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1335005675;s:18:\"session.timer.last\";i:1335005675;s:17:\"session.timer.now\";i:1335005675;s:22:\"session.client.browser\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.162 Safari/535.19\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:65:\"/opt/lampp/htdocs/joomla2/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"d4851b9dabaa65cd9d623be708b35043\";}'),('admin','1335010404','quqc7fek90t7ivmbqe71fql9b6',0,62,'Super Administrator',25,1,'__default|a:10:{s:15:\"session.counter\";i:61;s:19:\"session.timer.start\";i:1335005675;s:18:\"session.timer.last\";i:1335008882;s:17:\"session.timer.now\";i:1335010404;s:22:\"session.client.browser\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.162 Safari/535.19\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:4:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:10:\"com_cpanel\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:9:\"mtupgrade\";O:8:\"stdClass\":1:{s:7:\"checked\";b:1;}}}s:9:\"com_menus\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:6:\"Tam Vo\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:20:\"vo.mita.ov@gmail.com\";s:8:\"password\";s:65:\"ff11a5050a6f5011bb279fc477133463:37N9gYQ6GV1vGWxP4agM7eSfjA7CBqZ1\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2007-12-01 14:06:50\";s:13:\"lastvisitDate\";s:19:\"2012-04-21 10:54:14\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:79:\"editor=\nexpired=\nexpired_time=\nadmin_language=\nlanguage=\nhelpsite=\ntimezone=0\n\n\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:65:\"/opt/lampp/htdocs/joomla2/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":7:{s:6:\"editor\";s:0:\"\";s:7:\"expired\";s:0:\"\";s:12:\"expired_time\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:1:\"0\";}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"d4851b9dabaa65cd9d623be708b35043\";s:10:\"jckplugins\";a:30:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:4:\"core\";s:4:\"name\";s:3:\"env\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:4:\"core\";s:4:\"name\";s:10:\"index.html\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:4:\"core\";s:4:\"name\";s:5:\"tools\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:19:\"allvideosparameters\";}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:6:\"client\";}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:10:\"index.html\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:6:\"option\";}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:8:\"override\";}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:10:\"parameters\";}i:9;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:13:\"sigparameters\";}i:10;O:8:\"stdClass\":2:{s:4:\"type\";s:4:\"core\";s:4:\"name\";s:3:\"env\";}i:11;O:8:\"stdClass\":2:{s:4:\"type\";s:4:\"core\";s:4:\"name\";s:10:\"index.html\";}i:12;O:8:\"stdClass\":2:{s:4:\"type\";s:4:\"core\";s:4:\"name\";s:5:\"tools\";}i:13;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:19:\"allvideosparameters\";}i:14;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:6:\"client\";}i:15;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:10:\"index.html\";}i:16;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:6:\"option\";}i:17;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:8:\"override\";}i:18;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:10:\"parameters\";}i:19;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:13:\"sigparameters\";}i:20;O:8:\"stdClass\":2:{s:4:\"type\";s:4:\"core\";s:4:\"name\";s:3:\"env\";}i:21;O:8:\"stdClass\":2:{s:4:\"type\";s:4:\"core\";s:4:\"name\";s:10:\"index.html\";}i:22;O:8:\"stdClass\":2:{s:4:\"type\";s:4:\"core\";s:4:\"name\";s:5:\"tools\";}i:23;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:19:\"allvideosparameters\";}i:24;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:6:\"client\";}i:25;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:10:\"index.html\";}i:26;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:6:\"option\";}i:27;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:8:\"override\";}i:28;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:10:\"parameters\";}i:29;O:8:\"stdClass\":2:{s:4:\"type\";s:6:\"editor\";s:4:\"name\";s:13:\"sigparameters\";}}s:9:\"jckoption\";s:11:\"com_content\";}'),('','1335010408','314d321574b1d33cf5e229bef129a165',1,0,'',0,0,'__default|a:9:{s:15:\"session.counter\";i:18;s:19:\"session.timer.start\";i:1335005846;s:18:\"session.timer.last\";i:1335008949;s:17:\"session.timer.now\";i:1335010408;s:22:\"session.client.browser\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.162 Safari/535.19\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:5:\"vi-VN\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:65:\"/opt/lampp/htdocs/joomla2/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"60da548b632dc5ba7aaa4cd68d3d60e5\";s:16:\"com_mailto.links\";a:2:{s:40:\"d8ebfa7bb593d9bc353d2c0dacebd31ae243cd2a\";O:8:\"stdClass\":2:{s:4:\"link\";s:117:\"http://localhost/joomla2/index.php?option=com_content&view=article&id=5%3Ajoomla-license-guidelines&Itemid=97&lang=vi\";s:6:\"expiry\";i:1335006674;}s:40:\"038d2c3bf0ccb1222ea6f128c3fa5c93b01266d5\";O:8:\"stdClass\":2:{s:4:\"link\";s:120:\"http://localhost/joomla2/index.php?option=com_content&view=article&id=12%3Atypography&catid=1%3Alatest&Itemid=27&lang=vi\";s:6:\"expiry\";i:1335008950;}}}'),('','1335059105','brv5hou6iin0dabcg2g71ui2k7',1,0,'',0,1,'__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1335059102;s:18:\"session.timer.last\";i:1335059102;s:17:\"session.timer.now\";i:1335059102;s:22:\"session.client.browser\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.162 Safari/535.19\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:65:\"/opt/lampp/htdocs/joomla2/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"738f504cfe40910e33051f9b83428863\";}'),('admin','1335059345','cq68pp7jqn5esev3msa6en1nn7',0,62,'Super Administrator',25,1,'__default|a:8:{s:15:\"session.counter\";i:8;s:19:\"session.timer.start\";i:1335059102;s:18:\"session.timer.last\";i:1335059345;s:17:\"session.timer.now\";i:1335059345;s:22:\"session.client.browser\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.162 Safari/535.19\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:3:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:10:\"com_cpanel\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:9:\"mtupgrade\";O:8:\"stdClass\":1:{s:7:\"checked\";b:1;}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:6:\"Tam Vo\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:20:\"vo.mita.ov@gmail.com\";s:8:\"password\";s:65:\"ff11a5050a6f5011bb279fc477133463:37N9gYQ6GV1vGWxP4agM7eSfjA7CBqZ1\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2007-12-01 14:06:50\";s:13:\"lastvisitDate\";s:19:\"2012-04-21 10:54:37\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:79:\"editor=\nexpired=\nexpired_time=\nadmin_language=\nlanguage=\nhelpsite=\ntimezone=0\n\n\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:65:\"/opt/lampp/htdocs/joomla2/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":7:{s:6:\"editor\";s:0:\"\";s:7:\"expired\";s:0:\"\";s:12:\"expired_time\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:1:\"0\";}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"738f504cfe40910e33051f9b83428863\";}');
/*!40000 ALTER TABLE `jos_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_stats_agents`
--

DROP TABLE IF EXISTS `jos_stats_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_stats_agents`
--

LOCK TABLES `jos_stats_agents` WRITE;
/*!40000 ALTER TABLE `jos_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_templates_menu`
--

DROP TABLE IF EXISTS `jos_templates_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_templates_menu`
--

LOCK TABLES `jos_templates_menu` WRITE;
/*!40000 ALTER TABLE `jos_templates_menu` DISABLE KEYS */;
INSERT INTO `jos_templates_menu` VALUES ('hosticity',0,0),('joomla_admin',0,1);
/*!40000 ALTER TABLE `jos_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_users`
--

DROP TABLE IF EXISTS `jos_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_users`
--

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS */;
INSERT INTO `jos_users` VALUES (62,'Tam Vo','admin','vo.mita.ov@gmail.com','ff11a5050a6f5011bb279fc477133463:37N9gYQ6GV1vGWxP4agM7eSfjA7CBqZ1','Super Administrator',0,1,25,'2007-12-01 14:06:50','2012-04-22 01:45:06','','editor=\nexpired=\nexpired_time=\nadmin_language=\nlanguage=\nhelpsite=\ntimezone=0\n\n');
/*!40000 ALTER TABLE `jos_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_weblinks`
--

LOCK TABLES `jos_weblinks` WRITE;
/*!40000 ALTER TABLE `jos_weblinks` DISABLE KEYS */;
INSERT INTO `jos_weblinks` VALUES (1,2,0,'Joomla!','joomla','http://www.joomla.org','Home of Joomla!','2005-02-14 15:19:02',137,1,0,'0000-00-00 00:00:00',1,0,1,'target=0'),(2,2,0,'php.net','phpnet','http://www.php.net','The language that Joomla! is developed in','2004-07-07 11:33:24',131,1,0,'0000-00-00 00:00:00',3,0,1,''),(3,2,0,'MySQL','mysql','http://www.mysql.com','The database that Joomla! uses','2004-07-07 10:18:31',137,1,0,'0000-00-00 00:00:00',5,0,1,''),(4,2,0,'OpenSourceMatters','opensourcematters','http://www.opensourcematters.org','Home of OSM','2005-02-14 15:19:02',125,1,0,'0000-00-00 00:00:00',1,0,1,'target=0'),(5,2,0,'Joomla! - Forums','joomla-forums','http://forum.joomla.org','Joomla! Forums','2005-02-14 15:19:02',139,1,0,'0000-00-00 00:00:00',1,0,1,'target=0');
/*!40000 ALTER TABLE `jos_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `jos_jf_languages`
--

/*!50001 DROP TABLE IF EXISTS `jos_jf_languages`*/;
/*!50001 DROP VIEW IF EXISTS `jos_jf_languages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jos_jf_languages` AS select `l`.`lang_id` AS `lang_id`,`l`.`lang_code` AS `lang_code`,`l`.`title` AS `title`,`l`.`title_native` AS `title_native`,`l`.`sef` AS `sef`,`l`.`description` AS `description`,`l`.`published` AS `published`,`l`.`image` AS `image`,`lext`.`image_ext` AS `image_ext`,`lext`.`fallback_code` AS `fallback_code`,`lext`.`params` AS `params`,`lext`.`ordering` AS `ordering` from (`jos_languages` `l` left join `jos_jf_languages_ext` `lext` on((`l`.`lang_id` = `lext`.`lang_id`))) order by `lext`.`ordering` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-04-22  8:52:05
