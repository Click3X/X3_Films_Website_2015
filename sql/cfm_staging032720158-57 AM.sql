# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 69.25.178.3 (MySQL 5.0.95)
# Database: cfm_staging
# Generation Time: 2015-03-27 12:57:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table asset_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_types`;

CREATE TABLE `asset_types` (
  `id` int(2) unsigned NOT NULL auto_increment,
  `asset_type_name` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `asset_types` WRITE;
/*!40000 ALTER TABLE `asset_types` DISABLE KEYS */;

INSERT INTO `asset_types` (`id`, `asset_type_name`)
VALUES
	(1,'banner-image'),
	(2,'banner-video'),
	(3,'detail-left'),
	(4,'detail-right'),
	(5,'gallery');

/*!40000 ALTER TABLE `asset_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `id` int(4) unsigned NOT NULL auto_increment,
  `asset_type_id` int(2) default NULL,
  `title` varchar(100) default NULL,
  `heading` varchar(100) default NULL,
  `subhead` varchar(200) default NULL,
  `blurb` varchar(400) default NULL,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;

INSERT INTO `assets` (`id`, `asset_type_id`, `title`, `heading`, `subhead`, `blurb`, `description`)
VALUES
	(1,1,NULL,NULL,NULL,NULL,NULL),
	(2,1,NULL,NULL,NULL,NULL,NULL),
	(3,1,NULL,NULL,NULL,NULL,NULL),
	(4,1,NULL,NULL,NULL,NULL,NULL),
	(5,1,NULL,NULL,NULL,NULL,NULL),
	(6,1,NULL,NULL,NULL,NULL,NULL),
	(7,1,NULL,NULL,NULL,NULL,NULL),
	(8,1,NULL,NULL,NULL,NULL,NULL),
	(9,2,NULL,NULL,NULL,NULL,NULL),
	(10,2,NULL,NULL,NULL,NULL,NULL),
	(11,2,'Watch Trailer',NULL,NULL,NULL,NULL),
	(12,2,NULL,NULL,NULL,NULL,NULL),
	(13,2,NULL,NULL,NULL,NULL,NULL),
	(14,2,NULL,NULL,NULL,NULL,NULL),
	(15,1,NULL,NULL,NULL,NULL,NULL),
	(16,2,NULL,NULL,NULL,NULL,NULL),
	(17,1,NULL,NULL,NULL,NULL,NULL),
	(18,2,NULL,NULL,'HTML5 Website Experience',NULL,NULL),
	(19,1,NULL,NULL,NULL,NULL,NULL),
	(20,2,NULL,NULL,NULL,NULL,NULL),
	(21,1,NULL,NULL,NULL,NULL,NULL),
	(22,1,NULL,NULL,NULL,NULL,NULL),
	(23,1,NULL,NULL,NULL,NULL,NULL),
	(26,1,NULL,NULL,NULL,NULL,NULL),
	(27,1,NULL,NULL,NULL,NULL,NULL),
	(28,1,NULL,NULL,NULL,NULL,NULL),
	(29,1,NULL,NULL,NULL,NULL,NULL),
	(30,1,NULL,NULL,NULL,NULL,NULL),
	(32,1,NULL,NULL,NULL,NULL,NULL),
	(33,1,NULL,NULL,NULL,NULL,NULL),
	(36,1,NULL,NULL,NULL,NULL,NULL),
	(37,1,NULL,NULL,NULL,NULL,NULL),
	(38,1,NULL,NULL,NULL,NULL,NULL),
	(39,1,NULL,NULL,NULL,NULL,NULL),
	(40,1,NULL,NULL,NULL,NULL,NULL),
	(42,1,NULL,NULL,NULL,NULL,NULL),
	(43,1,NULL,NULL,NULL,NULL,NULL),
	(44,1,NULL,NULL,NULL,NULL,NULL),
	(47,1,NULL,NULL,NULL,NULL,NULL),
	(50,2,NULL,NULL,'Facebook Application',NULL,NULL),
	(51,5,'Yippee Giffs',NULL,'Yippee! GIFS',NULL,NULL),
	(52,5,'Wendy\'s Gifs',NULL,'The GIFs',NULL,NULL),
	(54,2,'',NULL,NULL,NULL,NULL),
	(55,5,'Lowe\'s Vines','','The Vines',NULL,''),
	(56,2,'Watch The Spot',NULL,'BBQ Accessibility',NULL,NULL),
	(57,3,NULL,NULL,NULL,NULL,'Navigate the highly competitive gaming category to develop VFILES’ first game. Charged with leading all creative, we were tasked with developing an addictive game that not only required a complementary identity to the VFILES brand, but maintained industry relevance and incorporated innovative storytelling.'),
	(58,2,'Watch Video',NULL,'About VFILES',NULL,NULL),
	(59,2,'',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table assets_media_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets_media_lu`;

CREATE TABLE `assets_media_lu` (
  `id` int(4) unsigned NOT NULL auto_increment,
  `asset_id` int(4) default NULL,
  `media_id` int(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `assets_media_lu` WRITE;
/*!40000 ALTER TABLE `assets_media_lu` DISABLE KEYS */;

INSERT INTO `assets_media_lu` (`id`, `asset_id`, `media_id`)
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
	(10,10,10),
	(11,11,11),
	(12,12,12),
	(13,13,13),
	(14,14,14),
	(15,15,15),
	(16,16,16),
	(17,17,17),
	(18,18,18),
	(19,19,19),
	(20,20,20),
	(21,21,21),
	(22,22,22),
	(23,23,23),
	(26,26,26),
	(27,27,27),
	(28,28,28),
	(29,29,29),
	(30,30,30),
	(32,32,32),
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
	(49,58,49),
	(50,50,50),
	(51,51,62),
	(53,51,64),
	(54,51,65),
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
	(74,54,74),
	(75,55,75),
	(76,57,76),
	(77,59,77);

/*!40000 ALTER TABLE `assets_media_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `category_name` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
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
  `id` int(4) unsigned NOT NULL auto_increment,
  `label` varchar(50) default NULL,
  `href` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;

INSERT INTO `links` (`id`, `label`, `href`)
VALUES
	(1,'iTunes','https://itunes.apple.com/us/app/vfiles-smashion!/id932517078?mt=8'),
	(2,'Google Play','https://play.google.com/store/apps/details?id=com.vfiles.smashion&hl=en'),
	(4,'Visit Site','http://bcacampaign.com/'),
	(5,'See Experience','http://staging.click3x.com/kmart/kmart_shoppable-video/'),
	(6,'Visit Site','http://www.peanutbutter.com/yippee/funbutton/index.php'),
	(8,'Visit Site','http://www.gamut.media/'),
	(9,'VFILES','http://vfiles.com');

/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(4) unsigned NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `description` text,
  `filename` varchar(100) default NULL,
  `media_type_id` int(2) default NULL,
  `href` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
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
	(10,NULL,NULL,'VFILES_CS_FINAL',2,NULL),
	(11,NULL,NULL,'BCA2014_Trailer_Final',2,NULL),
	(12,NULL,NULL,'Skippy_Case_Study',2,NULL),
	(13,NULL,NULL,'Wendys_CS',2,NULL),
	(14,NULL,NULL,'gamut',2,NULL),
	(15,NULL,NULL,'mufe_header',1,NULL),
	(16,NULL,NULL,'CFM_CS_MUFE',2,NULL),
	(17,NULL,NULL,'sharp_header',1,NULL),
	(18,NULL,NULL,'sharp_experience',2,NULL),
	(19,NULL,NULL,'roxy_header',1,NULL),
	(20,NULL,NULL,'CFM_Roxy_CS',2,NULL),
	(21,NULL,NULL,'7forAllmankind_header',2,NULL),
	(22,NULL,NULL,'Amtrak_header',2,NULL),
	(23,NULL,NULL,'Armorall_header',2,NULL),
	(26,NULL,NULL,'Chaps_header',2,NULL),
	(27,NULL,NULL,'ChevySonic_header',2,NULL),
	(28,NULL,NULL,'Daffys_header',2,NULL),
	(29,NULL,NULL,'davidb_header',2,NULL),
	(30,NULL,NULL,'Dennys_header',2,NULL),
	(31,NULL,NULL,'Durex_header',2,NULL),
	(32,NULL,NULL,'EUC_header',2,NULL),
	(33,NULL,NULL,'Google_header',2,NULL),
	(34,NULL,NULL,'Geico_piggy_header',2,NULL),
	(35,NULL,NULL,'Geico_ventriloquist_header',2,NULL),
	(36,NULL,NULL,'HeardCity_header',2,NULL),
	(37,NULL,NULL,'HM_header',2,NULL),
	(38,NULL,NULL,'ManVSFood_header',2,NULL),
	(39,NULL,NULL,'munchkin_header',2,NULL),
	(40,NULL,NULL,'NineWest_header',2,NULL),
	(41,NULL,NULL,'Parliament_header',2,NULL),
	(42,NULL,NULL,'Pedigree_header',2,NULL),
	(43,NULL,NULL,'SailorJerry_header',2,NULL),
	(44,NULL,NULL,'uniqlo_header',2,NULL),
	(45,NULL,NULL,'Verizon_header',1,NULL),
	(46,NULL,NULL,'Zyrtec',1,NULL),
	(47,NULL,NULL,'att2_header',1,NULL),
	(48,NULL,NULL,'Wendys_ANTHEM_BBQ_YT',2,NULL),
	(49,NULL,NULL,'Welcome_to_VFILES_1',2,NULL),
	(50,NULL,NULL,'SharpAppv4_final',2,NULL),
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
	(62,NULL,NULL,'skippy/Cat',3,NULL),
	(64,NULL,NULL,'skippy/Lettering_Color',3,NULL),
	(65,NULL,NULL,'skippy/Pineappleparty',3,NULL),
	(67,NULL,NULL,'wendys/tumblr_2',3,NULL),
	(68,NULL,NULL,'wendys/tumblr_3',3,NULL),
	(70,NULL,NULL,'wendys/tumblr_5',3,NULL),
	(74,NULL,NULL,'Lowes_Case_Study',2,NULL),
	(75,'View Vine',NULL,'lowes/Flashlight',1,'https://vine.co/v/OiFHAJ7OqEF'),
	(76,NULL,NULL,'vfiles_description-detail',1,NULL),
	(77,NULL,NULL,'kmart',NULL,NULL);

/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(2) unsigned NOT NULL auto_increment,
  `media_type_name` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
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


# Dump of table projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL auto_increment,
  `order` int(11) default NULL,
  `slug` varchar(50) default NULL,
  `title` varchar(100) default NULL,
  `heading` varchar(200) default NULL,
  `subhead` varchar(200) default NULL,
  `blurb` varchar(500) default NULL,
  `description` varchar(4000) default NULL,
  `thumbnail_image` varchar(50) default NULL,
  `client_logo` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;

INSERT INTO `projects` (`id`, `order`, `slug`, `title`, `heading`, `subhead`, `blurb`, `description`, `thumbnail_image`, `client_logo`)
VALUES
	(1,2,'bbq4merica','Wendy\'s','Solving the BBQ Crisis','A 360 campaign around #BBQ4MERICA that began with a parody PSA anthem video and ended with 7.5 million impressions.',NULL,'Like all good things, BBQ is the God-given right of every red-blooded American. Click 3X partnered with agency VML to produce a 360 campaign based on a tongue-in-cheek PSA: Americans needed “BBQ Accessibility,” the goal being to raise awareness of Wendy’s unparalleled BBQ Pulled Pork.\n\nOver the course of three weeks, we integrated live-action, post-production working with VML on their social engagement as Wendy\'s tapped celebrity talent (Alfonso Ribeiro, Ralph Macchio and Steve Austin) to create a parody of a public service announcement on the dire crisis facing Americans not getting enough BBQ sauce. The video was sponsored content on Facebook and got over 4 million views the first week alone. \n\nThis was later blown out through social media via the hashtag #BBQ4MERICA.  A live “Tweetathon” was held in LA, hosted by Alfonso Ribero, and a Tumblr was created to drive traffic to YouTube. Responses to tweets were edited on site in real time, resulting in 9 video responses.\n\nIn total, over 26 videos and countless GIFS were produced. The goal was 1.5 million views, but the campaign exceeded by reached 7.5 million impressions across all channels.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Wendy’s\n<span class=\"description-label\">Credits:</span> Click3X\n<span class=\"description-label\">Platforms:</span>Social Media – Tumblr, Facebook, Twitter','bbq4merica','wendys'),
	(2,5,'gamut','Gamut','Running the Gamut','Taking a brand from an ambitious vision to a dynamic, cross-channel digital reality.',NULL,'Turning a new brand vision into reality, ClickFire Media partnered with CO-OP Marketing to rebrand COX Digital Solutions and craft them a brand-new website. The fully responsive site performs flawlessly across platforms and includes a robust CMS, coded to make managing content a seamless experience. Using cutting-edge CSS3 techniques, the site implements parallax scrolling without the use of Javascript, ensuring a smooth visual effect across all modern browsers.\n\nA branding video was also produced and launched on the website to communicate the essence of the new brand identity to customers.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>GAMUT\n<span class=\"description-label\">Credits:</span>ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet, and Mobile','gamut','gamut'),
	(3,6,'skippy-yippee','Skippy','Spreading “Yippee!” Cheer Across the Universe','An interactive digital campaign for Skippy that people went nuts over.',NULL,'For this tasty challenge, Click 3X, ClickFire Media and BBDO Minneapolis came together to create the Skippy Yippee platform, an broadcast and interactive experience that allows users to spread joyful ‘yippee!’ moments across the universe. In a nutshell, the goal was to communicate the unlimited fun and variety found in every jar of our favorite peanut butter brand, Skippy.\n\nTo begin, our team concepted, directed and produced a :15 and :30 second national television spot demonstrating the peanut selection process — that only the fun peanuts make it into a jar of Skippy Peanut Butter. Custom illustration, animation, and seamless integration with live action footage, brought these unique and fun 3D peanut characters to life.\n\nTo further support the campaign, the “Yippee!” interactive experience was implemented across the peanutbutter.com website, Rich Media ad units and iADs to ensure the same happy experience across all digital devices and platforms. Our team of interactive Animators and Producers at ClickFire Media and BBDO Minneapolis created over 50 unique GIFS that were launched at the click of a “Fun Button.” Animation was shot in-house, making for a lively two weeks in our studios as our creative teams set about creating one colorful yippee moment after another to spread happiness across the universe by clicking the “Fun Button.”\n\nA tracking counter even allowed users to see how many “Yippee!” moments were being spread in real time across the universe. But most importantly, over 14,000,000 \'yippee moments\' were spread throughout  our universe thanks to this campaign!</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>BBDO Minneapolis\n<span class=\"description-label\">Credits:</span>Click3X, ClickFire Media and BBDO Minneapolis\n<span class=\"description-label\">Platforms:</span>Broadcast, Digital and Media','skippy_yippie','skippy'),
	(4,4,'vfiles-smashion','VFILES','Fashion? Smashion!','Social gaming platforms are à la mode, so we concepted and developed SMASHION! for VFILES.','Shop. Play. Share.</p><p>Working with one of the most influential digital platforms\nin today’s fashion realm, Raison D’Être collaborated with\nVFILES to conceptualize and develop a unique mobile\ngaming','What chic sophisticate hasn’t fantasized about donning a fashionable frock on the runway to compete with top models? Working closely with VFILES, we collaborated to bring this dream to fruition with an addictive mobile gaming application designed to complement the VFILES brand.\n\nJust like the big names in Haute Couture, the goal for players is to compete on the runways of four major city’s fashion weeks. Featuring immersive storytelling and challenging gameplay, the app—built for iOS and Android devices—delivers an addictive experience in either landscape or portrait orientation.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>VFILES \n<span class=\"description-label\">Credits:</span>Raison D’Être and ClickFire Media\n<span class=\"description-label\">Platforms:</span> Mobile — iOS and Android','smashion','vfiles'),
	(5,3,'bca-campaign','The Estée Lauder Companies','Hear Our Stories, Share Yours.','A unique storytelling approach ignites a different conversation to raise breast cancer awareness.','Raison D’Être, our beauty & fashion division, along with Click 3X collaborated with The Estée Lauder','In 2014 we were challenged  by our client The Estée Lauder Companies, to create a 360 campaign that would  inspire audiences to join the important conversation about breast cancer awareness.</p><p>Our response was to leverage the power of storytelling across the digital and social landscape by amplifying video content, and tailoring the topics of conversation to connect to a wider audience. With the call-to-action: “Hear our stories. Share yours,” Click3x Director Jonathan Yi and ClickFire Media brought together individuals, their families and supporters to capture a two-way conversation. Through authentic narrative and hours of moving footage, audiences learned that cancer is not a solitary struggle; it affects all of us. The hours of moving footage led to the creation of a campaign trailer and 27-minute documentary.</p><p>Users around the world visited the BCACampaign.com website, which was translated into 15 different languages, to share stories, photos, videos and opinions resulting in an aggregated live feed that engaged a global audience. The resulting metrics were astounding -  1,000,000 YouTube views, 2,000,000 social media impressions, and 16,000 moments of engagement demonstrating the power of storytelling to transcend space, time and location.</p>\n\n<p class=\'credits\'>\n<span class=\'description-label\'>Client:</span>The Estée Lauder Companies\n<span class=\'description-label\'>Credits:</span>Raison D’Être, Click3X and ClickFire Media\n<span class=\'description-label\'>Platforms:</span>Broadcast, Print, Digital and Social Media','bca','bca'),
	(6,1,'lowes-vines','Lowes','Building Creativity','Our creative teams partnered with 3 top Viners to build 12 videos for the brand that’s about building.',NULL,'12 videos. 13.5 million loops. That’s what happens when you put Click 3X, 3 top Viners, and the Lowe’s brand in a room together.\n\nBBDO wanted to promote Lowe’s Black Friday Sales and gave Click 3X two weeks to make it happen. We paired our in-house live action and animation teams with 3 of the nation’s top Viners, tasking them to create a premium shareable experience with high production values that fully exploited the stop-motion capabilities of the Vine platforms.\n\nAt our NYC studios these two very different groups swapped technique and inspiration. It was the best of our experienced teams’ original ideas and expertise in production, combined with the irreverence of media-savvy of millennials, that generated  impressions and fresh new content.\n\nThe 12 spots that resulted became the most popular Lowe’s Vine campaign to date and have now been looped more than 13.5 million times.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>LOWE\'S\n<span class=\"description-label\">Credits:</span>BBDO, Click3X and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet, Mobile and Social Media - Vine','lowes_vines','lowes'),
	(7,7,'kmart-video','Kmart','Attention Kmart Shoppers','Creating shoppable experiences through interactive video and storytelling.',NULL,'We’re redefining the e-commerce landscape through interactive storytelling. In collaboration with DraftFCB Chicago, ClickFire Media was tasked with creating a shoppable e-commerce experience for Kmart that took advantage of new possibilities offered by HTML5 technology.\n\nImmersive HTML5 video, backed by the track ‘Burning Hearts’ by MNDR, tells the story of people living their daily lives in fashionable clothing. At predetermined hotspots the narrative pauses, to allow  users to interact with the individual items which are themselves seamlessly linked to Kmart’s e-commerce via their API. Dynamic overlays and a radically intuitive menu system streamline the experience, further immersing users in a story that feels worth watching for its own sake. At any time users may pause or continue, whether it be through the narrative or to the online catalog.\n\nThis cross-platform experience offers a glimpse of what’s possible when creative video production meets cutting-edge web development.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Kmart\n<span class=\"description-label\">Credits:</span>DraftFCB Chicago and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet and Mobile','kmart_video','kmart'),
	(8,8,'gazprom','Gazprom International','Presenting the World Leader in Natural Gas Exploration','Translating complex business offerings into Simple User Interfaces.',NULL,'Gazprom International is one of the world’s leading natural gas resource corporations. We collaborated with agency Fifteen Degrees to develop an exclusive mobile application for pitching to Heads of State, CEOs, and top management professionals. We responded by creating a visually powerful application that can be displayed both on the iPad, or transmitted to TV/Video via Apple TV.\n\nThe Gazprom International iPad App is a customizable app with a streamlined yet powerful interface, interactive 3D imagery, and branded integration of video. Ideal for presenting in conference rooms or on the fly, the app provides a unique storytelling experience where users can modify presets, filters or drag and drop content in order to tailor their presentation. News, updates and happenings were also included in the app, facilitating corporate communication and greater management efficiency. The Gazprom International App makes communicating complex business offerings simplified.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Gazprom International\n<span class=\"description-label\">Credits:</span>Fifteen Degrees and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Tablet - iPad                                                                  ','gazprom','gazprom'),
	(9,9,'mufe','Make Up For Ever','Augmenting Audiences through Augmented Reality','Make Up For Ever redefines the point-of-sale experience for its consumers.',NULL,'Raison D’Être and their client Make Up For Ever (a LVMH Company) approached us with this unique challenge: create a brand video that captures the esence of Make Up For Ever Founder: Dani Sanz, as well as a point-of-sale experience to engage consumers and help them make the best purchase decisions.\n\nIn response, we utilized the tools of augmented reality technology to create a iOS and Android mobile application allowing consumers to scan a product image to learn about four different blush-application techniques.\n\nThe campaign was featured in kiosks throughout Sephora stores nationwide. The process was nothing to blush about. We designed copy and trigger images, shot and edited video portions of engagement, and developed the mobile application for consumers, bringing the experience to life. All media and video content was shot in-house, providing high-quality content. Overall, the project certainly added an innovative tint to the traditional point-of-sale experience.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Make Up For Ever\n<span class=\"description-label\">Credits:</span>Raison D’Être, Click3X and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Mobile - iOS and Android','mufe','mufe'),
	(10,10,'sharp','Sharp','Touchdown for Sharp AQUOS TV','We launched AQUOS TV’s newest home theatre line with a new website and virtual tailgate parties that make everyone a star.',NULL,'Sharp USA approached us with two challenges: 1. to launch the newest line of home theatre AQUOS TVs, and 2. to drive user engagement across interactive platforms.\n\nOur response? Game on. To bring this challenge to life, we began by determining how to best showcase the products in a visually stimulating and effective story. Our creative team illustrated, designed and storyboarded a robust HTML5 experience that was optimized  for mobile, desktop and tablet platforms. We then launched the new line of products via the sharpusa.com site, integrating the HTML5 build into Sharp’s SiteCore CMS.\n\nAdditionally, we created a Facebook Application inviting users to customize their own tailgate party, having the launch coincide with the start of football season. The response was immediate. Contestants took part in a month-long contest customizing their tailgate with team colors, decorations, personalized pictures and halftime videos. Contestants were also quick to share their experience via Facebook, Twitter, and email in order to build up their tailgate \'likes\' and win prizes, including one of three AQUOS TV’s.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Sharp USA\n<span class=\"description-label\">Credits:</span>ClickFire Media\n<span class=\"description-label\">Platforms:</span> Desktop and Social Media - Facebook','sharp','sharp'),
	(11,11,'roxy','Roxy','Dare to be Roxy','We dared Facebook users to show us if they had what it takes to be the new face of Roxy, generating over 600,000 impressions globally in the process.',NULL,'Our client Roxy, a leading sports apparel brand, approached us to create a compelling campaign that would increase Facebook likes and generate global buzz.\n\nThe <i>“Dare Yourself</i> campaign was created, inviting young women around the world between the ages of 18-28 to submit photo and video content answering why they should be the new face of Roxy using the call-to-action #roxydares. To further extend user engagement, our team aggregated the UGC to create an inspirational video for users to share across Roxy’s social media platforms. The contest was translated into 11 languages and launched in over 40 countries throughout North America, Latin America, North Asia, South Asia, Europe, Africa, and the Middle East, offering an epic adventure for the five winning women.\n\nThe greatest adventure of all? Solving our challenge with over 600,000 additional Facebook likes on the Roxy fan page! Just the way we dare to like it.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Roxy\n<span class=\"description-label\">Credits:</span>Raison D’Être and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Social Media - Facebook','roxy','roxy'),
	(12,12,'7fam','7 For All Mankind','','7 For All Mankind',NULL,'Our team was tasked to create a community page for 7 For All Mankind using the ThisMoment platform.\n\nIn response, we used the ThisMoment CMS platform API to combine content from 7 For All Mankind\'s social media channels — Pinterest, Instagram, Facebook, Twitter, and blog pages into one unified brand experience.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>7 For All Mankind \n<span class=\"description-label\">Credits:</span>Click 3X and Clickfire Media\n<span class=\"description-label\">Platforms:</span>Social Media - Facebook, Instagram and Twitter','7fam','7fam'),
	(13,13,'amtrak','Amtrak','','Amtrak Holiday Card',NULL,'We were challenged by Olson to make a customizable video holiday card for client Amtrak. While the client was prepared for only a desktop experience, our team was also able to deliver a separate mobile solution that provided the same level of fun and engagement.\n\nIn summary, our solution was to design and develop a HTML5 responsive experience with customization features that would work across both desktop and mobile platforms.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Amtrak\n<span class=\"description-label\">Credits:</span>Olson, Click 3X and Clickfire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet and Mobile','amtrak','amtrak'),
	(14,14,'armorall','Armor All','','The Armor All Viking Drive',NULL,'Our team was challenged by Source Marketing to create a customized sharable video experience for their client, Armor All.This project was part of a larger campaign featuring Armor All\'s updated Viking character.\n\nIn response, we created a Facebook application consisting of a live-action video mashup with Facebook and Google Maps data where vido of the Viking was effectively composited on the fly.\n\nUsers select a Facebook friend that they want the Armor All Viking to pay a visit to. Using Google Maps and Street View, our team was able to create a unique experience where the actual drive to a friend\'s house is shown, including street photography and the users house itself.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Armor All\n<span class=\"description-label\">Credits:</span>Source Marketing, Click 3X and Clickfire Media\n<span class=\"description-label\">Platforms:</span>Social Media - Facebook and Google Maps','armorall','armorall'),
	(17,17,'chaps-banners','Ralph Lauren','','Ralphs Lauren Chaps Banners',NULL,'For their Spring/Summer collection, Chaps and their agency Raison D\'Être were looking for a creative execution that captured the beauty of the print ads in the online advertising space. \n\nOur team concepted, designed, and animated the standard and rich media banner units utilizing sophisticated and elegant cinemagraph techniques. The result was beautifully eye-catching, yet subtle moving images within the still print photographs.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Ralph Lauren\n<span class=\"description-label\">Credits:</span>Raison D\'Être, and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet and Mobile','chaps','chaps'),
	(18,18,'chevy-sonic','Chevrolet','Chevrolet','Chevy Sonic Customizer',NULL,'Our team was challenged by Big Fuel to create a unique car customizer Facebook application for Chevrolet\'s line of Sonic vehicles.\n\nIn response, we created an application that allows users to decorate and customize a Chevy Sonic car and share their creation with friends on Facebook, Twitter and via email.\n\nThe user begins by selecting a background or uploading their own from their computer. They can select the car color, window tints, wheels, as well as add “wraps” and decals. They are even given the opportunity to touch-up and/or paint their own patterns and decals on their custom car. Once saved to the gallery, user\'s can browse through the gallery to rate other customized car submissions and also view cars in day or night lighting.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Chevrolet\n<span class=\"description-label\">Credits:</span>Big Fuel and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Social Media - Facebook','chevy_sonic','chevrolet'),
	(19,19,'daffys-bday','Daffy\'s','','Daffy\'s Birthday Blowout',NULL,'Our team was challenged by Devito/Verdi to create a Facebook app for Daffy\'s 50th birthday.\n\nIn response, we created a virtual birthday cake, where Facebook fans could blow out the candle using their computer\'s built-in microphone. The application was optimized to account for varying sound sensitivity issues as well as different mic arrangements for Mac and PC computers.\n\nThe result? \n4,350+ active users used the Facebook app featured on dailyness.com.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Daffy\'s\n<span class=\"description-label\">Credits:</span>DeVito/Verdi, Click 3X and Clickfire Media\n<span class=\"description-label\">Platforms:</span>Social Media - Facebook','daffys','daffys'),
	(20,20,'electrified','David Blaine','David Blaine Electrified','For 3 days and 3 nights, David Blaine is #Electrified',NULL,'Our team was engaged by VICE to create a unique Twitter social media experience for the David Blaine <i>Electrified</i> event. At the event, attendees are encouraged to tweet normal photos of themselves with the hashtag #Electrified. Within moments, their photo is returned to them, only now it is electrified! Our extensive experience with the Twitter API and PHP based apps allowed us to easily develop the software necessary to composite the images in real time.\n\nAdditionally, in order for the brand to maintain their high level of standards for content associated with the event, we instituted a full CMS that allows for the filtering and censoring of images.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>VICE\n<span class=\"description-label\">Credits:</span>Click 3X and Clickfire Media\n<span class=\"description-label\">Platforms:</span>Social Media - Twitter','electrified','david_blaine'),
	(21,21,'dennys','Denny\'s','','A Photo-A-Day Challenge',NULL,'Our team was challenged to create a Facebook application, which used the Instagram API, for Gotham and their client, Denny\'s.\n\nThe Facebook app was designed as a 30-day photo contest that would take advantage of our team\'s versatile experience with the Instagram API. Each day a new hashtag, based off Denny\'s and various food themes (#blueberries, #pancakes, #butter), was used for photo entries. Users were encouraged to submit their photos with the correct hashtag of the day via Instagram, or upload them directly to the site. Each day a winning photo is selected, and that user is given a $10 Denny\'s gift card.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Denny\'s\n<span class=\"description-label\">Credits:</span>Gotham and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Social Media - Facebook','dennys','dennys'),
	(24,24,'google','Google','','Google Banners',NULL,'Our team was challenged by Johannes Leonardo to create a series of interactive media banner ads for their client, Google to support their larger Google <i>Sparkle</i> and <i>Demo Slam</i> communications campaigns.\n\n<i>Demo Slam</i>  is a Google contest in which they put up two different videos that feature google technologies and the viewers got the opportunity to vote on which video they prefer. Each banner features different videos in them that have battles, so the content we put in the banners is specific to that battle of the week. Roadblock media placements allowed us to create synced banners in which you see the demo video jump from one banner to the next in order to the battle. In total, we produced more than two dozen rich and standard media banner ads that were highly interactive and engaging.\n\nWe also created a series of banner ads for the Google <i>Sparkle</i> campaign executing three different creative concepts. These ads consisted of a series of metaphors showcasing the “perfect banner ad.” They included the full assortment of Google rich media technologies, including in banner YouTube videos, Google teracent technology and moat ad analytics. As an example of the possibilities— in one execution we even embedded keynote video from the IAB conference.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Google\n<span class=\"description-label\">Credits:</span>Johannes Leonardo, Click3X and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet and Mobile','google','google'),
	(27,27,'heard-city','Heard City','','Heard City Website',NULL,'We were approached by our friends at Heard City to help them establish a brand identity that was not only true to their agency culture, but also communicated the leading audio post-production capabilities of the company.\n\nOur creative team successfully worked with the client to capture the true essence of the agency and bring the brand to life (in digital and print form) through a responsive HTML5 parallax website, a beautiful brochure and business card design.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Heard City\n<span class=\"description-label\">Credits:</span>ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet and Mobile','heard_city','heard_city'),
	(28,28,'h-m','H&M','','H&M Website',NULL,'We were challenged to create a microsite that would be the hub for H&M\'s new <i>Be Conscious</i> campaign. H&M shoppers were encouraged to recycle their old garments at their local store, where they would receive a code that scored them 15% off their next purchase while entering them into a sweepstakes to win a gift card, select merchandise, or a trip to L.A. The hub included user code entry for the sweepstakes, embedded video of a featured vlogger, user generated YouTube and Instagram galleries, and an interactive infographic created by partner, GOOD. We also also designed and produced banner ad units to complement the campaign.\n\nTo cater to users both redeeming their code on mobile devices in the store and those browsing on their home computers, the microsite was developed using responsive design to work seamlessly across all platforms. A green initiative from the ground up, the microsite was hosted on an eco-friendly server that employs wind energy.\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>H&M\n<span class=\"description-label\">Credits:</span>ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet, Mobile, Social Media - Instagram and YouTube','h_m','h-m'),
	(29,29,'man-v-food','Travel Channel','','Man v. Food Mobile App',NULL,'The Travel Channel and Scripps Network challenged us to build an engaging, free and easy-to-use mobile game application for their popular show, Man v. Food. \n\nIn response, we began the process by developing the game concept with the client, and then creating the layout, all required graphics, and identifying any other creative assets needed to build out the concept (achievements, audio/video, etc). \n\nThe application, which runs on both the iPhone and Android platforms, also has several special features including video clips from the hit TV show, voice activation within the gameplay, and in-app purchasing. \n\nAs a measure of the success of this project, we were featured as the FWA mobile site/app of the day Built a game app for iPhone, Android and iPad platforms on time and on budget Ranked #85 in strategy game category\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Travel Channel\n<span class=\"description-label\">Credits:</span>ClickFire Media\n<span class=\"description-label\">Platforms:</span>Mobile - iOS and Android','man_v_food','travel_channel'),
	(30,30,'munchkin','Munchkin','','Munchkin Website',NULL,'Our client Munchkin tasked us to execute a site redesign for munchkin.com. \n\nIn response, we designed and developed the Munchkin website from start to finish creating a new bi-lingual (Spanish and English) website for the brand. The site was developed on the Drupal platform and included hundreds of content pages including product pages, store locator, information station, customer service, company info and an e-commerce store.\n\nIn addition to the brand\'s website, we also helped market and promote the Munchkin cute baby voting Facebook contest on their new site. Through the contest, Munchkin received more than 48,000 votes.\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Muchkin\n<span class=\"description-label\">Credits:</span>ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet, Mobile','munchkin','munchkin'),
	(31,31,'nine-west','Nine West','','Nine West',NULL,'We were challenged to create a Facebook application for DBA and their client, Nine West.\n\nIn response we developed a photo gallery Facebook application. Using Instagram API the application was able to feature dynamically generated Instagram photos with Nine West\'s designated campaign hashtag, #LoveFury. Each photo with the #LoveFury hashtag was automatically entered into a photo contest, and the photo with the most likes and shares wins.\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Nine West\n<span class=\"description-label\">Credits:</span>ClickFire Media\n<span class=\"description-label\">Platforms:</span>Social Media - Facebook and Instagram','nine_west','nine_west'),
	(33,33,'pedigree','Pedigree','Pedigree Woofer','Social Adoption Instagram Application',NULL,'ClickFire Media was challenged by their client BBDO/NY to create a Facebook application for their client, Pedigree. \n\nThe app, <i>Pedigree Woofer</i>, serves as a social media tool to help with pet adoption. We developed this app leveraging our familiarity with the Facebook and Instagram platforms. Using Instagram, volunteers at animal shelters across the country were able to post photographs of the dogs they have available for adoption, along with descriptions and pertinent information simply by using hashtags such as #male #poodle #3years. \n\nWe then created a custom application that aggregated these Instagram photos into a database and then displayed them in the the <i>Woofer Gallery</i>, allowing users to search for an adoption dog by age, size, and breed. Each listing could be commented on, liked, and shared on both Facebook and Twitter to ultimately increase the likelihood of adoption.\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Pedigree\n<span class=\"description-label\">Credits:</span>BBDO and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Social Media - Facebook and Instagram','pedigree','pedigree'),
	(34,34,'sailor-jerry','Sailor Jerry','','Sailor Jerry Mobile App',NULL,'ClickFireMedia was challenged by Quaker City Mercantile to create an application for their client, Sailor Jerry. \n\nThe iOS mobile application we developed allows users to to preview various Sailor Jerry themed tattoos by using their iPhone or iPad camera.\n\nUsers can scroll through a large tattoo gallery until they find the art they like, they can then tap and drag it into position. By pinching and pulling the image, they can adjust the tattoo until it fits just right. The user can then snap a photo, save it and even post the photo of their newly tattooed self to Facebook and Twitter. If a permanent tattoo is their desire, users can also search for the closest Sailor Jerry Tattoo Artist, using the Google Maps API, without leaving the app.\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>Sailor Jerry\n<span class=\"description-label\">Credits:</span>Quaker City Mercantile and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Mobile, Tablet','sailor_jerry','sailor_jerry'),
	(35,35,'uniqlo','Uniqlo','','UNIQLO Gifbox',NULL,'For the holiday season, UNIQLO wanted to create a giveaway engagement to live on their homepage that revolved around the animated GIF resurgence. UNIQLO gave away the opportunity to win 100% off (up to $500), and everyone wins a coupon and GIF to share on Facebook, Twitter, and Email. \n\nWe were tasked by Digitas, working with their client UNIQLO, to develop and produce a cross platform giveaway called <i>Holiday GIFs</i> that would live on the UNIQLO homepage. The application we developed featured a randomizer and a email delivery system that alerted users when they won a prize. The HTML5 engagement runs seamlessly on desktops and mobile devices alike.\n\nIn addition we also created close to 50 share-worthy animated GIFs for the brand. \n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>UNIQLO\n<span class=\"description-label\">Credits:</span>Digitas and ClickFire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet, Mobile, Social Media - Facebook, Twitter, and Email','uniqlo','uniqlo'),
	(38,38,'att-elements','AT&T','AT&T Elements','Elements of Everyday Life',NULL,'BBDO challenged us to create the <i>Elements of Everyday Life</i>, a VINE-based video content website for the launch of the new Samsung Galaxy Active cell phone. \n\nTimed with the launch of the new Samsung waterproof phone as well as the launch of the new VINE application for mobile Android, we build a mobile-first, responsive website that was fully integrated with VINE and the Twitter Card API for enhanced social-share visibility. \n\nIn addition, we used an in-house Writer/Director team to shoot more than 30 VINE videos that lived on the new site. All this, completed within a three week turnaround schedule.</p>\n\n<p class=\"credits\">\n<span class=\"description-label\">Client:</span>AT&T\n<span class=\"description-label\">Credits:</span>BBDO, Click 3X and Clickfire Media\n<span class=\"description-label\">Platforms:</span>Desktop, Tablet, Mobile, Social Media — Vine and Twitter','att_elements','att');

/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects_asset_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects_asset_lu`;

CREATE TABLE `projects_asset_lu` (
  `id` int(4) unsigned NOT NULL auto_increment,
  `project_id` int(4) default NULL,
  `asset_id` int(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects_asset_lu` WRITE;
/*!40000 ALTER TABLE `projects_asset_lu` DISABLE KEYS */;

INSERT INTO `projects_asset_lu` (`id`, `project_id`, `asset_id`)
VALUES
	(1,1,1),
	(2,2,2),
	(3,3,3),
	(4,4,4),
	(5,5,5),
	(6,6,6),
	(7,7,7),
	(8,8,8),
	(9,8,9),
	(10,4,10),
	(11,5,11),
	(12,3,12),
	(13,1,13),
	(14,2,14),
	(15,9,15),
	(16,9,16),
	(17,10,17),
	(18,10,18),
	(19,11,19),
	(20,11,20),
	(21,12,21),
	(22,13,22),
	(23,14,23),
	(26,17,26),
	(27,18,27),
	(28,19,28),
	(29,20,29),
	(30,21,30),
	(33,24,33),
	(36,27,36),
	(37,28,37),
	(38,29,38),
	(39,30,39),
	(40,31,40),
	(42,33,42),
	(43,34,43),
	(44,35,44),
	(47,38,47),
	(48,1,56),
	(50,10,50),
	(51,3,51),
	(52,1,52),
	(53,6,55),
	(54,6,54),
	(56,4,58),
	(57,7,59);

/*!40000 ALTER TABLE `projects_asset_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects_category_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects_category_lu`;

CREATE TABLE `projects_category_lu` (
  `id` int(4) unsigned NOT NULL auto_increment,
  `project_id` int(4) default NULL,
  `category_id` int(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects_category_lu` WRITE;
/*!40000 ALTER TABLE `projects_category_lu` DISABLE KEYS */;

INSERT INTO `projects_category_lu` (`id`, `project_id`, `category_id`)
VALUES
	(1,1,2),
	(2,2,2),
	(3,3,2),
	(4,4,2),
	(5,5,2),
	(6,6,2),
	(7,1,1),
	(8,2,1),
	(9,3,1),
	(10,4,1),
	(11,5,1),
	(12,6,1),
	(13,7,1),
	(14,8,1),
	(15,9,1),
	(16,10,1),
	(17,11,1),
	(18,12,1),
	(19,13,1),
	(20,14,1),
	(23,17,1),
	(24,18,1),
	(25,19,1),
	(26,20,1),
	(27,21,1),
	(30,24,1),
	(33,27,1),
	(34,28,1),
	(35,29,1),
	(36,30,1),
	(37,31,1),
	(39,33,1),
	(40,34,1),
	(41,35,1),
	(44,38,1);

/*!40000 ALTER TABLE `projects_category_lu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects_link_lu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects_link_lu`;

CREATE TABLE `projects_link_lu` (
  `id` int(4) unsigned NOT NULL auto_increment,
  `project_id` int(4) default NULL,
  `link_id` int(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projects_link_lu` WRITE;
/*!40000 ALTER TABLE `projects_link_lu` DISABLE KEYS */;

INSERT INTO `projects_link_lu` (`id`, `project_id`, `link_id`)
VALUES
	(1,4,1),
	(2,4,2),
	(3,5,4),
	(4,7,5),
	(5,3,6),
	(6,2,8),
	(7,4,9);

/*!40000 ALTER TABLE `projects_link_lu` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
