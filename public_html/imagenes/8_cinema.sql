create database Cinema;
use Cinema;

-- MySQL dump 10.13  Distrib 5.5.29, for Win64 (x86)
--
-- Host: 192.168.5.2    Database: cinema
-- ------------------------------------------------------
-- Server version	5.1.66-log

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
-- Table structure for table `ARTIST`
--

DROP TABLE IF EXISTS `ARTIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ARTIST` (
  `ARTIST_CODE` char(5) NOT NULL,
  `NAME` char(40) NOT NULL,
  `SURNAME1` char(20) DEFAULT NULL,
  `SURNAME2` char(20) DEFAULT NULL,
  `NUM_DIRECTED_FILMS` int(4) DEFAULT NULL,
  `NUM_PLAYED_FILMS_P` int(4) DEFAULT NULL,
  `NUM_PLAYED_FILMS_S` int(4) DEFAULT NULL,
  `NATION_CODE` char(2) DEFAULT NULL,
  PRIMARY KEY (`ARTIST_CODE`),
  KEY `NATION_CODE` (`NATION_CODE`),
  CONSTRAINT `ARTISTA_ibfk_1` FOREIGN KEY (`NATION_CODE`) REFERENCES `NATION` (`NATION_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ARTIST`
--

LOCK TABLES `ARTIST` WRITE;
/*!40000 ALTER TABLE `ARTIST` DISABLE KEYS */;
INSERT INTO `ARTIST` VALUES ('ADAM','Adam','Shankman','',1,0,0,'US'),('AJA','ALEXANDRE','AJA',NULL,1,NULL,NULL,NULL),('ALBA','Jessica','Alba','',0,0,0,'US'),('ALLEN','Woody','Allen',NULL,6,NULL,NULL,'US'),('ALPA','AL','PACINO',NULL,0,NULL,NULL,'US'),('ALTE','Hector','Alterio',NULL,0,NULL,NULL,'AR'),('AMEN','ALEJANDRO','AMENABAR',NULL,1,NULL,NULL,NULL),('ANDJA','ANDREW','JACOBS',NULL,0,NULL,NULL,'US'),('ANGLE','Ang','Lee',NULL,1,NULL,NULL,'TW'),('BACA','LAUREN','BACALL',NULL,0,NULL,NULL,NULL),('BACO','Kevin','Bacon',NULL,0,NULL,NULL,'US'),('BALA','Jaume','Balagueró',NULL,1,NULL,NULL,'ES'),('BALDW','Alec','Baldwin',NULL,0,NULL,NULL,NULL),('BANA','Eric','Bana',NULL,0,NULL,NULL,'AU'),('BARDE','JAVIER ANGEL','ENCIMAS','BARDEM',0,NULL,NULL,'ES'),('BARR','JEAN MARC','BARR',NULL,0,NULL,NULL,'ND'),('BAY','Michael','Bay',NULL,2,NULL,NULL,'US'),('BELL','JAMIE','BELL',NULL,0,NULL,NULL,'US'),('BERT','Valeria','Bertucelli',NULL,0,NULL,NULL,'AR'),('BIEL','Fabian','Bielinsky',NULL,1,NULL,NULL,'AR'),('BISE','JACQUELINE','BISSET',NULL,0,NULL,NULL,NULL),('BLAC','Eduardo','Blanco',NULL,0,NULL,NULL,'AR'),('BLAN','CATE','BLANCHETT',NULL,0,NULL,NULL,'AU'),('BOYLE','Danny','Boyle',NULL,1,NULL,NULL,NULL),('BRAN','KENNET','BRANAGH',NULL,1,NULL,NULL,NULL),('BRI','BRIE','LARSON','',0,1,6,'US'),('BRODY','Adrien','Brody',NULL,0,NULL,NULL,'US'),('BROS','Pierce Brendan','Brosnan','',0,0,0,'IR'),('CAMP','Juan Jose','Campanella',NULL,4,NULL,NULL,'AR'),('CAPRI','Leonardo','DiCaprio',NULL,0,NULL,NULL,NULL),('CARI','CARL','RINSCH',NULL,1,NULL,NULL,'US'),('CHAG','CHARLOTTE','GAINSBOUR',NULL,0,NULL,NULL,'US'),('CHAN','Jackie','CHAN',NULL,0,NULL,NULL,'US'),('CHLCS','CHLOE','CSENGERY',NULL,0,NULL,NULL,'US'),('CHRIS','Christoph','Waltz',NULL,0,NULL,NULL,'US'),('CHST','CHRISTION','STALLER',NULL,0,NULL,NULL,'US'),('CLOO','GEORGE','CLOONEY',NULL,0,NULL,NULL,'US'),('COCA','CODY','CAMERON',NULL,1,NULL,NULL,'US'),('COHE','Rob','Cohen','',1,0,0,'US'),('COHEN','Joel e Ethan','Coen',NULL,5,NULL,NULL,NULL),('CONN','CONNIE','NIELSE',NULL,0,NULL,NULL,'US'),('CRAIG','Daniel','Craig',NULL,0,NULL,NULL,'UK'),('CRBU','CHRIS','BUCK',NULL,1,NULL,NULL,'US'),('CRISL','Christopher','Landon',NULL,1,NULL,NULL,'US'),('CROWE','Russell','Crowe',NULL,0,NULL,NULL,'AU'),('CRUIS','Thomas','Cruise','Mapother',0,NULL,NULL,'US'),('CRUZ','Toni','Cruz',NULL,0,NULL,NULL,'ES'),('DAMON','Matt','Damon',NULL,0,NULL,NULL,'US'),('DARA','FRANK','DARABONT',NULL,1,NULL,NULL,NULL),('DARI','Ricardo','Darin',NULL,0,NULL,NULL,'AR'),('DARRE','Darren','Aronofsky',NULL,1,NULL,NULL,'US'),('DENI','ROBERT','DE NIRO',NULL,0,NULL,NULL,'US'),('DEPAL','Brian','De Palma',NULL,1,NULL,NULL,'US'),('DEPP','Johnny','Depp',NULL,0,NULL,NULL,NULL),('DIES','Vin','Diesel','',1,0,0,'US'),('EAST','Clint','Eastwood',NULL,5,0,0,'US'),('EMMER','Roland','Emmerich','',1,0,0,'US'),('ESTE','ESTELLEN','SKARSGARD',NULL,0,NULL,NULL,'ND'),('FARM','Vera','Farmiga',NULL,0,NULL,NULL,NULL),('FAVRE','Jon','Favreu',NULL,1,NULL,NULL,'FR'),('FINB','ADAM','FINBERG',NULL,0,NULL,NULL,NULL),('FINC','David','Fincher',NULL,0,NULL,NULL,'US'),('FINCH','David','Fincher',NULL,1,NULL,NULL,NULL),('FISH','Laurence','Fishburne',NULL,0,NULL,NULL,'US'),('Gil','Ariadna','Gil',NULL,0,NULL,NULL,'ES'),('GLE','GLENNE','HEADLEY','',0,1,6,'US'),('HAHN','KATHRYN','HAHN',NULL,0,NULL,NULL,'US'),('Hall','Bug','Hall',NULL,0,NULL,NULL,'US'),('HANE','MICHAEL','HANEKE',NULL,1,NULL,NULL,NULL),('HANK','Tom','Hanks',NULL,0,NULL,NULL,'US'),('HEND','STEWARD','HENDLER',NULL,1,NULL,NULL,NULL),('HUNT','Paul','Hunter',NULL,1,NULL,NULL,'US'),('JACKS','PETER','JACKSON','',2,NULL,NULL,'NZ'),('JACOB','Jeffrey','Jacob','Abrams',1,NULL,NULL,'US'),('JADEN','Jaden','Smith',NULL,0,NULL,NULL,'US'),('JAME','James','Cameron','',3,0,0,'US'),('JIMM','JIM','CARREY',NULL,0,NULL,NULL,'US'),('JODI','Jodie','Foster','',0,0,0,'US'),('JOHAN','Scarlett','Johansson',NULL,0,NULL,NULL,'US'),('JOLIE','Angelina','Jolie',NULL,0,NULL,NULL,NULL),('JORDI','JORGE','DIAZ',NULL,0,NULL,NULL,'US'),('JOSEP','Joseph Leonard','Gordon-Levitt','',1,0,0,'US'),('Joss','JOSS','WHEDON','',1,2,0,'US'),('JUL','JULIANNE','MOORE','',0,1,6,'US'),('KATFE','KATIE','FEATTHERSTON',NULL,0,NULL,NULL,'US'),('KIER','UNDO','KIER',NULL,0,NULL,NULL,'US'),('KINGS','BEN','KINGSLEY','',0,NULL,NULL,'UK'),('KOST','Kevin','Kostner',NULL,1,NULL,NULL,'US'),('KUTCH','Ashton','Kutcher',NULL,0,NULL,NULL,'US'),('LARRY','Larry','Clark',NULL,2,NULL,NULL,'US'),('LAWRE','Fracis','Lawrence',NULL,2,NULL,NULL,'US'),('LEE','Tommy','Lee','Jones',0,NULL,NULL,'US'),('LUME','SIDNEY','LUMET',NULL,1,NULL,NULL,NULL),('LVTR','LARS','VON TRIES',NULL,1,NULL,NULL,'ND'),('MACFR','Martin','Christopher','Freeman',0,17,14,'UK'),('MAND','Mandy','Moore','',0,0,0,'US'),('MARL','MARLON','BRANDON',NULL,0,NULL,NULL,'US'),('MARS','Garry','Marshall',NULL,2,NULL,NULL,NULL),('MATH','Matthew','McConaughey','',0,0,0,'US'),('MAWL','MARK','WAHLBERG',NULL,0,NULL,NULL,'US'),('MEAR','DEREK','MEARS',NULL,0,NULL,NULL,NULL),('MENN','NICK','MENNELL',NULL,0,NULL,NULL,NULL),('MIAG','MIA','GOTH',NULL,0,NULL,NULL,'US'),('MICHE','Sarah','Michelle','Gella',0,NULL,NULL,'US'),('MLAWR','Martin','Lawrence',NULL,0,NULL,NULL,'AL'),('MOEPH','MOLLY','EPHRAIM',NULL,0,NULL,NULL,'US'),('MOHR','Jay','Mohr',NULL,0,NULL,NULL,'US'),('MORA','Mercedes','Moran',NULL,0,NULL,NULL,'AR'),('MORGA','Morgan','Porterfield','Freeman',0,NULL,NULL,'US'),('MORT','Samantha','Morton',NULL,0,NULL,NULL,NULL),('MOSS','Carrie-Ann','Moss',NULL,0,NULL,NULL,'CA'),('MUCCI','Gabriel','Muccino',NULL,1,NULL,NULL,'IT'),('MURP','Ryan','Murphy',NULL,1,NULL,NULL,'US'),('NEES','Liam','Neeson',NULL,0,NULL,NULL,'IR'),('NICHO','Jack','Nicholson',NULL,0,NULL,NULL,NULL),('NIGHT','Marcus','Night',NULL,1,NULL,NULL,'US'),('NISP','MARCUS','NISPEL',NULL,1,NULL,NULL,NULL),('NOLAN','Christopher','Nolan',NULL,2,NULL,NULL,'UK'),('NORT','Edward','Norton',NULL,0,NULL,NULL,'US'),('NUÑE','Oscar','Nuñez',NULL,0,NULL,NULL,'AR'),('ORTI','ISIDRO','ORTIZ',NULL,1,NULL,NULL,NULL),('OSWA','PATTON','OSWALT',NULL,0,NULL,NULL,'US'),('PADA','JARED','PADALECKI',NULL,0,NULL,NULL,NULL),('PANA','DENIELLE','PANABAKER',NULL,0,NULL,NULL,NULL),('PAS','MICHAEL','PAS',NULL,0,NULL,NULL,'US'),('PAUL','Gaston','Pauls',NULL,0,NULL,NULL,'AR'),('PAYN','TOM','PAYNE','',0,NULL,NULL,'UK'),('PBER','PETER','BERG',NULL,2,NULL,NULL,'US'),('PE','Penelope','Cruz','SÃ¡nchez',0,NULL,NULL,NULL),('PENN','Sean','Penn',NULL,0,NULL,NULL,'US'),('PERCI','BRIAN','PERCI','',2,0,0,'US'),('PERJA','Peter','Robert','Jackson',0,NULL,NULL,'NZ'),('PETE','Peter','Coyote','',0,0,0,'US'),('PHIL','PHILIPP','STÖZL',NULL,1,NULL,NULL,'AL'),('PITT','Brad','Pitt',NULL,0,NULL,NULL,'US'),('POLA','Roman','Polanski',NULL,2,NULL,NULL,'FR'),('POLL','Sarah','Polley',NULL,0,NULL,NULL,'CA'),('PROYA','Alex','Proyas',NULL,1,NULL,NULL,'AU'),('PUTCH','John','Putch',NULL,1,NULL,NULL,'US'),('QUAID','Dennis','Quaid','',0,0,0,'US'),('REEVE','Keanu','Reeves',NULL,0,NULL,NULL,'LB'),('RHYS','Jonathan','Rhys Meyers',NULL,0,NULL,NULL,'IR'),('RICHC','RICHARD','CABRAL',NULL,0,NULL,NULL,'US'),('RIDLE','Rydley','Scott',NULL,2,NULL,NULL,'US'),('RIGBY','EMMA','RIGBY','',0,NULL,NULL,'UK'),('RIGH','AMANDA','RIGHETTI',NULL,0,NULL,NULL,NULL),('RIN','CARL','RINSCH','',1,1,3,'US'),('RINKO','RINCO','KIKUCHI',NULL,0,NULL,NULL,'JP'),('RITC','guy','ritchie',NULL,0,NULL,NULL,'UK'),('ROAC','Jay','Roach',NULL,2,0,0,'US'),('Rob','Tim','Robbins',NULL,0,NULL,NULL,'US'),('ROBE','Julia','Roberts',NULL,0,NULL,NULL,'US'),('ROBER','Roberto','Benigni',NULL,1,NULL,NULL,'IT'),('ROSS','Emmy','Rossum',NULL,0,NULL,NULL,'US'),('ROTH','Tim','Roth',NULL,0,NULL,NULL,'UK'),('RUED','BELEN','RUEDA',NULL,0,NULL,NULL,NULL),('RYAN','Meg','Ryan',NULL,0,NULL,NULL,'US'),('SADO','JONATHAN','SADOWSKI',NULL,0,NULL,NULL,NULL),('SAM','Sam','Worthington','',0,0,0,'UK'),('SCOR','Martin','Scorsese',NULL,1,NULL,NULL,NULL),('SCOT','ADAM','SCOTT',NULL,0,NULL,NULL,'US'),('SCOTT','Scott','Eastwood',NULL,0,NULL,NULL,'US'),('SEGA','PETER','SEGAL',NULL,3,NULL,NULL,'UK'),('SHAN','Shane','West','',0,0,0,'US'),('SHI','SHIA','LABEOUF',NULL,0,NULL,NULL,'ND'),('SHIM','Takashi','Shimizu',NULL,1,NULL,NULL,'JP'),('SIL','SILVESTER','STALONE',NULL,0,NULL,NULL,'UK'),('SKARS','STELLAN','SKARSGARD','',0,NULL,NULL,'su'),('SMITH','Will','Smith',NULL,0,NULL,NULL,'US'),('SODER','Steven','Soderbergh',NULL,2,NULL,NULL,NULL),('SOFK','SOFIE','KENNEDY',NULL,0,NULL,NULL,'US'),('SPILB','Steven','Spielberg',NULL,3,NULL,NULL,'US'),('STAL','Sylvester','Stallone',NULL,1,NULL,NULL,'US'),('STAT','Jason','Statham',NULL,0,NULL,NULL,'UK'),('STIL','Ben','Stiller',NULL,1,NULL,NULL,'US'),('STMA','STANCY','MARTIN',NULL,0,NULL,NULL,'US'),('STOL','PHILIPP','STOLZL','',0,NULL,NULL,'AL'),('TAKI','TAYLOR','KITSCH',NULL,0,NULL,NULL,'US'),('TARA','Quentin','Tarantino',NULL,5,NULL,NULL,'US'),('THOM','EMMA','THOMSON',NULL,0,NULL,NULL,NULL),('THUR','Uma','Thurman',NULL,0,NULL,NULL,NULL),('TOME','Tomeu','Quely',NULL,1,NULL,NULL,'MA'),('TOMM','Tom','Shadvac',NULL,1,NULL,NULL,NULL),('TONY','TONY','DANZA','',0,1,6,'US'),('TURTE','Jon','Turteltaub',NULL,1,NULL,NULL,'US'),('UMA','UMA','THURMAN',NULL,0,NULL,NULL,'US'),('VAND','Gus','Van Sant',NULL,1,NULL,NULL,NULL),('VELA','Manuela','Velasco',NULL,0,NULL,NULL,'ES'),('VERB','Gore','Verbinski',NULL,1,NULL,NULL,NULL),('Verdu','Maribel','Verdu',NULL,0,NULL,NULL,'ES'),('VERK','Natalia','Verbeke',NULL,0,NULL,NULL,'AR'),('VISI','NANA','VISITOR',NULL,0,NULL,NULL,NULL),('WACH','ANDY','WACHOWSKI',NULL,1,NULL,NULL,NULL),('WALK','Paul','Walker','',0,0,0,'US'),('WASH','DENZEL','WASHINGTON',NULL,0,NULL,NULL,NULL),('WASHI','Denzel Hayes','Washington',NULL,0,NULL,NULL,'US'),('WEIS','Rachel Hannah','Weisz','',0,0,0,'US'),('WELLS','JHON','WELLS','',1,NULL,NULL,'US'),('WIIG','KRISTEN','WIIG',NULL,0,NULL,NULL,'US'),('WILL','Olivia','Williams',NULL,0,NULL,NULL,'UK'),('WILLD','WILLIAM','DEFOURE',NULL,0,NULL,NULL,'US'),('WILLI','Bruce','Willis',NULL,0,NULL,NULL,'AL'),('WINK','TRAVIS','VAN WINKLE',NULL,0,NULL,NULL,NULL),('Wong','Wong','Kar-wai','',0,1,3,'US'),('YOO','AARON','YOO',NULL,0,NULL,NULL,NULL),('YUN','Chow','Yun-Fat',NULL,0,NULL,NULL,'CH'),('ZACK','ZACK','SNYDER',NULL,1,NULL,NULL,'US'),('ZEMEC','Robert','Zemeckis',NULL,2,NULL,NULL,NULL),('ZOES','Zoe','Saldaña','',0,0,0,'US'),('ZWART','Harald','Zwart',NULL,1,NULL,NULL,'UK');
/*!40000 ALTER TABLE `ARTIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AWARD`
--

DROP TABLE IF EXISTS `AWARD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AWARD` (
  `FILM_CODE` char(5) NOT NULL,
  `FESTIVAL_CODE` int(11) NOT NULL,
  `CATEGORY_CODE` int(11) NOT NULL,
  `YEAR` year(4) NOT NULL,
  PRIMARY KEY (`FILM_CODE`,`FESTIVAL_CODE`,`CATEGORY_CODE`),
  KEY `FESTIVAL_GUANYADOR_FK` (`FESTIVAL_CODE`),
  KEY `CATEGORIA_GUANYADOR_FK` (`CATEGORY_CODE`),
  CONSTRAINT `CATEGORIA_GUANYADOR_FK` FOREIGN KEY (`CATEGORY_CODE`) REFERENCES `CATEGORY` (`CATEGORY_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FESTIVAL_GUANYADOR_FK` FOREIGN KEY (`FESTIVAL_CODE`) REFERENCES `FESTIVAL` (`FESTIVAL_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PELICULA_GUANYADOR_FK` FOREIGN KEY (`FILM_CODE`) REFERENCES `FILM` (`FILM_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AWARD`
--

LOCK TABLES `AWARD` WRITE;
/*!40000 ALTER TABLE `AWARD` DISABLE KEYS */;
INSERT INTO `AWARD` VALUES ('avat',3,1,2009),('avat',3,2,2009),('babel',2,1,2006),('babel',3,1,2006),('baila',2,1,1990),('baila',2,2,1990),('baila',3,1,1990),('bella',1,1,1998),('bella',2,1,1998),('bella',2,2,1998),('bella',4,2,1998),('bella',5,1,1998),('elcur',2,1,2008),('elcur',2,2,2008),('elcur',3,1,2008),('elcur',3,2,2008),('elcur',4,1,2008),('elcur',4,2,2008),('elpia',1,1,2002),('elpia',2,1,2002),('elpia',2,2,2002),('forre',1,1,1994),('forre',1,2,1994),('forre',3,1,1994),('forre',3,2,1994),('infi',2,1,2006),('infi',2,2,2006),('infi',3,2,2006),('lalis',1,1,1993),('lalis',2,2,1993),('maldi',1,1,2009),('maldi',2,2,2009),('milli',2,1,2005),('milli',2,2,2005),('nocou',3,1,2008),('nocou',3,2,2008),('PADR1',2,1,1972),('PADR1',2,2,1972),('PADR2',2,1,1974),('PADR2',2,2,1974),('PADR2',3,1,1974),('PADR2',3,2,1974),('salva',2,2,1998),('slum',2,1,2008),('slum',3,1,2008),('slum',4,1,2008),('vicky',3,1,2009);
/*!40000 ALTER TABLE `AWARD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BILLBOARD`
--

DROP TABLE IF EXISTS `BILLBOARD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BILLBOARD` (
  `CINEMA_CODE` char(3) NOT NULL,
  `FILM_CODE` char(5) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `ROOM` int(1) DEFAULT NULL,
  PRIMARY KEY (`CINEMA_CODE`,`FILM_CODE`),
  KEY `CARTELLERA_PELI_FK` (`FILM_CODE`),
  CONSTRAINT `CARTELLERA_CINE_FK` FOREIGN KEY (`CINEMA_CODE`) REFERENCES `CINEMA` (`CINEMA_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CARTELLERA_PELI_FK` FOREIGN KEY (`FILM_CODE`) REFERENCES `FILM` (`FILM_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BILLBOARD`
--

LOCK TABLES `BILLBOARD` WRITE;
/*!40000 ALTER TABLE `BILLBOARD` DISABLE KEYS */;
INSERT INTO `BILLBOARD` VALUES ('AUG','come','2010-02-10','2010-03-10',4),('AUG','forre','1994-09-01','1994-08-01',3),('AUG','masal','2011-01-28',NULL,1),('AUG','MITTY','2013-12-25',NULL,3),('AUG','NYMFO','2013-12-25',NULL,4),('AUG','theto','2010-12-30',NULL,2),('AUG','vicky','2008-09-15','2008-10-15',1),('CIU','maldi','2012-01-01',NULL,1),('CSA','ELMED','2014-01-15',NULL,2),('FES','come','2010-01-01','2010-02-10',1),('FES','forre','1995-02-01','1996-02-01',12),('FES','FTBLN','0000-00-00',NULL,NULL),('FES','LGR',NULL,NULL,NULL),('FES','LGRB','2013-12-13',NULL,1),('FES','maldi','2010-09-10','2010-12-30',3),('FES','masal','2011-02-04',NULL,12),('FES','orig','2010-10-10','2010-12-12',1),('FES','theto','2010-12-30',NULL,11),('IBI','AGOST','2014-01-10',NULL,2),('IBI','APROP','2014-01-01',NULL,3),('IBI','ELMED','2014-01-15',NULL,5),('IBI','LDDS','2013-12-13',NULL,1),('IBI','maldi','2012-01-10',NULL,3),('IBI','slum','2008-09-02','2008-10-10',2),('MAN','AGOST','2014-01-10',NULL,4),('MAN','ALB2','2013-12-20',NULL,2),('MAN','babel','2008-09-01','2008-12-12',3),('MAN','elesc','2010-09-10','2010-12-30',1),('MAN','ELMED','2013-12-25',NULL,1),('MAN','ELUS','2014-01-01',NULL,1),('MAN','ESKA','2008-02-01','2008-03-10',1),('MAN','LDDS','2013-12-13',NULL,3),('MAN','LLDL','2014-01-10',NULL,3),('MAN','maldi','2010-06-10','2010-08-10',2),('MAN','misti','2009-08-10','2009-12-12',2),('MAN','MITTY','2013-12-25',NULL,5),('MAN','orig','2010-09-10','2010-12-30',3),('MAN','SAMU','2013-12-25',NULL,4),('MAN','slum','2008-09-01','2008-12-10',2),('MAN','vicky','2008-09-01','2008-12-12',1),('MET','maldi','2010-09-10','2010-12-30',3),('MET','theto','2011-01-28','2011-02-05',2),('OCI','babel','2008-10-10','2008-12-12',2),('OCI','elesc','2010-08-10','2010-11-10',2),('OCI','forre','1994-07-01','1995-10-10',8),('OCI','masal','2011-01-28',NULL,2),('OCI','theto','2010-12-30',NULL,1),('PPC','EHDM','0000-00-00',NULL,1),('PPC','theto','2011-01-29','2011-02-10',3),('PPC','ULSU','2014-01-01',NULL,2),('PPT','theto','2010-12-30',NULL,8),('REN','DON','0000-00-00','0000-00-00',1),('REN','maldi','2001-10-10','2010-12-30',1),('REN','masal','2011-01-28',NULL,3),('REN','MUCHO','0000-00-00','0000-00-00',2),('REN','vicky','2008-09-15','2008-10-25',3),('RIV','come','2010-01-05','2010-03-10',3),('RIV','maldi','2010-09-10','2010-12-30',2),('RIV','slum','2008-02-10','2008-03-12',1),('SER','EHDM','2013-12-02',NULL,8),('SER','FTBLN','2013-12-20',NULL,4),('SER','LLDL','2014-01-10',NULL,5),('SER','LLDS4','2013-12-25',NULL,7),('SER','MITTY','2013-12-25',NULL,6),('SER','SAMU','2013-12-25','0000-00-00',7);
/*!40000 ALTER TABLE `BILLBOARD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `CAR_ACT`
--

DROP TABLE IF EXISTS `CAR_ACT`;
/*!50001 DROP VIEW IF EXISTS `CAR_ACT`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CAR_ACT` (
  `CIUTAT` tinyint NOT NULL,
  `CINE` tinyint NOT NULL,
  `PELICULA` tinyint NOT NULL,
  `SALA` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CATEGORY`
--

DROP TABLE IF EXISTS `CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CATEGORY` (
  `CATEGORY_CODE` int(11) NOT NULL,
  `NAME` char(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATEGORY`
--

LOCK TABLES `CATEGORY` WRITE;
/*!40000 ALTER TABLE `CATEGORY` DISABLE KEYS */;
INSERT INTO `CATEGORY` VALUES (1,'MILLOR PELICULA'),(2,'MILLOR DIRECTOR');
/*!40000 ALTER TABLE `CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CINEMA`
--

DROP TABLE IF EXISTS `CINEMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CINEMA` (
  `CINEMA_CODE` char(3) NOT NULL,
  `NOME` char(40) NOT NULL,
  `ADDRESS` char(40) DEFAULT NULL,
  `PHONE` char(6) DEFAULT NULL,
  `COMMENT` char(40) DEFAULT NULL,
  `NUM_ROOMS` int(1) DEFAULT NULL,
  `TOWN_CODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`CINEMA_CODE`),
  KEY `CINEMA_POBLACIO_FK` (`TOWN_CODE`),
  CONSTRAINT `CINEMA_POBLACIO_FK` FOREIGN KEY (`TOWN_CODE`) REFERENCES `TOWN` (`TOWN_CODE`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CINEMA`
--

LOCK TABLES `CINEMA` WRITE;
/*!40000 ALTER TABLE `CINEMA` DISABLE KEYS */;
INSERT INTO `CINEMA` VALUES ('AUG','SALA AUGUSTA','Avenida Juan March i Ordines 2','971752',NULL,7,2),('CIU','CINEMA CA-LOS','Calle María Auxiliadora 10','971 48',NULL,3,3),('CSA','CINEMES CANAL SALAT','Carrer Sant Antoni Maria Claret, 0','971383',NULL,4,3),('FES','FESTIVAL PARK','Carretera Palma-Inca km 7','902333','Parking propio',18,2),('IBI','MULTICINES IBIZA','C/ Cubells sn','971315',NULL,6,4),('MAN','MULTICINES MANACOR','Ronda del port 7','971847',NULL,5,40),('MET','METROPOLITAN MULTICINES','Calle Gabriel LlabrÃ©s 20','971751',NULL,5,2),('OCI','CINES OCIMAX','Calle Leocadia de Togores','971291','Parking propio',15,2),('PPC','MULTICINES PORTO PI CENTRO','Avenida Joan MirÃ³ 154','971403',NULL,5,2),('PPT','MULTICINES PORTO TERRAZAS','Avenida Joan MirÃ³ 154','971405','Venta anticipada',7,2),('REN','CINES RENOIR','S\'Escorxador 6','971205','Pelicules subtitulades',3,2),('RIV','MULTICINES RIVOLI','Calle Antoni MarquÃ¨s 25','971751',NULL,3,2),('SER','CINES SERRA','Passeig Vara de Rei 6','971311',NULL,2,4);
/*!40000 ALTER TABLE `CINEMA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FESTIVAL`
--

DROP TABLE IF EXISTS `FESTIVAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FESTIVAL` (
  `FESTIVAL_CODE` int(11) NOT NULL,
  `NAME` char(40) DEFAULT NULL,
  `NATION` char(2) DEFAULT NULL,
  PRIMARY KEY (`FESTIVAL_CODE`),
  KEY `NACIO` (`NATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FESTIVAL`
--

LOCK TABLES `FESTIVAL` WRITE;
/*!40000 ALTER TABLE `FESTIVAL` DISABLE KEYS */;
INSERT INTO `FESTIVAL` VALUES (1,'CANNES',NULL),(2,'OSCARS',NULL),(3,'GLOBO DE ORO',NULL),(4,'BAFTA',NULL),(5,'GOYA',NULL);
/*!40000 ALTER TABLE `FESTIVAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FILM`
--

DROP TABLE IF EXISTS `FILM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FILM` (
  `FILM_CODE` char(5) NOT NULL,
  `TITLE` char(40) NOT NULL,
  `RELEASE_YEAR` year(4) DEFAULT NULL,
  `LENGHT` int(3) DEFAULT NULL,
  `COMMENT` char(40) DEFAULT NULL,
  `DIRECTOR_CODE` char(5) DEFAULT NULL,
  `NATION_CODE` char(2) DEFAULT NULL,
  PRIMARY KEY (`FILM_CODE`),
  KEY `PELICULA_DIRECTOR_FK` (`DIRECTOR_CODE`),
  KEY `CODI_NACIO` (`NATION_CODE`),
  CONSTRAINT `PELICULA_DIRECTOR_FK` FOREIGN KEY (`DIRECTOR_CODE`) REFERENCES `ARTIST` (`ARTIST_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PELICULA_ibfk_1` FOREIGN KEY (`NATION_CODE`) REFERENCES `NATION` (`NATION_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FILM`
--

LOCK TABLES `FILM` WRITE;
/*!40000 ALTER TABLE `FILM` DISABLE KEYS */;
INSERT INTO `FILM` VALUES ('*SOP','El retorn d\'en panareta',2010,120,'Feta a Son Servera City!!!!!!!!!!!!!!!!!','TOME','MA'),('AGOST','Agosto',2013,121,'','WELLS','US'),('AIR','The Last Airbender',2009,103,'Lucha entre Agua,fuego,aire y tierra','NIGHT','US'),('ALB2','LLUVIA DE ALBONDIGAS 2',2013,120,'\"Lluvia de Albóndigas 2\" empieza exactam','COCA','US'),('ALIEN','Aliens, el regreso',1986,148,NULL,'JAME','US'),('AMAN','AMANECER DE LOS MUERTOS',2004,101,NULL,'ZACK','US'),('AMERI','AMERICAN PIE 7',2009,93,NULL,'PUTCH','US'),('APROP','A propósito de LLewyn Davis',2013,105,'','COHEN','US'),('ASES','ASESINATO EN EL ORIENT EXPRESS',1974,NULL,NULL,'LUME','UK'),('avat','Avatar',2009,162,'Sin comentarios','JAME','US'),('awal','A walk to remember',2002,102,'Mandy Moore esta buenisima','ADAM','US'),('babel','Babel',2008,143,NULL,NULL,'US'),('baila','Bailando con lobos',1990,180,'','KOST','US'),('bella','La vida es bella',1997,117,'La pelicula preferida de Miguel Ángel','ROBER','IT'),('Blad','Blade',1990,120,NULL,NULL,'US'),('Blad2','Blade II',0000,108,NULL,NULL,'US'),('Blad3','Blade III',1990,120,NULL,NULL,'US'),('boys','Dos policías rebeldes',1995,114,'Comica.','BAY','US'),('boys2','Dos policías rebeldes 2',2003,114,'Comica.','BAY','US'),('BRUJO','El Aprendiz  de Brujo',2010,109,NULL,'TURTE','US'),('CART','CARTAS DESDE IROSHIMA',2008,120,NULL,'DIES','US'),('CENT','Centurion',2010,97,NULL,'MARS','US'),('come','Come, reza, ama',2010,133,'','MURP','US'),('COMO','COMO DIOS',2003,101,NULL,'TOMM','US'),('cons','Constantine',2005,121,'','LAWRE','US'),('CONT','Contact',1997,150,'','ZEMEC','US'),('Crep','Crepúsculo',2008,121,NULL,NULL,'US'),('Crep2','Luna Nueva',2009,130,NULL,NULL,'US'),('Crep3','Eclipse',2010,124,NULL,NULL,'US'),('DESEO','Deseo, peligro',2007,157,NULL,'ANGLE','US'),('DON','Don Jon',2013,90,'Jo hi era','JOSEP','US'),('EHDM','El Hobbit, La desolación de Smaug',2013,161,NULL,'JACKS','NZ'),('ELCLU','EL CLUB DE LA LUCHA',1999,139,NULL,NULL,'US'),('elcur','El curioso caso de Benjamin Buton',2008,166,NULL,'FINCH','US'),('eldi','El dia de mañana',2004,124,'','EMMER','US'),('elesc','El escritor',2010,123,NULL,'POLA','FR'),('ELGR','EL GRITO 2',2006,95,NULL,'SHIM','US'),('ELMED','EL MEDICO',2013,150,'bona pelicula, poc contingut erotic','PHIL','AL'),('ELMO','El Monje',2003,103,NULL,'HUNT','US'),('elpia','El pianista',2002,150,NULL,'POLA','FR'),('ELPRE','EL PRECIO DEL PODER',1983,170,NULL,'DEPAL','US'),('ELUS','EL ÚNICO SUPERVIVIENTE',2014,121,NULL,'PBER','US'),('ENHON','En Honor a la Verdad',1996,116,NULL,NULL,NULL),('ESKA','ESKALOFRIO',2008,119,NULL,'ORTI','ES'),('Fauno','El Laberinto del Fauno',2006,112,NULL,NULL,'ES'),('FERDH','FROZEN: EL REINO DEL HIELO',2006,108,NULL,'CRBU','US'),('forre','Forrest Gump',1994,142,NULL,'ZEMEC','US'),('FRID','FRIDAY THE 13th',2009,96,NULL,'NISP','US'),('FTBLN','Futbolín',2013,106,NULL,'CAMP','AR'),('FUNN','FUNNY GAMES',2008,104,NULL,'HANE','US'),('FUTBO','FUTBOLÍN',2013,106,NULL,'CAMP','AR'),('Futu1','Regreso al Futuro',1985,116,NULL,NULL,'US'),('Futu2','Regreso al Futuro II',1989,108,NULL,NULL,'US'),('Futu3','Regreso al Futuro III',1990,116,NULL,NULL,'US'),('gang','American Gangster',2007,158,NULL,'RIDLE','US'),('glad','Gladiator',2000,155,NULL,'RIDLE','US'),('GRAN','LA GRAN REVANCHA',2013,120,'filme nos contará la historia dos boxead','SEGA','US'),('hijo','El Hijo de la Novia',2001,124,NULL,'CAMP','AR'),('hist','Historias de San Valentin',2010,11,NULL,'MARS','US'),('infi','Infiltrados',2006,151,NULL,'SCOR','US'),('invi','Invictus',2009,134,NULL,'EAST','US'),('IRON','Iron Man 2',2010,105,NULL,'FAVRE','US'),('KENPA','Ken Park',2003,96,NULL,'LARRY','US'),('KID','The Karate Kid',2010,100,NULL,'ZWART','US'),('KIDS','Kids',1995,91,NULL,'LARRY','US'),('KILL1','kill bill Vol1',2003,111,'vol1','TARA','US'),('KILL2','kill bill Vol2',2004,136,'vol2','TARA','US'),('LADRO','LA LADRONA DE LIBROS',2013,120,'Brian Percival dirige “La ladrona de lib','PERCI','US'),('lalis','La lista de Schindler',1993,195,NULL,'SPILB','US'),('LDDS','El Hobbit: La desolación de Smaug',2013,161,'','JACKS','US'),('LGR','La gran revancha',2013,113,NULL,'SEGA','UK'),('LGRB','La gran revancha',2013,113,'','SEGA','UK'),('LLDL','La ladrona de libros',2013,131,'Ni que decir de los tres protagonistas p','PERCI','US'),('LLDS4','LA LEYENDA DEL SAMURAI: 47 RONIN',2013,119,NULL,'CARI','US'),('LOSME','LOS MERCENARIOS',2010,103,NULL,'STAL','US'),('luna','Luna de Avellaneda',2004,140,NULL,'CAMP','AR'),('maldi','Malditos Bastardos',2010,160,NULL,'TARA','US'),('MAR','MAR ADENTRO',2004,NULL,NULL,'AMEN',NULL),('masal','Mas alla de la vida',2011,129,NULL,'EAST','US'),('match','Match Point',2005,124,NULL,'ALLEN','UK'),('MATR','MATRIX',1999,136,NULL,'WACH','US'),('MATR2','Matrix Reloaded',2003,138,NULL,NULL,NULL),('MATR3','Matrix Revolutions',2003,129,NULL,NULL,NULL),('MATRI','Matrix',1999,136,NULL,NULL,NULL),('MEMEN','Memento',2000,113,NULL,'NOLAN','US'),('milk','Milk',2008,110,NULL,'VAND','US'),('milli','Million Dollar Baby',2004,132,NULL,'EAST','US'),('MISI','MISION IMPOSIBLE 3',2006,126,NULL,'JACOB','US'),('misti','Mystic River',2003,137,NULL,'EAST','US'),('MITTY','La vida secreta de Walter Mitty',2013,144,NULL,'STIL','US'),('MUCH','MUCHO RUIDO Y POCAS NUECES',1993,NULL,NULL,'BRAN',NULL),('MUCHO','Mucho ruido y pocas nueces',2012,108,'','Joss','US'),('muni','Munich',2005,160,NULL,'SPILB','US'),('nocou','No Country for Old Men',2007,199,NULL,'COHEN','US'),('NYMFO','NYMPHOMANIAC',2013,120,'loca y poética historia','LVTR','ND'),('ocea','Ocean\'s Eleven',2001,114,NULL,'SODER','US'),('ocea2','Ocean\'s Twelve',2004,125,NULL,'SODER','US'),('orig','Origen',2010,148,'','NOLAN','US'),('P1','PELI DE PROVA',NULL,NULL,NULL,'ALLEN','US'),('P2','PELI DE PROVA',NULL,NULL,NULL,'ALLEN','US'),('padr','Los Padres de Ella',2000,108,NULL,'ROAC','US'),('PADR1','EL PADRINO',1972,175,NULL,'ROAC','US'),('PADR2','EL PADRINO 2',1974,180,NULL,NULL,NULL),('PALS','PARANORMAL ACTITIVITY:LOS SEÑALADOS',2013,84,'Da algun que otro susto desprevenido','CRISL','US'),('PULP','Pulp fiction',1994,153,NULL,'TARA','US'),('quema','Quemar despues de leer',2008,96,NULL,'COHEN','US'),('rec','[REC]',2007,85,NULL,'BALA','ES'),('RED','RED',2010,115,NULL,NULL,NULL),('REFL','REFLEJOS',2008,89,NULL,'AJA','US'),('rein','Nueve Reinas',2000,114,NULL,'BIEL','AR'),('REQUI','Requiem por un sueño',2000,102,NULL,'DARRE','US'),('RESER','RESERVOIR DOGS',1992,99,NULL,'TARA','US'),('robot','Yo, robot',2004,115,'Ciencia Ficcion.','PROYA','US'),('salva','Salvar Al Soldado Ryan',1998,186,NULL,'SPILB','US'),('SAMU','LA LEYENDA DEL SAMURAI:47 RONIN',2013,120,'Después de que un caudillo traicionero m','RIN','US'),('scoo','Scoop',2006,96,NULL,'ALLEN','UK'),('siete','Siete almas',2008,123,'Muy dramatica.','MUCCI','US'),('simp','Los Simpson: La Pelicula',2007,87,NULL,NULL,'US'),('slum','Slumdog Millionaire',2008,120,NULL,'BOYLE','UK'),('soy','Soy leyenda',2007,100,'Muy buena.','LAWRE','US'),('swee','Sweet and Lowdown',1999,95,NULL,'ALLEN','US'),('T2','Terminator2:El dia del juicio final',1991,137,'NO FATE','JAME','US'),('THEF','The fast and furious',2001,106,'Es muy rapido y encima se le va la pinza','COHE','US'),('THEM','THE MIST',2007,121,NULL,'DARA','US'),('theme','The Mexican',2001,120,NULL,'VERB','US'),('theto','The tourist',2010,NULL,NULL,NULL,'US'),('tori','Gran Torino',2008,116,NULL,'EAST','US'),('ULSU','EL ULTIMO SUPERVIVIENTE',2013,160,'Adaptación de las memorias de Marcus Lut','PBER','US'),('untip','Un tipo serio',2009,106,NULL,'COHEN',NULL),('valo','Valor de ley',2010,110,NULL,'COHEN','US'),('vicky','Vicky Cristina Barcelona',2008,96,NULL,'ALLEN','US'),('WHIS','HELLION,EL ANGEL CAIDO',2007,107,NULL,'HEND','US');
/*!40000 ALTER TABLE `FILM` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER NDF
BEFORE INSERT ON FILM
FOR EACH ROW
BEGIN
	UPDATE ARTIST
	SET NUM_DIRECTED_FILMS=NUM_DIRECTED_FILMS+1
	WHERE ARTIST_CODE=NEW.DIRECTOR_CODE;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER NDF3
BEFORE UPDATE ON FILM
FOR EACH ROW
BEGIN
	UPDATE ARTIST
	SET NUM_DIRECTED_FILMS=NUM_DIRECTED_FILMS-1
	WHERE ARTIST_CODE=OLD.DIRECTOR_CODE;
	
	UPDATE ARTIST
	SET NUM_DIRECTED_FILMS=NUM_DIRECTED_FILMS+1
	WHERE ARTIST_CODE=NEW.DIRECTOR_CODE;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER NDF2
BEFORE DELETE ON FILM
FOR EACH ROW
BEGIN
	UPDATE ARTIST
	SET NUM_DIRECTED_FILMS=NUM_DIRECTED_FILMS-1
	WHERE ARTIST_CODE=OLD.DIRECTOR_CODE;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `NATION`
--

DROP TABLE IF EXISTS `NATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NATION` (
  `NATION_CODE` char(2) NOT NULL,
  `NAME` char(40) NOT NULL,
  PRIMARY KEY (`NATION_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NATION`
--

LOCK TABLES `NATION` WRITE;
/*!40000 ALTER TABLE `NATION` DISABLE KEYS */;
INSERT INTO `NATION` VALUES ('AL',''),('AR','Argentina'),('AU','Australia'),('CA','Catalunya'),('CH','Chile'),('EH','Euskal Herria'),('ES','Espanya'),('FR','França'),('IR','Irlanda'),('IT','Italia'),('JP','Japó'),('LB','Libia'),('MA',''),('ND','NEDERLAND'),('NZ','Nueva Zelanda'),('SC','ESCOCIA'),('SU','Suecia'),('TW','Taiwan'),('UK','Regne Unit'),('US','Estats units');
/*!40000 ALTER TABLE `NATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAY`
--

DROP TABLE IF EXISTS `PLAY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAY` (
  `FILM_CODE` char(5) NOT NULL,
  `ARTIST_CODE` char(5) NOT NULL DEFAULT '',
  `ROLE` char(1) DEFAULT NULL,
  PRIMARY KEY (`FILM_CODE`,`ARTIST_CODE`),
  KEY `CODI_ARTISTA` (`ARTIST_CODE`),
  CONSTRAINT `REPART_ibfk_1` FOREIGN KEY (`ARTIST_CODE`) REFERENCES `ARTIST` (`ARTIST_CODE`) ON UPDATE CASCADE,
  CONSTRAINT `REPART_PELICULA_FK` FOREIGN KEY (`FILM_CODE`) REFERENCES `FILM` (`FILM_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAY`
--

LOCK TABLES `PLAY` WRITE;
/*!40000 ALTER TABLE `PLAY` DISABLE KEYS */;
INSERT INTO `PLAY` VALUES ('*SOP','TOME','P'),('ASES','BACA','P'),('ASES','BISE','S'),('avat','SAM','P'),('avat','ZOES','S'),('awal','MAND','P'),('awal','PETE','S'),('awal','SHAN','P'),('babel','BLAN','S'),('baila','KOST','P'),('bella','ROBER','P'),('boys','MLAWR','P'),('boys','SMITH','P'),('boys2','MLAWR','P'),('boys2','SMITH','P'),('come','BARDE','P'),('come','ROBE','P'),('COMO','JIMM','P'),('cons','REEVE','P'),('cons','WEIS','S'),('CONT','JODI','P'),('CONT','MATH','S'),('DON','BRI','S'),('DON','GLE','S'),('DON','JOHAN','P'),('DON','JOSEP','P'),('DON','JUL','S'),('elcur','PITT','P'),('eldi','QUAID','P'),('elesc','BROS','P'),('elesc','WILL','P'),('ELMED','KINGS','S'),('ELMED','PAYN','P'),('ELMED','RIGBY','S'),('ELMED','SKARS','S'),('elpia','BRODY','P'),('ELPRE','ALPA','P'),('ELUS','MAWL','P'),('ELUS','TAKI','S'),('ENHON','DAMON','P'),('ENHON','RYAN','P'),('ENHON','WASHI','P'),('forre','HANK','P'),('gang','CROWE','S'),('gang','WASHI','P'),('glad','CROWE','P'),('hijo','ALTE','P'),('hijo','DARI','P'),('hijo','VERK','P'),('hist','ALBA','P'),('hist','KUTCH','P'),('hist','ROBE','S'),('infi','BALDW',NULL),('infi','CAPRI',NULL),('infi','DAMON','S'),('infi','FARM',NULL),('infi','NICHO',NULL),('invi','DAMON','S'),('KILL1','THUR','P'),('KILL2','THUR','P'),('luna','BERT','P'),('luna','BLAC','P'),('luna','DARI','P'),('luna','MORA','P'),('maldi','PITT','P'),('masal','DAMON','P'),('match','JOHAN','P'),('match','RHYS','P'),('MATR2','FISH','P'),('MATR2','MOSS','P'),('MATR2','REEVE','P'),('MATR3','FISH','P'),('MATR3','MOSS','P'),('MATR3','REEVE','P'),('MATRI','FISH','P'),('MATRI','MOSS','P'),('MATRI','REEVE','P'),('milk','PENN','P'),('milli','EAST','P'),('misti','BACO','S'),('misti','FISH','S'),('misti','PENN','P'),('misti','Rob','S'),('MITTY','HAHN','S'),('MITTY','OSWA','S'),('MITTY','SCOT','S'),('MITTY','STIL','P'),('MITTY','WIIG','P'),('MUCH','BRAN','P'),('MUCH','THOM','P'),('muni','BANA','P'),('muni','CRAIG','P'),('nocou','BARDE','P'),('nocou','LEE','S'),('NYMFO','BARR','S'),('NYMFO','BELL','S'),('NYMFO','CHAG','P'),('NYMFO','CHST','S'),('NYMFO','CONN','S'),('NYMFO','ESTE','P'),('NYMFO','KIER','S'),('NYMFO','MIAG','S'),('NYMFO','PAS','S'),('NYMFO','SHI','S'),('NYMFO','SOFK','S'),('NYMFO','STMA','S'),('NYMFO','UMA','S'),('NYMFO','WILLD','S'),('ocea','DAMON','S'),('ocea','PITT','S'),('ocea','ROBE','S'),('ocea2','DAMON','S'),('ocea2','PITT','S'),('ocea2','ROBE','S'),('orig','CAPRI','P'),('orig','JOSEP','S'),('padr','STIL','P'),('PADR1','ALPA','P'),('PADR1','MARL','P'),('PADR2','DENI','P'),('PULP','THUR','P'),('PULP','WILLI','S'),('quema','PITT','P'),('rec','VELA','P'),('RED','WILLI','P'),('rein','DARI','P'),('rein','NUÑE','P'),('rein','PAUL','P'),('robot','SMITH','P'),('salva','DAMON','S'),('salva','HANK','S'),('scoo','ALLEN','S'),('scoo','JOHAN','P'),('siete','SMITH','P'),('soy','SMITH','P'),('swee','MORT','P'),('swee','PENN','P'),('swee','THUR','S'),('THEF','DIES','P'),('THEF','WALK','S'),('theme','PITT','P'),('theme','ROBE','P'),('theto','DEPP','P'),('theto','JOLIE','P'),('tori','EAST','P'),('valo','DAMON','P'),('vicky','BARDE','P'),('vicky','CRUZ','P'),('vicky','JOHAN','P'),('vicky','PE','P');
/*!40000 ALTER TABLE `PLAY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TOWN`
--

DROP TABLE IF EXISTS `TOWN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TOWN` (
  `TOWN_CODE` int(11) NOT NULL,
  `NAME` char(40) DEFAULT NULL,
  `ISLAND` enum('') DEFAULT NULL,
  PRIMARY KEY (`TOWN_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TOWN`
--

LOCK TABLES `TOWN` WRITE;
/*!40000 ALTER TABLE `TOWN` DISABLE KEYS */;
INSERT INTO `TOWN` VALUES (2,'PALMA',''),(3,'CIUTADELLA',''),(4,'EIVISSA',''),(5,'ARTA',NULL),(6,'ALCUDIA',NULL),(7,'CALVIA',NULL),(8,'MARRATXI',''),(40,'MANACOR',''),(111,'FELANITX',NULL),(112,'PETRA',NULL);
/*!40000 ALTER TABLE `TOWN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `CAR_ACT`
--

/*!50001 DROP TABLE IF EXISTS `CAR_ACT`*/;
/*!50001 DROP VIEW IF EXISTS `CAR_ACT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CAR_ACT` AS select `T`.`NAME` AS `CIUTAT`,`C`.`NOME` AS `CINE`,`F`.`TITLE` AS `PELICULA`,`B`.`ROOM` AS `SALA` from (((`TOWN` `T` join `CINEMA` `C`) join `BILLBOARD` `B`) join `FILM` `F`) where ((`T`.`TOWN_CODE` = `C`.`TOWN_CODE`) and (`C`.`CINEMA_CODE` = `B`.`CINEMA_CODE`) and (`B`.`FILM_CODE` = `F`.`FILM_CODE`) and ((curdate() between `B`.`START_DATE` and `B`.`END_DATE`) or isnull(`B`.`END_DATE`))) */;
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

-- Dump completed on 2014-06-27 12:19:13
