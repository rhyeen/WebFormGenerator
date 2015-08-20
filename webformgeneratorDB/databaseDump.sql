-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: realitypd.com    Database: realiue2_realitypd
-- ------------------------------------------------------
-- Server version	5.5.42-37.1-log

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
-- Table structure for table `ability`
--

DROP TABLE IF EXISTS `ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ability` (
  `rpg` varchar(140) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `target` varchar(45) DEFAULT NULL,
  `targetNum` tinyint(4) DEFAULT NULL,
  `range` smallint(6) DEFAULT NULL,
  `radius` smallint(6) DEFAULT NULL,
  `radiusType` varchar(45) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`rpg`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ability`
--

LOCK TABLES `ability` WRITE;
/*!40000 ALTER TABLE `ability` DISABLE KEYS */;
INSERT INTO `ability` VALUES ('dales','Nightvision','Sense','Self',NULL,NULL,100,'Sphere','Target can see into darkness within radius with no penalties.'),('dales','Tuned smell','Sense','Self',NULL,NULL,500,'Sphere','Target can perceive any scent within radius and has advantage on Perception checks regarding smell.'),('dales','Tuned vision','Sense','Self',NULL,NULL,200,'Cone','Target can see any object within radius, unless the object is covered or hidden.  The target has advantage on Perception checks regarding sight.'),('dales','Tuned hearing','Sense','Self',NULL,NULL,100,'Sphere','Target can perceive any sound within radius and has advantage on Perception checks regarding hearing.'),('dales','Sense creature','Sense','Self',NULL,NULL,50,'Sphere','Target can detect any creature within radius.'),('dales','Deaf','Sense','Self',NULL,NULL,NULL,NULL,'Target is unable to hear.'),('dales','Blind','Sense','Self',NULL,NULL,NULL,NULL,'Target is unable to see.'),('dales','Parry','Defense','Self',NULL,5,NULL,NULL,'If target is wielding a melee weapon, he has +2 to dodge.'),('dales','Climb','Movement','Self',NULL,NULL,NULL,NULL,'Target can travel any direction on vertical surfaces at regular speed.'),('dales','Swim','Movement','Self',NULL,NULL,NULL,NULL,'Target can travel any direction through the liquid at regular speed.'),('dales','Fly','Movement','Self',NULL,NULL,NULL,NULL,'Target can travel any direction through the air at regular speed.     '),('dales','Heavy Strike','Action','Target',1,5,NULL,NULL,'Target can choose to attack with -5 AR and +10 DMG.');
/*!40000 ALTER TABLE `ability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abilityType`
--

DROP TABLE IF EXISTS `abilityType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abilityType` (
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abilityType`
--

LOCK TABLES `abilityType` WRITE;
/*!40000 ALTER TABLE `abilityType` DISABLE KEYS */;
INSERT INTO `abilityType` VALUES ('Action'),('Defense'),('Movement'),('Sense');
/*!40000 ALTER TABLE `abilityType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ammunition`
--

DROP TABLE IF EXISTS `ammunition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ammunition` (
  `rpg` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `ammunitionType` varchar(45) DEFAULT NULL,
  `quantityForValue` varchar(45) DEFAULT '1',
  PRIMARY KEY (`rpg`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ammunition`
--

LOCK TABLES `ammunition` WRITE;
/*!40000 ALTER TABLE `ammunition` DISABLE KEYS */;
INSERT INTO `ammunition` VALUES ('dales','Arrow','Arrow','10'),('dales','Bolt','Bolt','20'),('dales','Broom','None','10');
/*!40000 ALTER TABLE `ammunition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arcane`
--

DROP TABLE IF EXISTS `arcane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arcane` (
  `rpg` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `rarity` varchar(45) DEFAULT 'Common',
  PRIMARY KEY (`rpg`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arcane`
--

LOCK TABLES `arcane` WRITE;
/*!40000 ALTER TABLE `arcane` DISABLE KEYS */;
INSERT INTO `arcane` VALUES ('dales','Crystal','Common');
/*!40000 ALTER TABLE `arcane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor`
--

DROP TABLE IF EXISTS `armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armor` (
  `rpg` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `armorModifier` smallint(6) DEFAULT '0',
  `dodgeModifier` smallint(6) DEFAULT '0',
  `magicResistModifier` smallint(6) DEFAULT '0',
  PRIMARY KEY (`name`,`rpg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
INSERT INTO `armor` VALUES ('dales','No armor',0,0,0);
/*!40000 ALTER TABLE `armor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumable`
--

DROP TABLE IF EXISTS `consumable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumable` (
  `rpg` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `rarity` varchar(45) DEFAULT 'Common',
  `locality` varchar(140) DEFAULT NULL COMMENT 'Only for ingredients',
  `hiddenProperty` text,
  PRIMARY KEY (`rpg`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumable`
--

LOCK TABLES `consumable` WRITE;
/*!40000 ALTER TABLE `consumable` DISABLE KEYS */;
INSERT INTO `consumable` VALUES ('dales','Dry Weed','Common','Hot and dry',NULL),('dales','Potion of Healing','Common',NULL,'When drank, restores 20 health. \r\nWhen inspected under light, the liquid glimmers and is fairly transparent. \r\nWhen tasted, it has a sweet taste.\r\n');
/*!40000 ALTER TABLE `consumable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `damageType`
--

DROP TABLE IF EXISTS `damageType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `damageType` (
  `damageType` varchar(45) NOT NULL,
  PRIMARY KEY (`damageType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `damageType`
--

LOCK TABLES `damageType` WRITE;
/*!40000 ALTER TABLE `damageType` DISABLE KEYS */;
INSERT INTO `damageType` VALUES ('Acid'),('Bludgeoning'),('Cold'),('Fire'),('Force'),('Lightning'),('Piercing'),('Poison'),('Psychic'),('Slashing');
/*!40000 ALTER TABLE `damageType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `rpg` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `primaryType` varchar(45) DEFAULT NULL,
  `secondaryType` varchar(45) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`rpg`,`name`),
  KEY `item_rpg_idx` (`rpg`),
  KEY `item_itemType_idx` (`primaryType`),
  KEY `item_secondaryType_idx` (`secondaryType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('dales','Broom',2,NULL,'Miscellaneous',NULL,'Test'),('dales','Arrow',NULL,1,'Ammunition',NULL,'Standard Arrow'),('dales','Bolt',NULL,1,'Ammunition',NULL,'Standard Bolt'),('dales','Crystal',NULL,5,'Arcane',NULL,'Standard Crystal'),('dales','Potion of Healing',NULL,50,'Consumable','Potion','A vial that contains deep red liquid.'),('dales','Dry Weed',NULL,1,'Consumable','Ingredient',NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemType`
--

DROP TABLE IF EXISTS `itemType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemType` (
  `primaryType` varchar(45) NOT NULL,
  `secondaryType` varchar(45) NOT NULL,
  PRIMARY KEY (`primaryType`,`secondaryType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemType`
--

LOCK TABLES `itemType` WRITE;
/*!40000 ALTER TABLE `itemType` DISABLE KEYS */;
INSERT INTO `itemType` VALUES ('Ammunition',''),('Arcane',''),('Armor','Cloth'),('Armor','Heavy'),('Armor','Light'),('Armor','Medium'),('Armor','Other'),('Armor','Shield'),('Consumable','Ingredient'),('Consumable','Potion'),('Consumable','Scroll'),('Gear',''),('Melee Weapon','Advanced'),('Melee Weapon','Basic'),('Miscellaneous',''),('Ranged Weapon','Advanced'),('Ranged Weapon','Basic'),('Tool',''),('Valuable','');
/*!40000 ALTER TABLE `itemType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `name` varchar(45) NOT NULL,
  `description` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES ('Common',NULL),('Dwarven',NULL),('Elven',NULL),('Draconic',NULL),('Goblin',NULL),('Ancient',NULL),('Demonic',NULL),('Angelic',NULL),('Druidic',NULL),('Sylvan','Spoken by the Fey creatures.'),('Gurgle','Spoken by underwater intelligent creatures.');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `property` varchar(45) NOT NULL,
  `appliesTo` varchar(45) NOT NULL,
  PRIMARY KEY (`property`,`appliesTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES ('heavy','weapon'),('light','weapon'),('two-handed','weapon');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radiusType`
--

DROP TABLE IF EXISTS `radiusType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radiusType` (
  `radiusType` varchar(45) NOT NULL,
  PRIMARY KEY (`radiusType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiusType`
--

LOCK TABLES `radiusType` WRITE;
/*!40000 ALTER TABLE `radiusType` DISABLE KEYS */;
INSERT INTO `radiusType` VALUES ('Beam'),('Cone'),('Cylinder'),('Sphere');
/*!40000 ALTER TABLE `radiusType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rarity`
--

DROP TABLE IF EXISTS `rarity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rarity` (
  `rarity` varchar(45) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`rarity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rarity`
--

LOCK TABLES `rarity` WRITE;
/*!40000 ALTER TABLE `rarity` DISABLE KEYS */;
INSERT INTO `rarity` VALUES ('Common',1),('Uncommon',2),('Rare',3),('Legendary',4);
/*!40000 ALTER TABLE `rarity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpg`
--

DROP TABLE IF EXISTS `rpg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpg` (
  `name` varchar(140) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpg`
--

LOCK TABLES `rpg` WRITE;
/*!40000 ALTER TABLE `rpg` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `rpg` varchar(140) DEFAULT NULL,
  `name` varchar(140) NOT NULL,
  `attribute` enum('STR','DEX','INF','WIS') NOT NULL,
  `type` varchar(45) NOT NULL,
  `description` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES ('dales','Arcana','INF','CORE',NULL),('dales','Athletics','STR','CORE',NULL),('dales','Balance','DEX','CORE',NULL),('dales','Deception','INF','CORE',NULL),('dales','Insight','WIS','CORE',NULL),('dales','Inspection','WIS','CORE',NULL),('dales','Intimidation','STR','CORE',NULL),('dales','Lore','WIS','CORE',NULL),('dales','Nature','INF','CORE',NULL),('dales','Perception','WIS','CORE',NULL),('dales','Persuasion','INF','CORE',NULL),('dales','Sleight of hand','DEX','CORE',NULL),('dales','Stealth','DEX','CORE',NULL),('dales','Survival','WIS','CORE',NULL),('dales','Willpower','STR','CORE',NULL),('dales','Alchemy','INF','CORE','Test');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell`
--

DROP TABLE IF EXISTS `spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell` (
  `rpg` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `manaCost` tinyint(6) DEFAULT NULL,
  `castTime` varchar(45) DEFAULT NULL,
  `components` varchar(140) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `target` varchar(45) DEFAULT NULL,
  `targetNum` tinyint(4) DEFAULT NULL,
  `range` tinyint(6) DEFAULT NULL,
  `radius` tinyint(6) DEFAULT NULL,
  `radiusType` varchar(45) DEFAULT NULL,
  `damage` varchar(45) DEFAULT NULL,
  `damageType` varchar(45) DEFAULT NULL,
  `secondaryDamage` varchar(45) DEFAULT NULL,
  `secondaryDamageType` varchar(45) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`rpg`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell`
--

LOCK TABLES `spell` WRITE;
/*!40000 ALTER TABLE `spell` DISABLE KEYS */;
INSERT INTO `spell` VALUES ('dales','Forcewave',1,3,'1 action',NULL,NULL,'AoE',NULL,0,15,'Cone','1d12','Force',NULL,NULL,'Causes a strong force that knocks all inside AoE.');
/*!40000 ALTER TABLE `spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target`
--

DROP TABLE IF EXISTS `target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target` (
  `target` varchar(45) NOT NULL,
  PRIMARY KEY (`target`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target`
--

LOCK TABLES `target` WRITE;
/*!40000 ALTER TABLE `target` DISABLE KEYS */;
INSERT INTO `target` VALUES ('AoE'),('Self'),('Target'),('Touch');
/*!40000 ALTER TABLE `target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valuable`
--

DROP TABLE IF EXISTS `valuable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valuable` (
  `rpg` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `rarity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rpg`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valuable`
--

LOCK TABLES `valuable` WRITE;
/*!40000 ALTER TABLE `valuable` DISABLE KEYS */;
/*!40000 ALTER TABLE `valuable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon`
--

DROP TABLE IF EXISTS `weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon` (
  `rpg` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `range` smallint(6) DEFAULT NULL,
  `throw` smallint(6) DEFAULT NULL,
  `damage` varchar(45) DEFAULT '0',
  `damageType` varchar(45) DEFAULT NULL,
  `secondaryDamage` varchar(45) DEFAULT NULL,
  `secondaryDamageType` varchar(45) DEFAULT NULL,
  `property` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rpg`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon`
--

LOCK TABLES `weapon` WRITE;
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
INSERT INTO `weapon` VALUES ('dales','No weapon',NULL,NULL,'0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `weapon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-20 12:14:19
