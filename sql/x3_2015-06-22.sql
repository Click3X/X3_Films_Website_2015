# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.33)
# Database: x3
# Generation Time: 2015-06-22 19:30:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `category_name`)
VALUES
	(1,'project'),
	(2,'featured');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  `href` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;

INSERT INTO `links` (`id`, `label`, `href`)
VALUES
	(1,'iTunes','https://itunes.apple.com/us/app/vfiles-smashion!/id932517078?mt=8'),
	(2,'Google Play','https://play.google.com/store/apps/details?id=com.vfiles.smashion&hl=en'),
	(4,'Visit Site','http://bcacampaign.com/'),
	(5,'Visit Site','http://staging.click3x.com/kmart/kmart_shoppable-video/'),
	(6,'Visit Site','http://www.peanutbutter.com/yippee/funbutton/index.php'),
	(8,'Visit Site','http://www.gamut.media/'),
	(9,'VFILES','http://vfiles.com'),
	(10,'Visit Site','http://holidays.click3x.com/2014/'),
	(11,'Visit Site','http://www.energyupgradeca.org/en/see-whats-new-and-fun/campaigns/at-home-with-bear'),
	(12,'Visit Site','http://www.munchkin.com');

/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `filename` varchar(100) DEFAULT NULL,
  `media_type_id` int(2) DEFAULT NULL,
  `href` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;

INSERT INTO `media` (`id`, `title`, `description`, `filename`, `media_type_id`, `href`)
VALUES
	(1,NULL,NULL,'wendys_header',1,NULL),
	(2,NULL,NULL,'gamut_header',1,NULL),
	(3,NULL,NULL,'skippy_yippie_header',1,NULL),
	(4,NULL,NULL,'smashion_header',1,NULL),
	(5,NULL,NULL,'bca_header',1,NULL),
	(6,NULL,NULL,'lowes_vines_header',1,NULL),
	(7,NULL,NULL,'kmart_video_header',1,NULL),
	(8,NULL,NULL,'gazprom_header',1,NULL),
	(9,NULL,NULL,'Gazprom_Casestudy',2,NULL),
	(13,NULL,NULL,'Wendys_CS',2,NULL),
	(19,NULL,NULL,'roxy_header',1,NULL),
	(21,NULL,NULL,'7forAllmankind_header',1,NULL),
	(22,NULL,NULL,'Amtrak_header',1,NULL),
	(23,NULL,NULL,'Armorall_header',1,NULL),
	(26,NULL,NULL,'Chaps_header',1,NULL),
	(27,NULL,NULL,'ChevySonic_header',1,NULL),
	(28,NULL,NULL,'Daffys_header',1,NULL),
	(29,NULL,NULL,'davidb_header',1,NULL),
	(30,NULL,NULL,'Dennys_header',1,NULL),
	(33,NULL,NULL,'Google_header',1,NULL),
	(36,NULL,NULL,'HeardCity_header',1,NULL),
	(37,NULL,NULL,'HM_header',1,NULL),
	(38,NULL,NULL,'ManVSFood_header',1,NULL),
	(39,NULL,NULL,'munchkin_header',1,NULL),
	(40,NULL,NULL,'NineWest_header',1,NULL),
	(42,NULL,NULL,'Pedigree_header',1,NULL),
	(43,NULL,NULL,'SailorJerry_header',1,NULL),
	(44,NULL,NULL,'uniqlo_header',1,NULL),
	(47,NULL,NULL,'att2_header',1,NULL),
	(48,NULL,NULL,'Wendys_ANTHEM_BBQ_YT',2,NULL),
	(51,'View Vine',NULL,'lowes/Beaver',1,'https://vine.co/v/Oi3ZEv97OFD'),
	(52,'View Vine',NULL,'lowes/Bookshelve',1,'https://vine.co/v/OiMvMmqQjYL'),
	(53,'View Vine',NULL,'lowes/Car_Boost',1,'https://vine.co/v/OemVrD16KdO'),
	(54,'View Vine',NULL,'lowes/Firepit',1,'https://vine.co/v/Oe2wXF9diHF'),
	(55,'View Vine',NULL,'lowes/Goggles',1,'https://vine.co/v/OO3uaW3xKPM'),
	(56,'View Vine',NULL,'lowes/MC_ESCHER',1,'https://vine.co/v/OOUuiYHDITX'),
	(57,'View Vine',NULL,'lowes/Popcorn',1,'https://vine.co/v/OeJ00I62gDq'),
	(58,'View Vine',NULL,'lowes/Puff',1,'https://vine.co/v/Oiz6hZjvvnH'),
	(59,'View Vine',NULL,'lowes/Ring_Of_Fire',1,' https://vine.co/v/OiFHAJ7OqEF'),
	(60,'View Vine',NULL,'lowes/Santa',1,'https://vine.co/v/OepxZiKUue3'),
	(61,'View Vine',NULL,'lowes/Space_Invader',1,'https://vine.co/v/O5KWXxVKiea'),
	(67,NULL,NULL,'wendys/tumblr_2',3,NULL),
	(68,NULL,NULL,'wendys/tumblr_3',3,NULL),
	(70,NULL,NULL,'wendys/tumblr_5',3,NULL),
	(75,'View Vine',NULL,'lowes/Flashlight',1,'https://vine.co/v/OiFHAJ7OqEF'),
	(79,NULL,NULL,'ARMORALL_CS',2,NULL),
	(88,NULL,NULL,'google_demoSlam',2,NULL),
	(89,NULL,NULL,'GoogleBanners3',2,NULL),
	(101,NULL,NULL,'ZyrtecHeader',1,NULL),
	(105,NULL,NULL,'Verizon_header-2',1,NULL),
	(109,NULL,NULL,'HolidayCard',1,NULL),
	(118,NULL,NULL,'EUC_header',1,NULL),
	(119,NULL,NULL,'Parliament_header_2',1,NULL),
	(123,NULL,NULL,'Geico_piggy_header',1,NULL),
	(124,NULL,NULL,'7ForAllMankind_CS_CFM_2015',2,NULL),
	(134,NULL,NULL,'Amtrak_Holiday_CS_CFM_2015',2,NULL),
	(135,NULL,NULL,'Chaps_Banners_CS_CFM_2015',2,NULL),
	(136,NULL,NULL,'Daffys_BirthdayCandle_CS_CFM_2015',2,NULL),
	(137,NULL,NULL,'Gamut_CS_CFM_2015',2,NULL),
	(138,NULL,NULL,'GEICO_BROSTACHE_FAT_BOTTOM_CFM_2015',2,NULL),
	(141,NULL,NULL,'Holiday_Card_2014_CS_CFM_2015',2,NULL),
	(142,NULL,NULL,'KMART_CS_CFM_2015',2,NULL),
	(143,NULL,NULL,'Lowes_Vines_CS_CFM_2015',2,NULL),
	(144,NULL,NULL,'ManVFood_App_CS_CFM_2015',2,NULL),
	(145,NULL,NULL,'Pedigree_Woofer_CS_CFM_2015',2,NULL),
	(146,NULL,NULL,'Roxy_Dare_CS_CFM_2015',2,NULL),
	(154,NULL,NULL,'Uniqlo_GifBox_CS_CFM_2015',2,NULL),
	(155,NULL,NULL,'VFILES_Smashion_CS_CFM_2015',2,NULL),
	(156,NULL,NULL,'Vice_Electrified_CS_CFM_2015',2,NULL),
	(157,NULL,NULL,'mufe_header2',1,NULL),
	(164,NULL,NULL,'MUFE_CS_CFM_2015',2,NULL),
	(165,NULL,NULL,'Zyrtec_Banners_CS_CFM_2015',2,NULL),
	(166,NULL,NULL,'H&M_BeConscious_CS_CFM_2015',2,NULL),
	(167,NULL,NULL,'HeardCity_CS_CFM_2015',2,NULL),
	(168,NULL,NULL,'sharp_header',1,NULL),
	(171,NULL,NULL,'Sharp_Aquos_CS_CFM_2015',2,NULL),
	(172,NULL,NULL,'Sharp_Facebook_CS_CFM_2015',2,NULL),
	(174,NULL,NULL,'CFM_ADVERTISING_REEL_CS_CFM_2015',2,NULL),
	(175,NULL,NULL,'Welcome_to_VFILES_1',2,NULL),
	(176,NULL,NULL,'BCA_BTS_CS_CFM_2015',2,NULL),
	(177,NULL,NULL,'BCA_Trailer_CFM_2015',2,NULL),
	(178,NULL,NULL,'SKIPPY_ART_CS_CFM_2015',2,NULL),
	(179,NULL,NULL,'Skippy_FunButton_CS_CFM_2015',2,NULL),
	(180,NULL,NULL,'skippy/SkippyYippee-Button-CFM-RainbowHorse',3,NULL),
	(181,NULL,NULL,'skippy/SkippyYippee-Button-CFM-Moto',3,NULL),
	(182,NULL,NULL,'skippy/SkippyYippee-Button-CFM-GoKarts',3,NULL),
	(183,NULL,NULL,'ATT_Elements_CS_CFM_2015',2,NULL),
	(185,NULL,NULL,'ATT_Flickkick_CS_CFM_2015',2,NULL),
	(186,NULL,NULL,'Sailor_Jerry_Tatoos_CS_CFM_2015',2,NULL),
	(187,NULL,NULL,'Verizon_Holiday_CS_CFM_2015',2,NULL),
	(188,NULL,NULL,'chevy_sonic',2,NULL);

/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;

INSERT INTO `media_types` (`id`, `media_type_name`)
VALUES
	(1,'jpg'),
	(2,'video'),
	(3,'gif'),
	(4,'png');

/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table module_category_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `module_category_lu`;

CREATE TABLE `module_category_lu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_Id` int(4) DEFAULT NULL,
  `category_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `module_category_lu` WRITE;
/*!40000 ALTER TABLE `module_category_lu` DISABLE KEYS */;

INSERT INTO `module_category_lu` (`id`, `module_Id`, `category_id`)
VALUES
	(1,1,2),
	(2,2,2),
	(3,3,2),
	(4,1,1),
	(5,2,1),
	(6,3,1),
	(7,4,1);

/*!40000 ALTER TABLE `module_category_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table module_media_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `module_media_lu`;

CREATE TABLE `module_media_lu` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(4) DEFAULT NULL,
  `media_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `module_media_lu` WRITE;
/*!40000 ALTER TABLE `module_media_lu` DISABLE KEYS */;

INSERT INTO `module_media_lu` (`id`, `module_id`, `media_id`)
VALUES
	(1,1,1),
	(2,2,2),
	(3,3,3),
	(4,4,4),
	(5,5,5),
	(6,6,6),
	(7,7,7),
	(8,8,8),
	(9,9,9),
	(13,13,13),
	(19,19,19),
	(21,21,21),
	(22,22,22),
	(23,23,23),
	(26,26,26),
	(27,27,27),
	(28,28,28),
	(29,29,29),
	(30,30,30),
	(33,33,33),
	(36,36,36),
	(37,37,37),
	(38,38,38),
	(39,39,39),
	(40,40,40),
	(42,42,42),
	(43,43,43),
	(44,44,44),
	(47,47,47),
	(48,56,48),
	(56,52,67),
	(57,52,68),
	(59,52,70),
	(63,55,51),
	(64,55,52),
	(65,55,53),
	(66,55,54),
	(67,55,55),
	(68,55,56),
	(69,55,57),
	(70,55,58),
	(71,55,59),
	(72,55,60),
	(73,55,61),
	(75,55,75),
	(79,61,79),
	(88,70,88),
	(89,71,89),
	(101,83,101),
	(105,87,105),
	(109,91,109),
	(118,100,118),
	(119,101,119),
	(123,105,123),
	(124,106,124),
	(134,110,134),
	(135,111,135),
	(136,112,136),
	(137,113,137),
	(138,114,138),
	(141,117,141),
	(142,118,142),
	(143,119,143),
	(144,120,144),
	(145,121,145),
	(146,122,146),
	(154,130,154),
	(155,131,155),
	(156,132,156),
	(157,133,157),
	(164,138,164),
	(165,139,165),
	(166,140,166),
	(167,141,167),
	(168,142,168),
	(171,145,171),
	(172,146,172),
	(174,148,174),
	(175,149,175),
	(176,150,176),
	(177,151,177),
	(178,152,178),
	(179,153,179),
	(180,154,180),
	(181,154,181),
	(182,154,182),
	(183,155,183),
	(185,157,185),
	(186,158,186),
	(187,159,187),
	(188,160,188);

/*!40000 ALTER TABLE `module_media_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table module_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `module_types`;

CREATE TABLE `module_types` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `module_type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `module_types` WRITE;
/*!40000 ALTER TABLE `module_types` DISABLE KEYS */;

INSERT INTO `module_types` (`id`, `module_type_name`)
VALUES
	(1,'banner-image'),
	(2,'banner-video'),
	(3,'detail-left'),
	(4,'detail-right'),
	(5,'gallery');

/*!40000 ALTER TABLE `module_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_type_id` int(2) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `subhead` varchar(200) DEFAULT NULL,
  `gif_thumb` varchar(200) DEFAULT NULL,
  `poster` varchar(200) DEFAULT NULL,
  `video_filename` varchar(200) DEFAULT NULL,
  `blurb` varchar(400) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;

INSERT INTO `modules` (`id`, `module_type_id`, `title`, `heading`, `subhead`, `gif_thumb`, `poster`, `video_filename`, `blurb`, `description`)
VALUES
	(1,1,'Boost Energy Running','Adidas','Commercial','adidas_boost_energy_running',NULL,'running',NULL,NULL),
	(2,1,'Scorecard','Dick\'s Sporting Goods','Commercial - Branded Content','dicks_scorecard',NULL,'scorecard',NULL,NULL),
	(3,1,'Get Fresh','Footlocker','Branded Content','footlocker_get_fresh',NULL,'getfresh',NULL,NULL),
	(4,1,'Evolution','Nike','Commercial','nike_evolution',NULL,NULL,NULL,NULL),
	(5,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(19,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(22,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(23,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(26,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(27,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(28,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(29,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(30,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(33,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(36,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(37,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(38,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(39,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(40,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table people
# ------------------------------------------------------------

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `profile_img` varchar(200) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;

INSERT INTO `people` (`id`, `name`, `title`, `description`, `profile_img`, `order`)
VALUES
	(1,'Peter Corbett','President/ Partner','Having enjoyed a remarkable career as an advertising agency creative and commercial director, Peter Corbett founded Click 3X in 1993. In 1995, Peter founded Media Circus (later renamed IllusionFusion!) one of the first interactive companies. 1997 brought yet another innovative company to fruition when Peter co-founded Sound Lounge, a company that has since become one of the pre-eminent audio post production companies in the country. Peter\'s awards include several Cannes Lions, Clios and The Crystal Apple Award from the City of New York for his contributions to the film industry. In 2007, Peter supervised the launch of ClickFire Media, which he continues to manage.','peter',NULL),
	(2,'Jason Tordsen','Director of Interactive Technology','A founding member of the ClickFire Media team, Jason has headed our fantastic development team from the beginning. In that time, Jason has been responsible for multiple FWA awards as well as a slew of innovative apps involving APIs, mobile applications, proprietary platforms...you name it.','jasont',NULL),
	(3,'Wen Zhang','Interactive Technologist','Prior to joining Click 3X as an Interactive Technologist, Wen was earning her Masters Degree from Columbia University and graduated in 2014. \nWen was a web developer in Columbia Web Office and freelanced for web projects in NYC. She has experience in front-end development and UI/UX design for websites and mobile apps. She was also a technology instructor and digital marketer before coming to Click full-time. Her enthusiasm, dedication, and hard work have found her success in various projects. \nWen loves singing and playing guitar, and she spends her free time creating game-based learning and cross-cultural game apps.','wen',NULL),
	(4,'Charles Davis','Developer','Often described as a \'neo-renaissance\' man, Charles Davis was originally a musician and artist before discovering a passion for programming and becoming an Interactive Developer at Click Fire Media.\nA classically trained fine artist since childhood, Charles attended the School of the Art Institute of Chicago before dropping out to join a touring punk band. For the next decade he wrote and recorded original music featured in several TV productions including MTV\'s \'Jersey Shore\', \'Viva La Bam\', and \'Real World\'.\nA decision to return to education yielded positive results as Charles discovered an untapped passion for programming for the web while earning his Bachelor\'s degree from Hunter College. His passion turned into an obsession as he progressed from building simple websites to fully dynamic applications. A creative problem solver in the digital and physical realm, the ability to code enabled Charles to independently handle a creative challenge from start to launch.\nHis ability to understand the creative process in multiple mediums and translate it into fully interactive experiences make him an asset at Click Fire Media.','charles',NULL),
	(5,'Matt Wilber','Senior Developer','Matt is a web application and multimedia software developer, focusing on usability and front-end user interface design. Working from Ruther Glen, Virginia as a Senior Developer for Click, Matt specializes in PHP, C#.Net, Javascript, Graphic Design, research and development- to name a few. He has a keen interest in exploring new technologies and adapting them to his work. Matt started as a production assistant with Hearst Business Communications in 1996. For four years, Matt worked in GIS developing mapping systems for the US Army through Northrop Grumman. He had also worked as a Freelance Web Technology Specialist with both IsoCurve and Click 3x before coming on with Click full time.','mattw',NULL),
	(6,'Ephraim Kehlmann','Head of Interactive Production','For two decades, Ephraim has worked at the forefront of multimedia production for clients including MT, Lucent, Disney, Showtime and General Electric. As a interactive producer, Ephraim has a broad range of experience including website construction, e-commerce implementation, search engine optimization, banner advertising, flash animation and programming, game development, as well as photography, video and sound production. As a producer, Ephraim focuses on fostering a collaborative work environment that builds on the skills and creativity of the team to provide pragmatic, innovative design and production solutions.','ephraim',NULL),
	(7,'Jie Chen','Senior Digital Producer','Chen joins Click 3X with more than five years of interactive agency experience producing technology-inspired marketing solutions for global brands. Previously, she was a digital producer at Firstborn Multimedia, working on projects such as developing iOS and Android apps for Kraft Foods and multi-language responsive site design and development for Walt Disney Parks and Resorts.','jie',NULL),
	(8,'Shelley Russell','Senior Digital Producer','Prior to joining the Click 3X team, Shelley worked as a digital producer at Tiffany & Co. She has experience in managing a broad scope of projects including social media, Web site redesigns and mobile apps. Shelley?s passion for digital marketing has found her success in various projects due to her enthusiasm, dedication and highly organized nature.\nShelley has a Master?s degree in Interactive Media from Elon University. Outside of digital marketing, Shelley has a love for working out, playing the piano, singing a capella, and participating in pretty much any kind of synchronized song and dance.','shelley',NULL);

/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_category_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_category_lu`;

CREATE TABLE `project_category_lu` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(4) DEFAULT NULL,
  `category_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_category_lu` WRITE;
/*!40000 ALTER TABLE `project_category_lu` DISABLE KEYS */;

INSERT INTO `project_category_lu` (`id`, `project_id`, `category_id`)
VALUES
	(1,1,2),
	(3,3,2),
	(4,1,1),
	(5,2,1),
	(6,3,1),
	(7,4,1),
	(8,5,1),
	(9,6,1),
	(10,7,1),
	(11,8,1);

/*!40000 ALTER TABLE `project_category_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_link_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_link_lu`;

CREATE TABLE `project_link_lu` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(4) DEFAULT NULL,
  `link_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_link_lu` WRITE;
/*!40000 ALTER TABLE `project_link_lu` DISABLE KEYS */;

INSERT INTO `project_link_lu` (`id`, `project_id`, `link_id`)
VALUES
	(1,4,1),
	(2,4,2),
	(3,5,4),
	(4,7,5),
	(5,3,6),
	(6,2,8),
	(7,4,9),
	(8,45,10),
	(9,41,11),
	(10,30,12);

/*!40000 ALTER TABLE `project_link_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_module_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_module_lu`;

CREATE TABLE `project_module_lu` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(4) DEFAULT NULL,
  `module_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_module_lu` WRITE;
/*!40000 ALTER TABLE `project_module_lu` DISABLE KEYS */;

INSERT INTO `project_module_lu` (`id`, `project_id`, `module_id`)
VALUES
	(1,1,1),
	(2,1,2),
	(3,1,3),
	(4,1,4);

/*!40000 ALTER TABLE `project_module_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `subhead` varchar(200) DEFAULT NULL,
  `blurb` varchar(4000) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `thumbnail_image` varchar(50) DEFAULT NULL,
  `client_logo` varchar(50) DEFAULT NULL,
  `published` varchar(8) DEFAULT 'on',
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;

INSERT INTO `projects` (`id`, `order`, `slug`, `title`, `heading`, `subhead`, `blurb`, `description`, `thumbnail_image`, `client_logo`, `published`, `date_created`)
VALUES
	(1,2,'manny-bernardez','Manny Bernardez',NULL,NULL,'I will only show you this much. To see more, click more.','Manny Description: Like all good things, BBQ is the God-given right of every red-blooded American. Click 3X partnered with agency VML to produce a 360 campaign based on a tongue-in-cheek PSA: Americans needed “BBQ Accessibility,” the goal being to raise awareness of Wendy’s unparalleled BBQ Pulled Pork.','manny',NULL,'on','2015-04-09 18:54:57'),
	(2,5,'noella-borie','Noella Borie',NULL,NULL,NULL,'Noella Borie Description: To transfer a new brand vision into reality, ClickFire Media partnered with CO-OP Marketing to rebrand COX Digital Solutions and craft them a new website. The fully responsive site performs flawlessly across platforms and includes a robust CMS, coded to make managing content a seamless experience. Using cutting-edge CSS3 techniques, the site implements parallax scrolling without the use of Javascript, ensuring a smooth visual effect across all modern browsers.','noella',NULL,'on','2015-04-06 16:54:57'),
	(3,6,'robert-boocheck','Robert Boocheck',NULL,NULL,NULL,'Robert Boocheck: For this tasty challenge, Click 3X, ClickFire Media and BBDO Minneapolis came together to create the Skippy Yippee! experience — a broadcast and interactive campaign that allows users to spread joyful ‘yippee!’ moments across the digital universe. In a nutshell, the goal was to communicate the unlimited fun and variety found in every jar of our favorite peanut butter brand, Skippy.\n\nTo begin, our team directed and produced the :15 and :30 second national television spot demonstrating the peanut selection process — that only the fun peanuts make it into a jar of Skippy Peanut Butter. Custom illustration, animation, and seamless integration with live action footage, brought these unique and fun 3D peanut characters to life.\n\nTo further support the campaign, as the first of a two-phase launch, the Skippy “Yippee!” interactive experience was implemented across the peanutbutter.com website, Rich Media ad units and iADs to ensure the same happy experience across all digital devices and platforms. Our team of interactive Animators and Producers at ClickFire Media and BBDO Minneapolis created over 50 unique GIFs that were launched at the click of a “Fun Button.” Animation was shot in-house, making for a lively two weeks in our studios as our creative teams set about creating one colorful yippee! moment after another to spread happiness across the universe by clicking the “Fun Button.”\n\nA tracking counter even allowed users to see how many “Yippee!” moments were being spread in real time across the universe. But most importantly, over 14,000,000 \'yippee moments\' were spread throughout our universe thanks to this campaign.\n\nFor Phase two, we helped our friends launch Skippy Art, a virtual drawing tool with peanut butter for your canvas that challenges people to create the ultimate peanut butter masterpiece.  In order to mimic the real-life gooey effect of drawing in peanut butter, our team tirelessly experimented with texture, color, depth and the angle of each stroke to come up with the ultimate virtual peanut butter drawing experience.  Just like a good PB&J for lunch, this art is meant for sharing, which is possible now through the Skippy Art Gallery and social media channels. \n\nDesigned to be a responsive mobile-first web application, the Skippy Art experience is built on an adaptive screen-size layout, allowing our team to employ the same code base across multiple platforms and offer the same website experience on Rich Media and iAD units. Behind the scenes we also developed a custom admin tool to help the client manage gallery content and built additional software to record the drawing process for each artwork that was then used in the Rich Media banner unit animations. \n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Skippy\n<span class=\"description-label\">Credits:</span>BBDO Minneapolis, Click3X, and ClickFire Media \n<span class=\"description-label\">Platforms:</span>Broadcast, Digital and Media','robert',NULL,'on','2015-04-09 17:54:57'),
	(4,4,'cary-jon','Cary + Jon',NULL,NULL,NULL,'Cary+Jon: What chic sophisticate hasn’t fantasized about donning a fashionable frock on the runway to compete with top models? In order to bring that dream to fruition, we worked with the VFILES team, provided concepting, game logic, animation and cross-platform application development to ensure a gaming experience stylish enough to live up to the VFILES brand. \n\nJust like the big names in Haute Couture, the goal for players is to compete on the runways of four major city’s fashion weeks. Featuring immersive storytelling and addictive gameplay, the app—built for iOS and Android devices—delivers a compelling challenge in either landscape or portrait orientation.\n</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>VFILES \n<span class=\"description-label\">Credits:</span>Raison D’Être and ClickFire Media\n<span class=\"description-label\">Platforms:</span> Mobile — iOS and Android','caryjon',NULL,'on','2015-04-05 16:54:57'),
	(5,3,'damien-drake','Damien Drake',NULL,NULL,NULL,'Damien Drake: In 2014 we were challenged by our client The Estée Lauder Companies to create a 360 campaign that would inspire audiences to join the important conversation about breast cancer awareness.\n\nOur response was to leverage the power of storytelling across the digital and social landscape, by amplifying video content and tailoring the topics of conversation to connect to a wider audience. With the call-to-action: “Hear our stories. Share yours,” Click3x Director Jonathan Yi and ClickFire Media brought together individuals, their families and supporters to capture a two-way conversation. Through authentic narrative and hours of moving footage, audiences learned that cancer is not a solitary struggle; it affects us all. The hours of moving footage led to the creation of a campaign trailer and 27-minute documentary.\n\nUsers around the world visited the responsive BCACampaign.com website, built ground up with consistent performance from mobile to desktop. It was then translated into 15 different languages, to share stories, photos, videos and opinions resulting in an aggregated live feed that engaged a global audience. The resulting metrics were astounding - 1,000,000 YouTube views, 2,000,000 social media impressions, and 16,000 moments of engagement demonstrating the power of storytelling to transcend space, time and location.\n</p>\n\n<p class=\'credits\'>\n<span class=\'description-label\'>Client:</span>The Estée Lauder Companies\n<span class=\'description-label\'>Credits:</span>Raison D’Être, Click3X and ClickFire Media\n<span class=\'description-label\'>Platforms:</span>Broadcast, Print, Digital and Social Media','damien',NULL,'on','2015-04-04 16:54:57'),
	(6,1,'jetpacks-go','Jetpacks go!',NULL,NULL,NULL,'Jetpacks go: 12 videos. 13.5 million loops. That’s what happens when you put Click 3X, 3 top Viners, and the Lowe’s brand in a room together.\n\nBBDO wanted to promote Lowe’s Black Friday Sales and gave Click 3X two weeks to do it. We paired our in-house live action and animation teams with 3 of the nation’s top Viners, tasking them to create premium shareable experiences with high production values, that fully exploited the stop-motion capabilities of the Vine platforms.\n\nAt our NYC studios, these two very different groups swapped technique and inspiration. The best of our experienced teams’ original ideas and expertise in production, combined with the irreverence of media-savvy millennials, that generated impressions and fresh new content.\n\nThe 12 spots that resulted became the most popular Lowe’s Vine campaign to date and have now been looped more than 13.5 million times.\n</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>LOWE\'S\n<span class=\"description-label\">Credits:</span>BBDO, Click3X and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet, Mobile and Social Media - Vine','jetpacks',NULL,'on','2015-04-03 16:54:57'),
	(7,7,'kezia','Kezia',NULL,NULL,NULL,'Kezia description','kezia',NULL,'on','2015-04-02 16:54:57'),
	(8,8,'daniel-powell','Daniel Powell',NULL,NULL,NULL,'Daniel Description','daniel',NULL,'on','2015-04-01 16:54:57'),
	(9,9,'jonathan-yi','Jonathan Yi',NULL,NULL,NULL,'Jonathan Yi Description','jonathan',NULL,'on','2015-04-01 15:54:57');

/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
