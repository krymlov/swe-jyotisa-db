﻿# Host: localhost  (Version 8.0.24)
# Date: 2023-06-28 16:46:51
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "_dbinfo"
#

DROP TABLE IF EXISTS `_dbinfo`;
CREATE TABLE `_dbinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated` bigint NOT NULL DEFAULT '0',
  `version` smallint NOT NULL DEFAULT '1',
  `revision` smallint NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_dbinfo` (`version`,`revision`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

#
# Data for table "_dbinfo"
#

INSERT INTO `_dbinfo` VALUES (1,20190711124500,19,0,'Jyotisa DB v19'),(2,20211211124500,21,0,'Jyotisa DB v21');

#
# Structure for table "ayanamsa"
#

DROP TABLE IF EXISTS `ayanamsa`;
CREATE TABLE `ayanamsa` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` smallint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_ayanamsa` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Longitudinal diff between the Tropical and Sidereal zodiacs';

#
# Data for table "ayanamsa"
#

INSERT INTO `ayanamsa` VALUES (0,0,'AY00','FAGAN_BRADLEY'),(1,1,'AY01','LAHIRI'),(2,2,'AY02','DELUCE'),(3,3,'AY03','BV_RAMAN'),(4,4,'AY04','USHA_SHASHI'),(5,5,'AY05','KRISHNAMURTI'),(6,6,'AY06','DJWHAL_KHOOL'),(7,7,'AY07','SHRI_YUKTESHWAR'),(8,8,'AY08','JN_BHASIN'),(9,9,'AY09','BABYL_KUGLER1'),(10,10,'AY10','BABYL_KUGLER2'),(11,11,'AY11','BABYL_KUGLER3'),(12,12,'AY12','BABYL_HUBER'),(13,13,'AY13','BABYL_MERCIER'),(14,14,'AY14','ALDEBARAN_15TAU'),(15,15,'AY15','HIPPARCHOS'),(16,16,'AY16','SASSANIAN'),(17,17,'AY17','GALCENT_0SAG'),(18,18,'AY18','J2000'),(19,19,'AY19','J1900'),(20,20,'AY20','B1950'),(21,21,'AY21','SURYA_SIDDHANTA'),(22,22,'AY22','SURYA_SIDDHANTA_MSUN'),(23,23,'AY23','ARYABHATA'),(24,24,'AY24','ARYABHATA_MSUN'),(25,25,'AY25','SS_REVATI'),(26,26,'AY26','SS_CITRA'),(27,27,'AY27','TRUE_CITRA'),(28,28,'AY28','TRUE_REVATI'),(29,29,'AY29','TRUE_PUSHYA'),(30,255,'AYUR','AY_USER');

#
# Structure for table "bhava"
#

DROP TABLE IF EXISTS `bhava`;
CREATE TABLE `bhava` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `trikona` tinyint NOT NULL DEFAULT '0',
  `kendra` tinyint NOT NULL DEFAULT '0',
  `apoklima` tinyint NOT NULL DEFAULT '0',
  `upachaya` tinyint NOT NULL DEFAULT '0',
  `apachaya` tinyint NOT NULL DEFAULT '0',
  `dusthana` tinyint NOT NULL DEFAULT '0',
  `panapara` tinyint NOT NULL DEFAULT '0',
  `chaturasra` tinyint NOT NULL DEFAULT '0',
  `maraka` tinyint NOT NULL DEFAULT '0',
  `trishadaya` tinyint NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_bhava` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='The names of the 12 houses and the areas of life';

#
# Data for table "bhava"
#

INSERT INTO `bhava` VALUES (0,0,0,0,0,0,0,0,0,0,0,0,'NIL','NIL'),(1,1,1,1,0,0,1,0,0,0,0,0,'B1','TANU'),(2,2,0,0,0,0,1,0,1,0,1,0,'B2','DHANA'),(3,3,0,0,1,1,0,0,0,0,0,1,'B3','BHRATRI'),(4,4,0,1,0,0,1,0,0,1,0,0,'B4','MATRI'),(5,5,1,0,0,0,0,0,1,0,0,0,'B5','PUTRA'),(6,6,0,0,1,1,0,1,0,0,0,1,'B6','ARI'),(7,7,0,1,0,0,1,0,0,0,1,0,'B7','KAMA'),(8,8,0,0,0,0,1,1,1,1,0,0,'B8','AYUR'),(9,9,1,0,1,0,0,0,0,0,0,0,'B9','DHARMA'),(10,10,0,1,0,1,0,0,0,0,0,0,'B10','KARMA'),(11,11,0,0,0,1,0,0,1,0,0,1,'B11','LABHA'),(12,12,0,0,1,0,0,1,0,0,0,0,'B12','VYAYA');

#
# Structure for table "chara_karaka"
#

DROP TABLE IF EXISTS `chara_karaka`;
CREATE TABLE `chara_karaka` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_chara_karaka` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

#
# Data for table "chara_karaka"
#

INSERT INTO `chara_karaka` VALUES (0,0,'NIL','NIL'),(1,1,'AK','ATMA_KARAKA'),(2,2,'AmK','AMATYA_KARAKA'),(3,3,'BK','BHRATRI_KARAKA'),(4,4,'MK','MATRI_KARAKA'),(5,5,'PiK','PITRI_KARAKA'),(6,6,'PK','PUTRA_KARAKA'),(7,7,'GK','GNATI_KARAKA'),(8,8,'DK','DARA_KARAKA');

#
# Structure for table "config"
#

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enabled` tinyint NOT NULL DEFAULT '1',
  `ayanamsa` smallint NOT NULL DEFAULT '27',
  `chara_karaka` tinyint NOT NULL DEFAULT '7',
  `year_duration` double NOT NULL DEFAULT '365.2425',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_config` (`ayanamsa`,`chara_karaka`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=ascii;

#
# Data for table "config"
#

INSERT INTO `config` VALUES (0,1,0,7,365.2425,'FAGAN_BRADLEY'),(1,1,1,7,365.2425,'LAHIRI'),(2,1,2,7,365.2425,'DELUCE'),(3,1,3,7,365.2425,'BV_RAMAN'),(4,1,4,7,365.2425,'USHA_SHASHI'),(5,1,5,7,365.2425,'KRISHNAMURTI'),(6,1,6,7,365.2425,'DJWHAL_KHOOL'),(7,1,7,7,365.2425,'SHRI_YUKTESHWAR'),(8,1,8,7,365.2425,'JN_BHASIN'),(9,1,9,7,365.2425,'BABYL_KUGLER1'),(10,1,10,7,365.2425,'BABYL_KUGLER2'),(11,1,11,7,365.2425,'BABYL_KUGLER3'),(12,1,12,7,365.2425,'BABYL_HUBER'),(13,1,13,7,365.2425,'BABYL_MERCIER'),(14,1,14,7,365.2425,'ALDEBARAN_15TAU'),(15,1,15,7,365.2425,'HIPPARCHOS'),(16,1,16,7,365.2425,'SASSANIAN'),(17,1,17,7,365.2425,'GALCENT_0SAG'),(18,1,18,7,365.2425,'J2000'),(19,1,19,7,365.2425,'J1900'),(20,1,20,7,365.2425,'B1950'),(21,1,21,7,365.2425,'SURYA_SIDDHANTA'),(22,1,22,7,365.2425,'SURYA_SIDDHANTA_MSUN'),(23,1,23,7,365.2425,'ARYABHATA'),(24,1,24,7,365.2425,'ARYABHATA_MSUN'),(25,1,25,7,365.2425,'SS_REVATI'),(26,1,26,7,365.2425,'SS_CITRA'),(27,1,27,7,365.2425,'TRUE_CITRA'),(28,1,28,7,365.2425,'TRUE_REVATI'),(29,1,29,7,365.2425,'TRUE_PUSHYA'),(30,1,30,7,365.2425,'AY_USER'),(31,1,0,8,365.2425,'FAGAN_BRADLEY'),(32,1,1,8,365.2425,'LAHIRI'),(33,1,2,8,365.2425,'DELUCE'),(34,1,3,8,365.2425,'BV_RAMAN'),(35,1,4,8,365.2425,'USHA_SHASHI'),(36,1,5,8,365.2425,'KRISHNAMURTI'),(37,1,6,8,365.2425,'DJWHAL_KHOOL'),(38,1,7,8,365.2425,'SHRI_YUKTESHWAR'),(39,1,8,8,365.2425,'JN_BHASIN'),(40,1,9,8,365.2425,'BABYL_KUGLER1'),(41,1,10,8,365.2425,'BABYL_KUGLER2'),(42,1,11,8,365.2425,'BABYL_KUGLER3'),(43,1,12,8,365.2425,'BABYL_HUBER'),(44,1,13,8,365.2425,'BABYL_MERCIER'),(45,1,14,8,365.2425,'ALDEBARAN_15TAU'),(46,1,15,8,365.2425,'HIPPARCHOS'),(47,1,16,8,365.2425,'SASSANIAN'),(48,1,17,8,365.2425,'GALCENT_0SAG'),(49,1,18,8,365.2425,'J2000'),(50,1,19,8,365.2425,'J1900'),(51,1,20,8,365.2425,'B1950'),(52,1,21,8,365.2425,'SURYA_SIDDHANTA'),(53,1,22,8,365.2425,'SURYA_SIDDHANTA_MSUN'),(54,1,23,8,365.2425,'ARYABHATA'),(55,1,24,8,365.2425,'ARYABHATA_MSUN'),(56,1,25,8,365.2425,'SS_REVATI'),(57,1,26,8,365.2425,'SS_CITRA'),(58,1,27,8,365.2425,'TRUE_CITRA'),(59,1,28,8,365.2425,'TRUE_REVATI'),(60,1,29,8,365.2425,'TRUE_PUSHYA'),(61,1,30,8,365.2425,'AY_USER');

#
# Structure for table "dignity"
#

DROP TABLE IF EXISTS `dignity`;
CREATE TABLE `dignity` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `power` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_dignity` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "dignity"
#

INSERT INTO `dignity` VALUES (0,0,0,'NIL','NIL'),(1,1,0,'DG1','NEECHA'),(2,2,1,'DG2','DEFICIENT'),(3,3,3,'DG3','ADHISATRU'),(4,4,6,'DG4','SATRU'),(5,5,12,'DG5','SAMA'),(6,6,25,'DG6','MITRA'),(7,7,37,'DG7','ADHIMITRA'),(8,8,50,'DG8','SWAKSHETRA'),(9,9,75,'DG9','MULATRIKONA'),(10,10,95,'DG10','EXCELLENT'),(11,11,100,'DG11','UCCHA');

#
# Structure for table "entity"
#

DROP TABLE IF EXISTS `entity`;
CREATE TABLE `entity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enabled` tinyint NOT NULL DEFAULT '1',
  `updated` bigint NOT NULL DEFAULT '20220114121500',
  `name` varchar(64) NOT NULL DEFAULT '',
  `code` varchar(32) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_entity` (`name`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=ascii COMMENT='Information about an entity';

#
# Data for table "entity"
#

INSERT INTO `entity` VALUES (1,1,20211215093000,'Kundali: London 0-2021 years',NULL,NULL);

#
# Structure for table "gender"
#

DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_gender` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Human gender';

#
# Data for table "gender"
#

INSERT INTO `gender` VALUES (0,0,'0','FEMALE'),(1,1,'1','MALE');

#
# Structure for table "graha"
#

DROP TABLE IF EXISTS `graha`;
CREATE TABLE `graha` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_graha` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Graha has considerable influence on the living beings';

#
# Data for table "graha"
#

INSERT INTO `graha` VALUES (0,0,'LG','LAGNA'),(1,1,'SY','SURYA'),(2,2,'CH','CHANDRA'),(3,9,'MA','MANGALA'),(4,5,'BU','BUDHA'),(5,3,'GU','GURU'),(6,6,'SK','SHUKRA'),(7,8,'SA','SHANI'),(8,4,'RA','RAHU'),(9,7,'KE','KETU'),(10,10,'SW','SWETA'),(11,11,'SM','SYAMA'),(12,12,'TE','TEEVRA');

#
# Structure for table "housesys"
#

DROP TABLE IF EXISTS `housesys`;
CREATE TABLE `housesys` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_system` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT COMMENT='Longitudinal diff between the Tropical and Sidereal zodiacs';

#
# Data for table "housesys"
#

INSERT INTO `housesys` VALUES (0,0,'NIL','NIL'),(1,66,'HSB','ALCABITIUS'),(2,67,'HSC','CAMPANUS'),(3,69,'HSE','EQUAL'),(4,72,'HSH','HORIZONTAL'),(5,75,'HSK','KOCH'),(6,77,'HSM','MORINUS'),(7,79,'HSO','PORPHYRIUS'),(8,80,'HSP','PLACIDUS'),(9,82,'HSR','REGIOMONTANUS'),(10,84,'HST','POLICH_PAGE'),(11,85,'HSU','KRUSINSKI'),(12,86,'HSV','VEHLOW'),(13,87,'HSW','WHOLE_SIGN'),(14,88,'HSX','MERIDIAN');

#
# Structure for table "karana"
#

DROP TABLE IF EXISTS `karana`;
CREATE TABLE `karana` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_karana` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Karana is a half of lunar day';

#
# Data for table "karana"
#

INSERT INTO `karana` VALUES (0,0,'NIL','NIL'),(1,1,'KR1','BAVA'),(2,2,'KR2','BALAVA'),(3,3,'KR3','KAULAVA'),(4,4,'KR4','TAITULA'),(5,5,'KR5','GARIJA'),(6,6,'KR6','VANIJA'),(7,7,'KR7','VISHTI'),(8,8,'KR8','SAKUNA'),(9,9,'KR9','CHATUSHPADA'),(10,10,'KR10','NAGA'),(11,11,'KR11','KIMSTUGHNA');

#
# Structure for table "lagna"
#

DROP TABLE IF EXISTS `lagna`;
CREATE TABLE `lagna` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_lagna` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Lagna and some math points known as special ascendants';

#
# Data for table "lagna"
#

INSERT INTO `lagna` VALUES (0,0,'L0','JANMA_LAGNA'),(1,1,'L1','BHAVA_LAGNA'),(2,2,'L2','HORA_LAGNA'),(3,3,'L3','GHATI_LAGNA'),(4,4,'L4','VIGHATI_LAGNA'),(5,5,'L5','VARNADA_LAGNA'),(6,6,'L6','SREE_LAGNA'),(7,7,'L7','PRANAPADA_LAGNA'),(8,8,'L8','INDU_LAGNA');

#
# Structure for table "maasa"
#

DROP TABLE IF EXISTS `maasa`;
CREATE TABLE `maasa` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_maasa` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Lunar Month';

#
# Data for table "maasa"
#

INSERT INTO `maasa` VALUES (0,0,'NIL','NIL'),(1,1,'MA1','MADHUSUDANA'),(2,2,'MA2','TRIVIKRAMA'),(3,3,'MA3','VAMANA'),(4,4,'MA4','SRIDHARA'),(5,5,'MA5','HRSIKESA'),(6,6,'MA6','PADMANABHA'),(7,7,'MA7','DAMODARA'),(8,8,'MA8','KESAVA'),(9,9,'MA9','NARAYANA'),(10,10,'MA10','MADHAVA'),(11,11,'MA11','GOVINDA'),(12,12,'MA12','VISNU'),(13,13,'MA13','PURADH');

#
# Structure for table "naksatra"
#

DROP TABLE IF EXISTS `naksatra`;
CREATE TABLE `naksatra` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `lord` tinyint NOT NULL DEFAULT '0',
  `start` int NOT NULL DEFAULT '0',
  `close` int NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_nakshatra` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Moon constellations';

#
# Data for table "naksatra"
#

INSERT INTO `naksatra` VALUES (0,0,0,0,0,'NIL','NIL'),(1,1,7,0,13200000,'N1','ASHWINI'),(2,2,6,13200000,26400000,'N2','BHARANI'),(3,3,1,26400000,40000000,'N3','KRITTIKA'),(4,4,2,40000000,53200000,'N4','ROHINI'),(5,5,9,53200000,66400000,'N5','MRIGASHIRA'),(6,6,4,66400000,80000000,'N6','ARDRA'),(7,7,3,80000000,93200000,'N7','PUNARVASU'),(8,8,8,93200000,106400000,'N8','PUSHYA'),(9,9,5,106400000,120000000,'N9','ASHLESHA'),(10,10,7,120000000,133200000,'N10','MAGHA'),(11,11,6,133200000,146400000,'N11','PURVA_PHALGUNI'),(12,12,1,146400000,160000000,'N12','UTTARA_PHALGUNI'),(13,13,2,160000000,173200000,'N13','HASTA'),(14,14,9,173200000,186400000,'N14','CHITRA'),(15,15,4,186400000,200000000,'N15','SWATI'),(16,16,3,200000000,213200000,'N16','VISHAKHA'),(17,17,8,213200000,226400000,'N17','ANURADHA'),(18,18,5,226400000,240000000,'N18','JYESHTHA'),(19,19,7,240000000,253200000,'N19','MULA'),(20,20,6,253200000,266400000,'N20','PURVA_ASHADHA'),(21,21,1,266400000,280000000,'N21','UTTARA_ASHADHA'),(22,22,2,280000000,293200000,'N22','SHRAVANA'),(23,23,9,293200000,306400000,'N23','DHANISHTA'),(24,24,4,306400000,320000000,'N24','SHATABHISHA'),(25,25,3,320000000,333200000,'N25','PURVA_BHADRAPADA'),(26,26,8,333200000,346400000,'N26','UTTARA_BHADRAPADA'),(27,27,5,346400000,360000000,'N27','REVATI');

#
# Structure for table "naksatra_pada"
#

DROP TABLE IF EXISTS `naksatra_pada`;
CREATE TABLE `naksatra_pada` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` smallint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `pada` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `start` int NOT NULL DEFAULT '0',
  `close` int NOT NULL DEFAULT '0',
  `code` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_nakshatra_pada` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Moon constellations parts';

#
# Data for table "naksatra_pada"
#

INSERT INTO `naksatra_pada` VALUES (0,0,0,0,0,0,0,0,'NIL','NIL'),(1,11,1,1,1,1,0,3200000,'N1P1','ASH1'),(2,12,1,2,1,2,3200000,6400000,'N1P2','ASH2'),(3,13,1,3,1,3,6400000,10000000,'N1P3','ASH3'),(4,14,1,4,1,4,10000000,13200000,'N1P4','ASH4'),(5,21,2,1,1,5,13200000,16400000,'N2P1','BHA1'),(6,22,2,2,1,6,16400000,20000000,'N2P2','BHA2'),(7,23,2,3,1,7,20000000,23200000,'N2P3','BHA3'),(8,24,2,4,1,8,23200000,26400000,'N2P4','BHA4'),(9,31,3,1,1,9,26400000,30000000,'N3P1','KRI1'),(10,32,3,2,2,10,30000000,33200000,'N3P2','KRI2'),(11,33,3,3,2,11,33200000,36400000,'N3P3','KRI3'),(12,34,3,4,2,12,36400000,40000000,'N3P4','KRI4'),(13,41,4,1,2,1,40000000,43200000,'N4P1','ROH1'),(14,42,4,2,2,2,43200000,46400000,'N4P2','ROH2'),(15,43,4,3,2,3,46400000,50000000,'N4P3','ROH3'),(16,44,4,4,2,4,50000000,53200000,'N4P4','ROH4'),(17,51,5,1,2,5,53200000,56400000,'N5P1','MRG1'),(18,52,5,2,2,6,56400000,60000000,'N5P2','MRG2'),(19,53,5,3,3,7,60000000,63200000,'N5P3','MRG3'),(20,54,5,4,3,8,63200000,66400000,'N5P4','MRG4'),(21,61,6,1,3,9,66400000,70000000,'N6P1','ARD1'),(22,62,6,2,3,10,70000000,73200000,'N6P2','ARD2'),(23,63,6,3,3,11,73200000,76400000,'N6P3','ARD3'),(24,64,6,4,3,12,76400000,80000000,'N6P4','ARD4'),(25,71,7,1,3,1,80000000,83200000,'N7P1','PUN1'),(26,72,7,2,3,2,83200000,86400000,'N7P2','PUN2'),(27,73,7,3,3,3,86400000,90000000,'N7P3','PUN3'),(28,74,7,4,4,4,90000000,93200000,'N7P4','PUN4'),(29,81,8,1,4,5,93200000,96400000,'N8P1','PUS1'),(30,82,8,2,4,6,96400000,100000000,'N8P2','PUS2'),(31,83,8,3,4,7,100000000,103200000,'N8P3','PUS3'),(32,84,8,4,4,8,103200000,106400000,'N8P4','PUS4'),(33,91,9,1,4,9,106400000,110000000,'N9P1','ASL1'),(34,92,9,2,4,10,110000000,113200000,'N9P2','ASL2'),(35,93,9,3,4,11,113200000,116400000,'N9P3','ASL3'),(36,94,9,4,4,12,116400000,120000000,'N9P4','ASL4'),(37,101,10,1,5,1,120000000,123200000,'N10P1','MAG1'),(38,102,10,2,5,2,123200000,126400000,'N10P2','MAG2'),(39,103,10,3,5,3,126400000,130000000,'N10P3','MAG3'),(40,104,10,4,5,4,130000000,133200000,'N10P4','MAG4'),(41,111,11,1,5,5,133200000,136400000,'N11P1','PPH1'),(42,112,11,2,5,6,136400000,140000000,'N11P2','PPH2'),(43,113,11,3,5,7,140000000,143200000,'N11P3','PPH3'),(44,114,11,4,5,8,143200000,146400000,'N11P4','PPH4'),(45,121,12,1,5,9,146400000,150000000,'N12P1','UPH1'),(46,122,12,2,6,10,150000000,153200000,'N12P2','UPH2'),(47,123,12,3,6,11,153200000,156400000,'N12P3','UPH3'),(48,124,12,4,6,12,156400000,160000000,'N12P4','UPH4'),(49,131,13,1,6,1,160000000,163200000,'N13P1','HAS1'),(50,132,13,2,6,2,163200000,166400000,'N13P2','HAS2'),(51,133,13,3,6,3,166400000,170000000,'N13P3','HAS3'),(52,134,13,4,6,4,170000000,173200000,'N13P4','HAS4'),(53,141,14,1,6,5,173200000,176400000,'N14P1','CHT1'),(54,142,14,2,6,6,176400000,180000000,'N14P2','CHT2'),(55,143,14,3,7,7,180000000,183200000,'N14P3','CHT3'),(56,144,14,4,7,8,183200000,186400000,'N14P4','CHT4'),(57,151,15,1,7,9,186400000,190000000,'N15P1','SWA1'),(58,152,15,2,7,10,190000000,193200000,'N15P2','SWA2'),(59,153,15,3,7,11,193200000,196400000,'N15P3','SWA3'),(60,154,15,4,7,12,196400000,200000000,'N15P4','SWA4'),(61,161,16,1,7,1,200000000,203200000,'N16P1','VIS1'),(62,162,16,2,7,2,203200000,206400000,'N16P2','VIS2'),(63,163,16,3,7,3,206400000,210000000,'N16P3','VIS3'),(64,164,16,4,8,4,210000000,213200000,'N16P4','VIS4'),(65,171,17,1,8,5,213200000,216400000,'N17P1','ANU1'),(66,172,17,2,8,6,216400000,220000000,'N17P2','ANU2'),(67,173,17,3,8,7,220000000,223200000,'N17P3','ANU3'),(68,174,17,4,8,8,223200000,226400000,'N17P4','ANU4'),(69,181,18,1,8,9,226400000,230000000,'N18P1','JYE1'),(70,182,18,2,8,10,230000000,233200000,'N18P2','JYE2'),(71,183,18,3,8,11,233200000,236400000,'N18P3','JYE3'),(72,184,18,4,8,12,236400000,240000000,'N18P4','JYE4'),(73,191,19,1,9,1,240000000,243200000,'N19P1','MUL1'),(74,192,19,2,9,2,243200000,246400000,'N19P2','MUL2'),(75,193,19,3,9,3,246400000,250000000,'N19P3','MUL3'),(76,194,19,4,9,4,250000000,253200000,'N19P4','MUL4'),(77,201,20,1,9,5,253200000,256400000,'N20P1','PSH1'),(78,202,20,2,9,6,256400000,260000000,'N20P2','PSH2'),(79,203,20,3,9,7,260000000,263200000,'N20P3','PSH3'),(80,204,20,4,9,8,263200000,266400000,'N20P4','PSH4'),(81,211,21,1,9,9,266400000,270000000,'N21P1','USH1'),(82,212,21,2,10,10,270000000,273200000,'N21P2','USH2'),(83,213,21,3,10,11,273200000,276400000,'N21P3','USH3'),(84,214,21,4,10,12,276400000,280000000,'N21P4','USH4'),(85,221,22,1,10,1,280000000,283200000,'N22P1','SHR1'),(86,222,22,2,10,2,283200000,286400000,'N22P2','SHR2'),(87,223,22,3,10,3,286400000,290000000,'N22P3','SHR3'),(88,224,22,4,10,4,290000000,293200000,'N22P4','SHR4'),(89,231,23,1,10,5,293200000,296400000,'N23P1','DHA1'),(90,232,23,2,10,6,296400000,300000000,'N23P2','DHA2'),(91,233,23,3,11,7,300000000,303200000,'N23P3','DHA3'),(92,234,23,4,11,8,303200000,306400000,'N23P4','DHA4'),(93,241,24,1,11,9,306400000,310000000,'N24P1','SAT1'),(94,242,24,2,11,10,310000000,313200000,'N24P2','SAT2'),(95,243,24,3,11,11,313200000,316400000,'N24P3','SAT3'),(96,244,24,4,11,12,316400000,320000000,'N24P4','SAT4'),(97,251,25,1,11,1,320000000,323200000,'N25P1','PBH1'),(98,252,25,2,11,2,323200000,326400000,'N25P2','PBH2'),(99,253,25,3,11,3,326400000,330000000,'N25P3','PBH3'),(100,254,25,4,12,4,330000000,333200000,'N25P4','PBH4'),(101,261,26,1,12,5,333200000,336400000,'N26P1','UBH1'),(102,262,26,2,12,6,336400000,340000000,'N26P2','UBH2'),(103,263,26,3,12,7,340000000,343200000,'N26P3','UBH3'),(104,264,26,4,12,8,343200000,346400000,'N26P4','UBH4'),(105,271,27,1,12,9,346400000,350000000,'N27P1','REV1'),(106,272,27,2,12,10,350000000,353200000,'N27P2','REV2'),(107,273,27,3,12,11,353200000,356400000,'N27P3','REV3'),(108,274,27,4,12,12,356400000,360000000,'N27P4','REV4');

#
# Structure for table "nitya_yoga"
#

DROP TABLE IF EXISTS `nitya_yoga`;
CREATE TABLE `nitya_yoga` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_nityayoga` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Parity of longitudes of Sun and Moon';

#
# Data for table "nitya_yoga"
#

INSERT INTO `nitya_yoga` VALUES (0,0,'NIL','NIL'),(1,1,'NY1','VISHKAMBHA'),(2,2,'NY2','PREETI'),(3,3,'NY3','AYUSHMANA'),(4,4,'NY4','SAUBHAGYA'),(5,5,'NY5','SOBHANA'),(6,6,'NY6','ATIGANDA'),(7,7,'NY7','SUKARMAN'),(8,8,'NY8','DHRITI'),(9,9,'NY9','SHULA'),(10,10,'NY10','GANDA'),(11,11,'NY11','VRIDDHI'),(12,12,'NY12','DHRUVA'),(13,13,'NY13','VYAGHATA'),(14,14,'NY14','HARSHANA'),(15,15,'NY15','VAJRA'),(16,16,'NY16','SIDDHI'),(17,17,'NY17','VYATIPATA'),(18,18,'NY18','VARIYAN'),(19,19,'NY19','PARIGHA'),(20,20,'NY20','SHIVA'),(21,21,'NY21','SIDDHA'),(22,22,'NY22','SADHYA'),(23,23,'NY23','SHUBHA'),(24,24,'NY24','SHUKLA'),(25,25,'NY25','BRAHMA'),(26,26,'NY26','INDRA'),(27,27,'NY27','VAIDHRITI');

#
# Structure for table "rasi"
#

DROP TABLE IF EXISTS `rasi`;
CREATE TABLE `rasi` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `movable` tinyint NOT NULL DEFAULT '0',
  `fixed` tinyint NOT NULL DEFAULT '0',
  `dual` tinyint NOT NULL DEFAULT '0',
  `tattva` tinyint NOT NULL DEFAULT '0',
  `lord` tinyint NOT NULL DEFAULT '0',
  `start` int NOT NULL DEFAULT '0',
  `close` int NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_rasi` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Zodiac divided into 12 equal parts are called rasis (signs)';

#
# Data for table "rasi"
#

INSERT INTO `rasi` VALUES (0,0,0,0,0,0,0,0,0,'NIL','NIL'),(1,1,1,0,0,2,9,0,30000000,'R1','MESHA'),(2,2,0,1,0,3,6,30000000,60000000,'R2','VRISHABHA'),(3,3,0,0,1,4,5,60000000,90000000,'R3','MITHUNA'),(4,4,1,0,0,5,2,90000000,120000000,'R4','KARKATA'),(5,5,0,1,0,2,1,120000000,150000000,'R5','SIMHA'),(6,6,0,0,1,3,5,150000000,180000000,'R6','KANYA'),(7,7,1,0,0,4,6,180000000,210000000,'R7','TULA'),(8,8,0,1,0,5,9,210000000,240000000,'R8','VRISCHIKA'),(9,9,0,0,1,2,3,240000000,270000000,'R9','DHANUS'),(10,10,1,0,0,3,8,270000000,300000000,'R10','MAKARA'),(11,11,0,1,0,4,8,300000000,330000000,'R11','KUMBHA'),(12,12,0,0,1,5,3,330000000,360000000,'R12','MEENA');

#
# Structure for table "tattva"
#

DROP TABLE IF EXISTS `tattva`;
CREATE TABLE `tattva` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_tattva` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Tattva';

#
# Data for table "tattva"
#

INSERT INTO `tattva` VALUES (0,0,'NIL','NIL'),(1,1,'TT1','AKASHA'),(2,2,'TT2','AGNI'),(3,3,'TT3','PRITHVI'),(4,4,'TT4','VAYU'),(5,5,'TT5','JALA');

#
# Structure for table "tithi"
#

DROP TABLE IF EXISTS `tithi`;
CREATE TABLE `tithi` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `paksa` tinyint NOT NULL DEFAULT '0',
  `lord` tinyint NOT NULL DEFAULT '0',
  `start` int NOT NULL DEFAULT '0',
  `close` int NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_tithi` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

#
# Data for table "tithi"
#

INSERT INTO `tithi` VALUES (0,0,0,0,0,0,'NIL','NIL'),(1,1,1,1,0,12000000,'S1','SHUKLA_PRATIPADA'),(2,2,1,2,12000000,24000000,'S2','SHUKLA_DWITIYA'),(3,3,1,9,24000000,36000000,'S3','SHUKLA_TRITIYA'),(4,4,1,5,36000000,48000000,'S4','SHUKLA_CHATURTHI'),(5,5,1,3,48000000,60000000,'S5','SHUKLA_PANCHAMI'),(6,6,1,6,60000000,72000000,'S6','SHUKLA_SHASHTHI'),(7,7,1,8,72000000,84000000,'S7','SHUKLA_SAPTAMI'),(8,8,1,4,84000000,96000000,'S8','SHUKLA_ASHTAMI'),(9,9,1,1,96000000,108000000,'S9','SHUKLA_NAVAMI'),(10,10,1,2,108000000,120000000,'S10','SHUKLA_DASHAMI'),(11,11,1,9,120000000,132000000,'S11','SHUKLA_EKADASI'),(12,12,1,5,132000000,144000000,'S12','SHUKLA_DWADASI'),(13,13,1,3,144000000,156000000,'S13','SHUKLA_TRAYODASI'),(14,14,1,6,156000000,168000000,'S14','SHUKLA_CHATURDASI'),(15,15,1,8,168000000,180000000,'S15','SHUKLA_POORNIMA'),(16,1,0,1,180000000,192000000,'K1','KRISHNA_PRATIPADA'),(17,2,0,2,192000000,204000000,'K2','KRISHNA_DWITIYA'),(18,3,0,9,204000000,216000000,'K3','KRISHNA_TRITIYA'),(19,4,0,5,216000000,228000000,'K4','KRISHNA_CHATURTHI'),(20,5,0,3,228000000,240000000,'K5','KRISHNA_PANCHAMI'),(21,6,0,6,240000000,252000000,'K6','KRISHNA_SHASHTHI'),(22,7,0,8,252000000,264000000,'K7','KRISHNA_SAPTAMI'),(23,8,0,4,264000000,276000000,'K8','KRISHNA_ASHTAMI'),(24,9,0,1,276000000,288000000,'K9','KRISHNA_NAVAMI'),(25,10,0,2,288000000,300000000,'K10','KRISHNA_DASHAMI'),(26,11,0,9,300000000,312000000,'K11','KRISHNA_EKADASI'),(27,12,0,5,312000000,324000000,'K12','KRISHNA_DWADASI'),(28,13,0,3,324000000,336000000,'K13','KRISHNA_TRAYODASI'),(29,14,0,6,336000000,348000000,'K14','KRISHNA_CHATURDASI'),(30,15,0,4,348000000,360000000,'K15','KRISHNA_AMAVASYA');

#
# Structure for table "tmz_info"
#

DROP TABLE IF EXISTS `tmz_info`;
CREATE TABLE `tmz_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `raw_offset` smallint NOT NULL DEFAULT '0' COMMENT 'The offset from UTC (in seconds) for the given location. This does not take into effect daylight savings.',
  `dst_offset` smallint NOT NULL DEFAULT '0' COMMENT 'The offset for daylight-savings time in seconds. This will be zero if the time zone is not in Daylight Savings Time during the specified timestamp.',
  `time_zone_id` varchar(32) NOT NULL DEFAULT '' COMMENT 'a string containing the ID of the time zone, such as "America/Los_Angeles"',
  `time_zone_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'The long form name of the time zone.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_tmz_info` (`time_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii;

#
# Data for table "tmz_info"
#

INSERT INTO `tmz_info` VALUES (1,0,3600,'Europe/London','Europe London');

#
# Structure for table "location"
#

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tmz_info_id` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `altitude` int NOT NULL DEFAULT '0',
  `pressure` float NOT NULL DEFAULT '1013.25',
  `temperature` float NOT NULL DEFAULT '11',
  `since_dt` bigint NOT NULL DEFAULT '20211211120000',
  `country` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `area` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_location_1` (`tmz_info_id`,`latitude`,`longitude`,`since_dt`,`name`),
  CONSTRAINT `fk_location_1` FOREIGN KEY (`tmz_info_id`) REFERENCES `tmz_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "location"
#

INSERT INTO `location` VALUES (1,1,51300000,-70000,11,1013.25,8,20211215130000,'UK','London','United Kingdom');

#
# Structure for table "event"
#

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_id` int NOT NULL DEFAULT '0',
  `location_id` int NOT NULL DEFAULT '0',
  `config_id` int NOT NULL DEFAULT '0',
  `enabled` tinyint NOT NULL DEFAULT '0',
  `updated` bigint NOT NULL DEFAULT '20220114121500',
  `name` varchar(64) NOT NULL DEFAULT '',
  `code` varchar(32) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_event` (`entity_id`,`location_id`,`config_id`),
  KEY `idx_event_1` (`config_id`),
  KEY `idx_event_2` (`location_id`),
  CONSTRAINT `fk_event_1` FOREIGN KEY (`config_id`) REFERENCES `config` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_event_2` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_event_3` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii;

#
# Data for table "event"
#

INSERT INTO `event` VALUES (1,1,1,58,1,20211215093000,'Kundali: London 0-2021 years',NULL,'TRUE_CITRA');

#
# Structure for table "kundali"
#

DROP TABLE IF EXISTS `kundali`;
CREATE TABLE `kundali` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` int NOT NULL DEFAULT '0',
  `datetime` bigint NOT NULL DEFAULT '20220114121500' COMMENT 'event datetime',
  `utc_offset` smallint NOT NULL DEFAULT '0' COMMENT 'actual time zone offset to UTC in seconds including DST',
  `sid_time` int NOT NULL DEFAULT '0',
  `ayanamsa` int NOT NULL DEFAULT '0',
  `julian_day` double NOT NULL DEFAULT '0' COMMENT 'event julday',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_kundali` (`event_id`,`datetime`),
  CONSTRAINT `fk_kundali_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "kundali"
#


#
# Structure for table "panchanga"
#

DROP TABLE IF EXISTS `panchanga`;
CREATE TABLE `panchanga` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `maasa` tinyint NOT NULL DEFAULT '0',
  `vaara` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `tithi` tinyint NOT NULL DEFAULT '0',
  `karana` tinyint NOT NULL DEFAULT '0',
  `nitya_yoga` tinyint NOT NULL DEFAULT '0',
  UNIQUE KEY `uidx_panchanga` (`kundali_id`),
  KEY `idx_panchanga_1` (`naksatra`,`naksatra_pada`),
  KEY `idx_panchanga_2` (`tithi`,`karana`,`nitya_yoga`),
  KEY `idx_panchanga_3` (`vaara`,`maasa`),
  CONSTRAINT `fk_panchanga_1` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "panchanga"
#


#
# Structure for table "moment"
#

DROP TABLE IF EXISTS `moment`;
CREATE TABLE `moment` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `midday` double NOT NULL DEFAULT '0',
  `sunrise` double NOT NULL DEFAULT '0',
  `sunset` double NOT NULL DEFAULT '0',
  `moonrise` double NOT NULL DEFAULT '0',
  `moonset` double NOT NULL DEFAULT '0',
  UNIQUE KEY `uidx_moment` (`kundali_id`),
  CONSTRAINT `fk_moment_1` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "moment"
#


#
# Structure for table "d1_upagraha5"
#

DROP TABLE IF EXISTS `d1_upagraha5`;
CREATE TABLE `d1_upagraha5` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_upagraha` (`kundali_id`),
  KEY `idx_d1_upagraha_1` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_upagraha_2` (`rasi_long`,`longitude`),
  KEY `idx_d1_upagraha_3` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_upagraha_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_upagraha5` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_upagraha5"
#


#
# Structure for table "d1_upagraha4"
#

DROP TABLE IF EXISTS `d1_upagraha4`;
CREATE TABLE `d1_upagraha4` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_upagraha` (`kundali_id`),
  KEY `idx_d1_upagraha_1` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_upagraha_2` (`rasi_long`,`longitude`),
  KEY `idx_d1_upagraha_3` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_upagraha_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_upagraha4` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_upagraha4"
#


#
# Structure for table "d1_upagraha3"
#

DROP TABLE IF EXISTS `d1_upagraha3`;
CREATE TABLE `d1_upagraha3` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_upagraha` (`kundali_id`),
  KEY `idx_d1_upagraha_1` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_upagraha_2` (`rasi_long`,`longitude`),
  KEY `idx_d1_upagraha_3` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_upagraha_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_upagraha3` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_upagraha3"
#


#
# Structure for table "d1_upagraha2"
#

DROP TABLE IF EXISTS `d1_upagraha2`;
CREATE TABLE `d1_upagraha2` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_upagraha` (`kundali_id`),
  KEY `idx_d1_upagraha_1` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_upagraha_2` (`rasi_long`,`longitude`),
  KEY `idx_d1_upagraha_3` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_upagraha_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_upagraha2` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_upagraha2"
#


#
# Structure for table "d1_upagraha1"
#

DROP TABLE IF EXISTS `d1_upagraha1`;
CREATE TABLE `d1_upagraha1` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_upagraha` (`kundali_id`),
  KEY `idx_d1_upagraha_1` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_upagraha_2` (`rasi_long`,`longitude`),
  KEY `idx_d1_upagraha_3` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_upagraha_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_upagraha1` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_upagraha1"
#


#
# Structure for table "d1_lagna3"
#

DROP TABLE IF EXISTS `d1_lagna3`;
CREATE TABLE `d1_lagna3` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '1',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_lagna` (`kundali_id`),
  KEY `idx_d1_lagna_1` (`rasi`,`navamsa`),
  KEY `idx_d1_lagna_2` (`rasi_long`,`longitude`),
  KEY `idx_d1_lagna_3` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_lagna_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_lagna3` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_lagna3"
#


#
# Structure for table "d1_lagna2"
#

DROP TABLE IF EXISTS `d1_lagna2`;
CREATE TABLE `d1_lagna2` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '1',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_lagna` (`kundali_id`),
  KEY `idx_d1_lagna_1` (`rasi`,`navamsa`),
  KEY `idx_d1_lagna_2` (`rasi_long`,`longitude`),
  KEY `idx_d1_lagna_3` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_lagna_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_lagna2` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_lagna2"
#


#
# Structure for table "d1_lagna1"
#

DROP TABLE IF EXISTS `d1_lagna1`;
CREATE TABLE `d1_lagna1` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '1',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_lagna` (`kundali_id`),
  KEY `idx_d1_lagna_1` (`rasi`,`navamsa`),
  KEY `idx_d1_lagna_2` (`rasi_long`,`longitude`),
  KEY `idx_d1_lagna_3` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_lagna_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_lagna1` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_lagna1"
#


#
# Structure for table "d1_lagna0"
#

DROP TABLE IF EXISTS `d1_lagna0`;
CREATE TABLE `d1_lagna0` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '1',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_lagna` (`kundali_id`),
  KEY `idx_d1_lagna_1` (`rasi`,`navamsa`),
  KEY `idx_d1_lagna_2` (`rasi_long`,`longitude`),
  KEY `idx_d1_lagna_3` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_lagna_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_lagna0` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_lagna0"
#


#
# Structure for table "d1_graha9"
#

DROP TABLE IF EXISTS `d1_graha9`;
CREATE TABLE `d1_graha9` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha9` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha9"
#


#
# Structure for table "d1_graha8"
#

DROP TABLE IF EXISTS `d1_graha8`;
CREATE TABLE `d1_graha8` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha8` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha8"
#


#
# Structure for table "d1_graha7"
#

DROP TABLE IF EXISTS `d1_graha7`;
CREATE TABLE `d1_graha7` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha7` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha7"
#


#
# Structure for table "d1_graha6"
#

DROP TABLE IF EXISTS `d1_graha6`;
CREATE TABLE `d1_graha6` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha6` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha6"
#


#
# Structure for table "d1_graha5"
#

DROP TABLE IF EXISTS `d1_graha5`;
CREATE TABLE `d1_graha5` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha5` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha5"
#


#
# Structure for table "d1_graha4"
#

DROP TABLE IF EXISTS `d1_graha4`;
CREATE TABLE `d1_graha4` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha4` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha4"
#


#
# Structure for table "d1_graha3"
#

DROP TABLE IF EXISTS `d1_graha3`;
CREATE TABLE `d1_graha3` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha3` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha3"
#


#
# Structure for table "d1_graha2"
#

DROP TABLE IF EXISTS `d1_graha2`;
CREATE TABLE `d1_graha2` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha2` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha2"
#


#
# Structure for table "d1_graha12"
#

DROP TABLE IF EXISTS `d1_graha12`;
CREATE TABLE `d1_graha12` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha12` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha12"
#


#
# Structure for table "d1_graha11"
#

DROP TABLE IF EXISTS `d1_graha11`;
CREATE TABLE `d1_graha11` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha11` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha11"
#


#
# Structure for table "d1_graha10"
#

DROP TABLE IF EXISTS `d1_graha10`;
CREATE TABLE `d1_graha10` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha10` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha10"
#


#
# Structure for table "d1_graha1"
#

DROP TABLE IF EXISTS `d1_graha1`;
CREATE TABLE `d1_graha1` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `chara_karaka` tinyint NOT NULL DEFAULT '0',
  `mrityu_bhaga` tinyint NOT NULL DEFAULT '0',
  `dignity` tinyint NOT NULL DEFAULT '0',
  `vakri` tinyint NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_graha` (`kundali_id`),
  KEY `idx_d1_graha_2` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_graha_3` (`chara_karaka`,`mrityu_bhaga`),
  KEY `idx_d1_graha_5` (`rasi_long`,`longitude`),
  KEY `idx_d1_graha_4` (`dignity`,`vakri`),
  KEY `idx_d1_graha_1` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_graha_6` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_graha1` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_graha1"
#


#
# Structure for table "d1_bbindu"
#

DROP TABLE IF EXISTS `d1_bbindu`;
CREATE TABLE `d1_bbindu` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `bhava` tinyint NOT NULL DEFAULT '0',
  `rasi` tinyint NOT NULL DEFAULT '0',
  `rasi_rate` tinyint NOT NULL DEFAULT '0',
  `naksatra` tinyint NOT NULL DEFAULT '0',
  `naksatra_pada` tinyint NOT NULL DEFAULT '0',
  `naksatra_rate` tinyint NOT NULL DEFAULT '0',
  `navamsa` tinyint NOT NULL DEFAULT '0',
  `rasi_long` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_d1_bbindu` (`kundali_id`),
  KEY `idx_d1_bbindu_1` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_bbindu_2` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_bbindu_3` (`rasi_long`,`longitude`),
  KEY `idx_d1_bbindu_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_bbindu` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

#
# Data for table "d1_bbindu"
#


#
# Structure for table "upagraha"
#

DROP TABLE IF EXISTS `upagraha`;
CREATE TABLE `upagraha` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_upagraha` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Moving mathematical points known as sub-planets or satellite';

#
# Data for table "upagraha"
#

INSERT INTO `upagraha` VALUES (0,0,'NIL','NIL'),(1,1,'UG1','DHUMA'),(2,2,'UG2','VYATIPAATA'),(3,3,'UG3','PARIVESHA'),(4,4,'UG4','INDRACHAAPA'),(5,5,'UG5','UPAKETU'),(6,6,'UG6','KAALA'),(7,7,'UG7','MRITYU'),(8,8,'UG8','ARTHAPRAHAARA'),(9,9,'UG9','YAMAGHANTAKA'),(10,10,'UG10','GULIKA'),(11,11,'UG11','MAANDI');

#
# Structure for table "vaara"
#

DROP TABLE IF EXISTS `vaara`;
CREATE TABLE `vaara` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_vaara` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Weekday';

#
# Data for table "vaara"
#

INSERT INTO `vaara` VALUES (0,0,'NIL','NIL'),(1,1,'SYVR','SURYA_VAARA'),(2,2,'CHVR','CHANDRA_VAARA'),(3,3,'MAVR','MANGALA_VAARA'),(4,4,'BUVR','BUDHA_VAARA'),(5,5,'GUVR','GURU_VAARA'),(6,6,'SKVR','SHUKRA_VAARA'),(7,7,'SAVR','SHANI_VAARA');

#
# Structure for table "varga"
#

DROP TABLE IF EXISTS `varga`;
CREATE TABLE `varga` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` smallint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_varga` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

#
# Data for table "varga"
#

INSERT INTO `varga` VALUES (0,0,'NIL','NIL'),(1,1,'D1','RASI'),(2,2,'D2','HORA'),(3,3,'D3','DREKKANA'),(4,4,'D4','CHATURTHAMSA'),(5,5,'D5','PANCHAMSA'),(6,6,'D6','SHASHTHAMSA'),(7,7,'D7','SAPTAMSA'),(8,8,'D8','ASHTAMSA'),(9,9,'D9','NAVAMSA'),(10,10,'D10','DASAMSA'),(11,11,'D11','RUDRAMSA'),(12,12,'D12','DWADASAMSA'),(13,16,'D16','SHODASAMSA'),(14,20,'D20','VIMSAMSA'),(15,24,'D24','CHATURVIMSAMSA'),(16,27,'D27','NAKSHATRAMSA'),(17,30,'D30','TRIMSAMSA'),(18,40,'D40','KHAVEDAMSA'),(19,45,'D45','AKSHAVEDAMSA'),(20,60,'D60','SHASHTYAMSA'),(21,81,'D81','NAVANAVAMSA'),(22,108,'D108','ASHTOTTARAMSA'),(23,144,'D144','DVADASDVADASAMSA');

#
# Structure for table "vim_dasa"
#

DROP TABLE IF EXISTS `vim_dasa`;
CREATE TABLE `vim_dasa` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_vim_dasa` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Vimshottari dasha';

#
# Data for table "vim_dasa"
#

INSERT INTO `vim_dasa` VALUES (0,0,'NIL','NIL'),(1,1,'SYVD','SURYA_DASA'),(2,2,'CHVD','CHANDRA_DASA'),(3,3,'MAVD','MANGALA_DASA'),(4,4,'RAVD','RAHU_DASA'),(5,5,'GUVD','GURU_DASA'),(6,6,'SAVD','SHANI_DASA'),(7,7,'BUVD','BUDHA_DASA'),(8,8,'KEVD','KETU_DASA'),(9,9,'SKVD','SHUKRA_DASA');
