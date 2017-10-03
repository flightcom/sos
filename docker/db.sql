-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: sos
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2017-08-30 11:25:28','2017-08-30 15:25:28','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0),(2,31,'WooCommerce','','','','2017-08-30 15:42:48','2017-08-30 19:42:48','État de la commande modifié de Attente paiement à En cours.',0,'1','WooCommerce','order_note',0,0),(3,31,'WooCommerce','','','','2017-08-30 15:42:48','2017-08-30 19:42:48','Stock de l&rsquo;article Sans Oublier les Couleurs (#8) réduit de 10 à 9.',0,'1','WooCommerce','order_note',0,0),(4,31,'WooCommerce','','','','2017-08-30 15:42:48','2017-08-30 19:42:48','Stripe charge complete (Charge ID: ch_1Awc5LD0JyEUemhjDacxREct)',0,'1','WooCommerce','order_note',0,0),(5,31,'sos-admin','flightcom@wanadoo.fr','','','2017-08-30 15:50:23','2017-08-30 19:50:23','État de la commande modifié de En cours à Terminée.',0,'1','WooCommerce','order_note',0,0),(6,31,'sos-admin','flightcom@wanadoo.fr','','','2017-08-30 15:50:24','2017-08-30 19:50:24','Notification courriel Commande terminée envoyée manuellement.',0,'1','WooCommerce','order_note',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,8,'_wc_review_count','0'),(3,8,'_wc_rating_count','a:0:{}'),(4,8,'_wc_average_rating','0'),(5,8,'_edit_last','1'),(6,8,'_edit_lock','1504202775:1'),(7,8,'_sku',''),(8,8,'_regular_price','0.99'),(9,8,'_sale_price',''),(10,8,'_sale_price_dates_from',''),(11,8,'_sale_price_dates_to',''),(12,8,'total_sales','1'),(13,8,'_tax_status','taxable'),(14,8,'_tax_class',''),(15,8,'_manage_stock','yes'),(16,8,'_backorders','no'),(17,8,'_sold_individually','no'),(18,8,'_weight','0.5'),(19,8,'_length','20'),(20,8,'_width','15'),(21,8,'_height','2'),(22,8,'_upsell_ids','a:0:{}'),(23,8,'_crosssell_ids','a:0:{}'),(24,8,'_purchase_note',''),(25,8,'_default_attributes','a:0:{}'),(26,8,'_virtual','no'),(27,8,'_downloadable','no'),(28,8,'_product_image_gallery',''),(29,8,'_download_limit','-1'),(30,8,'_download_expiry','-1'),(31,8,'_stock','9'),(32,8,'_stock_status','instock'),(33,8,'_product_version','3.1.2'),(34,8,'_price','0.99'),(35,9,'_wp_trash_meta_status','publish'),(36,9,'_wp_trash_meta_time','1504110162'),(46,11,'_menu_item_type','post_type'),(47,11,'_menu_item_menu_item_parent','0'),(48,11,'_menu_item_object_id','4'),(49,11,'_menu_item_object','page'),(50,11,'_menu_item_target',''),(51,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(52,11,'_menu_item_xfn',''),(53,11,'_menu_item_url',''),(55,12,'_menu_item_type','post_type'),(56,12,'_menu_item_menu_item_parent','0'),(57,12,'_menu_item_object_id','6'),(58,12,'_menu_item_object','page'),(59,12,'_menu_item_target',''),(60,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(61,12,'_menu_item_xfn',''),(62,12,'_menu_item_url',''),(63,12,'_menu_item_orphaned','1504121504'),(64,13,'_menu_item_type','post_type'),(65,13,'_menu_item_menu_item_parent','0'),(66,13,'_menu_item_object_id','7'),(67,13,'_menu_item_object','page'),(68,13,'_menu_item_target',''),(69,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(70,13,'_menu_item_xfn',''),(71,13,'_menu_item_url',''),(73,14,'_menu_item_type','post_type'),(74,14,'_menu_item_menu_item_parent','0'),(75,14,'_menu_item_object_id','5'),(76,14,'_menu_item_object','page'),(77,14,'_menu_item_target',''),(78,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(79,14,'_menu_item_xfn',''),(80,14,'_menu_item_url',''),(81,14,'_menu_item_orphaned','1504121504'),(82,15,'_menu_item_type','post_type'),(83,15,'_menu_item_menu_item_parent','0'),(84,15,'_menu_item_object_id','2'),(85,15,'_menu_item_object','page'),(86,15,'_menu_item_target',''),(87,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(88,15,'_menu_item_xfn',''),(89,15,'_menu_item_url',''),(90,15,'_menu_item_orphaned','1504121505'),(91,16,'_edit_last','1'),(92,16,'_edit_lock','1505093409:1'),(93,16,'_wp_page_template','default'),(94,16,'total_sidebar_layout','no_sidebar'),(95,18,'_edit_last','1'),(96,18,'_edit_lock','1504121456:1'),(97,18,'_wp_page_template','default'),(98,18,'total_sidebar_layout','no_sidebar'),(99,20,'_edit_last','1'),(100,20,'_edit_lock','1504143539:1'),(101,20,'_wp_page_template','default'),(102,20,'total_sidebar_layout','no_sidebar_condensed'),(103,22,'_edit_last','1'),(104,22,'_edit_lock','1504195003:1'),(105,22,'_wp_page_template','default'),(106,22,'total_sidebar_layout','no_sidebar_condensed'),(107,24,'_menu_item_type','post_type'),(108,24,'_menu_item_menu_item_parent','0'),(109,24,'_menu_item_object_id','22'),(110,24,'_menu_item_object','page'),(111,24,'_menu_item_target',''),(112,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(113,24,'_menu_item_xfn',''),(114,24,'_menu_item_url',''),(125,26,'_menu_item_type','post_type'),(126,26,'_menu_item_menu_item_parent','0'),(127,26,'_menu_item_object_id','18'),(128,26,'_menu_item_object','page'),(129,26,'_menu_item_target',''),(130,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(131,26,'_menu_item_xfn',''),(132,26,'_menu_item_url',''),(134,27,'_menu_item_type','post_type'),(135,27,'_menu_item_menu_item_parent','0'),(136,27,'_menu_item_object_id','16'),(137,27,'_menu_item_object','page'),(138,27,'_menu_item_target',''),(139,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(140,27,'_menu_item_xfn',''),(141,27,'_menu_item_url',''),(143,28,'_wp_trash_meta_status','publish'),(144,28,'_wp_trash_meta_time','1504121745'),(145,29,'_wp_attached_file','2017/08/logo_sansoublierlesourire-1.jpg'),(146,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:828;s:6:\"height\";i:1153;s:4:\"file\";s:39:\"2017/08/logo_sansoublierlesourire-1.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"logo_sansoublierlesourire-1-768x1069.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1069;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"logo_sansoublierlesourire-1-735x1024.jpg\";s:5:\"width\";i:735;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-325x380.jpg\";s:5:\"width\";i:325;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"total-portfolio-thumb\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"total-team-thumb\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-350x420.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"total-blog-thumb\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-400x280.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"total-thumb\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"total-blog-header\";a:4:{s:4:\"file\";s:39:\"logo_sansoublierlesourire-1-720x360.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:21:\"Panneau des cre´dits\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(147,8,'_thumbnail_id','29'),(148,2,'_edit_lock','1504121804:1'),(149,2,'_wp_trash_meta_status','publish'),(150,2,'_wp_trash_meta_time','1504121948'),(151,2,'_wp_desired_post_slug','sample-page'),(152,4,'_edit_lock','1504121829:1'),(153,31,'_order_key','wc_order_59a71536438bc'),(154,31,'_customer_user','1'),(155,31,'_payment_method','stripe'),(156,31,'_payment_method_title','Credit Card (Stripe)'),(157,31,'_transaction_id','ch_1Awc5LD0JyEUemhjDacxREct'),(158,31,'_customer_ip_address','172.26.0.1'),(159,31,'_customer_user_agent','mozilla/5.0 (macintosh; intel mac os x 10_12_3) applewebkit/537.36 (khtml, like gecko) chrome/60.0.3112.101 safari/537.36'),(160,31,'_created_via','checkout'),(161,31,'_date_completed','1504122623'),(162,31,'_completed_date','2017-08-30 15:50:23'),(163,31,'_date_paid','1504122167'),(164,31,'_paid_date','2017-08-30 15:42:47'),(165,31,'_cart_hash','c64b3622439913da4d9967152cb64486'),(166,31,'_billing_first_name','Sébastien'),(167,31,'_billing_last_name','Moreau'),(168,31,'_billing_company',''),(169,31,'_billing_address_1','4551 rue Pontiac'),(170,31,'_billing_address_2','App 2'),(171,31,'_billing_city','Montréal'),(172,31,'_billing_state','QC'),(173,31,'_billing_postcode','H2J 2T2'),(174,31,'_billing_country','CA'),(175,31,'_billing_email','flightcom@wanadoo.fr'),(176,31,'_billing_phone','5147460903'),(177,31,'_shipping_first_name','Sébastien'),(178,31,'_shipping_last_name','Moreau'),(179,31,'_shipping_company',''),(180,31,'_shipping_address_1','4551 rue Pontiac'),(181,31,'_shipping_address_2','App 2'),(182,31,'_shipping_city','Montréal'),(183,31,'_shipping_state','QC'),(184,31,'_shipping_postcode','H2J2T2'),(185,31,'_shipping_country','CA'),(186,31,'_order_currency','CAD'),(187,31,'_cart_discount','0'),(188,31,'_cart_discount_tax','0'),(189,31,'_order_shipping','0'),(190,31,'_order_shipping_tax','0'),(191,31,'_order_tax','0.1483'),(192,31,'_order_total','1.14'),(193,31,'_order_version','3.1.2'),(194,31,'_prices_include_tax','no'),(195,31,'_billing_address_index','Sébastien Moreau  4551 rue Pontiac App 2 Montréal QC H2J 2T2 CA flightcom@wanadoo.fr 5147460903'),(196,31,'_shipping_address_index','Sébastien Moreau  4551 rue Pontiac App 2 Montréal QC H2J2T2 CA'),(197,31,'_shipping_method','a:1:{i:0;s:11:\"flat_rate:1\";}'),(198,31,'_stripe_card_id','tok_1Awc5GD0JyEUemhjp9YsxxTR'),(199,31,'_stripe_charge_id','ch_1Awc5LD0JyEUemhjDacxREct'),(200,31,'_stripe_charge_captured','yes'),(201,31,'Stripe Fee','0.33'),(202,31,'Net Revenue From Stripe','0.81'),(203,31,'_download_permissions_granted','yes'),(204,31,'_recorded_sales','yes'),(205,31,'_recorded_coupon_usage_counts','yes'),(206,31,'_order_stock_reduced','yes'),(207,31,'_edit_lock','1504140487:1'),(208,31,'_edit_last','1'),(210,33,'_wp_trash_meta_status','publish'),(211,33,'_wp_trash_meta_time','1504141151'),(212,35,'_wp_trash_meta_status','publish'),(213,35,'_wp_trash_meta_time','1504141197'),(214,36,'_wp_trash_meta_status','publish'),(215,36,'_wp_trash_meta_time','1504141290'),(216,32,'_edit_lock','1504145654:1'),(217,32,'_edit_last','1'),(218,32,'_wp_page_template','templates/home-template.php'),(219,32,'total_sidebar_layout','no_sidebar'),(229,39,'_menu_item_type','post_type'),(230,39,'_menu_item_menu_item_parent','97'),(231,39,'_menu_item_object_id','20'),(232,39,'_menu_item_object','page'),(233,39,'_menu_item_target',''),(234,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(235,39,'_menu_item_xfn',''),(236,39,'_menu_item_url',''),(238,40,'_edit_last','1'),(239,40,'_edit_lock','1504144725:1'),(240,40,'_wp_page_template','default'),(241,40,'total_sidebar_layout','no_sidebar_condensed'),(242,37,'_wp_trash_meta_status','publish'),(243,37,'_wp_trash_meta_time','1504141907'),(244,42,'_menu_item_type','post_type'),(245,42,'_menu_item_menu_item_parent','97'),(246,42,'_menu_item_object_id','40'),(247,42,'_menu_item_object','page'),(248,42,'_menu_item_target',''),(249,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(250,42,'_menu_item_xfn',''),(251,42,'_menu_item_url',''),(253,43,'_edit_last','1'),(254,43,'_edit_lock','1504660889:1'),(255,43,'_wp_page_template','default'),(256,43,'total_sidebar_layout','right_sidebar'),(257,45,'_menu_item_type','post_type'),(258,45,'_menu_item_menu_item_parent','97'),(259,45,'_menu_item_object_id','43'),(260,45,'_menu_item_object','page'),(261,45,'_menu_item_target',''),(262,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(263,45,'_menu_item_xfn',''),(264,45,'_menu_item_url',''),(266,48,'_wp_trash_meta_status','publish'),(267,48,'_wp_trash_meta_time','1504143325'),(295,54,'_menu_item_type','custom'),(296,54,'_menu_item_menu_item_parent','0'),(297,54,'_menu_item_object_id','54'),(298,54,'_menu_item_object','custom'),(299,54,'_menu_item_target',''),(300,54,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(301,54,'_menu_item_xfn',''),(302,54,'_menu_item_url','http://localhost:8000'),(303,54,'_menu_item_orphaned','1504144447'),(313,59,'_wp_trash_meta_status','publish'),(314,59,'_wp_trash_meta_time','1504144866'),(315,60,'_wp_trash_meta_status','publish'),(316,60,'_wp_trash_meta_time','1504145119'),(317,61,'_wp_trash_meta_status','publish'),(318,61,'_wp_trash_meta_time','1504145163'),(319,62,'_wp_trash_meta_status','publish'),(320,62,'_wp_trash_meta_time','1504145202'),(321,63,'_wp_trash_meta_status','publish'),(322,63,'_wp_trash_meta_time','1504145313'),(323,64,'_wp_trash_meta_status','publish'),(324,64,'_wp_trash_meta_time','1504145550'),(325,65,'_form','<label> Votre Nom (requis)\n    [text* your-name] </label>\n\n<label> Votre adresse courriel (requis)\n    [email* your-email] </label>\n\n<label> Sujet\n    [text your-subject] </label>\n\n<label> Votre Message\n    [textarea your-message] </label>\n\n[submit \"Envoyer\"]'),(326,65,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:40:\"Sans Oublier le Sourire \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <flightcom@wanadoo.fr>\";s:9:\"recipient\";s:32:\"sansoublierlesourire@hotmail.com\";s:4:\"body\";s:195:\"De: [your-name] <[your-email]>\nSujet: [your-subject]\n\nCorps du message:\n[your-message]\n\n-- \nCe courriel a été envoyé du formulaire de contact de Sans Oublier le Sourire (http://localhost:8000)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),(327,65,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:40:\"Sans Oublier le Sourire \"[your-subject]\"\";s:6:\"sender\";s:46:\"Sans Oublier le Sourire <flightcom@wanadoo.fr>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:141:\"Corps du message:\n[your-message]\n\n-- \nCe courriel a été envoyé du formulaire de contact de Sans Oublier le Sourire (http://localhost:8000)\";s:18:\"additional_headers\";s:30:\"Reply-To: flightcom@wanadoo.fr\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),(328,65,'_messages','a:23:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:75:\"Vous devez accepter les termes et conditions avant d\'envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Le champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:73:\"Une erreur inconnue s’est produite lors de la mise en ligne du fichier.\";s:24:\"upload_file_type_invalid\";s:67:\"Vous n’êtes pas autorisé à mettre en ligne ce type de fichier.\";s:21:\"upload_file_too_large\";s:26:\"Le fichier est trop grand.\";s:23:\"upload_failed_php_error\";s:64:\"Une erreur s’est produite lors de la mise en ligne du fichier.\";s:14:\"invalid_number\";s:33:\"Le format de nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est inférieur que le minimum autorisé.\";s:16:\"number_too_large\";s:46:\"Le nombre est supérieur au maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:35:\"La réponse au quiz est incorrecte.\";s:17:\"captcha_not_match\";s:29:\"Le code entré est incorrect.\";s:13:\"invalid_email\";s:44:\"L’adresse courriel indiquée est invalide.\";s:11:\"invalid_url\";s:21:\"L’URL est invalide.\";s:11:\"invalid_tel\";s:39:\"Le numéro de téléphone est invalide.\";}'),(329,65,'_additional_settings',''),(330,65,'_locale','fr_CA'),(331,73,'_wp_attached_file','2017/08/20150728_135735.jpg'),(332,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4128;s:6:\"height\";i:2322;s:4:\"file\";s:27:\"2017/08/20150728_135735.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"20150728_135735-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"20150728_135735-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"20150728_135735-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"20150728_135735-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"20150728_135735-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"20150728_135735-325x380.jpg\";s:5:\"width\";i:325;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"20150728_135735-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"total-portfolio-thumb\";a:4:{s:4:\"file\";s:27:\"20150728_135735-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"total-team-thumb\";a:4:{s:4:\"file\";s:27:\"20150728_135735-350x420.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"total-blog-thumb\";a:4:{s:4:\"file\";s:27:\"20150728_135735-400x280.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"total-thumb\";a:4:{s:4:\"file\";s:27:\"20150728_135735-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"total-blog-header\";a:4:{s:4:\"file\";s:27:\"20150728_135735-720x360.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(333,72,'_wp_trash_meta_status','publish'),(334,72,'_wp_trash_meta_time','1504150951'),(335,74,'_wp_trash_meta_status','publish'),(336,74,'_wp_trash_meta_time','1504212235'),(337,76,'_wp_attached_file','2017/08/IMG_6080.jpg'),(338,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4752;s:6:\"height\";i:3168;s:4:\"file\";s:20:\"2017/08/IMG_6080.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6080-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_6080-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_6080-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6080-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"IMG_6080-325x380.jpg\";s:5:\"width\";i:325;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"IMG_6080-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"total-portfolio-thumb\";a:4:{s:4:\"file\";s:20:\"IMG_6080-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"total-team-thumb\";a:4:{s:4:\"file\";s:20:\"IMG_6080-350x420.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"total-blog-thumb\";a:4:{s:4:\"file\";s:20:\"IMG_6080-400x280.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"total-thumb\";a:4:{s:4:\"file\";s:20:\"IMG_6080-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"total-blog-header\";a:4:{s:4:\"file\";s:20:\"IMG_6080-720x360.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(340,16,'_thumbnail_id','76'),(341,75,'_wp_trash_meta_status','publish'),(342,75,'_wp_trash_meta_time','1504663309'),(343,77,'_wp_trash_meta_status','publish'),(344,77,'_wp_trash_meta_time','1505092291'),(345,78,'_edit_last','1'),(346,78,'_edit_lock','1505092565:1'),(347,79,'_wp_trash_meta_status','publish'),(348,79,'_wp_trash_meta_time','1505092342'),(349,78,'_wp_page_template','default'),(350,78,'total_sidebar_layout','right_sidebar'),(351,84,'_edit_last','1'),(352,84,'_edit_lock','1505092587:1'),(353,84,'_wp_page_template','default'),(354,84,'total_sidebar_layout','right_sidebar'),(355,86,'_edit_last','1'),(356,86,'_edit_lock','1505092609:1'),(357,86,'_wp_page_template','default'),(358,86,'total_sidebar_layout','right_sidebar'),(359,88,'_edit_last','1'),(360,88,'_edit_lock','1505092647:1'),(361,88,'_wp_page_template','default'),(362,88,'total_sidebar_layout','right_sidebar'),(363,90,'_edit_last','1'),(364,90,'_edit_lock','1505092681:1'),(365,90,'_wp_page_template','default'),(366,90,'total_sidebar_layout','right_sidebar'),(367,92,'_edit_last','1'),(368,92,'_edit_lock','1505093023:1'),(369,92,'_wp_page_template','default'),(370,92,'total_sidebar_layout','right_sidebar'),(371,94,'_menu_item_type','taxonomy'),(372,94,'_menu_item_menu_item_parent','0'),(373,94,'_menu_item_object_id','18'),(374,94,'_menu_item_object','category'),(375,94,'_menu_item_target',''),(376,94,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(377,94,'_menu_item_xfn',''),(378,94,'_menu_item_url',''),(379,94,'_menu_item_orphaned','1505093097'),(380,95,'_menu_item_type','taxonomy'),(381,95,'_menu_item_menu_item_parent','0'),(382,95,'_menu_item_object_id','17'),(383,95,'_menu_item_object','category'),(384,95,'_menu_item_target',''),(385,95,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(386,95,'_menu_item_xfn',''),(387,95,'_menu_item_url',''),(388,95,'_menu_item_orphaned','1505093097'),(389,97,'_menu_item_type','taxonomy'),(390,97,'_menu_item_menu_item_parent','0'),(391,97,'_menu_item_object_id','18'),(392,97,'_menu_item_object','category'),(393,97,'_menu_item_target',''),(394,97,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(395,97,'_menu_item_xfn',''),(396,97,'_menu_item_url',''),(461,105,'_wp_trash_meta_status','publish'),(462,105,'_wp_trash_meta_time','1505093399'),(463,106,'_wp_trash_meta_status','publish'),(464,106,'_wp_trash_meta_time','1505093478'),(465,107,'_wp_trash_meta_status','publish'),(466,107,'_wp_trash_meta_time','1505093618'),(467,108,'_edit_last','1'),(468,108,'_edit_lock','1505097577:1'),(469,108,'_wp_page_template','default'),(470,108,'total_sidebar_layout','right_sidebar');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2017-08-30 11:25:28','2017-08-30 15:25:28','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2017-08-30 11:25:28','2017-08-30 15:25:28','',0,'http://localhost:8000/?p=1',0,'post','',1),(2,1,'2017-08-30 11:25:28','2017-08-30 15:25:28','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Halifax, have a great dog named Jack, and I like . (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','trash','closed','open','','sample-page__trashed','','','2017-08-30 15:39:08','2017-08-30 19:39:08','',0,'http://localhost:8000/?page_id=2',0,'page','',0),(3,1,'2017-08-30 11:25:40','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2017-08-30 11:25:40','0000-00-00 00:00:00','',0,'http://localhost:8000/?p=3',0,'post','',0),(4,1,'2017-08-30 12:19:16','2017-08-30 16:19:16','','Boutique','','publish','closed','closed','','boutique','','','2017-08-30 12:19:16','2017-08-30 16:19:16','',0,'http://localhost:8000/boutique/',0,'page','',0),(5,1,'2017-08-30 12:19:16','2017-08-30 16:19:16','[woocommerce_cart]','Panier','','publish','closed','closed','','panier','','','2017-08-30 12:19:16','2017-08-30 16:19:16','',0,'http://localhost:8000/panier/',0,'page','',0),(6,1,'2017-08-30 12:19:16','2017-08-30 16:19:16','[woocommerce_checkout]','Commande','','publish','closed','closed','','commande','','','2017-08-30 12:19:16','2017-08-30 16:19:16','',0,'http://localhost:8000/commande/',0,'page','',0),(7,1,'2017-08-30 12:19:16','2017-08-30 16:19:16','[woocommerce_my_account]','Mon compte','','publish','closed','closed','','mon-compte','','','2017-08-30 12:19:16','2017-08-30 16:19:16','',0,'http://localhost:8000/mon-compte/',0,'page','',0),(8,1,'2017-08-30 12:21:54','2017-08-30 16:21:54','Ceci est une description','Sans Oublier les Couleurs','Ceci est une description','publish','open','closed','','sans-oublier-les-couleurs','','','2017-08-30 15:37:12','2017-08-30 19:37:12','',0,'http://localhost:8000/?post_type=product&#038;p=8',0,'product','',0),(9,1,'2017-08-30 12:22:42','2017-08-30 16:22:42','{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"total::header_text\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','ee9f7cdc-935b-49f5-8622-e65189004975','','','2017-08-30 12:22:42','2017-08-30 16:22:42','',0,'http://localhost:8000/ee9f7cdc-935b-49f5-8622-e65189004975/',0,'customize_changeset','',0),(11,1,'2017-08-30 15:32:15','2017-08-30 19:32:15',' ','','','publish','closed','closed','','11','','','2017-09-10 21:35:24','2017-09-11 01:35:24','',0,'http://localhost:8000/?p=11',8,'nav_menu_item','',0),(12,1,'2017-08-30 15:31:44','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-08-30 15:31:44','0000-00-00 00:00:00','',0,'http://localhost:8000/?p=12',1,'nav_menu_item','',0),(13,1,'2017-08-30 15:32:15','2017-08-30 19:32:15',' ','','','publish','closed','closed','','13','','','2017-09-10 21:35:24','2017-09-11 01:35:24','',0,'http://localhost:8000/?p=13',9,'nav_menu_item','',0),(14,1,'2017-08-30 15:31:44','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-08-30 15:31:44','0000-00-00 00:00:00','',0,'http://localhost:8000/?p=14',1,'nav_menu_item','',0),(15,1,'2017-08-30 15:31:44','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-08-30 15:31:44','0000-00-00 00:00:00','',0,'http://localhost:8000/?p=15',1,'nav_menu_item','',0),(16,1,'2017-08-30 15:32:53','2017-08-30 19:32:53','','Projets','','publish','closed','closed','','projets','','','2017-09-05 21:25:04','2017-09-06 01:25:04','',0,'http://localhost:8000/?page_id=16',0,'page','',0),(17,1,'2017-08-30 15:32:53','2017-08-30 19:32:53','','Projets','','inherit','closed','closed','','16-revision-v1','','','2017-08-30 15:32:53','2017-08-30 19:32:53','',16,'http://localhost:8000/16-revision-v1/',0,'revision','',0),(18,1,'2017-08-30 15:33:18','2017-08-30 19:33:18','','Événements','','publish','closed','closed','','evenements','','','2017-08-30 15:33:18','2017-08-30 19:33:18','',0,'http://localhost:8000/?page_id=18',0,'page','',0),(19,1,'2017-08-30 15:33:18','2017-08-30 19:33:18','','Événements','','inherit','closed','closed','','18-revision-v1','','','2017-08-30 15:33:18','2017-08-30 19:33:18','',18,'http://localhost:8000/18-revision-v1/',0,'revision','',0),(20,1,'2017-08-30 15:33:36','2017-08-30 19:33:36','<p>Dans cette section, vous trouverez des liens concernant la déficience intellectuelle.</p>\r\n\r\n\r\n<h3>Camps de vacances</h3>\r\n\r\n<ul>\r\n<li>Association des camps du Québec: <a title=\"http://www.camps.qc.ca/\" href=\"http://www.camps.qc.ca/\">http://www.camps.qc.ca</span></a></li>\r\n<li>Camp Gatineau: <a title=\"http://www.campgatineau.com/\" href=\"http://www.campgatineau.com/\">http://www.campgatineau.com</a></li>\r\n<li>Centre Normand Léveillé: <a title=\"http://www.centre-normand-leveille.ca/\" href=\"http://www.centre-normand-leveille.ca/\">http://www.centre-normand-leveille.ca</a></li>\r\n<li>Camp Cité Joie: <a title=\"http://www.citejoie.com/\" href=\"http://www.citejoie.com/\">http://www.citejoie.com</a></li>\r\n<li>Camp Perce-neige: <a title=\"http://www.perceneige.ca/\" href=\"http://www.perceneige.ca/\">http://www.perceneige.ca</a></li>\r\n</ul>\r\n\r\n<h3>Centres de réadaptation</h3>\r\n\r\n<ul>\r\n<li>CRDI Gabrielle-Major: <a title=\"http://www.crgm.qc.ca/\" href=\"http://www.crgm.qc.ca/\">www.crgm.qc.ca</a></li>\r\n<li>CRDI Lisette-Dupras: <a title=\"http://www.lisette-dupras.ca/\" href=\"http://www.lisette-dupras.ca/\">www.lisette-dupras.ca</a></li>\r\n<li>CRDI L\'intégrale: <a title=\"http://www.integrale.org/\" href=\"http://www.integrale.org/\">www.integrale.org</a></li>\r\n<li>CRDI de l\'ouest de Montréal: <a title=\"http://www.crom.ca/\" href=\"http://www.crom.ca/\">www.crom.ca</a></li>\r\n<li>CRDI Chaudière-Appalaches: <a title=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\" href=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\">www.quebec-affaires.com/crdi</a></li>\r\n<li>CRDI Montérégie-Est: <a title=\"http://www.crdime.qc.ca\" href=\"http://www.crdime.qc.ca/\">http://www.crdime.qc.ca</a></li>\r\n<li>Centre Miriam: </span><a title=\"http://www.centremiriam.ca/\" href=\"http://www.centremiriam.ca/\">www.centremiriam.ca</a></li>\r\n<li>Centre de réadaptation La Myriade: <a title=\"http://www.crlamyriade.qc.ca/\" href=\"http://www.crlamyriade.qc.ca/\">www.crlamyriade.qc.ca</a></li>\r\n</ul>\r\n\r\n<h3>Association, organisme communautaire et autres....</h3>\r\n\r\n<ul>\r\n<li>Association du Québec pour l\'Intégration sociale:<a title=\"http://www.total.net/~aqisiqdi/\" href=\"http://www.total.net/~aqisiqdi/\">www.total.net/~aqisiqdi/</a></li>\r\n<li>Office des personnes handicapées du Québec:<a title=\"http://www.ophq.gouv.qc.ca/\" href=\"http://www.ophq.gouv.qc.ca/\">www.ophq.gouv.qc.ca/</a></li>\r\n<li>Société québécoise de l\'autisme:<a title=\"http://www.autisme.qc.ca/\" href=\"http://www.autisme.qc.ca/\">www.autisme.qc.ca/</a></li>\r\n</ul>\r\n\r\n<h3>MONTRÉAL</h3>\r\n<p class=\"paragraph_style_7\">Association de Montréal pour la déficience intellectuelle (AMDI):<a class=\"Aucun\" title=\"http://www.delegation.ca/amdi\" href=\"http://www.delegation.ca/amdi\">www.amdi.info</a></p>\r\n<p class=\"paragraph_style\">Association de l\'Ouest de l\'île pour les personnes handicapées: <a class=\"Aucun\" title=\"http://www.aoihi.qc.ca/\" href=\"http://www.aoihi.qc.ca/\">www.aoihi.qc.ca</a></p>\r\n<p class=\"paragraph_style\">Site des TED à Laval:<a class=\"Aucun\" title=\"http://www.autisme-laval.org/\" href=\"http://www.autisme-laval.org/\">www.autisme-laval.org</a></p>\r\n<p class=\"paragraph_style\">ATEDM: <a title=\"http://www.autisme-montreal.com\" href=\"http://www.autisme-montreal.com/\">www.autisme-montreal.com</a></p>\r\n<p class=\"paragraph_style_8\">Corporation les compagnons de Montréal:</p>\r\n<p class=\"paragraph_style\">5333 St-Zotique Est,\r\nMontréal H1T 1N7,\r\nTél.: (514) 727-4444\r\nTéléc.:(514) 727-4738\r\n<a class=\"Aucun\" title=\"mailto:compagnons@compagnonsdemtl.com\" href=\"mailto:compagnons@compagnonsdemtl.com\">Compagnons@compagnonsdemtl.com</a></p>\r\n<p class=\"paragraph_style_8\">L’ami du déficient mental:</p>\r\n<p class=\"paragraph_style\">Denyse De Ladurantaye\r\n4960, 7e Avenue\r\nMontréal, Québec\r\nH1Y 2M9</p>\r\n<p class=\"paragraph_style\">Tél.: (514) 527-7671\r\nTélec.: (514) 527-7811</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:ldj.admi@hotmail.com\" href=\"mailto:ldj.admi@hotmail.com\">ldj.admi@hotmail.com</a></p>\r\n<p class=\"paragraph_style_10\">Prolongement à la famille de Montréal:</p>\r\n<p class=\"paragraph_style\">Carroll Godin\r\n2570, rue Nicolet\r\nBureau 300\r\nMontréal, Québec\r\nH1W 3L5</p>\r\n<p class=\"paragraph_style\">Tél.: (514) 596-2169\r\nTélec.: (514) 523-8637</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:upfm@qc.aira.com\" href=\"mailto:upfm@qc.aira.com\">upfm@qc.aira.com</a></p>\r\n<p class=\"paragraph_style_10\">Corporation L’Espoir:</p>\r\n<p class=\"paragraph_style\">Anne Barbier\r\n55, Dupras\r\nlocal 1S28 Hôtel de Ville\r\nLaSalle, Québec\r\nH8R 4A8Tél.: (514) 367-3757\r\nTélec.: (514) 367-0444</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:corporation.espoir@qc.aira.com\" href=\"mailto:corporation.espoir@qc.aira.com\">corporation.espoir@qc.aira.com</a></p>\r\n<p class=\"paragraph_style_10\">Atelier le fil d\'Ariane:</p>\r\n<p class=\"paragraph_style\">4837, rue Boyer, bur. 100\r\nMontréal (Québec) H2J 3E6</p>\r\nTéléphone\r\n(514) 842-5592\r\nTélécopieur\r\n(514) 842-8343\r\n<a class=\"Aucun\" title=\"mailto:fariane@videotron.ca\" href=\"mailto:fariane@videotron.ca\">lisette.claveau.ariane@ssss.gouv.qc.ca</a>\r\n<p class=\"paragraph_style\"><a title=\"http://www.atelierlefildariane.org\" href=\"http://www.atelierlefildariane.org/\">http://www.atelierlefildariane.org</a></p>\r\n<p class=\"paragraph_style_11\">Région des Cantons de l\'est</p>\r\n<p class=\"paragraph_style_12\">Camp Garagona</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Association des camps du québec Déficience intel. 8 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Frelighsburg</p>\r\n<p class=\"paragraph_style_13\">(514) 298-5159</p>\r\n<p class=\"paragraph_style_2\">Région Lanaudière</p>\r\n<p class=\"paragraph_style_12\">Le Vallon de l\'accueil</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle, 18 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Mascouche</p>\r\n<p class=\"paragraph_style_13\">(514) 756-8288</p>\r\n<p class=\"paragraph_style_2\">Région des Laurentides</p>\r\n<p class=\"paragraph_style_12\">Domaine des Prés d\'or</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: Lacs des iles</p>\r\n<p class=\"paragraph_style_13\">(819) 597-2499</p>\r\n<p class=\"paragraph_style_12\">YMCA Pointe Claires</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Priorité pour résidents du West Island Déf. intel. 16 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Ste Agathe</p>\r\n<p class=\"paragraph_style_13\">(514) 694-9622</p>\r\n<p class=\"paragraph_style_12\">Camp Perce neige</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Michel de Wentworth</p>\r\n<p class=\"paragraph_style_13\">(514) 226-5936</p>\r\n<p class=\"paragraph_style_2\">Région Montérégie</p>\r\n<p class=\"paragraph_style_12\">Domaine du rêve</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: Ormstown</p>\r\n<p class=\"paragraph_style_13\">(514)829-3358</p>\r\n<p class=\"paragraph_style_12\">BPA les Bosquets</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: Otterburn Park</p>\r\n<p class=\"paragraph_style_13\">(514) 467-3918</p>\r\n<p class=\"paragraph_style_12\">La p\'tite vacance (répit et fin de semaine)</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Antoine sur Richelieu</p>\r\n<p class=\"paragraph_style_13\">(514) 787-2957</p>\r\n<p class=\"paragraph_style_2\">Région de Québec</p>\r\n<p class=\"paragraph_style_12\">Camp Patro Roc-Amadour</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ado et adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Pierre, Ile d\'Orléans</p>\r\n<p class=\"paragraph_style_13\">(418) 828-1151 (418)529-4996</p>\r\n<p class=\"paragraph_style_12\">Auberge cité joie</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous âge</p>\r\n<p class=\"paragraph_style_13\">Lieu: Lac Beauport</p>\r\n<p class=\"paragraph_style_13\">(418) 849-7183</p>\r\n<p class=\"paragraph_style_2\">Autres</p>\r\n<p class=\"paragraph_style_12\">Centre au puits</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Camp régulier avec intégration (personnes indépendantes)</p>\r\n<p class=\"paragraph_style_13\">Lieu: Montréal</p>\r\n<p class=\"paragraph_style_13\">(514) 843-5004</p>\r\n<p class=\"paragraph_style_12\">Sac et chanson</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle</p>\r\n<p class=\"paragraph_style_13\">Lieu: 5854 rue Clark Montréal</p>\r\n\r\n<ol>\r\n 	<li class=\"full-width\" value=\"514\">\r\n<p class=\"paragraph_style_14\"><span class=\"Puce\">(514)</span>698-3361 (514) 276-2921</p>\r\n</li>\r\n</ol>','Liens utiles','','publish','closed','closed','','liens-utiles','','','2017-08-30 21:40:55','2017-08-31 01:40:55','',0,'http://localhost:8000/?page_id=20',0,'page','',0),(21,1,'2017-08-30 15:33:36','2017-08-30 19:33:36','','Liens utiles','','inherit','closed','closed','','20-revision-v1','','','2017-08-30 15:33:36','2017-08-30 19:33:36','',20,'http://localhost:8000/20-revision-v1/',0,'revision','',0),(22,1,'2017-08-30 15:33:54','2017-08-30 19:33:54','[contact-form-7 id=\"65\" title=\"Formulaire de contact 1\"]\r\n\r\n[wpgmza id=\"1\"]\r\n\r\nTéléphone\r\n514-524-6626\r\n                                                                        \r\nCellulaire\r\n514-561-6626\r\n\r\nTélécopieur\r\n514-524-6756\r\n\r\nAdresse postale\r\n1700 rue Amherst,\r\nMontréal, Qc\r\nH2L 3L5\r\n','Nous contacter','','publish','closed','closed','','nous-contacter','','','2017-08-30 22:46:06','2017-08-31 02:46:06','',0,'http://localhost:8000/?page_id=22',0,'page','',0),(23,1,'2017-08-30 15:33:54','2017-08-30 19:33:54','','Nous contacter','','inherit','closed','closed','','22-revision-v1','','','2017-08-30 15:33:54','2017-08-30 19:33:54','',22,'http://localhost:8000/22-revision-v1/',0,'revision','',0),(24,1,'2017-08-30 15:34:39','2017-08-30 19:34:39',' ','','','publish','closed','closed','','24','','','2017-09-10 21:35:24','2017-09-11 01:35:24','',0,'http://localhost:8000/?p=24',7,'nav_menu_item','',0),(26,1,'2017-08-30 15:34:38','2017-08-30 19:34:38',' ','','','publish','closed','closed','','26','','','2017-09-10 21:35:24','2017-09-11 01:35:24','',0,'http://localhost:8000/?p=26',2,'nav_menu_item','',0),(27,1,'2017-08-30 15:34:38','2017-08-30 19:34:38',' ','','','publish','closed','closed','','27','','','2017-09-10 21:35:24','2017-09-11 01:35:24','',0,'http://localhost:8000/?p=27',1,'nav_menu_item','',0),(28,1,'2017-08-30 15:35:45','2017-08-30 19:35:45','{\n    \"total::nav_menu_locations[primary]\": {\n        \"value\": 16,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','b8e4f402-e655-4b3c-bb11-4bd3f03704d4','','','2017-08-30 15:35:45','2017-08-30 19:35:45','',0,'http://localhost:8000/b8e4f402-e655-4b3c-bb11-4bd3f03704d4/',0,'customize_changeset','',0),(29,1,'2017-08-30 15:36:55','2017-08-30 19:36:55','','Panneau des cre´dits','','inherit','open','closed','','panneau-des-credits','','','2017-08-30 15:36:55','2017-08-30 19:36:55','',8,'http://localhost:8000/wp-content/uploads/2017/08/logo_sansoublierlesourire-1.jpg',0,'attachment','image/jpeg',0),(30,1,'2017-08-30 15:39:08','2017-08-30 19:39:08','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Halifax, have a great dog named Jack, and I like . (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2017-08-30 15:39:08','2017-08-30 19:39:08','',2,'http://localhost:8000/2-revision-v1/',0,'revision','',0),(31,1,'2017-08-30 15:42:00','2017-08-30 19:42:00','','Order &ndash; août 30, 2017 @ 03:42  ','','wc-completed','closed','closed','order_59a715364569b','commande-aug-30-2017-0742-pm','','','2017-08-30 15:50:23','2017-08-30 19:50:23','',0,'http://localhost:8000/?post_type=shop_order&#038;p=31',0,'shop_order','',5),(32,1,'2017-08-30 20:59:11','2017-08-31 00:59:11','','Home','','publish','closed','closed','','home','','','2017-08-30 22:13:12','2017-08-31 02:13:12','',0,'http://localhost:8000/?page_id=32',0,'page','',0),(33,1,'2017-08-30 20:59:11','2017-08-31 00:59:11','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"value\": \"32\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            32\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"total::total_slider_page1\": {\n        \"value\": \"32\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','8f5f19e6-4453-48a4-8ab4-24537f213b43','','','2017-08-30 20:59:11','2017-08-31 00:59:11','',0,'http://localhost:8000/?p=33',0,'customize_changeset','',0),(34,1,'2017-08-30 20:59:11','2017-08-31 00:59:11','','Home','','inherit','closed','closed','','32-revision-v1','','','2017-08-30 20:59:11','2017-08-31 00:59:11','',32,'http://localhost:8000/32-revision-v1/',0,'revision','',0),(35,1,'2017-08-30 20:59:57','2017-08-31 00:59:57','{\n    \"total::total_about_page_disable\": {\n        \"value\": \"off\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_about_page\": {\n        \"value\": \"32\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','692a1573-e352-4b27-8a16-7ecd999e0745','','','2017-08-30 20:59:57','2017-08-31 00:59:57','',0,'http://localhost:8000/692a1573-e352-4b27-8a16-7ecd999e0745/',0,'customize_changeset','',0),(36,1,'2017-08-30 21:01:30','2017-08-31 01:01:30','{\n    \"total::total_team_title\": {\n        \"value\": \"Notre \\u00c9quipe\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_sub_title\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_designation1\": {\n        \"value\": \"Marianne\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_facebook1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_twitter1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_google_plus1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_designation2\": {\n        \"value\": \"Gabriel\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_facebook2\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_twitter2\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_google_plus2\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_designation3\": {\n        \"value\": \"Sandra\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_facebook3\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_twitter3\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_google_plus3\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','5969ab54-7216-4549-878d-ca3d4d343662','','','2017-08-30 21:01:30','2017-08-31 01:01:30','',0,'http://localhost:8000/?p=36',0,'customize_changeset','',0),(37,1,'2017-08-30 21:11:47','2017-08-31 01:11:47','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','00dfeca9-8ddb-4a95-8020-a6386acdf53f','','','2017-08-30 21:11:47','2017-08-31 01:11:47','',0,'http://localhost:8000/?p=37',0,'customize_changeset','',0),(39,1,'2017-08-30 21:10:47','2017-08-31 01:10:47',' ','','','publish','closed','closed','','39','','','2017-09-10 21:35:24','2017-09-11 01:35:24','',0,'http://localhost:8000/?p=39',4,'nav_menu_item','',0),(40,1,'2017-08-30 21:11:42','2017-08-31 01:11:42','<h2>Intervenant-e Socio-communautaire</h2>\r\n<h5>(Remplacement d’un congé de maternité : mai 2017 à septembre 2018)</h5>\r\n\r\n<p>L’organisme le plus joyeux de Montréal est à la recherche d’un-e intervenant-e ayant envie de travailler auprès d’un groupe d’adultes vivant avec une déficience intellectuelle ; et de promouvoir et s’investir dans un nouveau projet inclusif et novateur ; le projet ensemble en forme dans le club des 3V. Communautaire, dynamique et engagé, SOS est un milieu de travail où l’engagement et la bonne humeur sont de mise. Nous travaillons sur plusieurs fronts ; centre de jour ; projets de mise en forme, activités pour ainés, projet de promotion de la différence, défense de droits et ateliers de sensibilisation.</p>\r\n\r\n<b>Mission de SOS :</b>\r\n\r\nPromouvoir le rôle actif des personnes différentes dans la société en créant des contextes où les membres ont à interagir avec un environnement aussi large et diversifié que possible ! L’ensemble des participants profitent ainsi de l’apport des uns et des autres.\r\n\r\n<b>Projet Ensemble en forme dans le club 3V :</b>\r\n\r\nIl s’agit d’un projet pour stimuler les saines habitudes de vie et briser l’isolement des personnes ayant une déficience intellectuelle. Le projet se décline en 3 activités, club d’ainés dans une bibliothèque du quartier les mercredis, club de marche à la Promenade Bellerive (est de Montréal) les jeudis am et club aquatique au Centre Sportif du Stade Olympique. Le projet vise des objectifs d’inclusion et de participation sociale et de sensibilisation.\r\n\r\n<b>Profil de la personne recherchée :</b>\r\n\r\nVous aimez côtoyer des personnes vivant avec une déficience intellectuelle et vous croyez et rêvez d’inclusion. Vous avez envie de travailler dans un contexte d’équipe et de porter un projet d’envergure tout en maintenant l’intervention et l’animation au cœur de votre implication. Vous vous distinguez par votre autonomie, votre capacité d’adaptation, votre bonne humeur et votre ouverture d’esprit.\r\n\r\n<b>Fonctions :</b>\r\n<ul>\r\n 	<li>La personne devra maintenir et développer le projet 3V en y assumant des tâches d’animation, d’intervention, d’accompagnement, de coordination de projet et de collaboration auprès des partenaires</li>\r\n 	<li>Intervention, création d’outils, application des plans d’intervention auprès de la clientèle. Déployer tout ce qu’il faut pour que les participants puissent participer aux activités dans la communauté.</li>\r\n 	<li>Gestion des bénévoles attachés au projet</li>\r\n 	<li>Animer et intégrer les différents volets de l’organisme (projet de sensibilisation, centre d’activités de jour, projet grand public, etc)</li>\r\n 	<li>Développer des nouveaux partenariats et travailler en collaboration avec le réseau de la santé (CIUSS)</li>\r\n 	<li>Travailler aux tâches quotidiennes reliées au projet et à la réalité de l’organisme.</li>\r\n</ul>\r\n\r\n<b>Exigences :</b>\r\n<ul>\r\n 	<li>Détenir un diplôme d’études collégiales ou l’équivalent</li>\r\n 	<li>Expérience auprès de personnes ayant avec une déficience intellectuelle</li>\r\n 	<li>Expérience pertinente en intervention et en animation</li>\r\n 	<li>Maitrise du français écrit</li>\r\n 	<li>Bonnes capacités de rédaction et de mise en page</li>\r\n</ul>\r\n\r\n<b>Détails de l’emploi:</b>\r\n<ul>\r\n 	<li>32h/semaine de mai à juillet; à revoir de septembre 2017 à septembre 2018 (à noter que l’organisme fait relâche au mois d’août)</li>\r\n 	<li>salaire selon la politique salariale en vigueur</li>\r\n 	<li>6 semaines de vacances par année + avantages sociaux</li>\r\n</ul>\r\n<p class=\"paragraph_style\">Si cette annonce vous interpelle et que vous avez envie de nous rencontrer, veuillez faire parvenir votre curriculum vitae ainsi qu’une lettre de présentation à l’adresse suivante:<a href=\"mailto:sosembauche@hotmail.com?subject=%C3%80%20l%27attention%20de%20Marianne%20Dup%C3%A9r%C3%A9%20-%20Offre%20d%27emploi%20Intervenant-e%20Socio-communautaire\">sosembauche@hotmail.com</a></p>\r\n\r\nMarianne Dupéré\r\ncoordonnatrice\r\n','Offres d\'emploi','','publish','closed','closed','','offres-demploi','','','2017-08-30 21:58:58','2017-08-31 01:58:58','',0,'http://localhost:8000/?page_id=40',0,'page','',0),(41,1,'2017-08-30 21:11:42','2017-08-31 01:11:42','<div class=\"tinyText style_SkipStroke_4\"><img src=\"http://sansoublierlesourire.org/Sans_Oublier_le_Sourire/Offre_demploi_files/BlueNote_blackaccent.png\" alt=\"\" /></div>\r\n<div id=\"id4\" class=\"style_SkipStroke_5 shape-with-text\">\r\n<div class=\"text-content graphic_textbox_layout_style_default_External_630_1173\">\r\n<div class=\"graphic_textbox_layout_style_default\">\r\n<h2>Intervenant-e Socio-communautaire</h2>\r\n<h4>(Remplacement d’un congé de maternité : mai 2017 à septembre 2018)</h4>\r\nL’organisme le plus joyeux de Montréal est à la recherche d’un-e intervenant-e ayant envie de travailler auprès d’un groupe d’adultes vivant avec une déficience intellectuelle ; et de promouvoir et s’investir dans un nouveau projet inclusif et novateur ; le projet ensemble en forme dans le club des 3V. Communautaire, dynamique et engagé, SOS est un milieu de travail où l’engagement et la bonne humeur sont de mise. Nous travaillons sur plusieurs fronts ; centre de jour ; projets de mise en forme, activités pour ainés, projet de promotion de la différence, défense de droits et ateliers de sensibilisation.\r\n\r\n<b>Mission de SOS :</b>\r\n\r\nPromouvoir le rôle actif des personnes différentes dans la société en créant des contextes où les membres ont à interagir avec un environnement aussi large et diversifié que possible ! L’ensemble des participants profitent ainsi de l’apport des uns et des autres.\r\n\r\n<b>Projet Ensemble en forme dans le club 3V :</b>\r\n\r\nIl s’agit d’un projet pour stimuler les saines habitudes de vie et briser l’isolement des personnes ayant une déficience intellectuelle. Le projet se décline en 3 activités, club d’ainés dans une bibliothèque du quartier les mercredis, club de marche à la Promenade Bellerive (est de Montréal) les jeudis am et club aquatique au Centre Sportif du Stade Olympique. Le projet vise des objectifs d’inclusion et de participation sociale et de sensibilisation.\r\n\r\n<b>Profil de la personne recherchée :</b>\r\n\r\nVous aimez côtoyer des personnes vivant avec une déficience intellectuelle et vous croyez et rêvez d’inclusion. Vous avez envie de travailler dans un contexte d’équipe et de porter un projet d’envergure tout en maintenant l’intervention et l’animation au cœur de votre implication. Vous vous distinguez par votre autonomie, votre capacité d’adaptation, votre bonne humeur et votre ouverture d’esprit.\r\n\r\n<b>Fonctions :</b>\r\n<ul>\r\n 	<li>La personne devra maintenir et développer le projet 3V en y assumant des tâches d’animation, d’intervention, d’accompagnement, de coordination de projet et de collaboration auprès des partenaires</li>\r\n 	<li>Intervention, création d’outils, application des plans d’intervention auprès de la clientèle. Déployer tout ce qu’il faut pour que les participants puissent participer aux activités dans la communauté.</li>\r\n 	<li>Gestion des bénévoles attachés au projet</li>\r\n 	<li>Animer et intégrer les différents volets de l’organisme (projet de sensibilisation, centre d’activités de jour, projet grand public, etc)</li>\r\n 	<li>Développer des nouveaux partenariats et travailler en collaboration avec le réseau de la santé (CIUSS)</li>\r\n 	<li>Travailler aux tâches quotidiennes reliées au projet et à la réalité de l’organisme.</li>\r\n</ul>\r\n<b>Exigences :</b>\r\n<ul>\r\n 	<li>Détenir un diplôme d’études collégiales ou l’équivalent</li>\r\n 	<li>Expérience auprès de personnes ayant avec une déficience intellectuelle</li>\r\n 	<li>Expérience pertinente en intervention et en animation</li>\r\n 	<li>Maitrise du français écrit</li>\r\n 	<li>Bonnes capacités de rédaction et de mise en page</li>\r\n</ul>\r\n<b>Détails de l’emploi:</b>\r\n<ul>\r\n 	<li>32h/semaine de mai à juillet; à revoir de septembre 2017 à septembre 2018 (à noter que l’organisme fait relâche au mois d’août)</li>\r\n 	<li>salaire selon la politique salariale en vigueur</li>\r\n 	<li>6 semaines de vacances par année + avantages sociaux</li>\r\n</ul>\r\n<p class=\"paragraph_style\">Si cette annonce vous interpelle et que vous avez envie de nous rencontrer, veuillez faire parvenir votre curriculum vitae ainsi qu’une lettre de présentation à l’adresse suivante:<a href=\"mailto:sosembauche@hotmail.com?subject=%C3%80%20l%27attention%20de%20Marianne%20Dup%C3%A9r%C3%A9%20-%20Offre%20d%27emploi%20Intervenant-e%20Socio-communautaire\">sosembauche@hotmail.com</a></p>\r\nMarianne Dupéré\r\n\r\ncoordonnatrice\r\n\r\n</div>\r\n</div>\r\n</div>','Offres d\'emploi','','inherit','closed','closed','','40-revision-v1','','','2017-08-30 21:11:42','2017-08-31 01:11:42','',40,'http://localhost:8000/40-revision-v1/',0,'revision','',0),(42,1,'2017-08-30 21:22:19','2017-08-31 01:22:19','','Offres d\'emploi','','publish','closed','closed','','offres-demploi','','','2017-09-10 21:35:24','2017-09-11 01:35:24','',0,'http://localhost:8000/?p=42',5,'nav_menu_item','',0),(43,1,'2017-08-30 21:22:34','2017-08-31 01:22:34','<p class=\"paragraph_style\"><a class=\"class1\" title=\"http://www.crgm.qc.ca/cm/\" href=\"http://www.crgm.qc.ca/cm/\">Le CIUSS Centre-Sud (CRDITED de Mtl) </a></p>\r\n<p class=\"paragraph_style_1\">L’entente de service constitue la principale source de financement du projet de centre de jour en contexte intégré.  Il s,agit d’un partenaire essentiel au bon déroulement de notre programmation.  Tous les usagers de l’organismes proviennent du CRDI.</p>\r\n<p class=\"paragraph_style\"><a class=\"class2\" title=\"http://www.cclsca.qc.ca/\" href=\"http://www.cclsca.qc.ca/\">Le centre communautaire Sainte-Catherine d’Alexandrie\r\n</a></p>\r\n<p class=\"paragraph_style_1\">Le partenariat auprès du centre communautaire est bien établi.  Locataire des locaux et bénéficiaire de services tels que l’entretien, la réception, l’équipement de bureau et le réseau informatique, SOS est signataire d’un contrat annuel de services.  Bien au-delà de ce contrat, notre partenariat est une question humaine, puisque ici nous avons développé des liens forts, importants.</p>\r\n<p class=\"paragraph_style_2\"><a class=\"class3\" title=\"http://www.ville.montreal.qc.ca/villemarie\" href=\"http://www.ville.montreal.qc.ca/villemarie\">L’arrondissement Ville-Marie\r\n</a></p>\r\n<p class=\"paragraph_style_1\">Partenariat établi grâce à la direction des sports, loisirs et développement social, nous sommes fiers de collaborer avec l’arrondissement pour mener de beaux projets à terme! Notons la création et l’exposition de 10 magnifiques tables à pique-nique exposées tous les étés au parc Émilie Gamelin. Notons également la grande fête du 2 juin dans le cadre de la semaine québécoise des personnes handicapées!</p>\r\n<p class=\"paragraph_style_4\"><a class=\"class4\" title=\"http://www.mouvementphas.org/\" href=\"http://www.mouvementphas.org/\">Le mouvement PHAS\r\n</a></p>\r\n<p class=\"paragraph_style_5\">Le Mouvement PHAS est un rassemblement de personnes, d\'associations et d\'organisations  visant l\'accès à des services adéquats et adaptés pour les personnes handicapées.  C\'est par des activités de promotion, de défense de droits et des pressions politiques qu\'ils défendent leur mission.  Le mouvement est une voix commune pour les personnes qui défendent la qualité de vie des personnes handicapées.  Nous tentons de nous joindre aux activités du mouvement quand cela est possible et nous collaborons aux différentes actions du mouvement.  Nous sommes reconnaissants du travail du mouvement, car ils défendent une cause sociale juste et essentielle.  Notre implication a débuté en 2006.</p>\r\n<p class=\"paragraph_style_4\"><a class=\"class5\" title=\"http://www.aqis-iqdi.qc.ca/\" href=\"http://www.aqis-iqdi.qc.ca/\">AQIS-IDQI\r\n</a></p>\r\n<p class=\"paragraph_style_5\"><span class=\"style_1\">L’Association Québécoise pour l’Intégration Sociale</span> est une importante association dans le milieu. Elle nous permet d’avoir accès à la bibliothèque de <span class=\"style_1\">l’Institut Québécois pour la Déficience Intellectuelle (IQDI)</span>, à un important éventail de formations pour les intervenants du domaine, à de l’information traitant de l’actualité en lien avec la cause, en plus de nous donner une invitation au congrès annuel, une visibilité pour notre organisme et des contacts précieux pour le développement de SOS.  Cette collaboration nous donne aussi accès au matériel promotionnel de la semaine québécoise de la déficience intellectuelle.</p>\r\n<p class=\"paragraph_style_4\"><a class=\"class6\" title=\"http://www.cradi.com/\" href=\"http://www.cradi.com/\">CRADI</a></p>\r\n<p class=\"paragraph_style_5\">SOS est officiellement membre du CRADI depuis l\'automne 2009.  Ce regroupement offre une voix pour la défense des droits des personnes qui vivent avec une déficience intellectuelle.  En plus de nous donner accès à de l\'information privilégiée, SOS s\'implique fièrement et activement sur des dossiers importants tels que l\'avenir des activités de travail ou socio-professionnelles pour les personnes vivant avec une déficience intellectuelle.  Le CRADI représente beaucoup pour un petit organisme tel que SOS.</p>\r\n<p class=\"paragraph_style_6\"><a class=\"class7\" title=\"http://www.altergo.net/\" href=\"http://www.altergo.net/\">Alter-GO</a></p>\r\n<p class=\"paragraph_style_5\">Membre de cette association.  SOS joint sa voix à se mouvement pour le loisir adapté et sa participation à une société inclusive.  Être membre d\'Altergo, c\'est participer à des évènements tels que le défi sportif, c\'est recevoir de l\'informations, c\'est créer un réseau de contacts, c\'est la possibilité de soumettre notre candidature pour des prix récompensant l\'inclusion et l\'intégration sociale par le loisir... et, c\'est plus encore!</p>','Partenaires','','publish','closed','closed','','partenaires','','','2017-09-05 21:23:36','2017-09-06 01:23:36','',0,'http://localhost:8000/?page_id=43',0,'page','',0),(44,1,'2017-08-30 21:22:34','2017-08-31 01:22:34','<p class=\"paragraph_style\"><a class=\"class1\" title=\"http://www.crgm.qc.ca/cm/\" href=\"http://www.crgm.qc.ca/cm/\">Le CIUSS Centre-Sud (CRDITED de Mtl) </a></p>\r\n<p class=\"paragraph_style_1\">L’entente de service constitue la principale source de financement du projet de centre de jour en contexte intégré.  Il s,agit d’un partenaire essentiel au bon déroulement de notre programmation.  Tous les usagers de l’organismes proviennent du CRDI.</p>\r\n<p class=\"paragraph_style\"><a class=\"class2\" title=\"http://www.cclsca.qc.ca/\" href=\"http://www.cclsca.qc.ca/\">Le centre communautaire Sainte-Catherine d’Alexandrie\r\n</a></p>\r\n<p class=\"paragraph_style_1\">Le partenariat auprès du centre communautaire est bien établi.  Locataire des locaux et bénéficiaire de services tels que l’entretien, la réception, l’équipement de bureau et le réseau informatique, SOS est signataire d’un contrat annuel de services.  Bien au-delà de ce contrat, notre partenariat est une question humaine, puisque ici nous avons développé des liens forts, importants.</p>\r\n<p class=\"paragraph_style_2\"><a class=\"class3\" title=\"http://www.ville.montreal.qc.ca/villemarie\" href=\"http://www.ville.montreal.qc.ca/villemarie\">L’arrondissement Ville-Marie\r\n</a></p>\r\n<p class=\"paragraph_style_1\">Partenariat établi grâce à la direction des sports, loisirs et développement social, nous sommes fiers de collaborer avec l’arrondissement pour mener de beaux projets à terme! Notons la création et l’exposition de 10 magnifiques tables à pique-nique exposées tous les étés au parc Émilie Gamelin. Notons également la grande fête du 2 juin dans le cadre de la semaine québécoise des personnes handicapées!</p>\r\n<p class=\"paragraph_style_4\"><a class=\"class4\" title=\"http://www.mouvementphas.org/\" href=\"http://www.mouvementphas.org/\">Le mouvement PHAS\r\n</a></p>\r\n<p class=\"paragraph_style_5\">Le Mouvement PHAS est un rassemblement de personnes, d\'associations et d\'organisations  visant l\'accès à des services adéquats et adaptés pour les personnes handicapées.  C\'est par des activités de promotion, de défense de droits et des pressions politiques qu\'ils défendent leur mission.  Le mouvement est une voix commune pour les personnes qui défendent la qualité de vie des personnes handicapées.  Nous tentons de nous joindre aux activités du mouvement quand cela est possible et nous collaborons aux différentes actions du mouvement.  Nous sommes reconnaissants du travail du mouvement, car ils défendent une cause sociale juste et essentielle.  Notre implication a débuté en 2006.</p>\r\n<p class=\"paragraph_style_4\"><a class=\"class5\" title=\"http://www.aqis-iqdi.qc.ca/\" href=\"http://www.aqis-iqdi.qc.ca/\">AQIS-IDQI\r\n</a></p>\r\n<p class=\"paragraph_style_5\"><span class=\"style_1\">L’Association Québécoise pour l’Intégration Sociale</span> est une importante association dans le milieu. Elle nous permet d’avoir accès à la bibliothèque de <span class=\"style_1\">l’Institut Québécois pour la Déficience Intellectuelle (IQDI)</span>, à un important éventail de formations pour les intervenants du domaine, à de l’information traitant de l’actualité en lien avec la cause, en plus de nous donner une invitation au congrès annuel, une visibilité pour notre organisme et des contacts précieux pour le développement de SOS.  Cette collaboration nous donne aussi accès au matériel promotionnel de la semaine québécoise de la déficience intellectuelle.</p>\r\n<p class=\"paragraph_style_4\"><a class=\"class6\" title=\"http://www.cradi.com/\" href=\"http://www.cradi.com/\">CRADI</a></p>\r\n<p class=\"paragraph_style_5\">SOS est officiellement membre du CRADI depuis l\'automne 2009.  Ce regroupement offre une voix pour la défense des droits des personnes qui vivent avec une déficience intellectuelle.  En plus de nous donner accès à de l\'information privilégiée, SOS s\'implique fièrement et activement sur des dossiers importants tels que l\'avenir des activités de travail ou socio-professionnelles pour les personnes vivant avec une déficience intellectuelle.  Le CRADI représente beaucoup pour un petit organisme tel que SOS.</p>\r\n<p class=\"paragraph_style_6\"><a class=\"class7\" title=\"http://www.altergo.net/\" href=\"http://www.altergo.net/\">Alter-GO</a></p>\r\n<p class=\"paragraph_style_5\">Membre de cette association.  SOS joint sa voix à se mouvement pour le loisir adapté et sa participation à une société inclusive.  Être membre d\'Altergo, c\'est participer à des évènements tels que le défi sportif, c\'est recevoir de l\'informations, c\'est créer un réseau de contacts, c\'est la possibilité de soumettre notre candidature pour des prix récompensant l\'inclusion et l\'intégration sociale par le loisir... et, c\'est plus encore!</p>','Partenaires','','inherit','closed','closed','','43-revision-v1','','','2017-08-30 21:22:34','2017-08-31 01:22:34','',43,'http://localhost:8000/43-revision-v1/',0,'revision','',0),(45,1,'2017-08-30 21:23:20','2017-08-31 01:23:20',' ','','','publish','closed','closed','','45','','','2017-09-10 21:35:24','2017-09-11 01:35:24','',0,'http://localhost:8000/?p=45',6,'nav_menu_item','',0),(46,1,'2017-08-30 21:38:24','2017-08-31 01:38:24','<p>Dans cette section, vous trouverez des liens concernant la déficience intellectuelle.</p>\n\n<h3>Camps de vacances</strong></h3>\n\n<ul>\n<li>Association des camps du Québec: <a title=\"http://www.camps.qc.ca/\" href=\"http://www.camps.qc.ca/\">http://www.camps.qc.ca</span></a></li>\n<li>Camp Gatineau: <a title=\"http://www.campgatineau.com/\" href=\"http://www.campgatineau.com/\">http://www.campgatineau.com</a></li>\n<li>Centre Normand Léveillé: <a title=\"http://www.centre-normand-leveille.ca/\" href=\"http://www.centre-normand-leveille.ca/\">http://www.centre-normand-leveille.ca</a></li>\n<li>Camp Cité Joie: <a title=\"http://www.citejoie.com/\" href=\"http://www.citejoie.com/\">http://www.citejoie.com</a></li>\n<li>Camp Perce-neige: <a title=\"http://www.perceneige.ca/\" href=\"http://www.perceneige.ca/\">http://www.perceneige.ca</a></li>\n</ul>\n\n<h3>Centres de réadaptation</h3>\n\n<ul>\n<li>CRDI Gabrielle-Major: <a title=\"http://www.crgm.qc.ca/\" href=\"http://www.crgm.qc.ca/\">www.crgm.qc.ca</a></li>\n<li>CRDI Lisette-Dupras: <a title=\"http://www.lisette-dupras.ca/\" href=\"http://www.lisette-dupras.ca/\">www.lisette-dupras.ca</a></li>\n<li>CRDI L\'intégrale: <a title=\"http://www.integrale.org/\" href=\"http://www.integrale.org/\">www.integrale.org</a></li>\n<li>CRDI de l\'ouest de Montréal: <a title=\"http://www.crom.ca/\" href=\"http://www.crom.ca/\">www.crom.ca</a></li>\n<li>CRDI Chaudière-Appalaches: <a title=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\" href=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\">www.quebec-affaires.com/crdi</a></li>\n<li>CRDI Montérégie-Est: <a title=\"http://www.crdime.qc.ca\" href=\"http://www.crdime.qc.ca/\">http://www.crdime.qc.ca</a></li>\n<li>Centre Miriam: </span><a title=\"http://www.centremiriam.ca/\" href=\"http://www.centremiriam.ca/\">www.centremiriam.ca</a></li>\n<li>Centre de réadaptation La Myriade: <a title=\"http://www.crlamyriade.qc.ca/\" href=\"http://www.crlamyriade.qc.ca/\">www.crlamyriade.qc.ca</a></li>\n</ul>\n\n<h3>Association, organisme communautaire et autres....</h3>\n\n<ul>\n<p class=\"paragraph_style_7\">Association du Québec pour l\'Intégration sociale:<a class=\"class14\" title=\"http://www.total.net/~aqisiqdi/\" href=\"http://www.total.net/~aqisiqdi/\"><span class=\"Aucun\">www.total.net/~aqisiqdi/</span></a></p>\n<p class=\"paragraph_style_7\">Office des personnes handicapées du Québec:<a class=\"Aucun\" title=\"http://www.ophq.gouv.qc.ca/\" href=\"http://www.ophq.gouv.qc.ca/\">www.ophq.gouv.qc.ca/</a></p>\n<p class=\"paragraph_style_7\">Société québécoise de l\'autisme:<a class=\"Aucun\" title=\"http://www.autisme.qc.ca/\" href=\"http://www.autisme.qc.ca/\">www.autisme.qc.ca/</a></p>\n<p class=\"paragraph_style_2\">MONTRÉAL</p>\n<p class=\"paragraph_style_7\">Association de Montréal pour la déficience intellectuelle (AMDI):<a class=\"Aucun\" title=\"http://www.delegation.ca/amdi\" href=\"http://www.delegation.ca/amdi\">www.amdi.info</a></p>\n<p class=\"paragraph_style\">Association de l\'Ouest de l\'île pour les personnes handicapées: <a class=\"Aucun\" title=\"http://www.aoihi.qc.ca/\" href=\"http://www.aoihi.qc.ca/\">www.aoihi.qc.ca</a></p>\n<p class=\"paragraph_style\">Site des TED à Laval:<a class=\"Aucun\" title=\"http://www.autisme-laval.org/\" href=\"http://www.autisme-laval.org/\">www.autisme-laval.org</a></p>\n<p class=\"paragraph_style\">ATEDM: <a title=\"http://www.autisme-montreal.com\" href=\"http://www.autisme-montreal.com/\">www.autisme-montreal.com</a></p>\n<p class=\"paragraph_style_8\">Corporation les compagnons de Montréal:</p>\n<p class=\"paragraph_style\">5333 St-Zotique Est,\nMontréal H1T 1N7,\nTél.: (514) 727-4444\nTéléc.:(514) 727-4738\n<a class=\"Aucun\" title=\"mailto:compagnons@compagnonsdemtl.com\" href=\"mailto:compagnons@compagnonsdemtl.com\">Compagnons@compagnonsdemtl.com</a></p>\n<p class=\"paragraph_style_8\">L’ami du déficient mental:</p>\n<p class=\"paragraph_style\">Denyse De Ladurantaye\n4960, 7e Avenue\nMontréal, Québec\nH1Y 2M9</p>\n<p class=\"paragraph_style\">Tél.: (514) 527-7671\nTélec.: (514) 527-7811</p>\n<p class=\"paragraph_style_9\"><a title=\"mailto:ldj.admi@hotmail.com\" href=\"mailto:ldj.admi@hotmail.com\">ldj.admi@hotmail.com</a></p>\n<p class=\"paragraph_style_10\">Prolongement à la famille de Montréal:</p>\n<p class=\"paragraph_style\">Carroll Godin\n2570, rue Nicolet\nBureau 300\nMontréal, Québec\nH1W 3L5</p>\n<p class=\"paragraph_style\">Tél.: (514) 596-2169\nTélec.: (514) 523-8637</p>\n<p class=\"paragraph_style_9\"><a title=\"mailto:upfm@qc.aira.com\" href=\"mailto:upfm@qc.aira.com\">upfm@qc.aira.com</a></p>\n<p class=\"paragraph_style_10\">Corporation L’Espoir:</p>\n<p class=\"paragraph_style\">Anne Barbier\n55, Dupras\nlocal 1S28 Hôtel de Ville\nLaSalle, Québec\nH8R 4A8Tél.: (514) 367-3757\nTélec.: (514) 367-0444</p>\n<p class=\"paragraph_style_9\"><a title=\"mailto:corporation.espoir@qc.aira.com\" href=\"mailto:corporation.espoir@qc.aira.com\">corporation.espoir@qc.aira.com</a></p>\n<p class=\"paragraph_style_10\">Atelier le fil d\'Ariane:</p>\n<p class=\"paragraph_style\">4837, rue Boyer, bur. 100\nMontréal (Québec) H2J 3E6</p>\nTéléphone\n(514) 842-5592\nTélécopieur\n(514) 842-8343\n<a class=\"Aucun\" title=\"mailto:fariane@videotron.ca\" href=\"mailto:fariane@videotron.ca\">lisette.claveau.ariane@ssss.gouv.qc.ca</a>\n<p class=\"paragraph_style\"><a title=\"http://www.atelierlefildariane.org\" href=\"http://www.atelierlefildariane.org/\">http://www.atelierlefildariane.org</a></p>\n<p class=\"paragraph_style_11\">Région des Cantons de l\'est</p>\n<p class=\"paragraph_style_12\">Camp Garagona</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Association des camps du québec Déficience intel. 8 ans et plus</p>\n<p class=\"paragraph_style_13\">Lieu: Frelighsburg</p>\n<p class=\"paragraph_style_13\">(514) 298-5159</p>\n<p class=\"paragraph_style_2\">Région Lanaudière</p>\n<p class=\"paragraph_style_12\">Le Vallon de l\'accueil</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle, 18 ans et plus</p>\n<p class=\"paragraph_style_13\">Lieu: Mascouche</p>\n<p class=\"paragraph_style_13\">(514) 756-8288</p>\n<p class=\"paragraph_style_2\">Région des Laurentides</p>\n<p class=\"paragraph_style_12\">Domaine des Prés d\'or</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\n<p class=\"paragraph_style_13\">Lieu: Lacs des iles</p>\n<p class=\"paragraph_style_13\">(819) 597-2499</p>\n<p class=\"paragraph_style_12\">YMCA Pointe Claires</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Priorité pour résidents du West Island Déf. intel. 16 ans et plus</p>\n<p class=\"paragraph_style_13\">Lieu: Ste Agathe</p>\n<p class=\"paragraph_style_13\">(514) 694-9622</p>\n<p class=\"paragraph_style_12\">Camp Perce neige</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\n<p class=\"paragraph_style_13\">Lieu: St Michel de Wentworth</p>\n<p class=\"paragraph_style_13\">(514) 226-5936</p>\n<p class=\"paragraph_style_2\">Région Montérégie</p>\n<p class=\"paragraph_style_12\">Domaine du rêve</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\n<p class=\"paragraph_style_13\">Lieu: Ormstown</p>\n<p class=\"paragraph_style_13\">(514)829-3358</p>\n<p class=\"paragraph_style_12\">BPA les Bosquets</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\n<p class=\"paragraph_style_13\">Lieu: Otterburn Park</p>\n<p class=\"paragraph_style_13\">(514) 467-3918</p>\n<p class=\"paragraph_style_12\">La p\'tite vacance (répit et fin de semaine)</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle tous age</p>\n<p class=\"paragraph_style_13\">Lieu: St Antoine sur Richelieu</p>\n<p class=\"paragraph_style_13\">(514) 787-2957</p>\n<p class=\"paragraph_style_2\">Région de Québec</p>\n<p class=\"paragraph_style_12\">Camp Patro Roc-Amadour</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ado et adultes</p>\n<p class=\"paragraph_style_13\">Lieu: St Pierre, Ile d\'Orléans</p>\n<p class=\"paragraph_style_13\">(418) 828-1151 (418)529-4996</p>\n<p class=\"paragraph_style_12\">Auberge cité joie</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous âge</p>\n<p class=\"paragraph_style_13\">Lieu: Lac Beauport</p>\n<p class=\"paragraph_style_13\">(418) 849-7183</p>\n<p class=\"paragraph_style_2\">Autres</p>\n<p class=\"paragraph_style_12\">Centre au puits</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Camp régulier avec intégration (personnes indépendantes)</p>\n<p class=\"paragraph_style_13\">Lieu: Montréal</p>\n<p class=\"paragraph_style_13\">(514) 843-5004</p>\n<p class=\"paragraph_style_12\">Sac et chanson</p>\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle</p>\n<p class=\"paragraph_style_13\">Lieu: 5854 rue Clark Montréal</p>\n\n<ol>\n 	<li class=\"full-width\" value=\"514\">\n<p class=\"paragraph_style_14\"><span class=\"Puce\">(514)</span>698-3361 (514) 276-2921</p>\n</li>\n</ol>','Liens utiles','','inherit','closed','closed','','20-autosave-v1','','','2017-08-30 21:38:24','2017-08-31 01:38:24','',20,'http://localhost:8000/20-autosave-v1/',0,'revision','',0),(47,1,'2017-08-30 21:33:14','2017-08-31 01:33:14','<p>Dans cette section, vous trouverez des liens concernant la déficience intellectuelle.</p>\r\n\r\n<h3>Camps de vacances</strong></h3>\r\n\r\n<ul>\r\n<li>Association des camps du Québec: <a title=\"http://www.camps.qc.ca/\" href=\"http://www.camps.qc.ca/\">http://www.camps.qc.ca</span></a></li>\r\n<li>Camp Gatineau: <a title=\"http://www.campgatineau.com/\" href=\"http://www.campgatineau.com/\">http://www.campgatineau.com</a></li>\r\n<li>Centre Normand Léveillé: <a title=\"http://www.centre-normand-leveille.ca/\" href=\"http://www.centre-normand-leveille.ca/\">http://www.centre-normand-leveille.ca</a></li>\r\n<li>Camp Cité Joie: <a title=\"http://www.citejoie.com/\" href=\"http://www.citejoie.com/\">http://www.citejoie.com</a></li>\r\n<li>Camp Perce-neige: <a title=\"http://www.perceneige.ca/\" href=\"http://www.perceneige.ca/\">http://www.perceneige.ca</a></li>\r\n</ul>\r\n\r\n<h3>Centres de réadaptation</h3>\r\n\r\n<ul>\r\n<li>CRDI Gabrielle-Major: <a title=\"http://www.crgm.qc.ca/\" href=\"http://www.crgm.qc.ca/\">www.crgm.qc.ca</a></li>\r\n<li>CRDI Lisette-Dupras: <a title=\"http://www.lisette-dupras.ca/\" href=\"http://www.lisette-dupras.ca/\">www.lisette-dupras.ca</a></li>\r\n<li>CRDI L\'intégrale: <a title=\"http://www.integrale.org/\" href=\"http://www.integrale.org/\">www.integrale.org</a></li>\r\n<li>CRDI de l\'ouest de Montréal: <a title=\"http://www.crom.ca/\" href=\"http://www.crom.ca/\">www.crom.ca</a></li>\r\n<li>CRDI Chaudière-Appalaches: <a title=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\" href=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\">www.quebec-affaires.com/crdi</a></li>\r\n<li>CRDI Montérégie-Est: <a title=\"http://www.crdime.qc.ca\" href=\"http://www.crdime.qc.ca/\">http://www.crdime.qc.ca</a></li>\r\n<li>Centre Miriam: </span><a title=\"http://www.centremiriam.ca/\" href=\"http://www.centremiriam.ca/\">www.centremiriam.ca</a></li>\r\n<li>Centre de réadaptation La Myriade: <a title=\"http://www.crlamyriade.qc.ca/\" href=\"http://www.crlamyriade.qc.ca/\">www.crlamyriade.qc.ca</a></li>\r\n</ul>\r\n\r\n<p class=\"paragraph_style_2\">Association, organisme communautaire et autres....</p>\r\n<p class=\"paragraph_style_7\">Association du Québec pour l\'Intégration sociale:<a class=\"class14\" title=\"http://www.total.net/~aqisiqdi/\" href=\"http://www.total.net/~aqisiqdi/\"><span class=\"Aucun\">www.total.net/~aqisiqdi/</span></a></p>\r\n<p class=\"paragraph_style_7\">Office des personnes handicapées du Québec:<a class=\"Aucun\" title=\"http://www.ophq.gouv.qc.ca/\" href=\"http://www.ophq.gouv.qc.ca/\">www.ophq.gouv.qc.ca/</a></p>\r\n<p class=\"paragraph_style_7\">Société québécoise de l\'autisme:<a class=\"Aucun\" title=\"http://www.autisme.qc.ca/\" href=\"http://www.autisme.qc.ca/\">www.autisme.qc.ca/</a></p>\r\n<p class=\"paragraph_style_2\">MONTRÉAL</p>\r\n<p class=\"paragraph_style_7\">Association de Montréal pour la déficience intellectuelle (AMDI):<a class=\"Aucun\" title=\"http://www.delegation.ca/amdi\" href=\"http://www.delegation.ca/amdi\">www.amdi.info</a></p>\r\n<p class=\"paragraph_style\">Association de l\'Ouest de l\'île pour les personnes handicapées: <a class=\"Aucun\" title=\"http://www.aoihi.qc.ca/\" href=\"http://www.aoihi.qc.ca/\">www.aoihi.qc.ca</a></p>\r\n<p class=\"paragraph_style\">Site des TED à Laval:<a class=\"Aucun\" title=\"http://www.autisme-laval.org/\" href=\"http://www.autisme-laval.org/\">www.autisme-laval.org</a></p>\r\n<p class=\"paragraph_style\">ATEDM: <a title=\"http://www.autisme-montreal.com\" href=\"http://www.autisme-montreal.com/\">www.autisme-montreal.com</a></p>\r\n<p class=\"paragraph_style_8\">Corporation les compagnons de Montréal:</p>\r\n<p class=\"paragraph_style\">5333 St-Zotique Est,\r\nMontréal H1T 1N7,\r\nTél.: (514) 727-4444\r\nTéléc.:(514) 727-4738\r\n<a class=\"Aucun\" title=\"mailto:compagnons@compagnonsdemtl.com\" href=\"mailto:compagnons@compagnonsdemtl.com\">Compagnons@compagnonsdemtl.com</a></p>\r\n<p class=\"paragraph_style_8\">L’ami du déficient mental:</p>\r\n<p class=\"paragraph_style\">Denyse De Ladurantaye\r\n4960, 7e Avenue\r\nMontréal, Québec\r\nH1Y 2M9</p>\r\n<p class=\"paragraph_style\">Tél.: (514) 527-7671\r\nTélec.: (514) 527-7811</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:ldj.admi@hotmail.com\" href=\"mailto:ldj.admi@hotmail.com\">ldj.admi@hotmail.com</a></p>\r\n<p class=\"paragraph_style_10\">Prolongement à la famille de Montréal:</p>\r\n<p class=\"paragraph_style\">Carroll Godin\r\n2570, rue Nicolet\r\nBureau 300\r\nMontréal, Québec\r\nH1W 3L5</p>\r\n<p class=\"paragraph_style\">Tél.: (514) 596-2169\r\nTélec.: (514) 523-8637</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:upfm@qc.aira.com\" href=\"mailto:upfm@qc.aira.com\">upfm@qc.aira.com</a></p>\r\n<p class=\"paragraph_style_10\">Corporation L’Espoir:</p>\r\n<p class=\"paragraph_style\">Anne Barbier\r\n55, Dupras\r\nlocal 1S28 Hôtel de Ville\r\nLaSalle, Québec\r\nH8R 4A8Tél.: (514) 367-3757\r\nTélec.: (514) 367-0444</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:corporation.espoir@qc.aira.com\" href=\"mailto:corporation.espoir@qc.aira.com\">corporation.espoir@qc.aira.com</a></p>\r\n<p class=\"paragraph_style_10\">Atelier le fil d\'Ariane:</p>\r\n<p class=\"paragraph_style\">4837, rue Boyer, bur. 100\r\nMontréal (Québec) H2J 3E6</p>\r\nTéléphone\r\n(514) 842-5592\r\nTélécopieur\r\n(514) 842-8343\r\n<a class=\"Aucun\" title=\"mailto:fariane@videotron.ca\" href=\"mailto:fariane@videotron.ca\">lisette.claveau.ariane@ssss.gouv.qc.ca</a>\r\n<p class=\"paragraph_style\"><a title=\"http://www.atelierlefildariane.org\" href=\"http://www.atelierlefildariane.org/\">http://www.atelierlefildariane.org</a></p>\r\n<p class=\"paragraph_style_11\">Région des Cantons de l\'est</p>\r\n<p class=\"paragraph_style_12\">Camp Garagona</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Association des camps du québec Déficience intel. 8 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Frelighsburg</p>\r\n<p class=\"paragraph_style_13\">(514) 298-5159</p>\r\n<p class=\"paragraph_style_2\">Région Lanaudière</p>\r\n<p class=\"paragraph_style_12\">Le Vallon de l\'accueil</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle, 18 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Mascouche</p>\r\n<p class=\"paragraph_style_13\">(514) 756-8288</p>\r\n<p class=\"paragraph_style_2\">Région des Laurentides</p>\r\n<p class=\"paragraph_style_12\">Domaine des Prés d\'or</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: Lacs des iles</p>\r\n<p class=\"paragraph_style_13\">(819) 597-2499</p>\r\n<p class=\"paragraph_style_12\">YMCA Pointe Claires</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Priorité pour résidents du West Island Déf. intel. 16 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Ste Agathe</p>\r\n<p class=\"paragraph_style_13\">(514) 694-9622</p>\r\n<p class=\"paragraph_style_12\">Camp Perce neige</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Michel de Wentworth</p>\r\n<p class=\"paragraph_style_13\">(514) 226-5936</p>\r\n<p class=\"paragraph_style_2\">Région Montérégie</p>\r\n<p class=\"paragraph_style_12\">Domaine du rêve</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: Ormstown</p>\r\n<p class=\"paragraph_style_13\">(514)829-3358</p>\r\n<p class=\"paragraph_style_12\">BPA les Bosquets</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: Otterburn Park</p>\r\n<p class=\"paragraph_style_13\">(514) 467-3918</p>\r\n<p class=\"paragraph_style_12\">La p\'tite vacance (répit et fin de semaine)</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Antoine sur Richelieu</p>\r\n<p class=\"paragraph_style_13\">(514) 787-2957</p>\r\n<p class=\"paragraph_style_2\">Région de Québec</p>\r\n<p class=\"paragraph_style_12\">Camp Patro Roc-Amadour</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ado et adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Pierre, Ile d\'Orléans</p>\r\n<p class=\"paragraph_style_13\">(418) 828-1151 (418)529-4996</p>\r\n<p class=\"paragraph_style_12\">Auberge cité joie</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous âge</p>\r\n<p class=\"paragraph_style_13\">Lieu: Lac Beauport</p>\r\n<p class=\"paragraph_style_13\">(418) 849-7183</p>\r\n<p class=\"paragraph_style_2\">Autres</p>\r\n<p class=\"paragraph_style_12\">Centre au puits</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Camp régulier avec intégration (personnes indépendantes)</p>\r\n<p class=\"paragraph_style_13\">Lieu: Montréal</p>\r\n<p class=\"paragraph_style_13\">(514) 843-5004</p>\r\n<p class=\"paragraph_style_12\">Sac et chanson</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle</p>\r\n<p class=\"paragraph_style_13\">Lieu: 5854 rue Clark Montréal</p>\r\n\r\n<ol>\r\n 	<li class=\"full-width\" value=\"514\">\r\n<p class=\"paragraph_style_14\"><span class=\"Puce\">(514)</span>698-3361 (514) 276-2921</p>\r\n</li>\r\n</ol>','Liens utiles','','inherit','closed','closed','','20-revision-v1','','','2017-08-30 21:33:14','2017-08-31 01:33:14','',20,'http://localhost:8000/20-revision-v1/',0,'revision','',0),(48,1,'2017-08-30 21:35:25','2017-08-31 01:35:25','{\n    \"total::total_template_color\": {\n        \"value\": \"#079cff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','c471558c-16f2-4589-842c-c9fe1f26739d','','','2017-08-30 21:35:25','2017-08-31 01:35:25','',0,'http://localhost:8000/c471558c-16f2-4589-842c-c9fe1f26739d/',0,'customize_changeset','',0),(49,1,'2017-08-30 21:40:20','2017-08-31 01:40:20','<p>Dans cette section, vous trouverez des liens concernant la déficience intellectuelle.</p>\r\n\r\n<h3>Camps de vacances</strong></h3>\r\n\r\n<ul>\r\n<li>Association des camps du Québec: <a title=\"http://www.camps.qc.ca/\" href=\"http://www.camps.qc.ca/\">http://www.camps.qc.ca</span></a></li>\r\n<li>Camp Gatineau: <a title=\"http://www.campgatineau.com/\" href=\"http://www.campgatineau.com/\">http://www.campgatineau.com</a></li>\r\n<li>Centre Normand Léveillé: <a title=\"http://www.centre-normand-leveille.ca/\" href=\"http://www.centre-normand-leveille.ca/\">http://www.centre-normand-leveille.ca</a></li>\r\n<li>Camp Cité Joie: <a title=\"http://www.citejoie.com/\" href=\"http://www.citejoie.com/\">http://www.citejoie.com</a></li>\r\n<li>Camp Perce-neige: <a title=\"http://www.perceneige.ca/\" href=\"http://www.perceneige.ca/\">http://www.perceneige.ca</a></li>\r\n</ul>\r\n\r\n<h3>Centres de réadaptation</h3>\r\n\r\n<ul>\r\n<li>CRDI Gabrielle-Major: <a title=\"http://www.crgm.qc.ca/\" href=\"http://www.crgm.qc.ca/\">www.crgm.qc.ca</a></li>\r\n<li>CRDI Lisette-Dupras: <a title=\"http://www.lisette-dupras.ca/\" href=\"http://www.lisette-dupras.ca/\">www.lisette-dupras.ca</a></li>\r\n<li>CRDI L\'intégrale: <a title=\"http://www.integrale.org/\" href=\"http://www.integrale.org/\">www.integrale.org</a></li>\r\n<li>CRDI de l\'ouest de Montréal: <a title=\"http://www.crom.ca/\" href=\"http://www.crom.ca/\">www.crom.ca</a></li>\r\n<li>CRDI Chaudière-Appalaches: <a title=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\" href=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\">www.quebec-affaires.com/crdi</a></li>\r\n<li>CRDI Montérégie-Est: <a title=\"http://www.crdime.qc.ca\" href=\"http://www.crdime.qc.ca/\">http://www.crdime.qc.ca</a></li>\r\n<li>Centre Miriam: </span><a title=\"http://www.centremiriam.ca/\" href=\"http://www.centremiriam.ca/\">www.centremiriam.ca</a></li>\r\n<li>Centre de réadaptation La Myriade: <a title=\"http://www.crlamyriade.qc.ca/\" href=\"http://www.crlamyriade.qc.ca/\">www.crlamyriade.qc.ca</a></li>\r\n</ul>\r\n\r\n<h3>Association, organisme communautaire et autres....</h3>\r\n\r\n<ul>\r\n<li>Association du Québec pour l\'Intégration sociale:<a title=\"http://www.total.net/~aqisiqdi/\" href=\"http://www.total.net/~aqisiqdi/\">www.total.net/~aqisiqdi/</a></li>\r\n<li>Office des personnes handicapées du Québec:<a title=\"http://www.ophq.gouv.qc.ca/\" href=\"http://www.ophq.gouv.qc.ca/\">www.ophq.gouv.qc.ca/</a></li>\r\n<li>Société québécoise de l\'autisme:<a title=\"http://www.autisme.qc.ca/\" href=\"http://www.autisme.qc.ca/\">www.autisme.qc.ca/</a></li>\r\n</ul>\r\n\r\n<h3>MONTRÉAL</h3>\r\n<p class=\"paragraph_style_7\">Association de Montréal pour la déficience intellectuelle (AMDI):<a class=\"Aucun\" title=\"http://www.delegation.ca/amdi\" href=\"http://www.delegation.ca/amdi\">www.amdi.info</a></p>\r\n<p class=\"paragraph_style\">Association de l\'Ouest de l\'île pour les personnes handicapées: <a class=\"Aucun\" title=\"http://www.aoihi.qc.ca/\" href=\"http://www.aoihi.qc.ca/\">www.aoihi.qc.ca</a></p>\r\n<p class=\"paragraph_style\">Site des TED à Laval:<a class=\"Aucun\" title=\"http://www.autisme-laval.org/\" href=\"http://www.autisme-laval.org/\">www.autisme-laval.org</a></p>\r\n<p class=\"paragraph_style\">ATEDM: <a title=\"http://www.autisme-montreal.com\" href=\"http://www.autisme-montreal.com/\">www.autisme-montreal.com</a></p>\r\n<p class=\"paragraph_style_8\">Corporation les compagnons de Montréal:</p>\r\n<p class=\"paragraph_style\">5333 St-Zotique Est,\r\nMontréal H1T 1N7,\r\nTél.: (514) 727-4444\r\nTéléc.:(514) 727-4738\r\n<a class=\"Aucun\" title=\"mailto:compagnons@compagnonsdemtl.com\" href=\"mailto:compagnons@compagnonsdemtl.com\">Compagnons@compagnonsdemtl.com</a></p>\r\n<p class=\"paragraph_style_8\">L’ami du déficient mental:</p>\r\n<p class=\"paragraph_style\">Denyse De Ladurantaye\r\n4960, 7e Avenue\r\nMontréal, Québec\r\nH1Y 2M9</p>\r\n<p class=\"paragraph_style\">Tél.: (514) 527-7671\r\nTélec.: (514) 527-7811</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:ldj.admi@hotmail.com\" href=\"mailto:ldj.admi@hotmail.com\">ldj.admi@hotmail.com</a></p>\r\n<p class=\"paragraph_style_10\">Prolongement à la famille de Montréal:</p>\r\n<p class=\"paragraph_style\">Carroll Godin\r\n2570, rue Nicolet\r\nBureau 300\r\nMontréal, Québec\r\nH1W 3L5</p>\r\n<p class=\"paragraph_style\">Tél.: (514) 596-2169\r\nTélec.: (514) 523-8637</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:upfm@qc.aira.com\" href=\"mailto:upfm@qc.aira.com\">upfm@qc.aira.com</a></p>\r\n<p class=\"paragraph_style_10\">Corporation L’Espoir:</p>\r\n<p class=\"paragraph_style\">Anne Barbier\r\n55, Dupras\r\nlocal 1S28 Hôtel de Ville\r\nLaSalle, Québec\r\nH8R 4A8Tél.: (514) 367-3757\r\nTélec.: (514) 367-0444</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:corporation.espoir@qc.aira.com\" href=\"mailto:corporation.espoir@qc.aira.com\">corporation.espoir@qc.aira.com</a></p>\r\n<p class=\"paragraph_style_10\">Atelier le fil d\'Ariane:</p>\r\n<p class=\"paragraph_style\">4837, rue Boyer, bur. 100\r\nMontréal (Québec) H2J 3E6</p>\r\nTéléphone\r\n(514) 842-5592\r\nTélécopieur\r\n(514) 842-8343\r\n<a class=\"Aucun\" title=\"mailto:fariane@videotron.ca\" href=\"mailto:fariane@videotron.ca\">lisette.claveau.ariane@ssss.gouv.qc.ca</a>\r\n<p class=\"paragraph_style\"><a title=\"http://www.atelierlefildariane.org\" href=\"http://www.atelierlefildariane.org/\">http://www.atelierlefildariane.org</a></p>\r\n<p class=\"paragraph_style_11\">Région des Cantons de l\'est</p>\r\n<p class=\"paragraph_style_12\">Camp Garagona</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Association des camps du québec Déficience intel. 8 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Frelighsburg</p>\r\n<p class=\"paragraph_style_13\">(514) 298-5159</p>\r\n<p class=\"paragraph_style_2\">Région Lanaudière</p>\r\n<p class=\"paragraph_style_12\">Le Vallon de l\'accueil</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle, 18 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Mascouche</p>\r\n<p class=\"paragraph_style_13\">(514) 756-8288</p>\r\n<p class=\"paragraph_style_2\">Région des Laurentides</p>\r\n<p class=\"paragraph_style_12\">Domaine des Prés d\'or</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: Lacs des iles</p>\r\n<p class=\"paragraph_style_13\">(819) 597-2499</p>\r\n<p class=\"paragraph_style_12\">YMCA Pointe Claires</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Priorité pour résidents du West Island Déf. intel. 16 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Ste Agathe</p>\r\n<p class=\"paragraph_style_13\">(514) 694-9622</p>\r\n<p class=\"paragraph_style_12\">Camp Perce neige</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Michel de Wentworth</p>\r\n<p class=\"paragraph_style_13\">(514) 226-5936</p>\r\n<p class=\"paragraph_style_2\">Région Montérégie</p>\r\n<p class=\"paragraph_style_12\">Domaine du rêve</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: Ormstown</p>\r\n<p class=\"paragraph_style_13\">(514)829-3358</p>\r\n<p class=\"paragraph_style_12\">BPA les Bosquets</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: Otterburn Park</p>\r\n<p class=\"paragraph_style_13\">(514) 467-3918</p>\r\n<p class=\"paragraph_style_12\">La p\'tite vacance (répit et fin de semaine)</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Antoine sur Richelieu</p>\r\n<p class=\"paragraph_style_13\">(514) 787-2957</p>\r\n<p class=\"paragraph_style_2\">Région de Québec</p>\r\n<p class=\"paragraph_style_12\">Camp Patro Roc-Amadour</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ado et adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Pierre, Ile d\'Orléans</p>\r\n<p class=\"paragraph_style_13\">(418) 828-1151 (418)529-4996</p>\r\n<p class=\"paragraph_style_12\">Auberge cité joie</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous âge</p>\r\n<p class=\"paragraph_style_13\">Lieu: Lac Beauport</p>\r\n<p class=\"paragraph_style_13\">(418) 849-7183</p>\r\n<p class=\"paragraph_style_2\">Autres</p>\r\n<p class=\"paragraph_style_12\">Centre au puits</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Camp régulier avec intégration (personnes indépendantes)</p>\r\n<p class=\"paragraph_style_13\">Lieu: Montréal</p>\r\n<p class=\"paragraph_style_13\">(514) 843-5004</p>\r\n<p class=\"paragraph_style_12\">Sac et chanson</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle</p>\r\n<p class=\"paragraph_style_13\">Lieu: 5854 rue Clark Montréal</p>\r\n\r\n<ol>\r\n 	<li class=\"full-width\" value=\"514\">\r\n<p class=\"paragraph_style_14\"><span class=\"Puce\">(514)</span>698-3361 (514) 276-2921</p>\r\n</li>\r\n</ol>','Liens utiles','','inherit','closed','closed','','20-revision-v1','','','2017-08-30 21:40:20','2017-08-31 01:40:20','',20,'http://localhost:8000/20-revision-v1/',0,'revision','',0),(50,1,'2017-08-30 21:40:55','2017-08-31 01:40:55','<p>Dans cette section, vous trouverez des liens concernant la déficience intellectuelle.</p>\r\n\r\n\r\n<h3>Camps de vacances</h3>\r\n\r\n<ul>\r\n<li>Association des camps du Québec: <a title=\"http://www.camps.qc.ca/\" href=\"http://www.camps.qc.ca/\">http://www.camps.qc.ca</span></a></li>\r\n<li>Camp Gatineau: <a title=\"http://www.campgatineau.com/\" href=\"http://www.campgatineau.com/\">http://www.campgatineau.com</a></li>\r\n<li>Centre Normand Léveillé: <a title=\"http://www.centre-normand-leveille.ca/\" href=\"http://www.centre-normand-leveille.ca/\">http://www.centre-normand-leveille.ca</a></li>\r\n<li>Camp Cité Joie: <a title=\"http://www.citejoie.com/\" href=\"http://www.citejoie.com/\">http://www.citejoie.com</a></li>\r\n<li>Camp Perce-neige: <a title=\"http://www.perceneige.ca/\" href=\"http://www.perceneige.ca/\">http://www.perceneige.ca</a></li>\r\n</ul>\r\n\r\n<h3>Centres de réadaptation</h3>\r\n\r\n<ul>\r\n<li>CRDI Gabrielle-Major: <a title=\"http://www.crgm.qc.ca/\" href=\"http://www.crgm.qc.ca/\">www.crgm.qc.ca</a></li>\r\n<li>CRDI Lisette-Dupras: <a title=\"http://www.lisette-dupras.ca/\" href=\"http://www.lisette-dupras.ca/\">www.lisette-dupras.ca</a></li>\r\n<li>CRDI L\'intégrale: <a title=\"http://www.integrale.org/\" href=\"http://www.integrale.org/\">www.integrale.org</a></li>\r\n<li>CRDI de l\'ouest de Montréal: <a title=\"http://www.crom.ca/\" href=\"http://www.crom.ca/\">www.crom.ca</a></li>\r\n<li>CRDI Chaudière-Appalaches: <a title=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\" href=\"http://www.quebec-affaires.com/crdi_dyna/default.lasso\">www.quebec-affaires.com/crdi</a></li>\r\n<li>CRDI Montérégie-Est: <a title=\"http://www.crdime.qc.ca\" href=\"http://www.crdime.qc.ca/\">http://www.crdime.qc.ca</a></li>\r\n<li>Centre Miriam: </span><a title=\"http://www.centremiriam.ca/\" href=\"http://www.centremiriam.ca/\">www.centremiriam.ca</a></li>\r\n<li>Centre de réadaptation La Myriade: <a title=\"http://www.crlamyriade.qc.ca/\" href=\"http://www.crlamyriade.qc.ca/\">www.crlamyriade.qc.ca</a></li>\r\n</ul>\r\n\r\n<h3>Association, organisme communautaire et autres....</h3>\r\n\r\n<ul>\r\n<li>Association du Québec pour l\'Intégration sociale:<a title=\"http://www.total.net/~aqisiqdi/\" href=\"http://www.total.net/~aqisiqdi/\">www.total.net/~aqisiqdi/</a></li>\r\n<li>Office des personnes handicapées du Québec:<a title=\"http://www.ophq.gouv.qc.ca/\" href=\"http://www.ophq.gouv.qc.ca/\">www.ophq.gouv.qc.ca/</a></li>\r\n<li>Société québécoise de l\'autisme:<a title=\"http://www.autisme.qc.ca/\" href=\"http://www.autisme.qc.ca/\">www.autisme.qc.ca/</a></li>\r\n</ul>\r\n\r\n<h3>MONTRÉAL</h3>\r\n<p class=\"paragraph_style_7\">Association de Montréal pour la déficience intellectuelle (AMDI):<a class=\"Aucun\" title=\"http://www.delegation.ca/amdi\" href=\"http://www.delegation.ca/amdi\">www.amdi.info</a></p>\r\n<p class=\"paragraph_style\">Association de l\'Ouest de l\'île pour les personnes handicapées: <a class=\"Aucun\" title=\"http://www.aoihi.qc.ca/\" href=\"http://www.aoihi.qc.ca/\">www.aoihi.qc.ca</a></p>\r\n<p class=\"paragraph_style\">Site des TED à Laval:<a class=\"Aucun\" title=\"http://www.autisme-laval.org/\" href=\"http://www.autisme-laval.org/\">www.autisme-laval.org</a></p>\r\n<p class=\"paragraph_style\">ATEDM: <a title=\"http://www.autisme-montreal.com\" href=\"http://www.autisme-montreal.com/\">www.autisme-montreal.com</a></p>\r\n<p class=\"paragraph_style_8\">Corporation les compagnons de Montréal:</p>\r\n<p class=\"paragraph_style\">5333 St-Zotique Est,\r\nMontréal H1T 1N7,\r\nTél.: (514) 727-4444\r\nTéléc.:(514) 727-4738\r\n<a class=\"Aucun\" title=\"mailto:compagnons@compagnonsdemtl.com\" href=\"mailto:compagnons@compagnonsdemtl.com\">Compagnons@compagnonsdemtl.com</a></p>\r\n<p class=\"paragraph_style_8\">L’ami du déficient mental:</p>\r\n<p class=\"paragraph_style\">Denyse De Ladurantaye\r\n4960, 7e Avenue\r\nMontréal, Québec\r\nH1Y 2M9</p>\r\n<p class=\"paragraph_style\">Tél.: (514) 527-7671\r\nTélec.: (514) 527-7811</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:ldj.admi@hotmail.com\" href=\"mailto:ldj.admi@hotmail.com\">ldj.admi@hotmail.com</a></p>\r\n<p class=\"paragraph_style_10\">Prolongement à la famille de Montréal:</p>\r\n<p class=\"paragraph_style\">Carroll Godin\r\n2570, rue Nicolet\r\nBureau 300\r\nMontréal, Québec\r\nH1W 3L5</p>\r\n<p class=\"paragraph_style\">Tél.: (514) 596-2169\r\nTélec.: (514) 523-8637</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:upfm@qc.aira.com\" href=\"mailto:upfm@qc.aira.com\">upfm@qc.aira.com</a></p>\r\n<p class=\"paragraph_style_10\">Corporation L’Espoir:</p>\r\n<p class=\"paragraph_style\">Anne Barbier\r\n55, Dupras\r\nlocal 1S28 Hôtel de Ville\r\nLaSalle, Québec\r\nH8R 4A8Tél.: (514) 367-3757\r\nTélec.: (514) 367-0444</p>\r\n<p class=\"paragraph_style_9\"><a title=\"mailto:corporation.espoir@qc.aira.com\" href=\"mailto:corporation.espoir@qc.aira.com\">corporation.espoir@qc.aira.com</a></p>\r\n<p class=\"paragraph_style_10\">Atelier le fil d\'Ariane:</p>\r\n<p class=\"paragraph_style\">4837, rue Boyer, bur. 100\r\nMontréal (Québec) H2J 3E6</p>\r\nTéléphone\r\n(514) 842-5592\r\nTélécopieur\r\n(514) 842-8343\r\n<a class=\"Aucun\" title=\"mailto:fariane@videotron.ca\" href=\"mailto:fariane@videotron.ca\">lisette.claveau.ariane@ssss.gouv.qc.ca</a>\r\n<p class=\"paragraph_style\"><a title=\"http://www.atelierlefildariane.org\" href=\"http://www.atelierlefildariane.org/\">http://www.atelierlefildariane.org</a></p>\r\n<p class=\"paragraph_style_11\">Région des Cantons de l\'est</p>\r\n<p class=\"paragraph_style_12\">Camp Garagona</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Association des camps du québec Déficience intel. 8 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Frelighsburg</p>\r\n<p class=\"paragraph_style_13\">(514) 298-5159</p>\r\n<p class=\"paragraph_style_2\">Région Lanaudière</p>\r\n<p class=\"paragraph_style_12\">Le Vallon de l\'accueil</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle, 18 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Mascouche</p>\r\n<p class=\"paragraph_style_13\">(514) 756-8288</p>\r\n<p class=\"paragraph_style_2\">Région des Laurentides</p>\r\n<p class=\"paragraph_style_12\">Domaine des Prés d\'or</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: Lacs des iles</p>\r\n<p class=\"paragraph_style_13\">(819) 597-2499</p>\r\n<p class=\"paragraph_style_12\">YMCA Pointe Claires</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Priorité pour résidents du West Island Déf. intel. 16 ans et plus</p>\r\n<p class=\"paragraph_style_13\">Lieu: Ste Agathe</p>\r\n<p class=\"paragraph_style_13\">(514) 694-9622</p>\r\n<p class=\"paragraph_style_12\">Camp Perce neige</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple enfants adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Michel de Wentworth</p>\r\n<p class=\"paragraph_style_13\">(514) 226-5936</p>\r\n<p class=\"paragraph_style_2\">Région Montérégie</p>\r\n<p class=\"paragraph_style_12\">Domaine du rêve</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: Ormstown</p>\r\n<p class=\"paragraph_style_13\">(514)829-3358</p>\r\n<p class=\"paragraph_style_12\">BPA les Bosquets</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: Otterburn Park</p>\r\n<p class=\"paragraph_style_13\">(514) 467-3918</p>\r\n<p class=\"paragraph_style_12\">La p\'tite vacance (répit et fin de semaine)</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle tous age</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Antoine sur Richelieu</p>\r\n<p class=\"paragraph_style_13\">(514) 787-2957</p>\r\n<p class=\"paragraph_style_2\">Région de Québec</p>\r\n<p class=\"paragraph_style_12\">Camp Patro Roc-Amadour</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ado et adultes</p>\r\n<p class=\"paragraph_style_13\">Lieu: St Pierre, Ile d\'Orléans</p>\r\n<p class=\"paragraph_style_13\">(418) 828-1151 (418)529-4996</p>\r\n<p class=\"paragraph_style_12\">Auberge cité joie</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle ou handicap multiple tous âge</p>\r\n<p class=\"paragraph_style_13\">Lieu: Lac Beauport</p>\r\n<p class=\"paragraph_style_13\">(418) 849-7183</p>\r\n<p class=\"paragraph_style_2\">Autres</p>\r\n<p class=\"paragraph_style_12\">Centre au puits</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Camp régulier avec intégration (personnes indépendantes)</p>\r\n<p class=\"paragraph_style_13\">Lieu: Montréal</p>\r\n<p class=\"paragraph_style_13\">(514) 843-5004</p>\r\n<p class=\"paragraph_style_12\">Sac et chanson</p>\r\n<p class=\"paragraph_style_13\">Association/clientèle: Déficience intellectuelle</p>\r\n<p class=\"paragraph_style_13\">Lieu: 5854 rue Clark Montréal</p>\r\n\r\n<ol>\r\n 	<li class=\"full-width\" value=\"514\">\r\n<p class=\"paragraph_style_14\"><span class=\"Puce\">(514)</span>698-3361 (514) 276-2921</p>\r\n</li>\r\n</ol>','Liens utiles','','inherit','closed','closed','','20-revision-v1','','','2017-08-30 21:40:55','2017-08-31 01:40:55','',20,'http://localhost:8000/20-revision-v1/',0,'revision','',0),(54,1,'2017-08-30 21:54:06','0000-00-00 00:00:00','','Ressources','','draft','closed','closed','','','','','2017-08-30 21:54:06','0000-00-00 00:00:00','',0,'http://localhost:8000/?p=54',1,'nav_menu_item','',0),(56,1,'2017-08-30 21:58:13','2017-08-31 01:58:13','<h2>Intervenant-e Socio-communautaire</h2>\n<h4>(Remplacement d’un congé de maternité : mai 2017 à septembre 2018)</h4>\n<p>L’organisme le plus joyeux de Montréal est à la recherche d’un-e intervenant-e ayant envie de travailler auprès d’un groupe d’adultes vivant avec une déficience intellectuelle ; et de promouvoir et s’investir dans un nouveau projet inclusif et novateur ; le projet ensemble en forme dans le club des 3V. Communautaire, dynamique et engagé, SOS est un milieu de travail où l’engagement et la bonne humeur sont de mise. Nous travaillons sur plusieurs fronts ; centre de jour ; projets de mise en forme, activités pour ainés, projet de promotion de la différence, défense de droits et ateliers de sensibilisation.</p>\n\n<b>Mission de SOS :</b>\n\nPromouvoir le rôle actif des personnes différentes dans la société en créant des contextes où les membres ont à interagir avec un environnement aussi large et diversifié que possible ! L’ensemble des participants profitent ainsi de l’apport des uns et des autres.\n\n<b>Projet Ensemble en forme dans le club 3V :</b>\n\nIl s’agit d’un projet pour stimuler les saines habitudes de vie et briser l’isolement des personnes ayant une déficience intellectuelle. Le projet se décline en 3 activités, club d’ainés dans une bibliothèque du quartier les mercredis, club de marche à la Promenade Bellerive (est de Montréal) les jeudis am et club aquatique au Centre Sportif du Stade Olympique. Le projet vise des objectifs d’inclusion et de participation sociale et de sensibilisation.\n\n<b>Profil de la personne recherchée :</b>\n\nVous aimez côtoyer des personnes vivant avec une déficience intellectuelle et vous croyez et rêvez d’inclusion. Vous avez envie de travailler dans un contexte d’équipe et de porter un projet d’envergure tout en maintenant l’intervention et l’animation au cœur de votre implication. Vous vous distinguez par votre autonomie, votre capacité d’adaptation, votre bonne humeur et votre ouverture d’esprit.\n\n<b>Fonctions :</b>\n<ul>\n 	<li>La personne devra maintenir et développer le projet 3V en y assumant des tâches d’animation, d’intervention, d’accompagnement, de coordination de projet et de collaboration auprès des partenaires</li>\n 	<li>Intervention, création d’outils, application des plans d’intervention auprès de la clientèle. Déployer tout ce qu’il faut pour que les participants puissent participer aux activités dans la communauté.</li>\n 	<li>Gestion des bénévoles attachés au projet</li>\n 	<li>Animer et intégrer les différents volets de l’organisme (projet de sensibilisation, centre d’activités de jour, projet grand public, etc)</li>\n 	<li>Développer des nouveaux partenariats et travailler en collaboration avec le réseau de la santé (CIUSS)</li>\n 	<li>Travailler aux tâches quotidiennes reliées au projet et à la réalité de l’organisme.</li>\n</ul>\n\n<b>Exigences :</b>\n<ul>\n 	<li>Détenir un diplôme d’études collégiales ou l’équivalent</li>\n 	<li>Expérience auprès de personnes ayant avec une déficience intellectuelle</li>\n 	<li>Expérience pertinente en intervention et en animation</li>\n 	<li>Maitrise du français écrit</li>\n 	<li>Bonnes capacités de rédaction et de mise en page</li>\n</ul>\n\n<b>Détails de l’emploi:</b>\n<ul>\n 	<li>32h/semaine de mai à juillet; à revoir de septembre 2017 à septembre 2018 (à noter que l’organisme fait relâche au mois d’août)</li>\n 	<li>salaire selon la politique salariale en vigueur</li>\n 	<li>6 semaines de vacances par année + avantages sociaux</li>\n</ul>\n<p class=\"paragraph_style\">Si cette annonce vous interpelle et que vous avez envie de nous rencontrer, veuillez faire parvenir votre curriculum vitae ainsi qu’une lettre de présentation à l’adresse suivante:<a href=\"mailto:sosembauche@hotmail.com?subject=%C3%80%20l%27attention%20de%20Marianne%20Dup%C3%A9r%C3%A9%20-%20Offre%20d%27emploi%20Intervenant-e%20Socio-communautaire\">sosembauche@hotmail.com</a></p>\nMarianne Dupéré\n\ncoordonnatrice\n\n</div>\n</div>\n</div>','Offres d\'emploi','','inherit','closed','closed','','40-autosave-v1','','','2017-08-30 21:58:13','2017-08-31 01:58:13','',40,'http://localhost:8000/40-autosave-v1/',0,'revision','',0),(57,1,'2017-08-30 21:58:34','2017-08-31 01:58:34','<h2>Intervenant-e Socio-communautaire</h2>\r\n<h4>(Remplacement d’un congé de maternité : mai 2017 à septembre 2018)</h4>\r\n<p>L’organisme le plus joyeux de Montréal est à la recherche d’un-e intervenant-e ayant envie de travailler auprès d’un groupe d’adultes vivant avec une déficience intellectuelle ; et de promouvoir et s’investir dans un nouveau projet inclusif et novateur ; le projet ensemble en forme dans le club des 3V. Communautaire, dynamique et engagé, SOS est un milieu de travail où l’engagement et la bonne humeur sont de mise. Nous travaillons sur plusieurs fronts ; centre de jour ; projets de mise en forme, activités pour ainés, projet de promotion de la différence, défense de droits et ateliers de sensibilisation.</p>\r\n\r\n<b>Mission de SOS :</b>\r\n\r\nPromouvoir le rôle actif des personnes différentes dans la société en créant des contextes où les membres ont à interagir avec un environnement aussi large et diversifié que possible ! L’ensemble des participants profitent ainsi de l’apport des uns et des autres.\r\n\r\n<b>Projet Ensemble en forme dans le club 3V :</b>\r\n\r\nIl s’agit d’un projet pour stimuler les saines habitudes de vie et briser l’isolement des personnes ayant une déficience intellectuelle. Le projet se décline en 3 activités, club d’ainés dans une bibliothèque du quartier les mercredis, club de marche à la Promenade Bellerive (est de Montréal) les jeudis am et club aquatique au Centre Sportif du Stade Olympique. Le projet vise des objectifs d’inclusion et de participation sociale et de sensibilisation.\r\n\r\n<b>Profil de la personne recherchée :</b>\r\n\r\nVous aimez côtoyer des personnes vivant avec une déficience intellectuelle et vous croyez et rêvez d’inclusion. Vous avez envie de travailler dans un contexte d’équipe et de porter un projet d’envergure tout en maintenant l’intervention et l’animation au cœur de votre implication. Vous vous distinguez par votre autonomie, votre capacité d’adaptation, votre bonne humeur et votre ouverture d’esprit.\r\n\r\n<b>Fonctions :</b>\r\n<ul>\r\n 	<li>La personne devra maintenir et développer le projet 3V en y assumant des tâches d’animation, d’intervention, d’accompagnement, de coordination de projet et de collaboration auprès des partenaires</li>\r\n 	<li>Intervention, création d’outils, application des plans d’intervention auprès de la clientèle. Déployer tout ce qu’il faut pour que les participants puissent participer aux activités dans la communauté.</li>\r\n 	<li>Gestion des bénévoles attachés au projet</li>\r\n 	<li>Animer et intégrer les différents volets de l’organisme (projet de sensibilisation, centre d’activités de jour, projet grand public, etc)</li>\r\n 	<li>Développer des nouveaux partenariats et travailler en collaboration avec le réseau de la santé (CIUSS)</li>\r\n 	<li>Travailler aux tâches quotidiennes reliées au projet et à la réalité de l’organisme.</li>\r\n</ul>\r\n\r\n<b>Exigences :</b>\r\n<ul>\r\n 	<li>Détenir un diplôme d’études collégiales ou l’équivalent</li>\r\n 	<li>Expérience auprès de personnes ayant avec une déficience intellectuelle</li>\r\n 	<li>Expérience pertinente en intervention et en animation</li>\r\n 	<li>Maitrise du français écrit</li>\r\n 	<li>Bonnes capacités de rédaction et de mise en page</li>\r\n</ul>\r\n\r\n<b>Détails de l’emploi:</b>\r\n<ul>\r\n 	<li>32h/semaine de mai à juillet; à revoir de septembre 2017 à septembre 2018 (à noter que l’organisme fait relâche au mois d’août)</li>\r\n 	<li>salaire selon la politique salariale en vigueur</li>\r\n 	<li>6 semaines de vacances par année + avantages sociaux</li>\r\n</ul>\r\n<p class=\"paragraph_style\">Si cette annonce vous interpelle et que vous avez envie de nous rencontrer, veuillez faire parvenir votre curriculum vitae ainsi qu’une lettre de présentation à l’adresse suivante:<a href=\"mailto:sosembauche@hotmail.com?subject=%C3%80%20l%27attention%20de%20Marianne%20Dup%C3%A9r%C3%A9%20-%20Offre%20d%27emploi%20Intervenant-e%20Socio-communautaire\">sosembauche@hotmail.com</a></p>\r\n\r\nMarianne Dupéré\r\ncoordonnatrice\r\n','Offres d\'emploi','','inherit','closed','closed','','40-revision-v1','','','2017-08-30 21:58:34','2017-08-31 01:58:34','',40,'http://localhost:8000/40-revision-v1/',0,'revision','',0),(58,1,'2017-08-30 21:58:58','2017-08-31 01:58:58','<h2>Intervenant-e Socio-communautaire</h2>\r\n<h5>(Remplacement d’un congé de maternité : mai 2017 à septembre 2018)</h5>\r\n\r\n<p>L’organisme le plus joyeux de Montréal est à la recherche d’un-e intervenant-e ayant envie de travailler auprès d’un groupe d’adultes vivant avec une déficience intellectuelle ; et de promouvoir et s’investir dans un nouveau projet inclusif et novateur ; le projet ensemble en forme dans le club des 3V. Communautaire, dynamique et engagé, SOS est un milieu de travail où l’engagement et la bonne humeur sont de mise. Nous travaillons sur plusieurs fronts ; centre de jour ; projets de mise en forme, activités pour ainés, projet de promotion de la différence, défense de droits et ateliers de sensibilisation.</p>\r\n\r\n<b>Mission de SOS :</b>\r\n\r\nPromouvoir le rôle actif des personnes différentes dans la société en créant des contextes où les membres ont à interagir avec un environnement aussi large et diversifié que possible ! L’ensemble des participants profitent ainsi de l’apport des uns et des autres.\r\n\r\n<b>Projet Ensemble en forme dans le club 3V :</b>\r\n\r\nIl s’agit d’un projet pour stimuler les saines habitudes de vie et briser l’isolement des personnes ayant une déficience intellectuelle. Le projet se décline en 3 activités, club d’ainés dans une bibliothèque du quartier les mercredis, club de marche à la Promenade Bellerive (est de Montréal) les jeudis am et club aquatique au Centre Sportif du Stade Olympique. Le projet vise des objectifs d’inclusion et de participation sociale et de sensibilisation.\r\n\r\n<b>Profil de la personne recherchée :</b>\r\n\r\nVous aimez côtoyer des personnes vivant avec une déficience intellectuelle et vous croyez et rêvez d’inclusion. Vous avez envie de travailler dans un contexte d’équipe et de porter un projet d’envergure tout en maintenant l’intervention et l’animation au cœur de votre implication. Vous vous distinguez par votre autonomie, votre capacité d’adaptation, votre bonne humeur et votre ouverture d’esprit.\r\n\r\n<b>Fonctions :</b>\r\n<ul>\r\n 	<li>La personne devra maintenir et développer le projet 3V en y assumant des tâches d’animation, d’intervention, d’accompagnement, de coordination de projet et de collaboration auprès des partenaires</li>\r\n 	<li>Intervention, création d’outils, application des plans d’intervention auprès de la clientèle. Déployer tout ce qu’il faut pour que les participants puissent participer aux activités dans la communauté.</li>\r\n 	<li>Gestion des bénévoles attachés au projet</li>\r\n 	<li>Animer et intégrer les différents volets de l’organisme (projet de sensibilisation, centre d’activités de jour, projet grand public, etc)</li>\r\n 	<li>Développer des nouveaux partenariats et travailler en collaboration avec le réseau de la santé (CIUSS)</li>\r\n 	<li>Travailler aux tâches quotidiennes reliées au projet et à la réalité de l’organisme.</li>\r\n</ul>\r\n\r\n<b>Exigences :</b>\r\n<ul>\r\n 	<li>Détenir un diplôme d’études collégiales ou l’équivalent</li>\r\n 	<li>Expérience auprès de personnes ayant avec une déficience intellectuelle</li>\r\n 	<li>Expérience pertinente en intervention et en animation</li>\r\n 	<li>Maitrise du français écrit</li>\r\n 	<li>Bonnes capacités de rédaction et de mise en page</li>\r\n</ul>\r\n\r\n<b>Détails de l’emploi:</b>\r\n<ul>\r\n 	<li>32h/semaine de mai à juillet; à revoir de septembre 2017 à septembre 2018 (à noter que l’organisme fait relâche au mois d’août)</li>\r\n 	<li>salaire selon la politique salariale en vigueur</li>\r\n 	<li>6 semaines de vacances par année + avantages sociaux</li>\r\n</ul>\r\n<p class=\"paragraph_style\">Si cette annonce vous interpelle et que vous avez envie de nous rencontrer, veuillez faire parvenir votre curriculum vitae ainsi qu’une lettre de présentation à l’adresse suivante:<a href=\"mailto:sosembauche@hotmail.com?subject=%C3%80%20l%27attention%20de%20Marianne%20Dup%C3%A9r%C3%A9%20-%20Offre%20d%27emploi%20Intervenant-e%20Socio-communautaire\">sosembauche@hotmail.com</a></p>\r\n\r\nMarianne Dupéré\r\ncoordonnatrice\r\n','Offres d\'emploi','','inherit','closed','closed','','40-revision-v1','','','2017-08-30 21:58:58','2017-08-31 01:58:58','',40,'http://localhost:8000/40-revision-v1/',0,'revision','',0),(59,1,'2017-08-30 22:01:06','2017-08-31 02:01:06','{\n    \"total::total_sticky_header_enable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','a3429676-d78d-44df-b921-912ce7bc7663','','','2017-08-30 22:01:06','2017-08-31 02:01:06','',0,'http://localhost:8000/?p=59',0,'customize_changeset','',0),(60,1,'2017-08-30 22:05:19','2017-08-31 02:05:19','{\n    \"total::header_text\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_slider_page1\": {\n        \"value\": \"40\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_slider_page2\": {\n        \"value\": \"18\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_slider_page3\": {\n        \"value\": \"16\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','83e2b577-83bf-4ca5-aa9e-fb65da1a72e7','','','2017-08-30 22:05:19','2017-08-31 02:05:19','',0,'http://localhost:8000/?p=60',0,'customize_changeset','',0),(61,1,'2017-08-30 22:06:03','2017-08-31 02:06:03','{\n    \"total::total_featured_section_disable\": {\n        \"value\": \"off\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','4d6b4aee-e983-4ab5-9b9c-7c485abe1017','','','2017-08-30 22:06:03','2017-08-31 02:06:03','',0,'http://localhost:8000/4d6b4aee-e983-4ab5-9b9c-7c485abe1017/',0,'customize_changeset','',0),(62,1,'2017-08-30 22:06:42','2017-08-31 02:06:42','{\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','13913ada-1037-4d16-bf18-f497468d1440','','','2017-08-30 22:06:42','2017-08-31 02:06:42','',0,'http://localhost:8000/13913ada-1037-4d16-bf18-f497468d1440/',0,'customize_changeset','',0),(63,1,'2017-08-30 22:08:33','2017-08-31 02:08:33','{\n    \"page_on_front\": {\n        \"value\": \"32\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','653b8bf4-f733-47df-9ebe-6cb1f133a7eb','','','2017-08-30 22:08:33','2017-08-31 02:08:33','',0,'http://localhost:8000/653b8bf4-f733-47df-9ebe-6cb1f133a7eb/',0,'customize_changeset','',0),(64,1,'2017-08-30 22:12:30','2017-08-31 02:12:30','{\n    \"total::total_about_page_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_about_page\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_portfolio_section_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','3d5d582f-a78f-483c-9673-5e550bfd685f','','','2017-08-30 22:12:30','2017-08-31 02:12:30','',0,'http://localhost:8000/?p=64',0,'customize_changeset','',0),(65,1,'2017-08-30 22:17:32','2017-08-31 02:17:32','<label> Votre Nom (requis)\r\n    [text* your-name] </label>\r\n\r\n<label> Votre adresse courriel (requis)\r\n    [email* your-email] </label>\r\n\r\n<label> Sujet\r\n    [text your-subject] </label>\r\n\r\n<label> Votre Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Envoyer\"]\n1\nSans Oublier le Sourire \"[your-subject]\"\n[your-name] <flightcom@wanadoo.fr>\nsansoublierlesourire@hotmail.com\nDe: [your-name] <[your-email]>\r\nSujet: [your-subject]\r\n\r\nCorps du message:\r\n[your-message]\r\n\r\n-- \r\nCe courriel a été envoyé du formulaire de contact de Sans Oublier le Sourire (http://localhost:8000)\nReply-To: [your-email]\n\n\n\n\nSans Oublier le Sourire \"[your-subject]\"\nSans Oublier le Sourire <flightcom@wanadoo.fr>\n[your-email]\nCorps du message:\r\n[your-message]\r\n\r\n-- \r\nCe courriel a été envoyé du formulaire de contact de Sans Oublier le Sourire (http://localhost:8000)\nReply-To: flightcom@wanadoo.fr\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d\'envoyer votre message.\nLe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors de la mise en ligne du fichier.\nVous n’êtes pas autorisé à mettre en ligne ce type de fichier.\nLe fichier est trop grand.\nUne erreur s’est produite lors de la mise en ligne du fichier.\nLe format de nombre est invalide.\nLe nombre est inférieur que le minimum autorisé.\nLe nombre est supérieur au maximum autorisé.\nLa réponse au quiz est incorrecte.\nLe code entré est incorrect.\nL’adresse courriel indiquée est invalide.\nL’URL est invalide.\nLe numéro de téléphone est invalide.','Formulaire de contact 1','','publish','closed','closed','','formulaire-de-contact-1','','','2017-08-30 22:20:08','2017-08-31 02:20:08','',0,'http://localhost:8000/?post_type=wpcf7_contact_form&#038;p=65',0,'wpcf7_contact_form','',0),(66,1,'2017-08-30 22:28:26','2017-08-31 02:28:26','\r\nTéléphone\r\n514-524-6626\r\n                                                                        \r\nCellulaire\r\n514-561-6626\r\n\r\nTélécopieur\r\n514-524-6756\r\n\r\nAdresse postale\r\n1700 rue Amherst,\r\nMontréal, Qc\r\nH2L 3L5\r\n\r\nMessagerie électronique\r\nsansoublierlesourire@hotmail.com\r\ndifferentscommetoutlemonde@gmail.com\r\n\r\nFacebook\r\n\r\nÉquipe de travail\r\nMarianne Dupéré\r\nGabriel G. Bergeron\r\nCécile Simon\r\nDavid Paquin Lagacé\r\nChristelle Juteau\r\n\r\n[contact-form-7 id=\"65\" title=\"Formulaire de contact 1\"]','Nous contacter','','inherit','closed','closed','','22-revision-v1','','','2017-08-30 22:28:26','2017-08-31 02:28:26','',22,'http://localhost:8000/22-revision-v1/',0,'revision','',0),(67,1,'2017-08-30 22:29:09','2017-08-31 02:29:09','[contact-form-7 id=\"65\" title=\"Formulaire de contact 1\"]\r\n\r\nTéléphone\r\n514-524-6626\r\n                                                                        \r\nCellulaire\r\n514-561-6626\r\n\r\nTélécopieur\r\n514-524-6756\r\n\r\nAdresse postale\r\n1700 rue Amherst,\r\nMontréal, Qc\r\nH2L 3L5\r\n','Nous contacter','','inherit','closed','closed','','22-revision-v1','','','2017-08-30 22:29:09','2017-08-31 02:29:09','',22,'http://localhost:8000/22-revision-v1/',0,'revision','',0),(68,1,'2017-08-30 22:43:04','2017-08-31 02:43:04','[wpgmza id=\"1\"]\r\n\r\n[contact-form-7 id=\"65\" title=\"Formulaire de contact 1\"]\r\n\r\nTéléphone\r\n514-524-6626\r\n                                                                        \r\nCellulaire\r\n514-561-6626\r\n\r\nTélécopieur\r\n514-524-6756\r\n\r\nAdresse postale\r\n1700 rue Amherst,\r\nMontréal, Qc\r\nH2L 3L5\r\n','Nous contacter','','inherit','closed','closed','','22-revision-v1','','','2017-08-30 22:43:04','2017-08-31 02:43:04','',22,'http://localhost:8000/22-revision-v1/',0,'revision','',0),(69,1,'2017-08-30 22:43:55','2017-08-31 02:43:55','[wpgmza id=\"1\"]\r\n\r\n<br />\r\n\r\n[contact-form-7 id=\"65\" title=\"Formulaire de contact 1\"]\r\n\r\nTéléphone\r\n514-524-6626\r\n                                                                        \r\nCellulaire\r\n514-561-6626\r\n\r\nTélécopieur\r\n514-524-6756\r\n\r\nAdresse postale\r\n1700 rue Amherst,\r\nMontréal, Qc\r\nH2L 3L5\r\n','Nous contacter','','inherit','closed','closed','','22-revision-v1','','','2017-08-30 22:43:55','2017-08-31 02:43:55','',22,'http://localhost:8000/22-revision-v1/',0,'revision','',0),(70,1,'2017-08-30 22:45:24','2017-08-31 02:45:24','[wpgmza id=\"1\"]\r\n\r\n<br />\r\n<br />\r\n\r\n[contact-form-7 id=\"65\" title=\"Formulaire de contact 1\"]\r\n\r\nTéléphone\r\n514-524-6626\r\n                                                                        \r\nCellulaire\r\n514-561-6626\r\n\r\nTélécopieur\r\n514-524-6756\r\n\r\nAdresse postale\r\n1700 rue Amherst,\r\nMontréal, Qc\r\nH2L 3L5\r\n','Nous contacter','','inherit','closed','closed','','22-revision-v1','','','2017-08-30 22:45:24','2017-08-31 02:45:24','',22,'http://localhost:8000/22-revision-v1/',0,'revision','',0),(71,1,'2017-08-30 22:46:06','2017-08-31 02:46:06','[contact-form-7 id=\"65\" title=\"Formulaire de contact 1\"]\r\n\r\n[wpgmza id=\"1\"]\r\n\r\nTéléphone\r\n514-524-6626\r\n                                                                        \r\nCellulaire\r\n514-561-6626\r\n\r\nTélécopieur\r\n514-524-6756\r\n\r\nAdresse postale\r\n1700 rue Amherst,\r\nMontréal, Qc\r\nH2L 3L5\r\n','Nous contacter','','inherit','closed','closed','','22-revision-v1','','','2017-08-30 22:46:06','2017-08-31 02:46:06','',22,'http://localhost:8000/22-revision-v1/',0,'revision','',0),(72,1,'2017-08-30 23:42:31','2017-08-31 03:42:31','{\n    \"total::total_about_page_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_title\": {\n        \"value\": \"\\u00c0 propos de nous\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_sub_title\": {\n        \"value\": \"Depuis 12 ans que l\'association existe, qu\'avons nous fait ?\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_title1\": {\n        \"value\": \"participiants\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_count1\": {\n        \"value\": \"50\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_icon1\": {\n        \"value\": \"fa fa-user\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_title2\": {\n        \"value\": \"Projets\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_count2\": {\n        \"value\": \"35\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_icon2\": {\n        \"value\": \"fa fa-flag-o\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_title4\": {\n        \"value\": \"caf\\u00e9s\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_count4\": {\n        \"value\": \"4570\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_icon4\": {\n        \"value\": \"fa fa-coffee\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_title3\": {\n        \"value\": \"dessins\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_count3\": {\n        \"value\": \"2313\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_icon3\": {\n        \"value\": \"fa fa-pencil-square-o\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_counter_bg\": {\n        \"value\": \"http://localhost:8000/wp-content/uploads/2017/08/20150728_135735.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','8a7efe6b-7934-4f47-b614-c8c134666b50','','','2017-08-30 23:42:31','2017-08-31 03:42:31','',0,'http://localhost:8000/?p=72',0,'customize_changeset','',0),(73,1,'2017-08-30 23:39:53','2017-08-31 03:39:53','','20150728_135735','','inherit','open','closed','','20150728_135735','','','2017-08-30 23:39:53','2017-08-31 03:39:53','',0,'http://localhost:8000/wp-content/uploads/2017/08/20150728_135735.jpg',0,'attachment','image/jpeg',0),(74,1,'2017-08-31 16:43:55','2017-08-31 20:43:55','{\n    \"total::total_about_page_disable\": {\n        \"value\": \"off\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_about_progressbar_disable1\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_about_progressbar_disable2\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_about_progressbar_disable3\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_about_progressbar_disable4\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_about_progressbar_disable5\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','38b8ce69-2774-44cb-8ddd-adaa89ba5a45','','','2017-08-31 16:43:55','2017-08-31 20:43:55','',0,'http://localhost:8000/?p=74',0,'customize_changeset','',0),(75,1,'2017-09-05 22:01:49','2017-09-06 02:01:49','{\n    \"total::total_slider_page1\": {\n        \"value\": \"16\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_slider_page2\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_slider_page3\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','25d8a67d-f728-4a06-94d4-eb33046d606c','','','2017-09-05 22:01:49','2017-09-06 02:01:49','',0,'http://localhost:8000/?p=75',0,'customize_changeset','',0),(76,1,'2017-09-05 21:22:26','2017-09-06 01:22:26','','IMG_6080','','inherit','open','closed','','img_6080','','','2017-09-05 21:22:26','2017-09-06 01:22:26','',43,'http://localhost:8000/wp-content/uploads/2017/08/IMG_6080.jpg',0,'attachment','image/jpeg',0),(77,1,'2017-09-10 21:11:31','2017-09-11 01:11:31','{\n    \"total::total_testimonial_title\": {\n        \"value\": \"T\\u00e9moignages\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','e6d4bfbc-fdf5-4107-8f4a-bd004db6dd92','','','2017-09-10 21:11:31','2017-09-11 01:11:31','',0,'http://localhost:8000/e6d4bfbc-fdf5-4107-8f4a-bd004db6dd92/',0,'customize_changeset','',0),(78,1,'2017-09-10 21:15:28','2017-09-11 01:15:28','Magnifique aventure, belles rencontres, professionnalisme, souriresssss, amitiés, amour, sincérité !!\r\n\r\n&nbsp;\r\n\r\n&nbsp;','Delphine','','publish','closed','closed','','temoignages','','','2017-09-10 21:18:25','2017-09-11 01:18:25','',0,'http://localhost:8000/?page_id=78',0,'page','',0),(79,1,'2017-09-10 21:12:22','2017-09-11 01:12:22','{\n    \"total::total_testimonial_sub_title\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','dfc06827-e506-4c5d-b30c-b43a8b61a6f8','','','2017-09-10 21:12:22','2017-09-11 01:12:22','',0,'http://localhost:8000/dfc06827-e506-4c5d-b30c-b43a8b61a6f8/',0,'customize_changeset','',0),(80,1,'2017-09-10 21:15:28','2017-09-11 01:15:28','<blockquote>Magnifique aventure, belles rencontres, professionnalisme, souriresssss, amitiés, amour, sincérité !!</blockquote>\r\nDelphine\r\n<blockquote>Le groupe est dynamique, souriant et extraordinaire, le travail fait à SOS est ouvert, entrainant.</blockquote>\r\nNelly\r\n\r\n&nbsp;\r\n\r\n&nbsp;','Témoignages','','inherit','closed','closed','','78-revision-v1','','','2017-09-10 21:15:28','2017-09-11 01:15:28','',78,'http://localhost:8000/78-revision-v1/',0,'revision','',0),(81,1,'2017-09-10 21:16:02','0000-00-00 00:00:00','{\n    \"total::total_testimonial_page\": {\n        \"value\": [\n            \"4\"\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','auto-draft','closed','closed','','ff7ccbd6-f948-442d-8bc5-d59e2df512d1','','','2017-09-10 21:16:02','0000-00-00 00:00:00','',0,'http://localhost:8000/?p=81',0,'customize_changeset','',0),(82,1,'2017-09-10 21:17:31','2017-09-11 01:17:31','<blockquote>Magnifique aventure, belles rencontres, professionnalisme, souriresssss, amitiés, amour, sincérité !!</blockquote>\nDelphine\n<blockquote>Le groupe est dynamique, souriant et extraordinaire, le travail fait à SOS est ouvert, entrainant.</blockquote>\nNelly\n\n&nbsp;\n\n&nbsp;','Témoignage De','','inherit','closed','closed','','78-autosave-v1','','','2017-09-10 21:17:31','2017-09-11 01:17:31','',78,'http://localhost:8000/78-autosave-v1/',0,'revision','',0),(83,1,'2017-09-10 21:18:25','2017-09-11 01:18:25','Magnifique aventure, belles rencontres, professionnalisme, souriresssss, amitiés, amour, sincérité !!\r\n\r\n&nbsp;\r\n\r\n&nbsp;','Delphine','','inherit','closed','closed','','78-revision-v1','','','2017-09-10 21:18:25','2017-09-11 01:18:25','',78,'http://localhost:8000/78-revision-v1/',0,'revision','',0),(84,1,'2017-09-10 21:18:44','2017-09-11 01:18:44','Le groupe est dynamique, souriant et extraordinaire, le travail fait à SOS est ouvert, entrainant.','Nelly','','publish','closed','closed','','nelly','','','2017-09-10 21:18:44','2017-09-11 01:18:44','',0,'http://localhost:8000/?page_id=84',0,'page','',0),(85,1,'2017-09-10 21:18:44','2017-09-11 01:18:44','Le groupe est dynamique, souriant et extraordinaire, le travail fait à SOS est ouvert, entrainant.','Nelly','','inherit','closed','closed','','84-revision-v1','','','2017-09-10 21:18:44','2017-09-11 01:18:44','',84,'http://localhost:8000/84-revision-v1/',0,'revision','',0),(86,1,'2017-09-10 21:19:06','2017-09-11 01:19:06','SOS nous donne le sourire et combien ils (la gang) sont chanceux de vivre quotidiennement des activités adaptées, des sorties dans le monde qu\'on dit régulier où ils apprennent petit à petit à prendre place.','Loulou','','publish','closed','closed','','loulou','','','2017-09-10 21:19:06','2017-09-11 01:19:06','',0,'http://localhost:8000/?page_id=86',0,'page','',0),(87,1,'2017-09-10 21:19:06','2017-09-11 01:19:06','SOS nous donne le sourire et combien ils (la gang) sont chanceux de vivre quotidiennement des activités adaptées, des sorties dans le monde qu\'on dit régulier où ils apprennent petit à petit à prendre place.','Loulou','','inherit','closed','closed','','86-revision-v1','','','2017-09-10 21:19:06','2017-09-11 01:19:06','',86,'http://localhost:8000/86-revision-v1/',0,'revision','',0),(88,1,'2017-09-10 21:19:44','2017-09-11 01:19:44','Sans oublier le sourire, vous portez tellement bien votre nom! Merci pour l\'espoir, la vraie vie, la gang la plus familiale, l\'absurdité (malheureusement et heureusement),... Un événement en particulier c\'est une bonne question. J\'y pense.','Anne-Marie','','publish','closed','closed','','anne-marie','','','2017-09-10 21:19:44','2017-09-11 01:19:44','',0,'http://localhost:8000/?page_id=88',0,'page','',0),(89,1,'2017-09-10 21:19:44','2017-09-11 01:19:44','Sans oublier le sourire, vous portez tellement bien votre nom! Merci pour l\'espoir, la vraie vie, la gang la plus familiale, l\'absurdité (malheureusement et heureusement),... Un événement en particulier c\'est une bonne question. J\'y pense.','Anne-Marie','','inherit','closed','closed','','88-revision-v1','','','2017-09-10 21:19:44','2017-09-11 01:19:44','',88,'http://localhost:8000/88-revision-v1/',0,'revision','',0),(90,1,'2017-09-10 21:20:12','2017-09-11 01:20:12','Le super souper d\'huître (lever de fond), quel succès pour la gang de SOS!','Manon','','publish','closed','closed','','manon','','','2017-09-10 21:20:12','2017-09-11 01:20:12','',0,'http://localhost:8000/?page_id=90',0,'page','',0),(91,1,'2017-09-10 21:20:12','2017-09-11 01:20:12','Le super souper d\'huître (lever de fond), quel succès pour la gang de SOS!','Manon','','inherit','closed','closed','','90-revision-v1','','','2017-09-10 21:20:12','2017-09-11 01:20:12','',90,'http://localhost:8000/90-revision-v1/',0,'revision','',0),(92,1,'2017-09-10 21:23:25','2017-09-11 01:23:25','Mon experience à SOS est une de mes plus belles rencontres humaines de ma vie ! Je me suis éclatée , je me suis épanouie , ce qui m\'a comblé c\'est de pouvoir partager et vivre la différence avec des personnes de multiples origines, opinions, âges.... et d\'être ensemble dans un but commun ! La classe ! Et la gang de SOS .... vous me manquez tellement ! Un parmi de nombreux souvenirs génialissimes, c\'est quand on a fait une séance relooking avec Sylvie et Celine! Ou quand on a peint les tables avec des ados ! Ou quand Patricia a crouze un invité ! Ou quand on mange des chamallows au chalet ! Bref je vais m\'arrêter... parce que sinon je vais écrire un roman ! Et je me suis fais aussi des amis très précieux !','Nelly','','publish','closed','closed','','manon-2','','','2017-09-10 21:26:03','2017-09-11 01:26:03','',0,'http://localhost:8000/?page_id=92',0,'page','',0),(93,1,'2017-09-10 21:23:25','2017-09-11 01:23:25','Mon experience à SOS est une de mes plus belles rencontres humaines de ma vie ! Je me suis éclatée , je me suis épanouie , ce qui m\'a comblé c\'est de pouvoir partager et vivre la différence avec des personnes de multiples origines, opinions, âges.... et d\'être ensemble dans un but commun ! La classe ! Et la gang de SOS .... vous me manquez tellement ! Un parmi de nombreux souvenirs génialissimes, c\'est quand on a fait une séance relooking avec Sylvie et Celine! Ou quand on a peint les tables avec des ados ! Ou quand Patricia a crouze un invité ! Ou quand on mange des chamallows au chalet ! Bref je vais m\'arrêter... parce que sinon je vais écrire un roman ! Et je me suis fais aussi des amis très précieux !','Manon','','inherit','closed','closed','','92-revision-v1','','','2017-09-10 21:23:25','2017-09-11 01:23:25','',92,'http://localhost:8000/92-revision-v1/',0,'revision','',0),(94,1,'2017-09-10 21:24:57','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-09-10 21:24:57','0000-00-00 00:00:00','',0,'http://localhost:8000/?p=94',1,'nav_menu_item','',0),(95,1,'2017-09-10 21:24:57','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-09-10 21:24:57','0000-00-00 00:00:00','',0,'http://localhost:8000/?p=95',1,'nav_menu_item','',0),(96,1,'2017-09-10 21:26:03','2017-09-11 01:26:03','Mon experience à SOS est une de mes plus belles rencontres humaines de ma vie ! Je me suis éclatée , je me suis épanouie , ce qui m\'a comblé c\'est de pouvoir partager et vivre la différence avec des personnes de multiples origines, opinions, âges.... et d\'être ensemble dans un but commun ! La classe ! Et la gang de SOS .... vous me manquez tellement ! Un parmi de nombreux souvenirs génialissimes, c\'est quand on a fait une séance relooking avec Sylvie et Celine! Ou quand on a peint les tables avec des ados ! Ou quand Patricia a crouze un invité ! Ou quand on mange des chamallows au chalet ! Bref je vais m\'arrêter... parce que sinon je vais écrire un roman ! Et je me suis fais aussi des amis très précieux !','Nelly','','inherit','closed','closed','','92-revision-v1','','','2017-09-10 21:26:03','2017-09-11 01:26:03','',92,'http://localhost:8000/92-revision-v1/',0,'revision','',0),(97,1,'2017-09-10 21:28:37','2017-09-11 01:28:37',' ','','','publish','closed','closed','','97','','','2017-09-10 21:35:24','2017-09-11 01:35:24','',0,'http://localhost:8000/?p=97',3,'nav_menu_item','',0),(105,1,'2017-09-10 21:29:59','2017-09-11 01:29:59','{\n    \"total::total_testimonial_page\": {\n        \"value\": [\n            \"88\",\n            \"78\",\n            \"86\",\n            \"90\",\n            \"84\",\n            \"92\"\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','ee340ea3-509d-42b7-9d37-6d7be4e2e9a1','','','2017-09-10 21:29:59','2017-09-11 01:29:59','',0,'http://localhost:8000/ee340ea3-509d-42b7-9d37-6d7be4e2e9a1/',0,'customize_changeset','',0),(106,1,'2017-09-10 21:31:18','2017-09-11 01:31:18','{\n    \"total::total_featured_section_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_service_section_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_team_section_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_blog_section_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_client_logo_section_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_cta_section_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','1fd8425c-f881-4257-a19c-489b416f95e8','','','2017-09-10 21:31:18','2017-09-11 01:31:18','',0,'http://localhost:8000/?p=106',0,'customize_changeset','',0),(107,1,'2017-09-10 21:33:37','2017-09-11 01:33:37','{\n    \"total::total_about_page_disable\": {\n        \"value\": \"on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','5b27c569-53dd-4e90-9de0-6a3592fab5fa','','','2017-09-10 21:33:37','2017-09-11 01:33:37','',0,'http://localhost:8000/?p=107',0,'customize_changeset','',0),(108,1,'2017-09-10 21:41:04','2017-09-11 01:41:04','<h2>Qu\'est ce que SOS ?</h2>\r\nSans Oublier le Sourire est un organisme à but non lucratif qui promeut la différence et la diversité.  Par différents moyens, nous rejoignons nos objectifs en mettant de l’avant la participation sociale des personnes ayant une déficience intellectuelle.\r\n\r\nIl y a d’abord un centre de jour en contexte intégré (centre communautaire actif ou plusieurs clientèles se côtoie au quotidien; des projets de formation unique, des activités de sensibilisation, des projets grand public de promotion et prochainement.... le projet de club les 3V!!!\r\n<h2>Notre mission</h2>\r\nPermettre aux participants (membres honoraires) de jouer un rôle social actif en créant des situations où ils ont à interagir avec un environnement aussi large et diversifié que possible. L’ensemble des personnes concernés profitent ainsi de l’apport les uns des autres.\r\n<h2>Les objectifs</h2>\r\n<ul>\r\n 	<li>Contribuer au maintien et au développement des acquis des participants.</li>\r\n 	<li>Sensibiliser la communauté environnante par des contacts personnalisés à la capacité d’implication de nos participants.</li>\r\n 	<li>Créer un milieu de vie respectueux, chaleureux et dynamique.</li>\r\n 	<li>Sensibiliser le public sur les conditions et les besoins des personnes handicapées (voir la déficience intellectuelle).</li>\r\n 	<li>Promouvoir la participation sociale des personnes vivant avec une déficience intellectuelle.</li>\r\n 	<li></li>\r\n</ul>','Au sujet de SOS','','publish','closed','closed','','au-sujet-de-sos','','','2017-09-10 21:41:04','2017-09-11 01:41:04','',0,'http://localhost:8000/?page_id=108',0,'page','',0),(109,1,'2017-09-10 21:41:04','2017-09-11 01:41:04','<h2>Qu\'est ce que SOS ?</h2>\r\nSans Oublier le Sourire est un organisme à but non lucratif qui promeut la différence et la diversité.  Par différents moyens, nous rejoignons nos objectifs en mettant de l’avant la participation sociale des personnes ayant une déficience intellectuelle.\r\n\r\nIl y a d’abord un centre de jour en contexte intégré (centre communautaire actif ou plusieurs clientèles se côtoie au quotidien; des projets de formation unique, des activités de sensibilisation, des projets grand public de promotion et prochainement.... le projet de club les 3V!!!\r\n<h2>Notre mission</h2>\r\nPermettre aux participants (membres honoraires) de jouer un rôle social actif en créant des situations où ils ont à interagir avec un environnement aussi large et diversifié que possible. L’ensemble des personnes concernés profitent ainsi de l’apport les uns des autres.\r\n<h2>Les objectifs</h2>\r\n<ul>\r\n 	<li>Contribuer au maintien et au développement des acquis des participants.</li>\r\n 	<li>Sensibiliser la communauté environnante par des contacts personnalisés à la capacité d’implication de nos participants.</li>\r\n 	<li>Créer un milieu de vie respectueux, chaleureux et dynamique.</li>\r\n 	<li>Sensibiliser le public sur les conditions et les besoins des personnes handicapées (voir la déficience intellectuelle).</li>\r\n 	<li>Promouvoir la participation sociale des personnes vivant avec une déficience intellectuelle.</li>\r\n 	<li></li>\r\n</ul>','Au sujet de SOS','','inherit','closed','closed','','108-revision-v1','','','2017-09-10 21:41:04','2017-09-11 01:41:04','',108,'http://localhost:8000/108-revision-v1/',0,'revision','',0),(110,1,'2017-09-10 21:41:45','0000-00-00 00:00:00','{\n    \"total::total_slider_page1\": {\n        \"value\": \"108\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"total::total_slider_page2\": {\n        \"value\": \"16\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','auto-draft','closed','closed','','e2d5f7d2-f797-48fc-91a5-a88c28566846','','','2017-09-10 21:41:45','0000-00-00 00:00:00','',0,'http://localhost:8000/?p=110',0,'customize_changeset','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(8,2,0),(8,15,0),(11,16,0),(13,16,0),(24,16,0),(26,16,0),(27,16,0),(39,16,0),(42,16,0),(45,16,0),(97,16,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'product_type','',0,1),(3,3,'product_type','',0,0),(4,4,'product_type','',0,0),(5,5,'product_type','',0,0),(6,6,'product_visibility','',0,0),(7,7,'product_visibility','',0,0),(8,8,'product_visibility','',0,0),(9,9,'product_visibility','',0,0),(10,10,'product_visibility','',0,0),(11,11,'product_visibility','',0,0),(12,12,'product_visibility','',0,0),(13,13,'product_visibility','',0,0),(14,14,'product_visibility','',0,0),(15,15,'product_cat','',0,1),(16,16,'nav_menu','',0,9),(17,17,'category','',0,0),(18,18,'category','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,15,'order','0'),(2,15,'product_count_product_cat','1');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorised','uncategorized',0),(2,'simple','simple',0),(3,'grouped','grouped',0),(4,'variable','variable',0),(5,'external','external',0),(6,'exclude-from-search','exclude-from-search',0),(7,'exclude-from-catalog','exclude-from-catalog',0),(8,'featured','featured',0),(9,'outofstock','outofstock',0),(10,'rated-1','rated-1',0),(11,'rated-2','rated-2',0),(12,'rated-3','rated-3',0),(13,'rated-4','rated-4',0),(14,'rated-5','rated-5',0),(15,'Livres','livres',0),(16,'Main Menu','main-menu',0),(17,'Témoignages','temoignages',0),(18,'Ressources','ressources',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','sos-admin'),(2,1,'first_name','Sébastien'),(3,1,'last_name','Moreau'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'locale',''),(11,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(12,1,'wp_user_level','10'),(13,1,'dismissed_wp_pointers',''),(14,1,'show_welcome_panel','0'),(15,1,'session_tokens','a:2:{s:64:\"0e965171ca2a044a9be62f912070d67267c7d36d137897353ad6aa2aca77b441\";a:4:{s:10:\"expiration\";i:1505316336;s:2:\"ip\";s:10:\"172.26.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36\";s:5:\"login\";i:1504106736;}s:64:\"5974c5a30d6a33c56ed416f640978778639bbd450577e4f6c3cc5fde54b23c77\";a:4:{s:10:\"expiration\";i:1505868210;s:2:\"ip\";s:10:\"172.26.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\";s:5:\"login\";i:1504658610;}}'),(16,1,'wp_dashboard_quick_press_last_post_id','3'),(17,1,'community-events-location','a:1:{s:2:\"ip\";s:10:\"172.26.0.0\";}'),(19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(20,1,'metaboxhidden_nav-menus','a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),(21,1,'nav_menu_recently_edited','16'),(22,1,'wp_user-settings','libraryContent=browse&editor=html'),(23,1,'wp_user-settings-time','1505094059'),(24,1,'last_update','1504122623'),(25,1,'billing_first_name','Sébastien'),(26,1,'billing_last_name','Moreau'),(27,1,'billing_address_1','4551 rue Pontiac'),(28,1,'billing_address_2','App 2'),(29,1,'billing_city','Montréal'),(30,1,'billing_state','QC'),(31,1,'billing_postcode','H2J 2T2'),(32,1,'billing_country','CA'),(33,1,'billing_email','flightcom@wanadoo.fr'),(34,1,'billing_phone','5147460903'),(35,1,'shipping_first_name','Sébastien'),(36,1,'shipping_last_name','Moreau'),(37,1,'shipping_address_1','4551 rue Pontiac'),(38,1,'shipping_address_2','App 2'),(39,1,'shipping_city','Montréal'),(40,1,'shipping_state','QC'),(41,1,'shipping_postcode','H2J2T2'),(42,1,'shipping_country','CA'),(43,1,'shipping_method','a:1:{i:0;s:11:\"flat_rate:1\";}'),(44,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:104:\"woocommerce_dashboard_status,dashboard_right_now,dashboard_activity,woocommerce_dashboard_recent_reviews\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),(45,1,'paying_customer','1'),(46,1,'wpcf7_hide_welcome_panel_on','a:1:{i:0;s:3:\"4.9\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'sos-admin','$P$BPfztSU/xx16JjDibSELHioL/0FC6G/','sos-admin','flightcom@wanadoo.fr','','2017-08-30 15:25:28','',0,'sos-admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_order_itemmeta` VALUES (1,1,'_product_id','8'),(2,1,'_variation_id','0'),(3,1,'_qty','1'),(4,1,'_tax_class',''),(5,1,'_line_subtotal','0.99'),(6,1,'_line_subtotal_tax','0.1483'),(7,1,'_line_total','0.99'),(8,1,'_line_tax','0.1483'),(9,1,'_line_tax_data','a:2:{s:5:\"total\";a:2:{i:13;s:6:\"0.0495\";i:14;s:6:\"0.0988\";}s:8:\"subtotal\";a:2:{i:13;s:6:\"0.0495\";i:14;s:6:\"0.0988\";}}'),(10,2,'method_id','flat_rate:1'),(11,2,'cost','0.00'),(12,2,'total_tax','0'),(13,2,'taxes','a:1:{s:5:\"total\";a:2:{i:13;s:0:\"\";i:14;s:0:\"\";}}'),(14,2,'Articles','Sans Oublier les Couleurs &times; 1'),(15,3,'rate_id','13'),(16,3,'label','GST'),(17,3,'compound',''),(18,3,'tax_amount','0.0495'),(19,3,'shipping_tax_amount','0'),(20,4,'rate_id','14'),(21,4,'label','QST'),(22,4,'compound',''),(23,4,'tax_amount','0.0988'),(24,4,'shipping_tax_amount','0');
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_order_items` VALUES (1,'Sans Oublier les Couleurs','line_item',31),(2,'Forfait','shipping',31),(3,'CA-QC-GST-1','tax',31),(4,'CA-QC-QST-2','tax',31);
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (9,'1','a:7:{s:8:\"customer\";s:827:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:6:\"H2J2T2\";s:4:\"city\";s:9:\"Montréal\";s:9:\"address_1\";s:16:\"4551 rue Pontiac\";s:7:\"address\";s:16:\"4551 rue Pontiac\";s:9:\"address_2\";s:5:\"App 2\";s:5:\"state\";s:2:\"QC\";s:7:\"country\";s:2:\"CA\";s:17:\"shipping_postcode\";s:6:\"H2J2T2\";s:13:\"shipping_city\";s:9:\"Montréal\";s:18:\"shipping_address_1\";s:16:\"4551 rue Pontiac\";s:16:\"shipping_address\";s:16:\"4551 rue Pontiac\";s:18:\"shipping_address_2\";s:5:\"App 2\";s:14:\"shipping_state\";s:2:\"QC\";s:16:\"shipping_country\";s:2:\"CA\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:1;s:10:\"first_name\";s:10:\"Sébastien\";s:9:\"last_name\";s:6:\"Moreau\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"5147460903\";s:5:\"email\";s:20:\"flightcom@wanadoo.fr\";s:19:\"shipping_first_name\";s:10:\"Sébastien\";s:18:\"shipping_last_name\";s:6:\"Moreau\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:364:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_720d45e6aee5ef152f2251a1662a1541\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":6:{s:2:\"id\";s:11:\"flat_rate:1\";s:5:\"label\";s:7:\"Forfait\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}s:9:\"method_id\";s:9:\"flat_rate\";s:27:\"\0WC_Shipping_Rate\0meta_data\";a:1:{s:8:\"Articles\";s:35:\"Sans Oublier les Couleurs &times; 1\";}}}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:21:\"chosen_payment_method\";s:6:\"stripe\";}',1504294879);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_locations` VALUES (1,1,'CA:QC','state');
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_methods` VALUES (1,1,'flat_rate',1,1);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zones` VALUES (1,'Québec',0);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_tax_rates` VALUES (1,'CA','ON','13.0000','HST',1,0,1,0,''),(2,'CA','NL','13.0000','HST',1,0,1,1,''),(3,'CA','NB','13.0000','HST',1,0,1,2,''),(4,'CA','PE','14.0000','HST',1,0,1,3,''),(5,'CA','NS','15.0000','HST',1,0,1,4,''),(6,'CA','AB','5.0000','GST',1,0,1,5,''),(7,'CA','BC','5.0000','GST',1,0,1,6,''),(8,'CA','NT','5.0000','GST',1,0,1,7,''),(9,'CA','NU','5.0000','GST',1,0,1,8,''),(10,'CA','YT','5.0000','GST',1,0,1,9,''),(11,'CA','SK','5.0000','GST',1,0,1,10,''),(12,'CA','MB','5.0000','GST',1,0,1,11,''),(13,'CA','QC','5.0000','GST',1,0,1,12,''),(14,'CA','QC','9.9750','QST',2,0,0,13,'');
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza`
--

DROP TABLE IF EXISTS `wp_wpgmza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza`
--

LOCK TABLES `wp_wpgmza` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza` DISABLE KEYS */;
INSERT INTO `wp_wpgmza` VALUES (2,1,'1700 Rue Amherst, Montréal, QC H2L 3L5, Canada','','','','','45.518757','-73.560510','0','','0','',1,0,0,'','');
/*!40000 ALTER TABLE `wp_wpgmza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_categories`
--

DROP TABLE IF EXISTS `wp_wpgmza_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_categories`
--

LOCK TABLES `wp_wpgmza_categories` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_category_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_category_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_category_maps`
--

LOCK TABLES `wp_wpgmza_category_maps` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_category_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_category_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_maps`
--

LOCK TABLES `wp_wpgmza_maps` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_maps` DISABLE KEYS */;
INSERT INTO `wp_wpgmza_maps` VALUES (1,'Contact Page Map','100','400','45.518757','-73.560510','45.5187568,-73.56051029999998',14,'0',1,1,1,0,'',0,'',2,2,1,'100',0,0,0,0,0,'','\\%','px',1,0,1,2,0,'','a:12:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;}');
/*!40000 ALTER TABLE `wp_wpgmza_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polygon`
--

DROP TABLE IF EXISTS `wp_wpgmza_polygon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polygon`
--

LOCK TABLES `wp_wpgmza_polygon` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polylines`
--

DROP TABLE IF EXISTS `wp_wpgmza_polylines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polylines`
--

LOCK TABLES `wp_wpgmza_polylines` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-03  2:40:50
