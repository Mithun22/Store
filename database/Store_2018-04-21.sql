# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.21)
# Database: Store
# Generation Time: 2018-04-21 06:56:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table brands
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;

INSERT INTO `brands` (`brand_id`, `brand_title`)
VALUES
	(1,'HP'),
	(2,'Samsung'),
	(3,'Apple'),
	(4,'Sony'),
	(5,'LG'),
	(6,'Cloth Brand');

/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`)
VALUES
	(6,6,'::1',2,1),
	(9,1,'::1',4,1);

/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`cat_id`, `cat_title`)
VALUES
	(1,'Electronics'),
	(2,'Ladies Wears'),
	(3,'Mens Wear'),
	(4,'Kids Wear'),
	(5,'Furnitures'),
	(6,'Home Appliances'),
	(7,'Electronics Gadgets');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`)
VALUES
	(1,1,2,'Samsung Dous 2',5000,'Samsung Dous 2 sgh ','samsung mobile.jpg','samsung mobile electronics'),
	(2,1,3,'iPhone 5s',25000,'iphone 5s','iphone mobile.jpg','mobile iphone apple'),
	(3,1,3,'iPad',30000,'ipad apple brand','ipad.jpg','apple ipad tablet'),
	(4,1,3,'iPhone 6s',32000,'Apple iPhone ','iphone.jpg','iphone apple mobile'),
	(5,1,2,'iPad 2',10000,'samsung ipad','ipad 2.jpg','ipad tablet samsung'),
	(6,1,1,'Hp Laptop r series',35000,'Hp Red and Black combination Laptop','k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg','hp laptop '),
	(7,1,1,'Laptop Pavillion',50000,'Laptop Hp Pavillion','12039452_525963140912391_6353341236808813360_n.png','Laptop Hp Pavillion'),
	(8,1,4,'Sony',40000,'Sony Mobile','sony mobile.jpg','sony mobile'),
	(9,1,3,'iPhone New',12000,'iphone','white iphone.png','iphone apple mobile'),
	(10,2,6,'Red Ladies dress',1000,'red dress for girls','red dress.jpg','red dress '),
	(11,2,6,'Blue Heave dress',1200,'Blue dress','images.jpg','blue dress cloths'),
	(12,2,6,'Ladies Casual Cloths',1500,'ladies casual summer two colors pleted','7475-ladies-casual-dresses-summer-two-colors-pleated.jpg','girl dress cloths casual'),
	(13,2,6,'SpringAutumnDress',1200,'girls dress','Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg','girl dress'),
	(14,2,6,'Casual Dress',1400,'girl dress','download.jpg','ladies cloths girl'),
	(15,2,6,'Formal Look',1500,'girl dress','shutterstock_203611819.jpg','ladies wears dress girl'),
	(16,3,6,'Sweter for men',600,'2012-Winter-Sweater-for-Men-for-better-outlook','2012-Winter-Sweater-for-Men-for-better-outlook.jpg','black sweter cloth winter'),
	(17,3,6,'Gents formal',1000,'gents formal look','gents-formal-250x250.jpg','gents wear cloths'),
	(19,3,6,'Formal Coat',3000,'ad','images (1).jpg','coat blazer gents'),
	(20,3,6,'Mens Sweeter',1600,'jg','Winter-fashion-men-burst-sweater.png','sweeter gents '),
	(21,3,6,'T shirt',800,'ssds','IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg','formal t shirt black'),
	(22,4,6,'Yellow T shirt ',1300,'yello t shirt with pant','1.0x0.jpg','kids yellow t shirt'),
	(23,4,6,'Girls cloths',1900,'sadsf','GirlsClothing_Widgets.jpg','formal kids wear dress'),
	(24,4,6,'Blue T shirt',700,'g','images.jpg','kids dress'),
	(25,4,6,'Yellow girls dress',750,'as','images (3).jpg','yellow kids dress'),
	(26,4,6,'Skyblue dress',650,'nbk','kids-wear-121.jpg','skyblue kids dress'),
	(27,4,6,'Formal look',690,'sd','image28.jpg','formal kids dress'),
	(32,5,0,'Book Shelf',2500,'book shelf','furniture-book-shelf-250x250.jpg','book shelf furniture'),
	(33,6,2,'Refrigerator',35000,'Refrigerator','CT_WM_BTS-BTC-AppliancesHome_20150723.jpg','refrigerator samsung'),
	(34,6,4,'Emergency Light',1000,'Emergency Light','emergency light.JPG','emergency light'),
	(35,6,0,'Vaccum Cleaner',6000,'Vaccum Cleaner','images (2).jpg','Vaccum Cleaner'),
	(36,6,5,'Iron',1500,'gj','iron.JPG','iron'),
	(37,6,5,'LED TV',20000,'LED TV','images (4).jpg','led tv lg'),
	(38,6,4,'Microwave Oven',3500,'Microwave Oven','images.jpg','Microwave Oven'),
	(39,6,5,'Mixer Grinder',2500,'Mixer Grinder','singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg','Mixer Grinder'),
	(40,2,6,'Formal girls dress',3000,'Formal girls dress','girl-walking.jpg','ladies'),
	(45,1,2,'Samsung Galaxy Note 3',10000,'0','samsung_galaxy_note3_note3neo.JPG','samsung galaxy Note 3 neo'),
	(46,1,2,'Samsung Galaxy Note 3',10000,'','samsung_galaxy_note3_note3neo.JPG','samsung galxaxy note 3 neo');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`)
VALUES
	(2,'Naveen','Sankar','naveensankarks@gmail.com','b212b34be9508db565296ea02a602829','8344647996','Chennai','Chennai'),
	(3,'Mithun','Kumar','mithun@europe.com','b212b34be9508db565296ea02a602829','9003113870','Chennai','Chennai'),
	(4,'naveen','sankar','nav@gmail.com','b212b34be9508db565296ea02a602829','7639329972','aaa','bbb');

/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
