-- MySQL dump 10.13  Distrib 5.5.30, for Win64 (x86)
--
-- Host: localhost    Database: e_shop
-- ------------------------------------------------------
-- Server version	5.5.30

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
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories` (
  `COMPANY` varchar(20) NOT NULL,
  `MODEL_NO` varchar(30) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `COLOR` varchar(10) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `PRICE` varchar(10) NOT NULL,
  `QUANTITY` varchar(5) NOT NULL,
  PRIMARY KEY (`COMPANY`,`MODEL_NO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
INSERT INTO `accessories` VALUES ('hp','compact-mini','pendrive','red','12GB capacity','1200','4'),('sony','razor','pendrive','black','16GB capacity','5000','60'),('SEAGATE','BACKUP +','HARD DISK','BLACK','1 TB capacity','5500','3'),('TOSHOBA','CANVIO BASIC','HARD DISK','GREY','500 GB capacity','4000','16'),('WD','MY PASSPORT','HARD DISK','BLACK','2 TB capacity','8999','2'),('HP','V210 W32','PENDRIVE','red','32GB capacity','1399','4'),('SAN DISK','CRUZER BLADE','PENDRIVE','BLACK','16GB capacity','550','5'),('TRANSCEND','JET FLASH','PENDRIVE','GREEN','8GB capacity','320','4'),('SAN DISK','MICRO SDHC','MEMORY CARD','','4 GB capacity','245','5'),('STRONTIUM','MICRO SD','MEMORY CARD','','8 GB capacity','489','5'),('TRANSCEND','MB-MS4GA MICRO SD','MEMORY CARD','','16GB capacity','999','5'),('MICROSOFT','MKC2100','KEYBOARD','BLACK','WIRELESS 800 USB','1499','4'),('IBALL','SUPERIO 200','KEYBOARD','BLACK','USB 2.0','799','4'),('PHILIPS','SHE1360/97','HEADPHONES','BLACK','15MM, 50MW MAX POWER','1255','4'),('PANASONIC','RP-HJE120E-K','HEADPHONES','WHITE','9MM, 200MW','450','5'),('SENNHEISER','HD 201 ','HEADPHONES','GREY','21-12888HZ FREQ','1790','4'),('PANASONIC','HD 201','HEADPHONES','WHITE','9MM,200MW','2000','10'),('PANASONIC','HD 203','HEADPHONES','WHITE','9MM,200MW','12000','10');
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_payment`
--

DROP TABLE IF EXISTS `bill_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_payment` (
  `BILL_NO` varchar(20) NOT NULL,
  `CARD_NO` varchar(20) NOT NULL,
  `SHIPPING_ADD` varchar(100) NOT NULL,
  `TOTAL_AMOUNT` varchar(10) NOT NULL,
  `CONTACT_NO` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`BILL_NO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_payment`
--

LOCK TABLES `bill_payment` WRITE;
/*!40000 ALTER TABLE `bill_payment` DISABLE KEYS */;
INSERT INTO `bill_payment` VALUES ('e_shop_xyz2','XYZ123','            sadasdasd            ','1255','8728345678'),('e_shop_xyz0','y32423423','                        sddasdasdsadasd','137000','3434343434'),('e_shop_xyz1','XYZ123','     LNMIIT                   ','1255','1238901234'),('e_shop_xyz3','y11uc255','                        sadsdasd','1255','873862634'),('e_shop_xyz4','4356','                        lnmiit','3045','3456789'),('e_shop_xyz5','XYAZ12','                        jaipur','150000','9829012345'),('e_shop_xyz6','54654645','                        lnmiit','14499','234234234'),('e_shop_xyz7','878444','                        sdffsdfdsfsdf','12199','546546546'),('e_shop_xyz8','XYZ123','                        Jaipur','145000','982901234'),('e_shop_xyz9','XYZ123','      jaipur                  ','235000','0982901234'),('e_shop_xyz10','4545454','                        fefdfdf','100000','565656565'),('e_shop_xyz11','3455fg','                        lnmiit','137000','098765432'),('e_shop_xyz12','4566','                        dggg','43000','097654345'),('e_shop_xyz13','324edfd','                        vassdasdasd','82000','98397223'),('e_shop_xyz14','345435','   xvxcvxcvxcvxcv','320','981972390'),('e_shop_xyz15','8748re','                        lnmiit','59500','55453453'),('e_shop_xyz16','43534sd','                        adsfsdfsdf','2599','099488833'),('e_shop_xyz17','XPASXI','     LNMIIT                   ','184000','0982901234'),('e_shop_xyz18','y11uc166','lnmit                        ','32000','234567890'),('e_shop_xyz19','74yy2`','lnmiit                        ','32000','324234'),('e_shop_xyz20','e3444','       lnmiit d_207                 ','100000','982875552'),('e_shop_xyz21','XYZ123','      lnmiit                 ','90500','324234324'),('e_shop_xyz22','e8883','                        chaura rasta','21000','984933322'),('e_shop_xyz23','e383','                        lnmiit','90500','98343434'),('e_shop_xyz24','XYZ123','                        lnmiit','88000','98295444');
/*!40000 ALTER TABLE `bill_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `USER_ID` varchar(20) NOT NULL DEFAULT '',
  `PASSWORD` varchar(20) NOT NULL,
  `EMAIL_ID` varchar(40) DEFAULT NULL,
  `GENDER` varchar(10) NOT NULL,
  `ADDRESS` varchar(60) NOT NULL,
  `MOBILE_NO` varchar(11) NOT NULL,
  `M_NAME` varchar(15) DEFAULT NULL,
  `F_NAME` varchar(15) DEFAULT NULL,
  `L_NAME` varchar(15) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `EMAIL_ID` (`EMAIL_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('swapnil_12','smarty','smarty.swapn@gmail.c','male','                        LNMIIT,Jaipur','9829732808','kumar','swapnil','jain'),('vikas_1','vikas','vikastinkar@gmail.com','male','                        chauda rasta,Jaipur','9829012345','','vikas','tinkar'),('Gaurav','sharma','gauravnsd92@gmailc.om','male','                        D-207,LNMIIT,Jaipur','9829012321','kumar','gaurav','jain'),('Pranjal','pranjal','pranjal@gmail.com','male','                        lnmiit','9839654','','pranjal','kumar'),('chirag','tinkar','tinkar.chirag@gmail.com','male','     chaura,rasta jaipur                   ','9849970000','','chirag','tinkar'),('admin','admin@123','admin@gmail.com','N/A','N/A','N/A','-','-','-'),('pran','pran','pranjal@yahoo.com','male','lnmiit                         ','1234567890','kumar','pranjal','saxena');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laptop` (
  `COMPANY` varchar(20) NOT NULL,
  `MODEL_NO` varchar(30) NOT NULL,
  `PROCESSOR` varchar(30) NOT NULL,
  `RAM` varchar(15) NOT NULL,
  `GRAPHICS` varchar(30) NOT NULL,
  `DISPLAY` varchar(30) NOT NULL,
  `PRICE` varchar(10) NOT NULL,
  `QUANTITY` varchar(5) NOT NULL,
  `HARD_DISK` varchar(10) NOT NULL,
  PRIMARY KEY (`COMPANY`,`MODEL_NO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop`
--

LOCK TABLES `laptop` WRITE;
/*!40000 ALTER TABLE `laptop` DISABLE KEYS */;
INSERT INTO `laptop` VALUES ('dell','insipiron 15R','i5','4gb','4gb','16 \'','45500','777','500 gb'),('lenovo','z5 70','i5 2nd gen','4gb','2 gb ','19 inch','40000','39','7500'),('dell','insipiron 14R','i5','4gb','1gb','14 \'','45000','13','500 gb'),('dell','xps 15','i5','6gb','2gb','16 \'','55000','16','750 gb'),('dell','vostro','i3','4gb','1gb','13.5 \'','43000','20','500 gb'),('dell','alien ware','i7','8gb','4gb','16 \'','105000','18','1 tb'),('dell','xps14 ultra','i3','6gb','1gb','14 \'','38000','22','500 gb'),('lenovo','z570','i5','6gb','2gb','15 \'','44000','21','750 gb'),('lenovo','g570','i3','4gb','1gb','14 \'','36000','30','500 gb'),('lenovo','x352','i5','4gb','1gb','16 \'','52000','21','500 gb'),('lenovo','ultra z590','i7','8gb','2gb','16 \'','85000','22','2 tb'),('lenovo','v120','i3','4gb','1gb','13 \'','32000','18','500 gb'),('dell','insipiron 16R','i7','6gb','10gb','17\'','40000','10','20'),('lenovo','v140','i7','8gb','2gb','18\'','2tb','60000','10'),('dell','v140','i7','8gb','10gb','18\'','60000','20','2tb'),('dell','insipiron 13r','i7','10gb','2gb','17\'','60000','20','1tb');
/*!40000 ALTER TABLE `laptop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map`
--

DROP TABLE IF EXISTS `map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map` (
  `PRODUCT_ID` varchar(10) NOT NULL,
  `BILL_NO` varchar(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map`
--

LOCK TABLES `map` WRITE;
/*!40000 ALTER TABLE `map` DISABLE KEYS */;
INSERT INTO `map` VALUES ('54','e_shop_xyz17'),('55','e_shop_xyz17'),('56','e_shop_xyz17'),('57','e_shop_xyz17'),('58','e_shop_xyz18'),('59','e_shop_xyz19'),('60','e_shop_xyz20'),('61','e_shop_xyz20'),('62','e_shop_xyz21'),('63','e_shop_xyz21'),('64','e_shop_xyz22'),('65','e_shop_xyz22'),('66','e_shop_xyz23'),('67','e_shop_xyz23'),('68','e_shop_xyz24'),('69','e_shop_xyz24');
/*!40000 ALTER TABLE `map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile` (
  `COMPANY` varchar(20) NOT NULL,
  `MODEL_NO` varchar(30) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `CAMERA` varchar(20) NOT NULL,
  `OS` varchar(15) NOT NULL,
  `PRICE` varchar(10) NOT NULL,
  `QUANTITY` varchar(5) NOT NULL,
  PRIMARY KEY (`COMPANY`,`MODEL_NO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile`
--

LOCK TABLES `mobile` WRITE;
/*!40000 ALTER TABLE `mobile` DISABLE KEYS */;
INSERT INTO `mobile` VALUES ('NOKIA','LUMIA 920','TOUCH SCREEN','8M.P.','WINDOWS','35000','115'),('HTC','desire','TOUCH SCREEn','5 mega pixel','ANDROID','15000','39'),('SAMSUNG','GALAXY S3','TOUCH SCREEN','8 M.P.','ANDROID V4.04','40000','40'),('NOKIA','LUMIA 820','TOUCH SCREEN','8M.P.','WINDOWS 8','25000','145'),('NOKIA','5130 C2','QWERT','2M.P.','SYMBIAN','5000','96'),('NOKIA','C2 05','TOUCH SCREEN','3.2M.P.','TOUCH SCREEN','7500','96'),('NOKIA','ASHA','TOUCH SCREEN','5M.P.','SYBIAN','7000','96'),('NOKIA','LUMIA 810','TOUCH SCREEN','8M.P.','WINDOWS 8','12000','96'),('SAMSUNG','GALAXY RAND','SAMRTPHONE','15M.P.','ANDROID','30000','94'),('SAMSUNG','GALAXY DUO','TOUCH SCREEN','5M.P.','ANDROID','8000','94'),('SAMSUNG','GALAXY Y','TOUCH SCREEN','2M.P.','ANDROID','5500','94'),('SAMSUNG','CHAT','QWERTY','2M.P.','SYMBIAN','3000','95'),('SAMSUNG','NOTE','SMARTPHONE','5M.P.','ANDROID','13000','95'),('HTC','DERSIRE','SMARTPHONE','8M.P.','ANDROID','26000','95'),('HTC','ONE VX','TOUCH SCREEN','3M.P.','ANDROID','14000','95'),('HTC','WINDOWS PHONE 8X','SMART PHONE','5M.P.','WINDOWS','30000','95'),('HTC','DESIRE X','SMART PHONE','10M.P.','ANDROID','8000','95'),('HTC','FIRST','TOUCH SCREEN','10M.P.','ANDROID','13000','95'),('SAMSUNG','S4','TOUCH','5 M.P.','ANDROID','10000','10'),('NOKIA','v140','TOUCH','5 M.P.','WINDOWS','10000','95');
/*!40000 ALTER TABLE `mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `USER_ID` varchar(20) NOT NULL,
  `COMPANY` varchar(20) NOT NULL,
  `MODEL_NO` varchar(30) NOT NULL,
  `PRODUCT_ID` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `MODEL_NO` (`MODEL_NO`),
  KEY `COMPANY` (`COMPANY`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES ('swapnil_12','dell','inspiron 15R',1),('swapnil_12','dell','insipiron 15R\r\n',2),('swapnil_12','NOKIA','LUMIA 920\r\n',3),('swapnil_12','HTC','desire\r\n',4),('swapnil_12','NOKIA','LUMIA 820\r\n',5),('swapnil_12','SAMSUNG','GALAXY RAND\r\n',6),('swapnil_12','SAMSUNG','GALAXY DUO\r\n',7),('swapnil_12','SAMSUNG','GALAXY Y\r\n',8),('swapnil_12','HTC','DERSIRE\r\n',9),('swapnil_12','HTC','ONE VX\r\n',10),('swapnil_12','SEAGATE','BACKUP +\r\n',11),('swapnil_12','TOSHOBA','CANVIO BASIC\r\n',12),('swapnil_12','WD','MY PASSPORT\r\n',13),('swapnil_12','dell','insipiron 15R\r\n',14),('swapnil_12','dell','insipiron 14R\r\n',15),('swapnil_12','dell','xps 15\r\n',16),('swapnil_12','dell','alien ware\r\n',17),('swapnil_12','MICROSOFT','MKC2100\r\n',18),('swapnil_12','IBALL','SUPERIO 200\r\n',19),('swapnil_12','dell','alien ware\r\n',20),('swapnil_12','lenovo','v120\r\n',21),('vikas_1','PHILIPS','SHE1360/97\r\n',22),('vikas_1','SENNHEISER','HD 201 \r\n',23),('swapnil_12','dell','alien ware\r\n',24),('swapnil_12','dell','insipiron 14R\r\n',25),('vikas_1','SEAGATE','BACKUP +\r\n',26),('vikas_1','WD','MY PASSPORT\r\n',27),('vikas_1','TOSHOBA','CANVIO BASIC\r\n',28),('vikas_1','WD','MY PASSPORT\r\n',29),('swapnil_12','dell','insipiron 15R\r\n',30),('swapnil_12','dell','insipiron 14R\r\n',31),('swapnil_12','dell','xps 15\r\n',32),('swapnil_12','dell','insipiron 15R\r\n',33),('swapnil_12','dell','insipiron 14R\r\n',34),('swapnil_12','dell','xps 15\r\n',35),('swapnil_12','lenovo','g570\r\n',36),('swapnil_12','lenovo','x352\r\n',37),('pranjal','dell','insipiron 14R\r\n',38),('pranjal','dell','xps 15\r\n',39),('swapnil_12','dell','alien ware\r\n',40),('swapnil_12','lenovo','v120\r\n',41),('swapnil_12','HTC','desire\r\n',42),('swapnil_12','HTC','WINDOWS PHONE 8X\r\n',43),('vikas_1','lenovo','g570\r\n',44),('vikas_1','lenovo','z570\r\n',45),('vikas_1','TRANSCEND','JET FLASH\r\n',46),('chirag','SAMSUNG','CHAT\r\n',47),('chirag','SAMSUNG','GALAXY DUO\r\n',48),('chirag','SAMSUNG','GALAXY RAND\r\n',49),('chirag','SAMSUNG','GALAXY Y\r\n',50),('chirag','SAMSUNG','NOTE\r\n',51),('swapnil_12','hp','compact-mini\r\n',52),('swapnil_12','HP','V210 W32\r\n',53),('swapnil_12','dell','insipiron 15R\r\n',54),('swapnil_12','lenovo','z5 70\r\n',55),('swapnil_12','dell','xps 15\r\n',56),('swapnil_12','dell','vostro\r\n',57),('pran','lenovo','v120\r\n',58),('swapnil_12','lenovo','v120\r\n',59),('pran','dell','insipiron 14R\r\n',60),('pran','dell','xps 15\r\n',61),('admin','dell','insipiron 15R\r\n',62),('admin','dell','insipiron 14R\r\n',63),('pran','HTC','DESIRE X\r\n',64),('pran','HTC','FIRST\r\n',65),('pran','dell','insipiron 15R\r\n',66),('pran','dell','insipiron 14R\r\n',67),('swapnil_12','dell','insipiron 14R\r\n',68),('swapnil_12','dell','vostro\r\n',69);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `DATE` date NOT NULL,
  `STATUS` varchar(15) NOT NULL,
  `USER_ID` varchar(10) NOT NULL,
  `BILL_NO` varchar(20) NOT NULL,
  PRIMARY KEY (`BILL_NO`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES ('2013-04-09','delivered','swapnil_12','e_shop_xyz1'),('2013-04-09','delivered','swapnil_12','e_shop_xyz5'),('2013-04-09','delivered','vikas_1','e_shop_xyz4'),('2013-04-09','delivered','swapnil_12','e_shop_xyz0'),('2013-04-09','delivered','swapnil_12','e_shop_xyz3'),('2013-04-09','delivered','swapnil_12','e_shop_xyz2'),('2013-04-09','delivered','vikas_1','e_shop_xyz6'),('2013-04-09','delivered','vikas_1','e_shop_xyz7'),('2013-04-09','delivered','swapnil_12','e_shop_xyz8'),('2013-04-09','delivered','swapnil_12','e_shop_xyz9'),('2013-04-09','delivered','pranjal','e_shop_xyz10'),('2013-04-09','delivered','swapnil_12','e_shop_xyz11'),('2013-04-09','delivered','swapnil_12','e_shop_xyz12'),('2013-04-14','delivered','vikas_1','e_shop_xyz13'),('2013-04-14','delivered','vikas_1','e_shop_xyz14'),('2013-04-14','delivered','chirag','e_shop_xyz15'),('2013-04-15','dilivered','swapnil_12','e_shop_xyz16'),('2013-04-16','undelivered','swapnil_12','e_shop_xyz17'),('2013-04-16','delivered','pran','e_shop_xyz18'),('2013-04-16','undelivered','swapnil_12','e_shop_xyz19'),('2013-04-16','undelivered','pran','e_shop_xyz20'),('2013-04-16','delivered','admin','e_shop_xyz21'),('2013-04-16','undelivered','pran','e_shop_xyz22'),('2013-04-16','undelivered','pran','e_shop_xyz23'),('2013-04-16','undelivered','swapnil_12','e_shop_xyz24');
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-16 22:38:45
