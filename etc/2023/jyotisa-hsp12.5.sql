-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               8.0.24 - MySQL Community Server - GPL
-- Операционная система:         Win64
-- HeidiSQL Версия:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Дамп структуры для таблица jyotisa.d1_bhrigu_bindu
DROP TABLE IF EXISTS `d1_bhrigu_bindu`;
CREATE TABLE IF NOT EXISTS `d1_bhrigu_bindu` (
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
  UNIQUE KEY `idx_d1_bhrigu_bindu` (`kundali_id`),
  KEY `idx_d1_bhrigu_bindu_1` (`naksatra`,`naksatra_pada`),
  KEY `idx_d1_bhrigu_bindu_2` (`bhava`,`rasi`,`navamsa`),
  KEY `idx_d1_bhrigu_bindu_3` (`rasi_long`,`longitude`),
  KEY `idx_d1_bhrigu_bindu_4` (`rasi_rate`,`naksatra_rate`),
  CONSTRAINT `fk_d1_bhrigu_bindu` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_bhrigu_bindu: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_1
DROP TABLE IF EXISTS `d1_graha_1`;
CREATE TABLE IF NOT EXISTS `d1_graha_1` (
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
  CONSTRAINT `fk_d1_graha_1` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_1: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_10
DROP TABLE IF EXISTS `d1_graha_10`;
CREATE TABLE IF NOT EXISTS `d1_graha_10` (
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
  CONSTRAINT `fk_d1_graha_10` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_10: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_11
DROP TABLE IF EXISTS `d1_graha_11`;
CREATE TABLE IF NOT EXISTS `d1_graha_11` (
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
  CONSTRAINT `fk_d1_graha_11` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_11: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_12
DROP TABLE IF EXISTS `d1_graha_12`;
CREATE TABLE IF NOT EXISTS `d1_graha_12` (
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
  CONSTRAINT `fk_d1_graha_12` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_12: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_2
DROP TABLE IF EXISTS `d1_graha_2`;
CREATE TABLE IF NOT EXISTS `d1_graha_2` (
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
  CONSTRAINT `fk_d1_graha_2` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_2: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_3
DROP TABLE IF EXISTS `d1_graha_3`;
CREATE TABLE IF NOT EXISTS `d1_graha_3` (
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
  CONSTRAINT `fk_d1_graha_3` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_3: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_4
DROP TABLE IF EXISTS `d1_graha_4`;
CREATE TABLE IF NOT EXISTS `d1_graha_4` (
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
  CONSTRAINT `fk_d1_graha_4` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_4: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_5
DROP TABLE IF EXISTS `d1_graha_5`;
CREATE TABLE IF NOT EXISTS `d1_graha_5` (
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
  CONSTRAINT `fk_d1_graha_5` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_5: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_6
DROP TABLE IF EXISTS `d1_graha_6`;
CREATE TABLE IF NOT EXISTS `d1_graha_6` (
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
  CONSTRAINT `fk_d1_graha_6` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_6: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_7
DROP TABLE IF EXISTS `d1_graha_7`;
CREATE TABLE IF NOT EXISTS `d1_graha_7` (
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
  CONSTRAINT `fk_d1_graha_7` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_7: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_8
DROP TABLE IF EXISTS `d1_graha_8`;
CREATE TABLE IF NOT EXISTS `d1_graha_8` (
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
  CONSTRAINT `fk_d1_graha_8` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_8: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_graha_9
DROP TABLE IF EXISTS `d1_graha_9`;
CREATE TABLE IF NOT EXISTS `d1_graha_9` (
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
  CONSTRAINT `fk_d1_graha_9` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_graha_9: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_lagna_0
DROP TABLE IF EXISTS `d1_lagna_0`;
CREATE TABLE IF NOT EXISTS `d1_lagna_0` (
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
  CONSTRAINT `fk_d1_lagna_0` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_lagna_0: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_lagna_1
DROP TABLE IF EXISTS `d1_lagna_1`;
CREATE TABLE IF NOT EXISTS `d1_lagna_1` (
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
  CONSTRAINT `fk_d1_lagna_1` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_lagna_1: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_lagna_2
DROP TABLE IF EXISTS `d1_lagna_2`;
CREATE TABLE IF NOT EXISTS `d1_lagna_2` (
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
  CONSTRAINT `fk_d1_lagna_2` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_lagna_2: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_lagna_3
DROP TABLE IF EXISTS `d1_lagna_3`;
CREATE TABLE IF NOT EXISTS `d1_lagna_3` (
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
  CONSTRAINT `fk_d1_lagna_3` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_lagna_3: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_upagraha_1
DROP TABLE IF EXISTS `d1_upagraha_1`;
CREATE TABLE IF NOT EXISTS `d1_upagraha_1` (
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
  CONSTRAINT `fk_d1_upagraha_1` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_upagraha_1: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_upagraha_2
DROP TABLE IF EXISTS `d1_upagraha_2`;
CREATE TABLE IF NOT EXISTS `d1_upagraha_2` (
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
  CONSTRAINT `fk_d1_upagraha_2` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_upagraha_2: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_upagraha_3
DROP TABLE IF EXISTS `d1_upagraha_3`;
CREATE TABLE IF NOT EXISTS `d1_upagraha_3` (
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
  CONSTRAINT `fk_d1_upagraha_3` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_upagraha_3: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_upagraha_4
DROP TABLE IF EXISTS `d1_upagraha_4`;
CREATE TABLE IF NOT EXISTS `d1_upagraha_4` (
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
  CONSTRAINT `fk_d1_upagraha_4` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_upagraha_4: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.d1_upagraha_5
DROP TABLE IF EXISTS `d1_upagraha_5`;
CREATE TABLE IF NOT EXISTS `d1_upagraha_5` (
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
  CONSTRAINT `fk_d1_upagraha_5` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.d1_upagraha_5: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.entity
DROP TABLE IF EXISTS `entity`;
CREATE TABLE IF NOT EXISTS `entity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enabled` tinyint NOT NULL DEFAULT '1',
  `updated` bigint NOT NULL DEFAULT '20230629121500',
  `code` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_entity` (`name`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=ascii COMMENT='Information about an entity';

-- Дамп данных таблицы jyotisa.entity: ~2 rows (приблизительно)
REPLACE INTO `entity` (`id`, `enabled`, `updated`, `code`, `name`, `text`) VALUES
	(1, 0, 20211215093000, 'LONDON_20211215093000', 'Kundali: London 0-2021 years', NULL),
	(2, 1, 20230629184500, 'KYIV_20230629184500', 'Kundali: Kyiv 0-2051 years', NULL);

-- Дамп структуры для таблица jyotisa.event
DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_id` int NOT NULL DEFAULT '0',
  `location_id` int NOT NULL DEFAULT '0',
  `config_id` int NOT NULL DEFAULT '0',
  `enabled` tinyint NOT NULL DEFAULT '0',
  `updated` bigint NOT NULL DEFAULT '20230114121500',
  `type` tinyint NOT NULL DEFAULT '1',
  `code` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_event` (`entity_id`,`location_id`,`config_id`),
  KEY `idx_event_1` (`config_id`,`type`),
  KEY `idx_event_2` (`location_id`,`name`),
  CONSTRAINT `fk_event_1` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_event_2` FOREIGN KEY (`location_id`) REFERENCES `geo_location` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_event_3` FOREIGN KEY (`config_id`) REFERENCES `meta_configuration` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

-- Дамп данных таблицы jyotisa.event: ~2 rows (приблизительно)
REPLACE INTO `event` (`id`, `entity_id`, `location_id`, `config_id`, `enabled`, `updated`, `type`, `code`, `name`, `text`) VALUES
	(1, 1, 1, 278, 0, 20211215093000, 1, 'LONDON_20211215093000', 'Kundali: London 0-2021 years', 'TRUE_CITRA'),
	(2, 2, 2, 277, 1, 20230628173000, 1, 'KYIV_20230629184500', 'Kundali: Kyiv 0-2050 years', 'TRUE_CITRA');

-- Дамп структуры для таблица jyotisa.geo_location
DROP TABLE IF EXISTS `geo_location`;
CREATE TABLE IF NOT EXISTS `geo_location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_zone_id` int NOT NULL DEFAULT '0',
  `latitude` int NOT NULL DEFAULT '0',
  `longitude` int NOT NULL DEFAULT '0',
  `altitude` int NOT NULL DEFAULT '0',
  `pressure` float NOT NULL DEFAULT '1013.25',
  `temperature` float NOT NULL DEFAULT '11',
  `since_dt` bigint NOT NULL DEFAULT '20231211120000',
  `country` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `area` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_location_1` (`time_zone_id`,`latitude`,`longitude`,`since_dt`,`name`),
  CONSTRAINT `fk_location_1` FOREIGN KEY (`time_zone_id`) REFERENCES `meta_time_zone` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.geo_location: ~2 rows (приблизительно)
REPLACE INTO `geo_location` (`id`, `time_zone_id`, `latitude`, `longitude`, `altitude`, `pressure`, `temperature`, `since_dt`, `country`, `name`, `area`) VALUES
	(1, 1, 51300000, -70000, 11, 1013.25, 8, 20211215130000, 'UK', 'London', 'United Kingdom'),
	(2, 2, 50270000, 30310000, 180, 1013.25, 11, 20230628173000, 'UA', 'Kyiv', 'Ukraine');

-- Дамп структуры для таблица jyotisa.kundali
DROP TABLE IF EXISTS `kundali`;
CREATE TABLE IF NOT EXISTS `kundali` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` int NOT NULL DEFAULT '0',
  `datetime` bigint NOT NULL DEFAULT '20230114121500' COMMENT 'event datetime',
  `utc_offset` smallint NOT NULL DEFAULT '0' COMMENT 'actual time zone offset to UTC in seconds including DST',
  `ayanamsa` int NOT NULL DEFAULT '0',
  `julian_day` double NOT NULL DEFAULT '0' COMMENT 'event julday',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_kundali` (`event_id`,`datetime`),
  CONSTRAINT `fk_kundali_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.kundali: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.kundali_moment
DROP TABLE IF EXISTS `kundali_moment`;
CREATE TABLE IF NOT EXISTS `kundali_moment` (
  `kundali_id` int NOT NULL DEFAULT '0',
  `midday` double NOT NULL DEFAULT '0',
  `sunrise` double NOT NULL DEFAULT '0',
  `sunset` double NOT NULL DEFAULT '0',
  `moonrise` double NOT NULL DEFAULT '0',
  `moonset` double NOT NULL DEFAULT '0',
  UNIQUE KEY `uidx_moment` (`kundali_id`),
  CONSTRAINT `fk_moment_1` FOREIGN KEY (`kundali_id`) REFERENCES `kundali` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.kundali_moment: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.kundali_panchanga
DROP TABLE IF EXISTS `kundali_panchanga`;
CREATE TABLE IF NOT EXISTS `kundali_panchanga` (
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
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT COMMENT='In simple terms, "Panchānga" means the Day, Nakshatra (Star), Tithi, Yoga and Karana every day. It is a mirror of the sky.';

-- Дамп данных таблицы jyotisa.kundali_panchanga: ~0 rows (приблизительно)

-- Дамп структуры для таблица jyotisa.meta_ayanamsa
DROP TABLE IF EXISTS `meta_ayanamsa`;
CREATE TABLE IF NOT EXISTS `meta_ayanamsa` (
  `id` smallint NOT NULL DEFAULT '0',
  `fid` smallint NOT NULL DEFAULT '0',
  `code` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_ayanamsa` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Precision of equinoxes is the most popular translation to this word. It is defined as the angle by which the sidereal ecliptic of a celestial body is less than its tropical ecliptic longitude.';

-- Дамп данных таблицы jyotisa.meta_ayanamsa: ~256 rows (приблизительно)
REPLACE INTO `meta_ayanamsa` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'AY00', 'FAGAN_BRADLEY'),
	(1, 1, 'AY01', 'LAHIRI'),
	(2, 2, 'AY02', 'DELUCE'),
	(3, 3, 'AY03', 'BV_RAMAN'),
	(4, 4, 'AY04', 'USHA_SHASHI'),
	(5, 5, 'AY05', 'KRISHNAMURTI'),
	(6, 6, 'AY06', 'DJWHAL_KHOOL'),
	(7, 7, 'AY07', 'SHRI_YUKTESHWAR'),
	(8, 8, 'AY08', 'JN_BHASIN'),
	(9, 9, 'AY09', 'BABYL_KUGLER1'),
	(10, 10, 'AY10', 'BABYL_KUGLER2'),
	(11, 11, 'AY11', 'BABYL_KUGLER3'),
	(12, 12, 'AY12', 'BABYL_HUBER'),
	(13, 13, 'AY13', 'BABYL_MERCIER'),
	(14, 14, 'AY14', 'ALDEBARAN_15TAU'),
	(15, 15, 'AY15', 'HIPPARCHOS'),
	(16, 16, 'AY16', 'SASSANIAN'),
	(17, 17, 'AY17', 'GALCENT_0SAG'),
	(18, 18, 'AY18', 'J2000'),
	(19, 19, 'AY19', 'J1900'),
	(20, 20, 'AY20', 'B1950'),
	(21, 21, 'AY21', 'SURYA_SIDDHANTA'),
	(22, 22, 'AY22', 'SURYA_SIDDHANTA_MSUN'),
	(23, 23, 'AY23', 'ARYABHATA'),
	(24, 24, 'AY24', 'ARYABHATA_MSUN'),
	(25, 25, 'AY25', 'SS_REVATI'),
	(26, 26, 'AY26', 'SS_CITRA'),
	(27, 27, 'AY27', 'TRUE_CITRA'),
	(28, 28, 'AY28', 'TRUE_REVATI'),
	(29, 29, 'AY29', 'TRUE_PUSHYA'),
	(30, 30, 'AY30', 'GALCENT_RGILBRAND'),
	(31, 31, 'AY31', 'GALEQU_IAU1958'),
	(32, 32, 'AY32', 'GALEQU_TRUE'),
	(33, 33, 'AY33', 'GALEQU_MULA'),
	(34, 34, 'AY34', 'GALALIGN_MARDYKS'),
	(35, 35, 'AY35', 'TRUE_MULA'),
	(36, 36, 'AY36', 'GALCENT_MULA_WILHELM'),
	(37, 37, 'AY37', 'ARYABHATA_522'),
	(38, 38, 'AY38', 'BABYL_BRITTON'),
	(39, 39, 'AY39', 'TRUE_SHEORAN'),
	(40, 40, 'AY40', 'GALCENT_COCHRANE'),
	(41, 41, 'AY41', 'GALEQU_FIORENZA'),
	(42, 42, 'AY42', 'VALENS_MOON'),
	(43, 43, 'AY43', 'LAHIRI_1940'),
	(44, 44, 'AY44', 'LAHIRI_VP285'),
	(45, 45, 'AY45', 'KRISHNAMURTI_VP291'),
	(46, 46, 'AY46', 'LAHIRI_ICRC'),
	(47, 47, 'AY47', 'AY47'),
	(48, 48, 'AY48', 'AY48'),
	(49, 49, 'AY49', 'AY49'),
	(50, 50, 'AY50', 'AY50'),
	(51, 51, 'AY51', 'AY51'),
	(52, 52, 'AY52', 'AY52'),
	(53, 53, 'AY53', 'AY53'),
	(54, 54, 'AY54', 'AY54'),
	(55, 55, 'AY55', 'AY55'),
	(56, 56, 'AY56', 'AY56'),
	(57, 57, 'AY57', 'AY57'),
	(58, 58, 'AY58', 'AY58'),
	(59, 59, 'AY59', 'AY59'),
	(60, 60, 'AY60', 'AY60'),
	(61, 61, 'AY61', 'AY61'),
	(62, 62, 'AY62', 'AY62'),
	(63, 63, 'AY63', 'AY63'),
	(64, 64, 'AY64', 'AY64'),
	(65, 65, 'AY65', 'AY65'),
	(66, 66, 'AY66', 'AY66'),
	(67, 67, 'AY67', 'AY67'),
	(68, 68, 'AY68', 'AY68'),
	(69, 69, 'AY69', 'AY69'),
	(70, 70, 'AY70', 'AY70'),
	(71, 71, 'AY71', 'AY71'),
	(72, 72, 'AY72', 'AY72'),
	(73, 73, 'AY73', 'AY73'),
	(74, 74, 'AY74', 'AY74'),
	(75, 75, 'AY75', 'AY75'),
	(76, 76, 'AY76', 'AY76'),
	(77, 77, 'AY77', 'AY77'),
	(78, 78, 'AY78', 'AY78'),
	(79, 79, 'AY79', 'AY79'),
	(80, 80, 'AY80', 'AY80'),
	(81, 81, 'AY81', 'AY81'),
	(82, 82, 'AY82', 'AY82'),
	(83, 83, 'AY83', 'AY83'),
	(84, 84, 'AY84', 'AY84'),
	(85, 85, 'AY85', 'AY85'),
	(86, 86, 'AY86', 'AY86'),
	(87, 87, 'AY87', 'AY87'),
	(88, 88, 'AY88', 'AY88'),
	(89, 89, 'AY89', 'AY89'),
	(90, 90, 'AY90', 'AY90'),
	(91, 91, 'AY91', 'AY91'),
	(92, 92, 'AY92', 'AY92'),
	(93, 93, 'AY93', 'AY93'),
	(94, 94, 'AY94', 'AY94'),
	(95, 95, 'AY95', 'AY95'),
	(96, 96, 'AY96', 'AY96'),
	(97, 97, 'AY97', 'AY97'),
	(98, 98, 'AY98', 'AY98'),
	(99, 99, 'AY99', 'AY99'),
	(100, 100, 'AY100', 'AY100'),
	(101, 101, 'AY101', 'AY101'),
	(102, 102, 'AY102', 'AY102'),
	(103, 103, 'AY103', 'AY103'),
	(104, 104, 'AY104', 'AY104'),
	(105, 105, 'AY105', 'AY105'),
	(106, 106, 'AY106', 'AY106'),
	(107, 107, 'AY107', 'AY107'),
	(108, 108, 'AY108', 'AY108'),
	(109, 109, 'AY109', 'AY109'),
	(110, 110, 'AY110', 'AY110'),
	(111, 111, 'AY111', 'AY111'),
	(112, 112, 'AY112', 'AY112'),
	(113, 113, 'AY113', 'AY113'),
	(114, 114, 'AY114', 'AY114'),
	(115, 115, 'AY115', 'AY115'),
	(116, 116, 'AY116', 'AY116'),
	(117, 117, 'AY117', 'AY117'),
	(118, 118, 'AY118', 'AY118'),
	(119, 119, 'AY119', 'AY119'),
	(120, 120, 'AY120', 'AY120'),
	(121, 121, 'AY121', 'AY121'),
	(122, 122, 'AY122', 'AY122'),
	(123, 123, 'AY123', 'AY123'),
	(124, 124, 'AY124', 'AY124'),
	(125, 125, 'AY125', 'AY125'),
	(126, 126, 'AY126', 'AY126'),
	(127, 127, 'AY127', 'AY127'),
	(128, 128, 'AY128', 'AY128'),
	(129, 129, 'AY129', 'AY129'),
	(130, 130, 'AY130', 'AY130'),
	(131, 131, 'AY131', 'AY131'),
	(132, 132, 'AY132', 'AY132'),
	(133, 133, 'AY133', 'AY133'),
	(134, 134, 'AY134', 'AY134'),
	(135, 135, 'AY135', 'AY135'),
	(136, 136, 'AY136', 'AY136'),
	(137, 137, 'AY137', 'AY137'),
	(138, 138, 'AY138', 'AY138'),
	(139, 139, 'AY139', 'AY139'),
	(140, 140, 'AY140', 'AY140'),
	(141, 141, 'AY141', 'AY141'),
	(142, 142, 'AY142', 'AY142'),
	(143, 143, 'AY143', 'AY143'),
	(144, 144, 'AY144', 'AY144'),
	(145, 145, 'AY145', 'AY145'),
	(146, 146, 'AY146', 'AY146'),
	(147, 147, 'AY147', 'AY147'),
	(148, 148, 'AY148', 'AY148'),
	(149, 149, 'AY149', 'AY149'),
	(150, 150, 'AY150', 'AY150'),
	(151, 151, 'AY151', 'AY151'),
	(152, 152, 'AY152', 'AY152'),
	(153, 153, 'AY153', 'AY153'),
	(154, 154, 'AY154', 'AY154'),
	(155, 155, 'AY155', 'AY155'),
	(156, 156, 'AY156', 'AY156'),
	(157, 157, 'AY157', 'AY157'),
	(158, 158, 'AY158', 'AY158'),
	(159, 159, 'AY159', 'AY159'),
	(160, 160, 'AY160', 'AY160'),
	(161, 161, 'AY161', 'AY161'),
	(162, 162, 'AY162', 'AY162'),
	(163, 163, 'AY163', 'AY163'),
	(164, 164, 'AY164', 'AY164'),
	(165, 165, 'AY165', 'AY165'),
	(166, 166, 'AY166', 'AY166'),
	(167, 167, 'AY167', 'AY167'),
	(168, 168, 'AY168', 'AY168'),
	(169, 169, 'AY169', 'AY169'),
	(170, 170, 'AY170', 'AY170'),
	(171, 171, 'AY171', 'AY171'),
	(172, 172, 'AY172', 'AY172'),
	(173, 173, 'AY173', 'AY173'),
	(174, 174, 'AY174', 'AY174'),
	(175, 175, 'AY175', 'AY175'),
	(176, 176, 'AY176', 'AY176'),
	(177, 177, 'AY177', 'AY177'),
	(178, 178, 'AY178', 'AY178'),
	(179, 179, 'AY179', 'AY179'),
	(180, 180, 'AY180', 'AY180'),
	(181, 181, 'AY181', 'AY181'),
	(182, 182, 'AY182', 'AY182'),
	(183, 183, 'AY183', 'AY183'),
	(184, 184, 'AY184', 'AY184'),
	(185, 185, 'AY185', 'AY185'),
	(186, 186, 'AY186', 'AY186'),
	(187, 187, 'AY187', 'AY187'),
	(188, 188, 'AY188', 'AY188'),
	(189, 189, 'AY189', 'AY189'),
	(190, 190, 'AY190', 'AY190'),
	(191, 191, 'AY191', 'AY191'),
	(192, 192, 'AY192', 'AY192'),
	(193, 193, 'AY193', 'AY193'),
	(194, 194, 'AY194', 'AY194'),
	(195, 195, 'AY195', 'AY195'),
	(196, 196, 'AY196', 'AY196'),
	(197, 197, 'AY197', 'AY197'),
	(198, 198, 'AY198', 'AY198'),
	(199, 199, 'AY199', 'AY199'),
	(200, 200, 'AY200', 'AY200'),
	(201, 201, 'AY201', 'AY201'),
	(202, 202, 'AY202', 'AY202'),
	(203, 203, 'AY203', 'AY203'),
	(204, 204, 'AY204', 'AY204'),
	(205, 205, 'AY205', 'AY205'),
	(206, 206, 'AY206', 'AY206'),
	(207, 207, 'AY207', 'AY207'),
	(208, 208, 'AY208', 'AY208'),
	(209, 209, 'AY209', 'AY209'),
	(210, 210, 'AY210', 'AY210'),
	(211, 211, 'AY211', 'AY211'),
	(212, 212, 'AY212', 'AY212'),
	(213, 213, 'AY213', 'AY213'),
	(214, 214, 'AY214', 'AY214'),
	(215, 215, 'AY215', 'AY215'),
	(216, 216, 'AY216', 'AY216'),
	(217, 217, 'AY217', 'AY217'),
	(218, 218, 'AY218', 'AY218'),
	(219, 219, 'AY219', 'AY219'),
	(220, 220, 'AY220', 'AY220'),
	(221, 221, 'AY221', 'AY221'),
	(222, 222, 'AY222', 'AY222'),
	(223, 223, 'AY223', 'AY223'),
	(224, 224, 'AY224', 'AY224'),
	(225, 225, 'AY225', 'AY225'),
	(226, 226, 'AY226', 'AY226'),
	(227, 227, 'AY227', 'AY227'),
	(228, 228, 'AY228', 'AY228'),
	(229, 229, 'AY229', 'AY229'),
	(230, 230, 'AY230', 'AY230'),
	(231, 231, 'AY231', 'AY231'),
	(232, 232, 'AY232', 'AY232'),
	(233, 233, 'AY233', 'AY233'),
	(234, 234, 'AY234', 'AY234'),
	(235, 235, 'AY235', 'AY235'),
	(236, 236, 'AY236', 'AY236'),
	(237, 237, 'AY237', 'AY237'),
	(238, 238, 'AY238', 'AY238'),
	(239, 239, 'AY239', 'AY239'),
	(240, 240, 'AY240', 'AY240'),
	(241, 241, 'AY241', 'AY241'),
	(242, 242, 'AY242', 'AY242'),
	(243, 243, 'AY243', 'AY243'),
	(244, 244, 'AY244', 'AY244'),
	(245, 245, 'AY245', 'AY245'),
	(246, 246, 'AY246', 'AY246'),
	(247, 247, 'AY247', 'AY247'),
	(248, 248, 'AY248', 'AY248'),
	(249, 249, 'AY249', 'AY249'),
	(250, 250, 'AY250', 'AY250'),
	(251, 251, 'AY251', 'AY251'),
	(252, 252, 'AY252', 'AY252'),
	(253, 253, 'AY253', 'AY253'),
	(254, 254, 'AY254', 'AY254'),
	(255, 255, 'AYUR', 'AY_USER');

-- Дамп структуры для таблица jyotisa.meta_bhava
DROP TABLE IF EXISTS `meta_bhava`;
CREATE TABLE IF NOT EXISTS `meta_bhava` (
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
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='The houses are known as Bhavas or fields of action where the different areas of life are highlighted.';

-- Дамп данных таблицы jyotisa.meta_bhava: ~13 rows (приблизительно)
REPLACE INTO `meta_bhava` (`id`, `fid`, `trikona`, `kendra`, `apoklima`, `upachaya`, `apachaya`, `dusthana`, `panapara`, `chaturasra`, `maraka`, `trishadaya`, `code`, `name`) VALUES
	(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NIL', 'NIL'),
	(1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 'B1', 'TANU'),
	(2, 2, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 'B2', 'DHANA'),
	(3, 3, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 'B3', 'BHRATRI'),
	(4, 4, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 'B4', 'MATRI'),
	(5, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'B5', 'PUTRA'),
	(6, 6, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'B6', 'ARI'),
	(7, 7, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 'B7', 'KAMA'),
	(8, 8, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 'B8', 'AYUR'),
	(9, 9, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'B9', 'DHARMA'),
	(10, 10, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 'B10', 'KARMA'),
	(11, 11, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 'B11', 'LABHA'),
	(12, 12, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 'B12', 'VYAYA');

-- Дамп структуры для таблица jyotisa.meta_chara_karaka
DROP TABLE IF EXISTS `meta_chara_karaka`;
CREATE TABLE IF NOT EXISTS `meta_chara_karaka` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_chara_karaka` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- Дамп данных таблицы jyotisa.meta_chara_karaka: ~9 rows (приблизительно)
REPLACE INTO `meta_chara_karaka` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'AK', 'ATMA_KARAKA'),
	(2, 2, 'AmK', 'AMATYA_KARAKA'),
	(3, 3, 'BK', 'BHRATRI_KARAKA'),
	(4, 4, 'MK', 'MATRI_KARAKA'),
	(5, 5, 'PiK', 'PITRI_KARAKA'),
	(6, 6, 'PK', 'PUTRA_KARAKA'),
	(7, 7, 'GK', 'GNATI_KARAKA'),
	(8, 8, 'DK', 'DARA_KARAKA');

-- Дамп структуры для таблица jyotisa.meta_configuration
DROP TABLE IF EXISTS `meta_configuration`;
CREATE TABLE IF NOT EXISTS `meta_configuration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enabled` tinyint NOT NULL DEFAULT '1',
  `ayanamsa` smallint NOT NULL DEFAULT '27',
  `chara_karaka` tinyint NOT NULL DEFAULT '7',
  `year_duration` double NOT NULL DEFAULT '365.2425',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_configuration` (`ayanamsa`,`chara_karaka`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=ascii;

-- Дамп данных таблицы jyotisa.meta_configuration: ~6 rows (приблизительно)
REPLACE INTO `meta_configuration` (`id`, `enabled`, `ayanamsa`, `chara_karaka`, `year_duration`, `name`) VALUES
	(17, 1, 1, 7, 365.2425, 'LAHIRI'),
	(18, 1, 1, 8, 365.2425, 'LAHIRI'),
	(217, 1, 21, 7, 365.2425, 'SURYA_SIDDHANTA'),
	(218, 1, 21, 8, 365.2425, 'SURYA_SIDDHANTA'),
	(277, 1, 27, 7, 365.2425, 'TRUE_CITRA'),
	(278, 1, 27, 8, 365.2425, 'TRUE_CITRA');

-- Дамп структуры для таблица jyotisa.meta_db_info
DROP TABLE IF EXISTS `meta_db_info`;
CREATE TABLE IF NOT EXISTS `meta_db_info` (
  `id` tinyint NOT NULL DEFAULT '0',
  `updated` bigint NOT NULL DEFAULT '0',
  `version` smallint NOT NULL DEFAULT '1',
  `revision` smallint NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_dbinfo` (`version`,`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- Дамп данных таблицы jyotisa.meta_db_info: ~3 rows (приблизительно)
REPLACE INTO `meta_db_info` (`id`, `updated`, `version`, `revision`, `name`) VALUES
	(1, 20190711124500, 19, 0, 'Jyotisa DB v19'),
	(2, 20211211124500, 21, 0, 'Jyotisa DB v21'),
	(3, 20230629184500, 23, 0, 'Jyotisa DB v23');

-- Дамп структуры для таблица jyotisa.meta_dignity
DROP TABLE IF EXISTS `meta_dignity`;
CREATE TABLE IF NOT EXISTS `meta_dignity` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_dignity` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- Дамп данных таблицы jyotisa.meta_dignity: ~12 rows (приблизительно)
REPLACE INTO `meta_dignity` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'DG1', 'NEECHA'),
	(2, 2, 'DG2', 'DEFICIENT'),
	(3, 3, 'DG3', 'ADHISATRU'),
	(4, 4, 'DG4', 'SATRU'),
	(5, 5, 'DG5', 'SAMA'),
	(6, 6, 'DG6', 'MITRA'),
	(7, 7, 'DG7', 'ADHIMITRA'),
	(8, 8, 'DG8', 'SWAKSHETRA'),
	(9, 9, 'DG9', 'MULATRIKONA'),
	(10, 10, 'DG10', 'EXCELLENT'),
	(11, 11, 'DG11', 'UCCHA');

-- Дамп структуры для таблица jyotisa.meta_gender
DROP TABLE IF EXISTS `meta_gender`;
CREATE TABLE IF NOT EXISTS `meta_gender` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_gender` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Human gender';

-- Дамп данных таблицы jyotisa.meta_gender: ~2 rows (приблизительно)
REPLACE INTO `meta_gender` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, '0', 'FEMALE'),
	(1, 1, '1', 'MALE');

-- Дамп структуры для таблица jyotisa.meta_graha
DROP TABLE IF EXISTS `meta_graha`;
CREATE TABLE IF NOT EXISTS `meta_graha` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_graha` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Graha has considerable influence on the living beings';

-- Дамп данных таблицы jyotisa.meta_graha: ~13 rows (приблизительно)
REPLACE INTO `meta_graha` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'LG', 'LAGNA'),
	(1, 1, 'SY', 'SURYA'),
	(2, 2, 'CH', 'CHANDRA'),
	(3, 9, 'MA', 'MANGALA'),
	(4, 5, 'BU', 'BUDHA'),
	(5, 3, 'GU', 'GURU'),
	(6, 6, 'SK', 'SHUKRA'),
	(7, 8, 'SA', 'SHANI'),
	(8, 4, 'RA', 'RAHU'),
	(9, 7, 'KE', 'KETU'),
	(10, 10, 'SW', 'SWETA'),
	(11, 11, 'SM', 'SYAMA'),
	(12, 12, 'TE', 'TEEVRA');

-- Дамп структуры для таблица jyotisa.meta_house_system
DROP TABLE IF EXISTS `meta_house_system`;
CREATE TABLE IF NOT EXISTS `meta_house_system` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_system` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT COMMENT='House systems are different modes of presenting the houses in an astrology chart.';

-- Дамп данных таблицы jyotisa.meta_house_system: ~15 rows (приблизительно)
REPLACE INTO `meta_house_system` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 66, 'HSB', 'ALCABITIUS'),
	(2, 67, 'HSC', 'CAMPANUS'),
	(3, 69, 'HSE', 'EQUAL'),
	(4, 72, 'HSH', 'HORIZONTAL'),
	(5, 75, 'HSK', 'KOCH'),
	(6, 77, 'HSM', 'MORINUS'),
	(7, 79, 'HSO', 'PORPHYRIUS'),
	(8, 80, 'HSP', 'PLACIDUS'),
	(9, 82, 'HSR', 'REGIOMONTANUS'),
	(10, 84, 'HST', 'POLICH_PAGE'),
	(11, 85, 'HSU', 'KRUSINSKI'),
	(12, 86, 'HSV', 'VEHLOW'),
	(13, 87, 'HSW', 'WHOLE_SIGN'),
	(14, 88, 'HSX', 'MERIDIAN');

-- Дамп структуры для таблица jyotisa.meta_karana
DROP TABLE IF EXISTS `meta_karana`;
CREATE TABLE IF NOT EXISTS `meta_karana` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_karana` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Karana is a half of lunar day';

-- Дамп данных таблицы jyotisa.meta_karana: ~12 rows (приблизительно)
REPLACE INTO `meta_karana` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'KR1', 'BAVA'),
	(2, 2, 'KR2', 'BALAVA'),
	(3, 3, 'KR3', 'KAULAVA'),
	(4, 4, 'KR4', 'TAITULA'),
	(5, 5, 'KR5', 'GARIJA'),
	(6, 6, 'KR6', 'VANIJA'),
	(7, 7, 'KR7', 'VISHTI'),
	(8, 8, 'KR8', 'SAKUNA'),
	(9, 9, 'KR9', 'CHATUSHPADA'),
	(10, 10, 'KR10', 'NAGA'),
	(11, 11, 'KR11', 'KIMSTUGHNA');

-- Дамп структуры для таблица jyotisa.meta_lagna
DROP TABLE IF EXISTS `meta_lagna`;
CREATE TABLE IF NOT EXISTS `meta_lagna` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_lagna` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Lagna and some math points known as special ascendants';

-- Дамп данных таблицы jyotisa.meta_lagna: ~9 rows (приблизительно)
REPLACE INTO `meta_lagna` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'L0', 'JANMA_LAGNA'),
	(1, 1, 'L1', 'BHAVA_LAGNA'),
	(2, 2, 'L2', 'HORA_LAGNA'),
	(3, 3, 'L3', 'GHATI_LAGNA'),
	(4, 4, 'L4', 'VIGHATI_LAGNA'),
	(5, 5, 'L5', 'VARNADA_LAGNA'),
	(6, 6, 'L6', 'SREE_LAGNA'),
	(7, 7, 'L7', 'PRANAPADA_LAGNA'),
	(8, 8, 'L8', 'INDU_LAGNA');

-- Дамп структуры для таблица jyotisa.meta_maasa
DROP TABLE IF EXISTS `meta_maasa`;
CREATE TABLE IF NOT EXISTS `meta_maasa` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_maasa` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Lunar Month';

-- Дамп данных таблицы jyotisa.meta_maasa: ~14 rows (приблизительно)
REPLACE INTO `meta_maasa` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'MA1', 'MADHUSUDANA'),
	(2, 2, 'MA2', 'TRIVIKRAMA'),
	(3, 3, 'MA3', 'VAMANA'),
	(4, 4, 'MA4', 'SRIDHARA'),
	(5, 5, 'MA5', 'HRSIKESA'),
	(6, 6, 'MA6', 'PADMANABHA'),
	(7, 7, 'MA7', 'DAMODARA'),
	(8, 8, 'MA8', 'KESAVA'),
	(9, 9, 'MA9', 'NARAYANA'),
	(10, 10, 'MA10', 'MADHAVA'),
	(11, 11, 'MA11', 'GOVINDA'),
	(12, 12, 'MA12', 'VISNU'),
	(13, 13, 'MA13', 'PURADH');

-- Дамп структуры для таблица jyotisa.meta_naksatra
DROP TABLE IF EXISTS `meta_naksatra`;
CREATE TABLE IF NOT EXISTS `meta_naksatra` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `lord` tinyint NOT NULL DEFAULT '0',
  `start` int NOT NULL DEFAULT '0',
  `close` int NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_nakshatra` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='The word Naksha, meaning map, and Tara is a star. And the full meaning of the word Nakshatra tends to be the map of stars.';

-- Дамп данных таблицы jyotisa.meta_naksatra: ~28 rows (приблизительно)
REPLACE INTO `meta_naksatra` (`id`, `fid`, `lord`, `start`, `close`, `code`, `name`) VALUES
	(0, 0, 0, 0, 0, 'NIL', 'NIL'),
	(1, 1, 7, 0, 13200000, 'N1', 'ASHWINI'),
	(2, 2, 6, 13200000, 26400000, 'N2', 'BHARANI'),
	(3, 3, 1, 26400000, 40000000, 'N3', 'KRITTIKA'),
	(4, 4, 2, 40000000, 53200000, 'N4', 'ROHINI'),
	(5, 5, 9, 53200000, 66400000, 'N5', 'MRIGASHIRA'),
	(6, 6, 4, 66400000, 80000000, 'N6', 'ARDRA'),
	(7, 7, 3, 80000000, 93200000, 'N7', 'PUNARVASU'),
	(8, 8, 8, 93200000, 106400000, 'N8', 'PUSHYA'),
	(9, 9, 5, 106400000, 120000000, 'N9', 'ASHLESHA'),
	(10, 10, 7, 120000000, 133200000, 'N10', 'MAGHA'),
	(11, 11, 6, 133200000, 146400000, 'N11', 'PURVA_PHALGUNI'),
	(12, 12, 1, 146400000, 160000000, 'N12', 'UTTARA_PHALGUNI'),
	(13, 13, 2, 160000000, 173200000, 'N13', 'HASTA'),
	(14, 14, 9, 173200000, 186400000, 'N14', 'CHITRA'),
	(15, 15, 4, 186400000, 200000000, 'N15', 'SWATI'),
	(16, 16, 3, 200000000, 213200000, 'N16', 'VISHAKHA'),
	(17, 17, 8, 213200000, 226400000, 'N17', 'ANURADHA'),
	(18, 18, 5, 226400000, 240000000, 'N18', 'JYESHTHA'),
	(19, 19, 7, 240000000, 253200000, 'N19', 'MULA'),
	(20, 20, 6, 253200000, 266400000, 'N20', 'PURVA_ASHADHA'),
	(21, 21, 1, 266400000, 280000000, 'N21', 'UTTARA_ASHADHA'),
	(22, 22, 2, 280000000, 293200000, 'N22', 'SHRAVANA'),
	(23, 23, 9, 293200000, 306400000, 'N23', 'DHANISHTA'),
	(24, 24, 4, 306400000, 320000000, 'N24', 'SHATABHISHA'),
	(25, 25, 3, 320000000, 333200000, 'N25', 'PURVA_BHADRAPADA'),
	(26, 26, 8, 333200000, 346400000, 'N26', 'UTTARA_BHADRAPADA'),
	(27, 27, 5, 346400000, 360000000, 'N27', 'REVATI');

-- Дамп структуры для таблица jyotisa.meta_naksatra_pada
DROP TABLE IF EXISTS `meta_naksatra_pada`;
CREATE TABLE IF NOT EXISTS `meta_naksatra_pada` (
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
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Nakshatras are further divided into four quarters called Pada. Each pada is about 3°20’ long.';

-- Дамп данных таблицы jyotisa.meta_naksatra_pada: ~109 rows (приблизительно)
REPLACE INTO `meta_naksatra_pada` (`id`, `fid`, `naksatra`, `pada`, `rasi`, `navamsa`, `start`, `close`, `code`, `name`) VALUES
	(0, 0, 0, 0, 12, 0, 0, 0, 'NIL', 'NIL'),
	(1, 11, 1, 1, 1, 1, 0, 3200000, 'N1P1', 'ASH1'),
	(2, 12, 1, 2, 1, 2, 3200000, 6400000, 'N1P2', 'ASH2'),
	(3, 13, 1, 3, 1, 3, 6400000, 10000000, 'N1P3', 'ASH3'),
	(4, 14, 1, 4, 1, 4, 10000000, 13200000, 'N1P4', 'ASH4'),
	(5, 21, 2, 1, 1, 5, 13200000, 16400000, 'N2P1', 'BHA1'),
	(6, 22, 2, 2, 1, 6, 16400000, 20000000, 'N2P2', 'BHA2'),
	(7, 23, 2, 3, 1, 7, 20000000, 23200000, 'N2P3', 'BHA3'),
	(8, 24, 2, 4, 1, 8, 23200000, 26400000, 'N2P4', 'BHA4'),
	(9, 31, 3, 1, 1, 9, 26400000, 30000000, 'N3P1', 'KRI1'),
	(10, 32, 3, 2, 2, 10, 30000000, 33200000, 'N3P2', 'KRI2'),
	(11, 33, 3, 3, 2, 11, 33200000, 36400000, 'N3P3', 'KRI3'),
	(12, 34, 3, 4, 2, 12, 36400000, 40000000, 'N3P4', 'KRI4'),
	(13, 41, 4, 1, 2, 1, 40000000, 43200000, 'N4P1', 'ROH1'),
	(14, 42, 4, 2, 2, 2, 43200000, 46400000, 'N4P2', 'ROH2'),
	(15, 43, 4, 3, 2, 3, 46400000, 50000000, 'N4P3', 'ROH3'),
	(16, 44, 4, 4, 2, 4, 50000000, 53200000, 'N4P4', 'ROH4'),
	(17, 51, 5, 1, 2, 5, 53200000, 56400000, 'N5P1', 'MRG1'),
	(18, 52, 5, 2, 2, 6, 56400000, 60000000, 'N5P2', 'MRG2'),
	(19, 53, 5, 3, 3, 7, 60000000, 63200000, 'N5P3', 'MRG3'),
	(20, 54, 5, 4, 3, 8, 63200000, 66400000, 'N5P4', 'MRG4'),
	(21, 61, 6, 1, 3, 9, 66400000, 70000000, 'N6P1', 'ARD1'),
	(22, 62, 6, 2, 3, 10, 70000000, 73200000, 'N6P2', 'ARD2'),
	(23, 63, 6, 3, 3, 11, 73200000, 76400000, 'N6P3', 'ARD3'),
	(24, 64, 6, 4, 3, 12, 76400000, 80000000, 'N6P4', 'ARD4'),
	(25, 71, 7, 1, 3, 1, 80000000, 83200000, 'N7P1', 'PUN1'),
	(26, 72, 7, 2, 3, 2, 83200000, 86400000, 'N7P2', 'PUN2'),
	(27, 73, 7, 3, 3, 3, 86400000, 90000000, 'N7P3', 'PUN3'),
	(28, 74, 7, 4, 4, 4, 90000000, 93200000, 'N7P4', 'PUN4'),
	(29, 81, 8, 1, 4, 5, 93200000, 96400000, 'N8P1', 'PUS1'),
	(30, 82, 8, 2, 4, 6, 96400000, 100000000, 'N8P2', 'PUS2'),
	(31, 83, 8, 3, 4, 7, 100000000, 103200000, 'N8P3', 'PUS3'),
	(32, 84, 8, 4, 4, 8, 103200000, 106400000, 'N8P4', 'PUS4'),
	(33, 91, 9, 1, 4, 9, 106400000, 110000000, 'N9P1', 'ASL1'),
	(34, 92, 9, 2, 4, 10, 110000000, 113200000, 'N9P2', 'ASL2'),
	(35, 93, 9, 3, 4, 11, 113200000, 116400000, 'N9P3', 'ASL3'),
	(36, 94, 9, 4, 4, 12, 116400000, 120000000, 'N9P4', 'ASL4'),
	(37, 101, 10, 1, 5, 1, 120000000, 123200000, 'N10P1', 'MAG1'),
	(38, 102, 10, 2, 5, 2, 123200000, 126400000, 'N10P2', 'MAG2'),
	(39, 103, 10, 3, 5, 3, 126400000, 130000000, 'N10P3', 'MAG3'),
	(40, 104, 10, 4, 5, 4, 130000000, 133200000, 'N10P4', 'MAG4'),
	(41, 111, 11, 1, 5, 5, 133200000, 136400000, 'N11P1', 'PPH1'),
	(42, 112, 11, 2, 5, 6, 136400000, 140000000, 'N11P2', 'PPH2'),
	(43, 113, 11, 3, 5, 7, 140000000, 143200000, 'N11P3', 'PPH3'),
	(44, 114, 11, 4, 5, 8, 143200000, 146400000, 'N11P4', 'PPH4'),
	(45, 121, 12, 1, 5, 9, 146400000, 150000000, 'N12P1', 'UPH1'),
	(46, 122, 12, 2, 6, 10, 150000000, 153200000, 'N12P2', 'UPH2'),
	(47, 123, 12, 3, 6, 11, 153200000, 156400000, 'N12P3', 'UPH3'),
	(48, 124, 12, 4, 6, 12, 156400000, 160000000, 'N12P4', 'UPH4'),
	(49, 131, 13, 1, 6, 1, 160000000, 163200000, 'N13P1', 'HAS1'),
	(50, 132, 13, 2, 6, 2, 163200000, 166400000, 'N13P2', 'HAS2'),
	(51, 133, 13, 3, 6, 3, 166400000, 170000000, 'N13P3', 'HAS3'),
	(52, 134, 13, 4, 6, 4, 170000000, 173200000, 'N13P4', 'HAS4'),
	(53, 141, 14, 1, 6, 5, 173200000, 176400000, 'N14P1', 'CHT1'),
	(54, 142, 14, 2, 6, 6, 176400000, 180000000, 'N14P2', 'CHT2'),
	(55, 143, 14, 3, 7, 7, 180000000, 183200000, 'N14P3', 'CHT3'),
	(56, 144, 14, 4, 7, 8, 183200000, 186400000, 'N14P4', 'CHT4'),
	(57, 151, 15, 1, 7, 9, 186400000, 190000000, 'N15P1', 'SWA1'),
	(58, 152, 15, 2, 7, 10, 190000000, 193200000, 'N15P2', 'SWA2'),
	(59, 153, 15, 3, 7, 11, 193200000, 196400000, 'N15P3', 'SWA3'),
	(60, 154, 15, 4, 7, 12, 196400000, 200000000, 'N15P4', 'SWA4'),
	(61, 161, 16, 1, 7, 1, 200000000, 203200000, 'N16P1', 'VIS1'),
	(62, 162, 16, 2, 7, 2, 203200000, 206400000, 'N16P2', 'VIS2'),
	(63, 163, 16, 3, 7, 3, 206400000, 210000000, 'N16P3', 'VIS3'),
	(64, 164, 16, 4, 8, 4, 210000000, 213200000, 'N16P4', 'VIS4'),
	(65, 171, 17, 1, 8, 5, 213200000, 216400000, 'N17P1', 'ANU1'),
	(66, 172, 17, 2, 8, 6, 216400000, 220000000, 'N17P2', 'ANU2'),
	(67, 173, 17, 3, 8, 7, 220000000, 223200000, 'N17P3', 'ANU3'),
	(68, 174, 17, 4, 8, 8, 223200000, 226400000, 'N17P4', 'ANU4'),
	(69, 181, 18, 1, 8, 9, 226400000, 230000000, 'N18P1', 'JYE1'),
	(70, 182, 18, 2, 8, 10, 230000000, 233200000, 'N18P2', 'JYE2'),
	(71, 183, 18, 3, 8, 11, 233200000, 236400000, 'N18P3', 'JYE3'),
	(72, 184, 18, 4, 8, 12, 236400000, 240000000, 'N18P4', 'JYE4'),
	(73, 191, 19, 1, 9, 1, 240000000, 243200000, 'N19P1', 'MUL1'),
	(74, 192, 19, 2, 9, 2, 243200000, 246400000, 'N19P2', 'MUL2'),
	(75, 193, 19, 3, 9, 3, 246400000, 250000000, 'N19P3', 'MUL3'),
	(76, 194, 19, 4, 9, 4, 250000000, 253200000, 'N19P4', 'MUL4'),
	(77, 201, 20, 1, 9, 5, 253200000, 256400000, 'N20P1', 'PSH1'),
	(78, 202, 20, 2, 9, 6, 256400000, 260000000, 'N20P2', 'PSH2'),
	(79, 203, 20, 3, 9, 7, 260000000, 263200000, 'N20P3', 'PSH3'),
	(80, 204, 20, 4, 9, 8, 263200000, 266400000, 'N20P4', 'PSH4'),
	(81, 211, 21, 1, 9, 9, 266400000, 270000000, 'N21P1', 'USH1'),
	(82, 212, 21, 2, 10, 10, 270000000, 273200000, 'N21P2', 'USH2'),
	(83, 213, 21, 3, 10, 11, 273200000, 276400000, 'N21P3', 'USH3'),
	(84, 214, 21, 4, 10, 12, 276400000, 280000000, 'N21P4', 'USH4'),
	(85, 221, 22, 1, 10, 1, 280000000, 283200000, 'N22P1', 'SHR1'),
	(86, 222, 22, 2, 10, 2, 283200000, 286400000, 'N22P2', 'SHR2'),
	(87, 223, 22, 3, 10, 3, 286400000, 290000000, 'N22P3', 'SHR3'),
	(88, 224, 22, 4, 10, 4, 290000000, 293200000, 'N22P4', 'SHR4'),
	(89, 231, 23, 1, 10, 5, 293200000, 296400000, 'N23P1', 'DHA1'),
	(90, 232, 23, 2, 10, 6, 296400000, 300000000, 'N23P2', 'DHA2'),
	(91, 233, 23, 3, 11, 7, 300000000, 303200000, 'N23P3', 'DHA3'),
	(92, 234, 23, 4, 11, 8, 303200000, 306400000, 'N23P4', 'DHA4'),
	(93, 241, 24, 1, 11, 9, 306400000, 310000000, 'N24P1', 'SAT1'),
	(94, 242, 24, 2, 11, 10, 310000000, 313200000, 'N24P2', 'SAT2'),
	(95, 243, 24, 3, 11, 11, 313200000, 316400000, 'N24P3', 'SAT3'),
	(96, 244, 24, 4, 11, 12, 316400000, 320000000, 'N24P4', 'SAT4'),
	(97, 251, 25, 1, 11, 1, 320000000, 323200000, 'N25P1', 'PBH1'),
	(98, 252, 25, 2, 11, 2, 323200000, 326400000, 'N25P2', 'PBH2'),
	(99, 253, 25, 3, 11, 3, 326400000, 330000000, 'N25P3', 'PBH3'),
	(100, 254, 25, 4, 12, 4, 330000000, 333200000, 'N25P4', 'PBH4'),
	(101, 261, 26, 1, 12, 5, 333200000, 336400000, 'N26P1', 'UBH1'),
	(102, 262, 26, 2, 12, 6, 336400000, 340000000, 'N26P2', 'UBH2'),
	(103, 263, 26, 3, 12, 7, 340000000, 343200000, 'N26P3', 'UBH3'),
	(104, 264, 26, 4, 12, 8, 343200000, 346400000, 'N26P4', 'UBH4'),
	(105, 271, 27, 1, 12, 9, 346400000, 350000000, 'N27P1', 'REV1'),
	(106, 272, 27, 2, 12, 10, 350000000, 353200000, 'N27P2', 'REV2'),
	(107, 273, 27, 3, 12, 11, 353200000, 356400000, 'N27P3', 'REV3'),
	(108, 274, 27, 4, 12, 12, 356400000, 360000000, 'N27P4', 'REV4');

-- Дамп структуры для таблица jyotisa.meta_nitya_yoga
DROP TABLE IF EXISTS `meta_nitya_yoga`;
CREATE TABLE IF NOT EXISTS `meta_nitya_yoga` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_nitya_yoga` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Nitya means daily. These are daily yogas formed by the angular relationship between the Sun & Moon.';

-- Дамп данных таблицы jyotisa.meta_nitya_yoga: ~28 rows (приблизительно)
REPLACE INTO `meta_nitya_yoga` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'NY1', 'VISHKAMBHA'),
	(2, 2, 'NY2', 'PREETI'),
	(3, 3, 'NY3', 'AYUSHMANA'),
	(4, 4, 'NY4', 'SAUBHAGYA'),
	(5, 5, 'NY5', 'SOBHANA'),
	(6, 6, 'NY6', 'ATIGANDA'),
	(7, 7, 'NY7', 'SUKARMAN'),
	(8, 8, 'NY8', 'DHRITI'),
	(9, 9, 'NY9', 'SHULA'),
	(10, 10, 'NY10', 'GANDA'),
	(11, 11, 'NY11', 'VRIDDHI'),
	(12, 12, 'NY12', 'DHRUVA'),
	(13, 13, 'NY13', 'VYAGHATA'),
	(14, 14, 'NY14', 'HARSHANA'),
	(15, 15, 'NY15', 'VAJRA'),
	(16, 16, 'NY16', 'SIDDHI'),
	(17, 17, 'NY17', 'VYATIPATA'),
	(18, 18, 'NY18', 'VARIYAN'),
	(19, 19, 'NY19', 'PARIGHA'),
	(20, 20, 'NY20', 'SHIVA'),
	(21, 21, 'NY21', 'SIDDHA'),
	(22, 22, 'NY22', 'SADHYA'),
	(23, 23, 'NY23', 'SHUBHA'),
	(24, 24, 'NY24', 'SHUKLA'),
	(25, 25, 'NY25', 'BRAHMA'),
	(26, 26, 'NY26', 'INDRA'),
	(27, 27, 'NY27', 'VAIDHRITI');

-- Дамп структуры для таблица jyotisa.meta_rasi
DROP TABLE IF EXISTS `meta_rasi`;
CREATE TABLE IF NOT EXISTS `meta_rasi` (
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

-- Дамп данных таблицы jyotisa.meta_rasi: ~13 rows (приблизительно)
REPLACE INTO `meta_rasi` (`id`, `fid`, `movable`, `fixed`, `dual`, `tattva`, `lord`, `start`, `close`, `code`, `name`) VALUES
	(0, 0, 0, 0, 0, 0, 0, 0, 0, 'NIL', 'NIL'),
	(1, 1, 1, 0, 0, 2, 9, 0, 30000000, 'R1', 'MESHA'),
	(2, 2, 0, 1, 0, 3, 6, 30000000, 60000000, 'R2', 'VRISHABHA'),
	(3, 3, 0, 0, 1, 4, 5, 60000000, 90000000, 'R3', 'MITHUNA'),
	(4, 4, 1, 0, 0, 5, 2, 90000000, 120000000, 'R4', 'KARKATA'),
	(5, 5, 0, 1, 0, 2, 1, 120000000, 150000000, 'R5', 'SIMHA'),
	(6, 6, 0, 0, 1, 3, 5, 150000000, 180000000, 'R6', 'KANYA'),
	(7, 7, 1, 0, 0, 4, 6, 180000000, 210000000, 'R7', 'TULA'),
	(8, 8, 0, 1, 0, 5, 9, 210000000, 240000000, 'R8', 'VRISCHIKA'),
	(9, 9, 0, 0, 1, 2, 3, 240000000, 270000000, 'R9', 'DHANUS'),
	(10, 10, 1, 0, 0, 3, 8, 270000000, 300000000, 'R10', 'MAKARA'),
	(11, 11, 0, 1, 0, 4, 8, 300000000, 330000000, 'R11', 'KUMBHA'),
	(12, 12, 0, 0, 1, 5, 3, 330000000, 360000000, 'R12', 'MEENA');

-- Дамп структуры для таблица jyotisa.meta_tattva
DROP TABLE IF EXISTS `meta_tattva`;
CREATE TABLE IF NOT EXISTS `meta_tattva` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_tattva` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='All physical matter is made up of five elements, including earth, air, fire, water, and ether (or space).';

-- Дамп данных таблицы jyotisa.meta_tattva: ~6 rows (приблизительно)
REPLACE INTO `meta_tattva` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'TT1', 'AKASHA'),
	(2, 2, 'TT2', 'AGNI'),
	(3, 3, 'TT3', 'PRITHVI'),
	(4, 4, 'TT4', 'VAYU'),
	(5, 5, 'TT5', 'JALA');

-- Дамп структуры для таблица jyotisa.meta_time_zone
DROP TABLE IF EXISTS `meta_time_zone`;
CREATE TABLE IF NOT EXISTS `meta_time_zone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `raw_offset` smallint NOT NULL DEFAULT '0' COMMENT 'The offset from UTC (in seconds) for the given location. This does not take into effect daylight savings.',
  `dst_offset` smallint NOT NULL DEFAULT '0' COMMENT 'The offset for daylight-savings time in seconds. This will be zero if the time zone is not in Daylight Savings Time during the specified timestamp.',
  `time_zone_id` varchar(32) NOT NULL DEFAULT '' COMMENT 'a string containing the ID of the time zone, such as "America/Los_Angeles"',
  `time_zone_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'The long form name of the time zone.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_time_zone` (`time_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii COMMENT='A time zone is a region of the Earth that has adopted the same standard time, usually referred to as the local time.';

-- Дамп данных таблицы jyotisa.meta_time_zone: ~2 rows (приблизительно)
REPLACE INTO `meta_time_zone` (`id`, `raw_offset`, `dst_offset`, `time_zone_id`, `time_zone_name`) VALUES
	(1, 0, 3600, 'Europe/London', 'Europe London'),
	(2, 7200, 3600, 'Europe/Kiev', 'Europe Kyiv');

-- Дамп структуры для таблица jyotisa.meta_tithi
DROP TABLE IF EXISTS `meta_tithi`;
CREATE TABLE IF NOT EXISTS `meta_tithi` (
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
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Tithi in Jyotish is the lunar day. It is one of the most important limbs of the Panchang (Almanac).';

-- Дамп данных таблицы jyotisa.meta_tithi: ~31 rows (приблизительно)
REPLACE INTO `meta_tithi` (`id`, `fid`, `paksa`, `lord`, `start`, `close`, `code`, `name`) VALUES
	(0, 0, 0, 0, 0, 0, 'NIL', 'NIL'),
	(1, 1, 0, 1, 0, 12000000, 'S1', 'SHUKLA_PRATIPADA'),
	(2, 2, 0, 2, 12000000, 24000000, 'S2', 'SHUKLA_DWITIYA'),
	(3, 3, 0, 9, 24000000, 36000000, 'S3', 'SHUKLA_TRITIYA'),
	(4, 4, 0, 5, 36000000, 48000000, 'S4', 'SHUKLA_CHATURTHI'),
	(5, 5, 0, 3, 48000000, 60000000, 'S5', 'SHUKLA_PANCHAMI'),
	(6, 6, 0, 6, 60000000, 72000000, 'S6', 'SHUKLA_SHASHTHI'),
	(7, 7, 0, 8, 72000000, 84000000, 'S7', 'SHUKLA_SAPTAMI'),
	(8, 8, 0, 4, 84000000, 96000000, 'S8', 'SHUKLA_ASHTAMI'),
	(9, 9, 0, 1, 96000000, 108000000, 'S9', 'SHUKLA_NAVAMI'),
	(10, 10, 0, 2, 108000000, 120000000, 'S10', 'SHUKLA_DASHAMI'),
	(11, 11, 0, 9, 120000000, 132000000, 'S11', 'SHUKLA_EKADASI'),
	(12, 12, 0, 5, 132000000, 144000000, 'S12', 'SHUKLA_DWADASI'),
	(13, 13, 0, 3, 144000000, 156000000, 'S13', 'SHUKLA_TRAYODASI'),
	(14, 14, 0, 6, 156000000, 168000000, 'S14', 'SHUKLA_CHATURDASI'),
	(15, 15, 0, 8, 168000000, 180000000, 'S15', 'SHUKLA_POORNIMA'),
	(16, 1, 1, 1, 180000000, 192000000, 'K1', 'KRISHNA_PRATIPADA'),
	(17, 2, 1, 2, 192000000, 204000000, 'K2', 'KRISHNA_DWITIYA'),
	(18, 3, 1, 9, 204000000, 216000000, 'K3', 'KRISHNA_TRITIYA'),
	(19, 4, 1, 5, 216000000, 228000000, 'K4', 'KRISHNA_CHATURTHI'),
	(20, 5, 1, 3, 228000000, 240000000, 'K5', 'KRISHNA_PANCHAMI'),
	(21, 6, 1, 6, 240000000, 252000000, 'K6', 'KRISHNA_SHASHTHI'),
	(22, 7, 1, 8, 252000000, 264000000, 'K7', 'KRISHNA_SAPTAMI'),
	(23, 8, 1, 4, 264000000, 276000000, 'K8', 'KRISHNA_ASHTAMI'),
	(24, 9, 1, 1, 276000000, 288000000, 'K9', 'KRISHNA_NAVAMI'),
	(25, 10, 1, 2, 288000000, 300000000, 'K10', 'KRISHNA_DASHAMI'),
	(26, 11, 1, 9, 300000000, 312000000, 'K11', 'KRISHNA_EKADASI'),
	(27, 12, 1, 5, 312000000, 324000000, 'K12', 'KRISHNA_DWADASI'),
	(28, 13, 1, 3, 324000000, 336000000, 'K13', 'KRISHNA_TRAYODASI'),
	(29, 14, 1, 6, 336000000, 348000000, 'K14', 'KRISHNA_CHATURDASI'),
	(30, 15, 1, 4, 348000000, 360000000, 'K15', 'KRISHNA_AMAVASYA');

-- Дамп структуры для таблица jyotisa.meta_upagraha
DROP TABLE IF EXISTS `meta_upagraha`;
CREATE TABLE IF NOT EXISTS `meta_upagraha` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_upagraha` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='An Upagraha in Jyotish is a secondary planet which holds lesser but useful importance than the primary nine planets.';

-- Дамп данных таблицы jyotisa.meta_upagraha: ~12 rows (приблизительно)
REPLACE INTO `meta_upagraha` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'UG1', 'DHUMA'),
	(2, 2, 'UG2', 'VYATIPAATA'),
	(3, 3, 'UG3', 'PARIVESHA'),
	(4, 4, 'UG4', 'INDRACHAAPA'),
	(5, 5, 'UG5', 'UPAKETU'),
	(6, 6, 'UG6', 'KAALA'),
	(7, 7, 'UG7', 'MRITYU'),
	(8, 8, 'UG8', 'ARTHAPRAHAARA'),
	(9, 9, 'UG9', 'YAMAGHANTAKA'),
	(10, 10, 'UG10', 'GULIKA'),
	(11, 11, 'UG11', 'MAANDI');

-- Дамп структуры для таблица jyotisa.meta_vaara
DROP TABLE IF EXISTS `meta_vaara`;
CREATE TABLE IF NOT EXISTS `meta_vaara` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_vaara` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Vaara refers to the day of the week. In Vedic Astrology, a day starts from one Sunrise and ends at the next Sunrise.';

-- Дамп данных таблицы jyotisa.meta_vaara: ~8 rows (приблизительно)
REPLACE INTO `meta_vaara` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'SYVR', 'SURYA_VAARA'),
	(2, 2, 'CHVR', 'CHANDRA_VAARA'),
	(3, 3, 'MAVR', 'MANGALA_VAARA'),
	(4, 4, 'BUVR', 'BUDHA_VAARA'),
	(5, 5, 'GUVR', 'GURU_VAARA'),
	(6, 6, 'SKVR', 'SHUKRA_VAARA'),
	(7, 7, 'SAVR', 'SHANI_VAARA');

-- Дамп структуры для таблица jyotisa.meta_varga
DROP TABLE IF EXISTS `meta_varga`;
CREATE TABLE IF NOT EXISTS `meta_varga` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` smallint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_varga` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='The Divisional (Vargha) charts take us to the more intense and more in-depth knowledge in Vedic Astrology.';

-- Дамп данных таблицы jyotisa.meta_varga: ~24 rows (приблизительно)
REPLACE INTO `meta_varga` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'D1', 'RASI'),
	(2, 2, 'D2', 'HORA'),
	(3, 3, 'D3', 'DREKKANA'),
	(4, 4, 'D4', 'CHATURTHAMSA'),
	(5, 5, 'D5', 'PANCHAMSA'),
	(6, 6, 'D6', 'SHASHTHAMSA'),
	(7, 7, 'D7', 'SAPTAMSA'),
	(8, 8, 'D8', 'ASHTAMSA'),
	(9, 9, 'D9', 'NAVAMSA'),
	(10, 10, 'D10', 'DASAMSA'),
	(11, 11, 'D11', 'RUDRAMSA'),
	(12, 12, 'D12', 'DWADASAMSA'),
	(13, 16, 'D16', 'SHODASAMSA'),
	(14, 20, 'D20', 'VIMSAMSA'),
	(15, 24, 'D24', 'CHATURVIMSAMSA'),
	(16, 27, 'D27', 'NAKSHATRAMSA'),
	(17, 30, 'D30', 'TRIMSAMSA'),
	(18, 40, 'D40', 'KHAVEDAMSA'),
	(19, 45, 'D45', 'AKSHAVEDAMSA'),
	(20, 60, 'D60', 'SHASHTYAMSA'),
	(21, 81, 'D81', 'NAVANAVAMSA'),
	(22, 108, 'D108', 'ASHTOTTARAMSA'),
	(23, 144, 'D144', 'DVADASDVADASAMSA');

-- Дамп структуры для таблица jyotisa.meta_vimsottari_dasa
DROP TABLE IF EXISTS `meta_vimsottari_dasa`;
CREATE TABLE IF NOT EXISTS `meta_vimsottari_dasa` (
  `id` tinyint NOT NULL DEFAULT '0',
  `fid` tinyint NOT NULL DEFAULT '0',
  `code` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_vimsottari_dasa` (`fid`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Vimshottari dasha plays very prominent role in Vedic Astrology due to its accuracy for predicting the time for happening of certain event';

-- Дамп данных таблицы jyotisa.meta_vimsottari_dasa: ~10 rows (приблизительно)
REPLACE INTO `meta_vimsottari_dasa` (`id`, `fid`, `code`, `name`) VALUES
	(0, 0, 'NIL', 'NIL'),
	(1, 1, 'SYVD', 'SURYA_DASA'),
	(2, 2, 'CHVD', 'CHANDRA_DASA'),
	(3, 3, 'MAVD', 'MANGALA_DASA'),
	(4, 4, 'RAVD', 'RAHU_DASA'),
	(5, 5, 'GUVD', 'GURU_DASA'),
	(6, 6, 'SAVD', 'SHANI_DASA'),
	(7, 7, 'BUVD', 'BUDHA_DASA'),
	(8, 8, 'KEVD', 'KETU_DASA'),
	(9, 9, 'SKVD', 'SHUKRA_DASA');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
