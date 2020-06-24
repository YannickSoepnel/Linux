-- MySQL dump 10.13  Distrib 8.0.19, for osx10.14 (x86_64)
--
-- Host: localhost    Database: stageproject
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acties_db`
--

DROP TABLE IF EXISTS `acties_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acties_db` (
  `actie_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `score1` int DEFAULT NULL,
  `score2` int DEFAULT NULL,
  PRIMARY KEY (`actie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acties_db`
--

LOCK TABLES `acties_db` WRITE;
/*!40000 ALTER TABLE `acties_db` DISABLE KEYS */;
INSERT INTO `acties_db` VALUES (1,'log',1,11),(2,'alert',12,20),(3,'ban',21,1000);
/*!40000 ALTER TABLE `acties_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts_db`
--

DROP TABLE IF EXISTS `alerts_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts_db` (
  `alert_id` int NOT NULL AUTO_INCREMENT,
  `applicatie` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `source_ip` varchar(255) DEFAULT NULL,
  `destination_ip` varchar(255) DEFAULT NULL,
  `source_country` varchar(255) DEFAULT NULL,
  `document_type` varchar(255) DEFAULT NULL,
  `unieke_data` longtext,
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=382582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts_db`
--

LOCK TABLES `alerts_db` WRITE;
/*!40000 ALTER TABLE `alerts_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicaties_db`
--

DROP TABLE IF EXISTS `applicaties_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicaties_db` (
  `applicatie_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`applicatie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicaties_db`
--

LOCK TABLES `applicaties_db` WRITE;
/*!40000 ALTER TABLE `applicaties_db` DISABLE KEYS */;
INSERT INTO `applicaties_db` VALUES (1,'duckhunt',1),(2,'honeypot',6),(3,'logprocessor',6),(4,'palo alto',1);
/*!40000 ALTER TABLE `applicaties_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequenties_db`
--

DROP TABLE IF EXISTS `frequenties_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frequenties_db` (
  `frequentie_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value1` int DEFAULT NULL,
  `value2` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`frequentie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequenties_db`
--

LOCK TABLES `frequenties_db` WRITE;
/*!40000 ALTER TABLE `frequenties_db` DISABLE KEYS */;
INSERT INTO `frequenties_db` VALUES (1,'Eerste frequentie',1,20,1),(2,'Tweede frequentie',21,50,6),(3,'Derde frequentie',51,8,15);
/*!40000 ALTER TABLE `frequenties_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landen_db`
--

DROP TABLE IF EXISTS `landen_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landen_db` (
  `land_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`land_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landen_db`
--

LOCK TABLES `landen_db` WRITE;
/*!40000 ALTER TABLE `landen_db` DISABLE KEYS */;
INSERT INTO `landen_db` VALUES (1,'Aruba',4),(2,'Afghanistan',4),(3,'Angola',4),(4,'Anguilla',4),(5,'Åland Islands',4),(6,'Albania',4),(7,'Andorra',4),(8,'United Arab Emirates',4),(9,'Argentina',4),(10,'Armenia',4),(11,'American Samoa',4),(12,'Antarctica',4),(13,'French Southern Territories',4),(14,'Antigua and Barbuda',4),(15,'Australia',4),(16,'Austria',4),(17,'Azerbaijan',4),(18,'Burundi',4),(19,'Belgium',1),(20,'Benin',4),(21,'Bonaire, Sint Eustatius and Saba',4),(22,'Burkina Faso',4),(23,'Bangladesh',4),(24,'Bulgaria',4),(25,'Bahrain',4),(26,'Bahamas',4),(27,'Bosnia and Herzegovina',4),(28,'Saint Barthélemy',4),(29,'Belarus',4),(30,'Belize',4),(31,'Bermuda',4),(32,'Bolivia',4),(33,'Brazil',4),(34,'Barbados',4),(35,'Brunei Darussalam',4),(36,'Bhutan',4),(37,'Bouvet Island',4),(38,'Botswana',4),(39,'Central African Republic',4),(40,'Canada',4),(41,'Cocos (Keeling) Islands',4),(42,'Switzerland',2),(43,'Chile',4),(44,'China',4),(45,'Côte d\'Ivoire',4),(46,'Cameroon',4),(47,'Congo, The Democratic Republic of the',4),(48,'Congo',4),(49,'Cook Islands',4),(50,'Colombia',4),(51,'Comoros',4),(52,'Cabo Verde',4),(53,'Costa Rica',4),(54,'Cuba',4),(55,'Curaçao',4),(56,'Christmas Island',4),(57,'Cayman Islands',4),(58,'Cyprus',4),(59,'Czechia',4),(60,'Germany',1),(61,'Djibouti',4),(62,'Dominica',4),(63,'Denmark',1),(64,'Dominican Republic',4),(65,'Algeria',4),(66,'Ecuador',4),(67,'Egypt',4),(68,'Eritrea',4),(69,'Western Sahara',4),(70,'Spain',2),(71,'Estonia',4),(72,'Ethiopia',4),(73,'Finland',2),(74,'Fiji',4),(75,'Falkland Islands (Malvinas)',4),(76,'France',1),(77,'Faroe Islands',4),(78,'Micronesia, Federated States of',4),(79,'Gabon',4),(80,'United Kingdom',2),(81,'Georgia',4),(82,'Guernsey',4),(83,'Ghana',4),(84,'Gibraltar',4),(85,'Guinea',4),(86,'Guadeloupe',4),(87,'Gambia',4),(88,'Guinea-Bissau',4),(89,'Equatorial Guinea',4),(90,'Greece',2),(91,'Grenada',4),(92,'Greenland',4),(93,'Guatemala',4),(94,'French Guiana',4),(95,'Guam',4),(96,'Guyana',4),(97,'Hong Kong',4),(98,'Heard Island and McDonald Islands',4),(99,'Honduras',4),(100,'Croatia',4),(101,'Haiti',4),(102,'Hungary',4),(103,'Indonesia',4),(104,'Isle of Man',4),(105,'India',4),(106,'British Indian Ocean Territory',4),(107,'Ireland',4),(108,'Iran, Islamic Republic of',4),(109,'Iraq',4),(110,'Iceland',4),(111,'Israel',4),(112,'Italy',2),(113,'Jamaica',4),(114,'Jersey',4),(115,'Jordan',4),(116,'Japan',4),(117,'Kazakhstan',4),(118,'Kenya',4),(119,'Kyrgyzstan',4),(120,'Cambodia',4),(121,'Kiribati',4),(122,'Saint Kitts and Nevis',4),(123,'Korea, Republic of',4),(124,'Kuwait',4),(125,'Lao People\'s Democratic Republic',4),(126,'Lebanon',4),(127,'Liberia',4),(128,'Libya',4),(129,'Saint Lucia',4),(130,'Liechtenstein',2),(131,'Sri Lanka',4),(132,'Lesotho',4),(133,'Lithuania',4),(134,'Luxembourg',2),(135,'Latvia',4),(136,'Macao',4),(137,'Saint Martin (French part)',4),(138,'Morocco',4),(139,'Monaco',2),(140,'Moldova',4),(141,'Madagascar',4),(142,'Maldives',4),(143,'Mexico',4),(144,'Marshall Islands',4),(145,'North Macedonia',4),(146,'Mali',4),(147,'Malta',2),(148,'Myanmar',4),(149,'Montenegro',4),(150,'Mongolia',4),(151,'Northern Mariana Islands',4),(152,'Mozambique',4),(153,'Mauritania',4),(154,'Montserrat',4),(155,'Martinique',4),(156,'Mauritius',4),(157,'Malawi',4),(158,'Malaysia',4),(159,'Mayotte',4),(160,'Namibia',4),(161,'New Caledonia',4),(162,'Niger',4),(163,'Norfolk Island',4),(164,'Nigeria',4),(165,'Nicaragua',4),(166,'Niue',4),(167,'Netherlands',-2),(168,'Norway',4),(169,'Nepal',4),(170,'Nauru',4),(171,'New Zealand',4),(172,'Oman',4),(173,'Pakistan',4),(174,'Panama',4),(175,'Pitcairn',4),(176,'Peru',4),(177,'Philippines',4),(178,'Palau',4),(179,'Papua New Guinea',4),(180,'Poland',4),(181,'Puerto Rico',4),(182,'Korea, Democratic People\'s Republic of',4),(183,'Portugal',2),(184,'Paraguay',4),(185,'Palestine, State of',4),(186,'French Polynesia',4),(187,'Qatar',4),(188,'Réunion',4),(189,'Romania',4),(190,'Russia',4),(191,'Rwanda',4),(192,'Saudi Arabia',4),(193,'Sudan',4),(194,'Senegal',4),(195,'Singapore',4),(196,'South Georgia and the South Sandwich Islands',4),(197,'Saint Helena, Ascension and Tristan da Cunha',4),(198,'Svalbard and Jan Mayen',4),(199,'Solomon Islands',4),(200,'Sierra Leone',4),(201,'El Salvador',4),(202,'San Marino',4),(203,'Somalia',4),(204,'Saint Pierre and Miquelon',4),(205,'Serbia',4),(206,'South Sudan',4),(207,'Sao Tome and Principe',4),(208,'Suriname',4),(209,'Slovakia',4),(210,'Slovenia',4),(211,'Sweden',2),(212,'Eswatini',4),(213,'Sint Maarten (Dutch part)',4),(214,'Seychelles',4),(215,'Syria',4),(216,'Turks and Caicos Islands',4),(217,'Chad',4),(218,'Togo',4),(219,'Thailand',4),(220,'Tajikistan',4),(221,'Tokelau',4),(222,'Turkmenistan',4),(223,'Timor-Leste',4),(224,'Tonga',4),(225,'Trinidad and Tobago',4),(226,'Tunisia',4),(227,'Turkey',4),(228,'Tuvalu',4),(229,'Taiwan',4),(230,'Tanzania',4),(231,'Uganda',4),(232,'Ukraine',4),(233,'United States Minor Outlying Islands',4),(234,'Uruguay',4),(235,'United States',4),(236,'Uzbekistan',4),(237,'Holy See (Vatican City State)',4),(238,'Saint Vincent and the Grenadines',4),(239,'Venezuela',4),(240,'Virgin Islands, British',4),(241,'Virgin Islands, U.S.',4),(242,'Vietnam',4),(243,'Vanuatu',4),(244,'Wallis and Futuna',4),(245,'Samoa',4),(246,'Yemen',4),(247,'South Africa',4),(248,'Zambia',4),(249,'Zimbabwe',4),(250,'None',4);
/*!40000 ALTER TABLE `landen_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules_db`
--

DROP TABLE IF EXISTS `rules_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rules_db` (
  `rule_db_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rule_code` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`rule_db_id`),
  UNIQUE KEY `rule_code_UNIQUE` (`rule_code`)
) ENGINE=InnoDB AUTO_INCREMENT=940 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules_db`
--

LOCK TABLES `rules_db` WRITE;
/*!40000 ALTER TABLE `rules_db` DISABLE KEYS */;
INSERT INTO `rules_db` VALUES (773,'Illegal Content-Type header',920470,1,732),(774,'ET USER_AGENTS Suspicious User-Agent (InfoBot)',2011276,1,72),(775,'ET INFO HTTP Request to Suspicious *.cloud Domain',2027874,1,585),(776,'SQLi bypass attempt by ticks or backticks detected.',942510,2,15636),(777,'Remote Command Execution: Windows Command Injection',932115,5,2999),(778,'ET WEB_SERVER Exploit Suspected PHP Injection Attack (cmd=)',2010920,2,114),(779,'URL Encoding Abuse Attack Attempt',920240,1,15),(780,'Host header is a numeric IP address',920350,1,10968),(783,'Remote Command Execution: Unix Shell Code Found',932160,5,246),(784,'Path Traversal Attack (/../)',930110,1,1959),(785,'GET or HEAD Request with Transfer-Encoding.',920171,1,21686),(786,'SQL Injection Attack Detected via libinjection',942100,5,3140),(787,'Remote Command Execution: Windows Command Injection',932110,5,581),(788,'Restricted File Access Attempt',930130,1,883),(789,'Request Containing Content, but Missing Content-Type header',920340,1,1841),(790,'XSS Attack Detected via libinjection',941100,5,1866),(791,'ET POLICY curl User-Agent Outbound',2013028,1,686),(792,'ET POLICY Http Client Body contains pwd= in cleartext',2012888,1,390),(793,'ET POLICY Unsupported/Fake FireFox Version 1.',2016876,1,2),(794,'Looking for integer overflow attacks, these are taken from skipfish, except 3.0.00738585072007e-308 is the \\\"magic number\\\" crash',942220,1,824),(795,'PHP Injection Attack: Variable Function Call Found',933210,3,216),(796,'Detects Postgres pg_sleep injection, waitfor delay attacks and database shutdown attempts',942280,2,31),(797,'ET INFO User-Agent (python-requests) Inbound to Webserver',2017515,1,458),(798,'Detects MySQL charset switch and MSSQL DoS attempts',942240,1,16),(799,'PHP Injection Attack: High-Risk PHP Function Call Found',933160,3,292),(800,'URL file extension is restricted by policy',920440,1,403),(801,'Request Missing a Host Header',920280,1,852),(802,'ET WEB_SERVER Possible Attempt to Get SQL Server Version in URI using SELECT VERSION',2011037,1,48),(803,'GPL WEB_SERVER 403 Forbidden',2101201,1,715),(804,'ET POLICY Majestic12 User-Agent Request Outbound',2013256,1,543),(805,'ET WEB_SERVER Possible SQL Injection Attempt UNION SELECT',2006446,2,239),(806,'GPL WEB_SERVER DELETE attempt',2101603,1,341),(807,'ET WEB_SERVER MYSQL SELECT CONCAT SQL Injection Attempt',2011042,2,20),(808,'Found User-Agent associated with security scanner',913100,3,1169),(809,'ET POLICY Vulnerable Java Version 1.7.x Detected',2014297,1,32),(810,'ET POLICY Java Url Lib User Agent Web Crawl',2002945,1,71),(811,'ET WEB_SERVER SQL Errors in HTTP 500 Response (error in your SQL syntax)',2016673,1,11),(812,'ET POLICY libwww-perl User-Agent',2013030,1,246),(813,'ET WEB_SERVER Wordpress Login Bruteforcing Detected',2014020,1,15),(814,'Remote Command Execution: Unix Shell Expression Found',932130,5,7786),(815,'ET POLICY archive.org heritix Crawler User-Agent (Outbound)',2015791,1,53),(816,'POST without Content-Length or Transfer-Encoding headers.',920180,1,97),(817,'NoScript XSS InjectionChecker: HTML Injection',941160,1,104),(818,'GET or HEAD Request with Body Content.',920170,1,382),(819,'ET POLICY Unsupported/Fake Windows NT Version 5.0',2016879,1,46),(820,'ET INFO Suspicious Windows NT version 7 User-Agent',2015820,1,7),(821,'Method is not allowed by policy',911100,1,50),(822,'ET POLICY Unsupported/Fake FireFox Version 0.',2016875,1,22),(823,'Request content type is not allowed by policy',920420,1,482),(824,'ET CURRENT_EVENTS Possible Successful Generic Phish Jan 14 2016',2025005,1,44),(825,'ET POLICY Cleartext WordPress Login',2012843,1,160),(826,'ET WEB_CLIENT Possible HTTP 500 XSS Attempt (External Source)',2010525,1,21),(827,'ET WEB_SERVER WebShell Generic - wget http - POST',2016683,1,3),(828,'ET WEB_SERVER Possible HTTP 500 XSS Attempt (Internal Source)',2010524,1,21),(829,'Remote Command Execution: Unix Command Injection',932105,5,28),(830,'ET CHAT Skype User-Agent detected',2002157,1,37),(831,'Path Traversal Attack (/../)',930100,1,93),(832,'PHP Injection Attack: Configuration Directive Found',933120,2,10),(833,'Detects conditional SQL injection attempts',942230,2,32),(834,'Remote Command Execution: Unix Command Injection',932100,5,23),(835,'ET INFO Suspicious Windows NT version 8 User-Agent',2015821,1,12),(836,'ET WEB_SERVER ThinkPHP RCE Exploitation Attempt',2026731,1,5),(837,'PHP Injection Attack: High-Risk PHP Function Name Found',933150,2,83),(838,'ET WEB_SERVER Possible SQL Injection Attempt SELECT FROM',2006445,2,16),(839,'ET INFO WinHttp AutoProxy Request wpad.dat Possible BadTunnel',2022913,1,15),(840,'ET POLICY POSSIBLE Crawl using Fetch',2002827,1,8),(841,'Detects concatenated basic SQL injection and SQLLFI attempts',942360,2,26),(842,'ET POLICY Incoming Basic Auth Base64 HTTP Password detected unencrypted',2006402,1,11),(843,'ET POLICY Unsupported/Fake Internet Explorer Version MSIE 5.',2016870,1,30),(844,'ET MALWARE User-Agent (Mozilla) - Possible Spyware Related',2007854,1,1),(845,'ET POLICY request to .xxx TLD',2012694,1,19),(846,'ET WEB_SERVER SHOW CHARACTER SET SQL Injection Attempt in URI',2010964,2,1),(847,'ET WEB_SERVER Possible MySQL SQLi Attempt Information Schema Access',2017808,1,7),(848,'Possible Remote File Inclusion (RFI) Attack: URL Parameter using IP Address',931100,2,40),(849,'PHP Injection Attack: Serialized Object Injection',933170,2,13),(850,'PHP Injection Attack: PHP Script File Upload Found',933110,2,35),(851,'ET POLICY Windows 98 User-Agent Detected - Possible Malware or Non-Updated System',2007695,1,6),(852,'XSS Filter - Category 2: Event Handler Vector',941120,1,731),(853,'Node-Validator Blacklist Keywords',941180,1,20),(854,'ET WEB_SERVER Onmouseover= in URI - Likely Cross Site Scripting Attempt',2009715,1,12),(855,'Request content type charset is not allowed by policy',920480,1,14),(856,'ET SCAN Zmap User-Agent (zgrab)',2029054,1,7),(857,'Empty User Agent Header',920330,1,33),(858,'ET TROJAN Possible Win32/Gapz MSIE 9 on Windows NT 5',2016897,1,4),(859,'ET INFO SUSPICIOUS UA starting with Mozilla/7',2016692,1,9),(860,'ET POLICY Possible Web Crawl - libwww-perl User Agent',2002935,1,7),(861,'URL Encoding Abuse Attack Attempt',920220,1,39),(862,'ET INFO SUSPICIOUS UA starting with Mozilla/8',2016693,1,7),(863,'Looking for basic sql injection. Common attack string for mysql, oracle and others.',942270,2,6),(864,'PHP Injection Attack: PHP Open Tag Found',933100,2,14),(865,'Attempted multipart/form-data bypass',920120,1,9),(866,'Found request filename/argument associated with security scanner',913120,1,46),(867,'Invalid HTTP Request Line',920100,1,22),(868,'Possible Session Fixation Attack: SessionID Parameter Name with No Referer',943120,1,78),(869,'ET EXPLOIT FortiOS SSL VPN - Information Disclosure (CVE-2018-13379)',2027883,3,1),(870,'Invalid character in request (null character)',920270,1,8),(871,'ET SCAN Possible WordPress xmlrpc.php BruteForce in Progress - Response',2018755,1,1),(872,'ET INFO SUSPICIOUS UA starting with Mozilla/0',2016695,1,4),(873,'OS File Access Attempt',930120,1,69),(874,'SQL Injection Attack: Common DB Names Detected',942140,2,4),(875,'Detects blind sqli tests using sleep() or benchmark().',942160,1,8),(876,'Detects MSSQL code execution and information gathering attempts',942190,1,41),(877,'ET USER_AGENTS BLEXBot User-Agent',2022775,1,9),(878,'XSS Filter - Category 1: Script Tag Vector',941110,1,7),(879,'ET WEB_SERVER PHP Possible https Local File Inclusion Attempt',2012998,1,43),(880,'ET POLICY Unsupported/Fake FireFox Version 2.',2016877,1,13),(881,'ET WEB_SERVER PHP tags in HTTP POST',2011768,1,3),(882,'ET INFO GENERIC SUSPICIOUS POST to Dotted Quad with Fake Browser 1',2018358,1,4),(883,'Remote Command Execution: Direct Unix Command Execution',932150,5,7),(884,'HTTP Response Splitting Attack',921130,1,18),(885,'ET POLICY Vulnerable Java Version 11.0.x Detected',2028867,1,14),(886,'Request Has an Empty Accept Header',920310,1,14),(887,'ET WEB_SERVER Possible HTTP 403 XSS Attempt (Local Source)',2010515,1,2),(888,'ET WEB_SERVER Tilde in URI - potential .php~ source disclosure vulnerability',2009955,1,1),(889,'Possible Remote File Inclusion (RFI) Attack: URL Payload Used w/Trailing Question Mark Character (?)',931120,2,18),(890,'ET INFO Suspicious GET Request with Possible COVID-19 URI M2',2029754,1,336),(891,'NoScript XSS InjectionChecker: Attribute Injection',941170,2,6),(892,'ET INFO Suspicious POST Request with Possible COVID-19 URI M2',2029756,1,4),(893,'ET WEB_SERVER PHP Crawler',2018607,1,1),(894,'ET WEB_SERVER PHP Generic Remote File Include Attempt (HTTPS)',2009152,1,6),(895,'ET INFO HTTP Request to a *.top domain',2023882,1,1),(896,'ET POLICY Unsupported/Fake Internet Explorer Version MSIE 2.',2016873,1,1),(897,'Remote Command Execution: Windows PowerShell Command Found',932120,5,2),(898,'PHP Injection Attack: Variable Function Call Found',933180,2,11),(899,'ET POLICY Windows 3.1 User-Agent Detected - Possible Malware or Non-Updated System',2011694,1,2),(900,'ET INFO Suspicious GET Request with Possible COVID-19 Domain M2',2029712,1,37),(901,'ET INFO Possible ThousandEyes User-Agent Outbound',2021025,1,1),(902,'ET INFO Possible ThousandEyes User-Agent Inbound',2021026,1,1),(903,'ET WEB_SERVER SQL Errors in HTTP 200 Response (error in your SQL syntax)',2016672,1,9),(904,'ET POLICY Unsupported/Fake Windows NT Version 4.',2016878,1,2),(905,'ET MALWARE Alexa Search Toolbar User-Agent 2 (Alexa Toolbar)',2008085,1,1),(906,'ET TROJAN Suspicious User-Agent (WindowsNT) With No Separating Space',2013721,1,1),(907,'ET POLICY HTTP Request to a *.tk domain',2012810,1,1),(908,'ET WEB_SERVER Attempt To Access MSSQL xp_cmdshell Stored Procedure Via URI',2009815,1,2),(909,'ET WEB_SERVER Script tag in URI Possible Cross Site Scripting Attempt',2009714,1,2),(910,'ET INFO Suspicious GET Request with Possible COVID-19 URI M1',2029753,1,1),(911,'Empty Host Header',920290,1,23),(912,'HTTP Header Injection Attack via payload (CR/LF detected)',921150,2,30),(913,'ET WEB_SERVER Fake Googlebot UA 2 Inbound',2015527,1,1),(914,'ET TROJAN Downadup/Conficker A or B Worm reporting',2009024,1,5),(915,'ET TROJAN Fake Variation of Mozilla 4.0 - Likely Trojan',2014002,1,1),(916,'Detects SQL benchmark and sleep injection attempts including conditional queries',942170,3,1),(917,'ET TROJAN Zeus Bot Connectivity Check',2011588,1,6),(918,'ET WEB_SPECIFIC_APPS Possible WP CuckooTap Arbitrary File Download',2019137,1,4),(919,'ET WEB_SPECIFIC_APPS WP Generic revslider Arbitrary File Download',2020221,1,4),(920,'XSS Filter - Category 3: Attribute Vector',941130,1,2),(921,'ET POLICY POSSIBLE Web Crawl using Curl',2002825,1,2),(922,'GPL EXPLOIT .cnf access',2100977,1,1),(923,'ET P2P Bittorrent P2P Client User-Agent (Deluge 1.x.x)',2011704,1,2),(924,'ET INFO PowerShell NonInteractive Command Common In Powershell Stagers',2026991,1,1),(925,'ET SCAN Nmap Scripting Engine User-Agent Detected (Nmap Scripting Engine)',2009358,1,1),(926,'ET SCAN Possible Nmap User-Agent Observed',2024364,1,1),(927,'ET WEB_SPECIFIC_APPS ECSHOP user.php SQL INJECTION via Referer',2027416,2,1),(928,'ET INFO Suspicious POST Request with Possible COVID-19 Domain M2',2029714,1,1),(929,'ET POLICY Outdated Flash Version M1',2014726,1,1),(930,'ET WEB_SERVER SHOW TABLES SQL Injection Attempt in URI',2010967,1,1),(931,'ET WEB_SPECIFIC_APPS Vulnerable Magento Adminhtml Access',2021005,1,1),(932,'ET TROJAN Incorrectly formatted User-Agent string (dashes instead of semicolons) Likely Hostile',2010868,1,1),(933,'ET POLICY Windows 98 User-Agent Detected - Possible Malware or Non-Updated System (Win98)',2008070,1,1),(934,'ET INFO Suspicious Windows NT version 9 User-Agent',2015822,1,1),(935,'ET CURRENT_EVENTS Possible Paypal Phishing Domain Mar 14 2016',2022618,1,1),(936,'ET WEB_SPECIFIC_APPS Oracle JSF2 Path Traversal Attempt',2017611,1,2),(937,'GPL WEB_SERVER Tomcat directory traversal attempt',2101055,1,1),(938,'GPL WEB_SERVER Tomcat null byte directory listing attempt',2102061,1,1),(939,'ET WEB_SERVER WEB-PHP phpinfo access',2019526,1,1);
/*!40000 ALTER TABLE `rules_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-24 21:02:05
