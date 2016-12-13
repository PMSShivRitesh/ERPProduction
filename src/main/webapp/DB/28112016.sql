-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.58-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for productionapp
DROP DATABASE IF EXISTS `productionapp`;
CREATE DATABASE IF NOT EXISTS `productionapp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `productionapp`;


-- Dumping structure for table productionapp.basicrawmaterialgrade
DROP TABLE IF EXISTS `basicrawmaterialgrade`;
CREATE TABLE IF NOT EXISTS `basicrawmaterialgrade` (
  `brmgname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.basicrawmaterialgrade: ~6 rows (approximately)
DELETE FROM `basicrawmaterialgrade`;
/*!40000 ALTER TABLE `basicrawmaterialgrade` DISABLE KEYS */;
INSERT INTO `basicrawmaterialgrade` (`brmgname`) VALUES
	('Stainless Steel'),
	('MILD STEEL'),
	('ALUMINIUM'),
	('POLYMERS'),
	('CASTING'),
	('EN SERIES');
/*!40000 ALTER TABLE `basicrawmaterialgrade` ENABLE KEYS */;


-- Dumping structure for table productionapp.country
DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `UK_r81ypfvufyl9j10kwf0iq2qp2` (`countryName`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.country: ~4 rows (approximately)
DELETE FROM `country`;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`countryId`, `countryName`) VALUES
	(2, 'hanmant'),
	(5, 'mahesh'),
	(9, 'manish'),
	(6, 'rahul');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


-- Dumping structure for table productionapp.countrytable
DROP TABLE IF EXISTS `countrytable`;
CREATE TABLE IF NOT EXISTS `countrytable` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.countrytable: ~3 rows (approximately)
DELETE FROM `countrytable`;
/*!40000 ALTER TABLE `countrytable` DISABLE KEYS */;
INSERT INTO `countrytable` (`countryId`, `countryName`) VALUES
	(6, 'test'),
	(7, 'India'),
	(8, 'Japan');
/*!40000 ALTER TABLE `countrytable` ENABLE KEYS */;


-- Dumping structure for table productionapp.custinputrequest
DROP TABLE IF EXISTS `custinputrequest`;
CREATE TABLE IF NOT EXISTS `custinputrequest` (
  `itemcode` varchar(20) DEFAULT NULL,
  `itemDescription` varchar(80) DEFAULT NULL,
  `itemRate` varchar(20) DEFAULT NULL,
  `custName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.custinputrequest: ~1 rows (approximately)
DELETE FROM `custinputrequest`;
/*!40000 ALTER TABLE `custinputrequest` DISABLE KEYS */;
INSERT INTO `custinputrequest` (`itemcode`, `itemDescription`, `itemRate`, `custName`) VALUES
	('12', 'sample', '124', 'Mahesh');
/*!40000 ALTER TABLE `custinputrequest` ENABLE KEYS */;


-- Dumping structure for table productionapp.custitemdetail
DROP TABLE IF EXISTS `custitemdetail`;
CREATE TABLE IF NOT EXISTS `custitemdetail` (
  `itemcode` varchar(20) DEFAULT NULL,
  `itemDescription` varchar(80) DEFAULT NULL,
  `itemRate` varchar(20) DEFAULT NULL,
  `custName` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.custitemdetail: ~65 rows (approximately)
DELETE FROM `custitemdetail`;
/*!40000 ALTER TABLE `custitemdetail` DISABLE KEYS */;
INSERT INTO `custitemdetail` (`itemcode`, `itemDescription`, `itemRate`, `custName`) VALUES
	('192237-005', 'CONNECTING MEMBER', '696', 'ACG PAMPAC MACHINES PVT LTD.'),
	('144845-003', 'CYL. MTG. PLATE', '1053', 'ACG PAMPAC MACHINES PVT LTD.'),
	('MNYCPX204101028', 'TOP DISCHARGE CHUTE-01', '3082', 'IMA-PG India Private Limited'),
	('MNYCPX204101029', 'TOP DISCHARGE CHUTE-02', '948', 'IMA-PG India Private Limited'),
	('', '', '', 'IM'),
	('MPLCPX204101030', 'TOP DISCHARGE CHUTE COVER-01', '1816', 'IMA-PG India Private Limited'),
	('MPLCPX204101031', 'TOP DISCHARGE CHUTE COVER-02', '581', 'IMA-PG India Private Limited'),
	('MTFCPX204101026', 'BOTTOM DISCHARGE CHUTE COVER-01', '1767', 'IMA-PG India Private Limited'),
	('MTFCPX204101027', 'BOTTOM DISCHARGE CHUTE COVER', '930', 'IMA-PG India Private Limited'),
	('MHUCHPTCL230002', 'CENTER GUIDE BLOCK DIVERSION SIDE FOR DIA 42', '1703', 'IMA-PG India Private Limited'),
	('MHUCHPTCL230015', 'MHUCHPTCL230015 DIVERSION SIDE FOR DIA 48', '1428', 'IMA-PG India Private Limited'),
	('MHUCHPTCL230016', 'CENTER GUIDE BLOCK CONVERSION SIDE FOR DIA 48', '1660', 'IMA-PG India Private Limited'),
	('MTFCHP212006003', 'JAW FOR 39 DIA BOTTLE', '1850', 'IMA-PG India Private Limited'),
	('MTFCHP212006009', 'JAW FOR 55 DIA BOTTLE', '1550', 'IMA-PG India Private Limited'),
	('MTFCHP212006010', 'JAW FOR 48 DIA BOTTLE', '1750', 'IMA-PG India Private Limited'),
	('MTFCHP212107001', 'JAW FOR 38 DIA BOTTLE', '3075', 'IMA-PG India Private Limited'),
	('MTFCHP212107002', 'JAW FOR 40 DIA BOTTLE', '3075', 'IMA-PG India Private Limited'),
	('MTFCHP212107003', 'JAW FOR 42 DIA BOTTLE', '3075', 'IMA-PG India Private Limited'),
	('MTFCHP212107004', 'JAW FOR 48 DIA BOTTLE', '2831', 'IMA-PG India Private Limited'),
	('1920455', 'VAL SEAT SUCT TRC-1000 BLACKODIZED', '115', 'Hoerbiger India Private Ltd..'),
	('1920456', 'BUFFER PL SUCT TRC-1000  HT+BLACKODIZED', '88', 'Hoerbiger India Private Ltd..'),
	('0738046101', 'END COVER PLATE           ', '100', 'Hassia  Packaging Pvt. Ltd.'),
	('5115326201', 'POPPET VALVE              ', '2240', 'Hassia  Packaging Pvt. Ltd.'),
	('1936320', 'GUIDE BUSH', '60', 'Hoerbiger India Private Ltd..'),
	('21914', 'GUIDE BUSH', '55', 'Hoerbiger India Private Ltd..'),
	('21941', 'GUIDE BUSH', '105', 'Hoerbiger India Private Ltd..'),
	('610363-007', 'SQUARE PAD UHMWPE-ROTARY PICK UP', '858', 'ACG PAMPAC MACHINES PVT LTD.'),
	('212332-001', 'CONNECTOR FOR WATER', '220', 'ACG PAMPAC MACHINES PVT LTD.'),
	('0501003301', 'TOP SUPPORT PLATE', '2280', 'Hassia  Packaging Pvt. Ltd.'),
	('0501100601', 'TOP SUPPORT PLATE-SM ALL FRAME', '1950', 'Hassia  Packaging Pvt. Ltd.'),
	('969700172005 ', 'BASE MOUNTING PLATE ', '764', 'Truetzschler India Private Limited'),
	('969700172007 ', 'DISTANCE PIECE ', '55', 'Truetzschler India Private Limited'),
	(' 969700172010 ', 'BEARING SHAFT SUPPORT ', '361', 'Truetzschler India Private Limited'),
	(' 969700172016 ', 'SPRING GUIDE BAR, NPH ', '50', 'Truetzschler India Private Limited'),
	(' 969700172042 ', 'PRECISED PLATE, TONGUE BUSH ', '174', 'Truetzschler India Private Limited'),
	(' 969700172054 ', 'TIP HOLDER, LEFT CHEEK ', '351', 'Truetzschler India Private Limited'),
	(' 969700172062 ', 'TIP HOLDER, RIGHT CHEEK ', '351', 'Truetzschler India Private Limited'),
	(' 969700172068 ', 'HEAD BAR HOLDER ', '423', 'Truetzschler India Private Limited'),
	(' 969700172071 ', 'SHAFT, KNIFE HOLDER ', '116', 'Truetzschler India Private Limited'),
	(' 969700172077 ', 'KNIFE ARM ', '548', 'Truetzschler India Private Limited'),
	(' 969700172078 ', 'GUIDE PIN FOR SPRING,KNIFE ARM ', '65', 'Truetzschler India Private Limited'),
	(' 969700172079 ', 'PRESSURE STRIP, KNIFE  ARM', '637', 'Truetzschler India Private Limited'),
	('969700172081 ', 'SHAFT FOR LEVERS ', '306', 'Truetzschler India Private Limited'),
	(' 969700172089 ', 'KNIFE HOLDER ', '293', 'Truetzschler India Private Limited'),
	('969700176017 ', 'HINGE PIN ', '204', 'Truetzschler India Private Limited'),
	(' 969700176018 ', 'BEARING BUSH', '94', 'Truetzschler India Private Limited'),
	(' 969700176019 ', 'SHAFT ', '209', 'Truetzschler India Private Limited'),
	(' 969700176021', 'BENDER PIN HOLDER LHS ', '674', 'Truetzschler India Private Limited'),
	(' 969700176022', 'SPECIAL CHEESE HEAD SCREW', '125', 'Truetzschler India Private Limited'),
	(' 969700176024 ', 'BENDING PIN HOLDER RHS', '674', 'Truetzschler India Private Limited'),
	(' 969700176026', 'HOLDER, BENDER PLATE', '2082', 'Truetzschler India Private Limited'),
	(' 969700176031 ', 'POST, TENSION SPRING', '141', 'Truetzschler India Private Limited'),
	(' 969700176034 ', 'THREADED SPINDEL ', '730', 'Truetzschler India Private Limited'),
	(' 969700178010 ', 'DISTANCE BUSH ', '75', 'Truetzschler India Private Limited'),
	('969700178013 ', 'SLIDEWAY ', '485', 'Truetzschler India Private Limited'),
	(' 969700178015', 'SLIDING PART, MOVABLE MOUNTING BLOCK', '595', 'Truetzschler India Private Limited'),
	(' 969700178036', 'HOLDER LITTLE GUN ', '757', 'Truetzschler India Private Limited'),
	('969700178037 ', 'TOP HOLDER, LITTLE GUN', '155', 'Truetzschler India Private Limited'),
	(' 969700178046 ', 'CYLINDRICAL CAM', '1508', 'Truetzschler India Private Limited'),
	(' 969700178047', 'CANTILEVER SHAFT-HEXAGON TYPE', '261', 'Truetzschler India Private Limited'),
	('610363-005', 'pad on gear', '858', 'ACG PAMPAC MACHINES PVT LTD.'),
	('211608-006 ', 'SHAFT FOR PRE BREKER', '1200', 'ACG PAMPAC MACHINES PVT LTD.'),
	('610776-001', 'PUSHER HOLDER', '675', 'ACG PAMPAC MACHINES PVT LTD. '),
	('611753-003', 'MAIN FRAME', '1600', 'ACG PAMPAC MACHINES PVT LTD.  '),
	('611231-009', 'FRAME', '', 'ACG PAMPAC MACHINES PVT LTD.   ');
/*!40000 ALTER TABLE `custitemdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.custmercontactpersions
DROP TABLE IF EXISTS `custmercontactpersions`;
CREATE TABLE IF NOT EXISTS `custmercontactpersions` (
  `contactPesrsionId` int(11) NOT NULL AUTO_INCREMENT,
  `cpdesignation` varchar(255) DEFAULT NULL,
  `cpersionname` varchar(255) DEFAULT NULL,
  `cpmail` varchar(255) DEFAULT NULL,
  `cpphno` varchar(255) DEFAULT NULL,
  `custId` int(11) DEFAULT NULL,
  PRIMARY KEY (`contactPesrsionId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.custmercontactpersions: ~29 rows (approximately)
DELETE FROM `custmercontactpersions`;
/*!40000 ALTER TABLE `custmercontactpersions` DISABLE KEYS */;
INSERT INTO `custmercontactpersions` (`contactPesrsionId`, `cpdesignation`, `cpersionname`, `cpmail`, `cpphno`, `custId`) VALUES
	(1, 'sadsa', 'sads', 'dgdf', '243232', 0),
	(2, 'sad', 'dfgd', 'asd', '343', 0),
	(3, 'te', 'dfs', 'tesd', '3434', 18),
	(4, 'te', 'dfs', 'tesd', '3434', 18),
	(5, 'te', 'dsfd', 'tesd@gmail.com', '4545', 19),
	(6, 'sadsa', 'te', 'tesd@gmail.com', '23233', 22),
	(7, 'sdf', 'sdf', 'hsd', '34', 27),
	(8, 'er', 'sdf', 'dfs', '34', 29),
	(9, 'Developer', 'Rahul Patil', 'rahu@gmail.com', '9421096799', 34),
	(10, 'te', 'Rahul Patil', 'sdf', '3244', 34),
	(11, 'te', 'Rahul Patil', 'sdf', '3244', 34),
	(12, 'te', 'dfs', 'tesd@gmail.com', '324234', 3),
	(13, 'dsf', 'ssdf', 'dsf', '34234', 4),
	(14, 'sdf', 'sdfsdf', 'sdf', 'sdfdsf', 4),
	(15, 'sdf', 'gdfs', 'sdf', 'sdf', 4),
	(16, 'sdf', 'gdfs', 'sdf', 'sdf', 4),
	(17, 'sdf', 'gdfs', 'sdf', 'sdf', 4),
	(18, 'sdf', 'gdfs', 'sdf', 'sdf', 4),
	(19, 'test', 'hanmant', 'test@gmail.com', '2323', 6),
	(20, 'test', 'hanmant', 'test@gmail.com', '2323', 6),
	(21, 'test', 'hanmant', 'test@gmail.com', '2323', 6),
	(22, 'tes', 'dsf', 'test@gmail.com', '3434', 7),
	(23, 'sdf', 'sdfsdf', 'dsf', 'sdf', 1),
	(24, NULL, NULL, NULL, NULL, 1),
	(25, 'dsf', 'sdf', 'sdf', 'dsf', 1),
	(26, 'sdf', 'sdf', 'dsf', '3434', 8),
	(28, 'developer', 'hanmant', 'ha@gmail.com', '3221213', 9),
	(29, 'Manager', 'Bhagwat Musale', 'bhagwat@gmail.com', '587676878', 10),
	(30, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `custmercontactpersions` ENABLE KEYS */;


-- Dumping structure for table productionapp.customerdetail
DROP TABLE IF EXISTS `customerdetail`;
CREATE TABLE IF NOT EXISTS `customerdetail` (
  `custId` int(11) NOT NULL AUTO_INCREMENT,
  `custAddress` varchar(255) DEFAULT NULL,
  `custCountry` int(11) DEFAULT NULL,
  `custName` varchar(255) DEFAULT NULL,
  `custZipCode` varchar(255) DEFAULT NULL,
  `custcontactno` varchar(255) DEFAULT NULL,
  `custcst` varchar(255) DEFAULT NULL,
  `custdistrict` int(11) DEFAULT NULL,
  `custemail` varchar(255) DEFAULT NULL,
  `custexcise` varchar(255) DEFAULT NULL,
  `custgst` varchar(255) DEFAULT NULL,
  `custservicetax` varchar(255) DEFAULT NULL,
  `custshortcutname` varchar(255) DEFAULT NULL,
  `custstate` int(11) DEFAULT NULL,
  `custtaluka` int(11) DEFAULT NULL,
  `custvat` varchar(255) DEFAULT NULL,
  `custwebsite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`custId`),
  UNIQUE KEY `UK_3ykohoqdi93bam0oghvywa9wk` (`custName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.customerdetail: ~10 rows (approximately)
DELETE FROM `customerdetail`;
/*!40000 ALTER TABLE `customerdetail` DISABLE KEYS */;
INSERT INTO `customerdetail` (`custId`, `custAddress`, `custCountry`, `custName`, `custZipCode`, `custcontactno`, `custcst`, `custdistrict`, `custemail`, `custexcise`, `custgst`, `custservicetax`, `custshortcutname`, `custstate`, `custtaluka`, `custvat`, `custwebsite`) VALUES
	(1, 'Pune,Pune,Pune,Pune,Pune,Pune,Pune,Pune', 2, 'Hanmant B Guddapure', '23423', '', 'NO', 1, 'undefined', 'NO', 'NO', 'NO', 'rahul', 1, 6, 'YES', 'te'),
	(2, 'dsfsdf,dsfsdf', 2, 'Mahesh', '324', '', 'NO', 1, 'undefined', 'NO', 'NO', 'NO', 'dsfsdf', 1, 6, 'NO', 'terw'),
	(3, 'sdfsdf', 2, 'sdfgsdf', '343', '', NULL, 1, 'tes@vo', NULL, NULL, NULL, 'sdfsd', 1, 6, NULL, 'tr'),
	(4, 'sdfsdf', 2, 'sgfsdf', '343', '', NULL, 1, 'tes@vo', NULL, NULL, NULL, 'sdfsd', 1, 6, NULL, 'te'),
	(5, 'sdf', 2, 'dsf', '23432', 'sdf', NULL, 1, 'tes@vo', NULL, NULL, NULL, 'sdf', 1, 6, NULL, 'sdf'),
	(6, 'dsfdfs', 2, 'mahesh Guddapure', '2323', '', NULL, 1, 'hanmant@gmail.com', 'YES', 'YES', NULL, 'hanmant', 1, 6, NULL, 'te'),
	(7, 'sadasd', 2, 'Rahul Patil', '23231', '4324324', NULL, 1, 'tes@vo', NULL, NULL, NULL, 'trear', 1, 6, NULL, 'tesd'),
	(8, 'dfgdffg', 2, 'hsdfsdf', '2323', 'sdfsdf', NULL, 1, 'hanmant@gmail.com', NULL, NULL, NULL, 'sdfsd', 1, 6, 'YES', 'sdfsd'),
	(9, 'asdasd', 2, 'Kiran Gore', '32', '', NULL, 1, 'asdas@gmail.com', NULL, NULL, 'YES', 'kiran', 1, 6, 'YES', 'sadfsa'),
	(10, 'Pune', 2, 'Airwire Solutions', '21312', '32432', NULL, 1, 'airwire@airwire.com', 'YES', NULL, 'YES', 'Airwire', 1, 6, 'YES', 'airwire.com');
/*!40000 ALTER TABLE `customerdetail` ENABLE KEYS */;


-- Dumping structure for procedure productionapp.customerDetailInsertIntoTable
DROP PROCEDURE IF EXISTS `customerDetailInsertIntoTable`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `customerDetailInsertIntoTable`( 
id varchar(150),name varchar(150),shortcutname varchar(100),address text,country varchar(50),state varchar(50),district varchar(50),
 talka varchar(50),zipcode varchar(50),website varchar(50),email varchar(120),contactno varchar(15),custGst varchar(10),
 custCst varchar(10),custVat varchar(10),custExcise varchar(10),custServiceTax varchar(10)
)
BEGIN 
IF (SELECT count(custName) FROM cutomerDetail WHERE custName= name>0) THEN 
        SELECT 'EXISTS';
    ELSE
        
	INSERT INTO customerDetail(custId,custName,custShortCutName,custAddress,custCountry,custState,custDistrict
    ,custTaluka,custZipCode,custWebsite,custEmail,custConatactNo,custGst,custCst,custVat,custExcise,custServiceTax) VALUES (id,name,shortcutname,address,country,state,district, talka,zipcode,website,email,contactno,custGst,custCst,custVat,custExcise,custServiceTax); 
END if; 
END//
DELIMITER ;


-- Dumping structure for table productionapp.customerdocuments
DROP TABLE IF EXISTS `customerdocuments`;
CREATE TABLE IF NOT EXISTS `customerdocuments` (
  `custDocId` int(11) NOT NULL AUTO_INCREMENT,
  `custId` int(11) DEFAULT NULL,
  `docloc` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docno` varchar(255) DEFAULT NULL,
  `pvisible` varchar(255) DEFAULT NULL,
  `wef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`custDocId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.customerdocuments: ~26 rows (approximately)
DELETE FROM `customerdocuments`;
/*!40000 ALTER TABLE `customerdocuments` DISABLE KEYS */;
INSERT INTO `customerdocuments` (`custDocId`, `custId`, `docloc`, `docname`, `docno`, `pvisible`, `wef`) VALUES
	(1, 27, NULL, 'Select', NULL, 'Select', ''),
	(2, 28, NULL, '2', NULL, 'yes', '34'),
	(3, 28, NULL, '2', NULL, 'yes', 'fd'),
	(4, 29, NULL, '2', '3434', 'yes', 'te'),
	(5, 29, NULL, '2', '34', 'yes', 'teer'),
	(6, 0, NULL, NULL, NULL, NULL, NULL),
	(7, 0, NULL, NULL, NULL, NULL, NULL),
	(8, 33, '', '2', '3434', 'yes', 'dff'),
	(9, 34, '', '2', '342', 'yes', 'sdsd'),
	(10, 34, NULL, NULL, NULL, NULL, NULL),
	(11, 34, NULL, NULL, NULL, NULL, NULL),
	(12, 34, NULL, NULL, NULL, NULL, NULL),
	(13, 34, NULL, NULL, NULL, NULL, NULL),
	(14, 34, NULL, NULL, NULL, NULL, NULL),
	(15, 34, NULL, NULL, NULL, NULL, NULL),
	(16, 34, NULL, NULL, NULL, NULL, NULL),
	(17, 5, '', '1', '234234', 'yes', 'sdf'),
	(18, 5, '', '1', '234234', 'yes', 'sdf'),
	(19, 1, NULL, NULL, NULL, NULL, NULL),
	(20, 7, '', '1', 'erewrewr', 'Select', 'ewr'),
	(21, 1, NULL, NULL, NULL, NULL, NULL),
	(22, 1, '', '1', '324324', 'yes', 'sdfsdf'),
	(23, 1, '', 'Select', '324', 'Select', 'ewr'),
	(24, 0, NULL, NULL, NULL, NULL, NULL),
	(25, 0, NULL, NULL, NULL, NULL, NULL),
	(26, 0, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `customerdocuments` ENABLE KEYS */;


-- Dumping structure for table productionapp.customeritems
DROP TABLE IF EXISTS `customeritems`;
CREATE TABLE IF NOT EXISTS `customeritems` (
  `custItemId` int(11) NOT NULL AUTO_INCREMENT,
  `custId` int(11) DEFAULT NULL,
  `itemCode` varchar(255) DEFAULT NULL,
  `itemRate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`custItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.customeritems: ~4 rows (approximately)
DELETE FROM `customeritems`;
/*!40000 ALTER TABLE `customeritems` DISABLE KEYS */;
INSERT INTO `customeritems` (`custItemId`, `custId`, `itemCode`, `itemRate`) VALUES
	(1, 1, 'item001', '24'),
	(2, 2, 'item001', '44'),
	(3, 6, 'item001', '55'),
	(4, 1, 'item001', '12');
/*!40000 ALTER TABLE `customeritems` ENABLE KEYS */;


-- Dumping structure for table productionapp.customerprocessrate
DROP TABLE IF EXISTS `customerprocessrate`;
CREATE TABLE IF NOT EXISTS `customerprocessrate` (
  `processName` varchar(120) DEFAULT NULL,
  `custName` varchar(120) DEFAULT NULL,
  `processRate` varchar(120) DEFAULT NULL,
  `processRateUnit` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.customerprocessrate: ~22 rows (approximately)
DELETE FROM `customerprocessrate`;
/*!40000 ALTER TABLE `customerprocessrate` DISABLE KEYS */;
INSERT INTO `customerprocessrate` (`processName`, `custName`, `processRate`, `processRateUnit`) VALUES
	('Cutting', 'Dench Technology', '12', NULL),
	('Cutting', 'Dench Technology', '12', NULL),
	('Cutting', 'Dench Technology', '12', NULL),
	('Cutting', 'Dench Technology', '45', 'per/Hour'),
	('Cutting', 'Dench Technology', '23', 'per/Hour'),
	('Milling', 'Dench Technology', '34', 'per/Hour'),
	('Cutting', 'Dench Technology', '12', 'per/Hour'),
	('Cutting', 'Dench Technology', '12', 'per/Hour'),
	('Milling', '', '23', 'per/Hour'),
	('Milling', '', '23', 'per/Hour'),
	('Raw Material Inspection', 'Dench Technology', '23', 'per/Hour'),
	('test', 'Dench Technology', '23', 'per/Hour'),
	('test1', 'Dench Technology', '55', 'per/Hour'),
	('SIZE MILLING', 'ACG PAMPAC MACHINES PVT LTD.', '120', 'PER HRS'),
	('RM CUTTING', 'ACG PAMPAC MACHINES PVT LTD.', '50', 'PER HRS'),
	('LATHE', 'ACG PAMPAC MACHINES PVT LTD.', '60', 'PER HRS'),
	('VMC', 'ACG PAMPAC MACHINES PVT LTD.', '350', 'PER HRS'),
	('VMC', 'ACG PAMPAC MACHINES PVT LTD.', '375', 'PER HRS'),
	('VMC', 'ACG PAMPAC MACHINES PVT LTD.', '500', 'PER HRS'),
	('SIZE MILLING', 'ACG PAMPAC MACHINES PVT LTD.', '500', 'PER HRS'),
	('SIZE MILLING', 'ACG PAMPAC MACHINES PVT LTD.', '120', 'PER HRS'),
	('ROTARY', 'ACG PAMPAC MACHINES PVT LTD.', '100', 'PER HRS');
/*!40000 ALTER TABLE `customerprocessrate` ENABLE KEYS */;


-- Dumping structure for procedure productionapp.customerRegisterNumbersIntoTable
DROP PROCEDURE IF EXISTS `customerRegisterNumbersIntoTable`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `customerRegisterNumbersIntoTable`( 
IN pname varchar(150) 
)
BEGIN 
IF (SELECT count(name) FROM customerRegisterNumbersName WHERE name= pname>0) THEN 
        SELECT 'EXISTS';
    ELSE
        
	INSERT INTO customerRegisterNumbersName(name) VALUES (pname); 
END if; 
END//
DELIMITER ;


-- Dumping structure for table productionapp.customerregisternumbersname
DROP TABLE IF EXISTS `customerregisternumbersname`;
CREATE TABLE IF NOT EXISTS `customerregisternumbersname` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.customerregisternumbersname: ~0 rows (approximately)
DELETE FROM `customerregisternumbersname`;
/*!40000 ALTER TABLE `customerregisternumbersname` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerregisternumbersname` ENABLE KEYS */;


-- Dumping structure for table productionapp.customerregistrationnumbers
DROP TABLE IF EXISTS `customerregistrationnumbers`;
CREATE TABLE IF NOT EXISTS `customerregistrationnumbers` (
  `custName` varchar(150) DEFAULT NULL,
  `perticular` varchar(100) DEFAULT NULL,
  `registrationNo` varchar(60) DEFAULT NULL,
  `wef` varchar(150) DEFAULT NULL,
  `visible` varchar(5) DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.customerregistrationnumbers: ~2 rows (approximately)
DELETE FROM `customerregistrationnumbers`;
/*!40000 ALTER TABLE `customerregistrationnumbers` DISABLE KEYS */;
INSERT INTO `customerregistrationnumbers` (`custName`, `perticular`, `registrationNo`, `wef`, `visible`) VALUES
	('ACG PAMPAC MACHINES PVT LTD.', 'Vat No', '27120005702V', 'W.E.F.01-04-2006', 'yes'),
	('ter', 'Range :', '34', 'dfd', 'yes');
/*!40000 ALTER TABLE `customerregistrationnumbers` ENABLE KEYS */;


-- Dumping structure for table productionapp.cutomerdetail
DROP TABLE IF EXISTS `cutomerdetail`;
CREATE TABLE IF NOT EXISTS `cutomerdetail` (
  `custId` varchar(150) NOT NULL,
  `custName` varchar(150) NOT NULL,
  `custShortCutName` varchar(100) DEFAULT NULL,
  `custAddress` text,
  `custCountry` varchar(50) DEFAULT NULL,
  `custState` varchar(50) DEFAULT NULL,
  `custDistrict` varchar(50) DEFAULT NULL,
  `custTaluka` varchar(50) DEFAULT NULL,
  `custZipCode` varchar(50) DEFAULT NULL,
  `custWebsite` varchar(50) DEFAULT NULL,
  `custEmail` varchar(120) DEFAULT NULL,
  `custConatactNo` varchar(15) DEFAULT NULL,
  `custGst` varchar(10) DEFAULT 'NO',
  `custCst` varchar(10) DEFAULT 'NO',
  `custVat` varchar(10) DEFAULT 'NO',
  `custExcise` varchar(10) DEFAULT 'NO',
  `custServiceTax` varchar(10) DEFAULT 'NO',
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.cutomerdetail: ~6 rows (approximately)
DELETE FROM `cutomerdetail`;
/*!40000 ALTER TABLE `cutomerdetail` DISABLE KEYS */;
INSERT INTO `cutomerdetail` (`custId`, `custName`, `custShortCutName`, `custAddress`, `custCountry`, `custState`, `custDistrict`, `custTaluka`, `custZipCode`, `custWebsite`, `custEmail`, `custConatactNo`, `custGst`, `custCst`, `custVat`, `custExcise`, `custServiceTax`) VALUES
	('1', 'ACG PAM PACK MACHINES PVT. LTD.', 'PAMPACK', 'BEBADHOLE', 'IND', 'Maharashtra', 'Mumai', 'thane', '411041', 'WWW.TEST.COM', 'test@gmail.com', '9421096799', 'YES', NULL, 'YES', NULL, NULL),
	('2', 'HASSIA PACKAGINGS PVT. LTD.', 'HASSIA', 'SANASWADI', 'IND', 'Maharashtra', 'Sangli', 'Miraj', '1234', 'HASSIA.COM', 'HASSIA@GMAIL.COM', '123', NULL, 'YES', NULL, 'YES', NULL),
	('3', '', '', '', '--Select Country--', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
	('4', 'test1', 'te', '', '--Select Country--', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
	('5', 'sdfdsf', '', '', '--Select Country--', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
	('6', 'asd', '', '', '--Select Country--', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `cutomerdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.dchallandetail
DROP TABLE IF EXISTS `dchallandetail`;
CREATE TABLE IF NOT EXISTS `dchallandetail` (
  `dchallanno` int(11) NOT NULL AUTO_INCREMENT,
  `custId` int(11) DEFAULT NULL,
  `dchallandate` varchar(255) DEFAULT NULL,
  `dchallanstatus` varchar(255) DEFAULT NULL,
  `dchallantype` varchar(255) DEFAULT NULL,
  `podate` varchar(255) DEFAULT NULL,
  `pono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dchallanno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.dchallandetail: ~3 rows (approximately)
DELETE FROM `dchallandetail`;
/*!40000 ALTER TABLE `dchallandetail` DISABLE KEYS */;
INSERT INTO `dchallandetail` (`dchallanno`, `custId`, `dchallandate`, `dchallanstatus`, `dchallantype`, `podate`, `pono`) VALUES
	(1, 1, '12/12/2016', 'Pending', 'With Material', '12/13/2016', '12'),
	(2, 1, '12/13/2016', 'Pending', 'With Material', '12/13/2016', '12'),
	(3, 1, '12/14/2016', 'Pending', 'With Material', '12/13/2016', '12');
/*!40000 ALTER TABLE `dchallandetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.dchallanitems
DROP TABLE IF EXISTS `dchallanitems`;
CREATE TABLE IF NOT EXISTS `dchallanitems` (
  `srno` int(11) NOT NULL AUTO_INCREMENT,
  `dchallanno` int(11) DEFAULT NULL,
  `itemQty` int(11) DEFAULT NULL,
  `itemcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.dchallanitems: ~16 rows (approximately)
DELETE FROM `dchallanitems`;
/*!40000 ALTER TABLE `dchallanitems` DISABLE KEYS */;
INSERT INTO `dchallanitems` (`srno`, `dchallanno`, `itemQty`, `itemcode`) VALUES
	(13, 1, 12, 'item001'),
	(14, 2, 12, 'item001'),
	(15, 2, 12, 'item001'),
	(16, 2, 12, 'item001'),
	(17, 2, 12, 'item001'),
	(21, 1, 12, 'item001'),
	(22, 1, 12, 'item001'),
	(23, 1, 12, 'item001'),
	(24, 1, 12, 'item001'),
	(25, 2, 12, 'item001'),
	(26, 2, 12, 'item001'),
	(27, 1, 12, 'item001'),
	(29, 2, 12, 'item001'),
	(30, 3, 12, 'item001'),
	(31, 2, 23, 'item001'),
	(32, 2, 23, 'item001');
/*!40000 ALTER TABLE `dchallanitems` ENABLE KEYS */;


-- Dumping structure for table productionapp.districttable
DROP TABLE IF EXISTS `districttable`;
CREATE TABLE IF NOT EXISTS `districttable` (
  `districtId` int(11) NOT NULL AUTO_INCREMENT,
  `districtName` varchar(255) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL,
  PRIMARY KEY (`districtId`),
  UNIQUE KEY `UK_cpn8msvi78e505b4f9vqklkjc` (`districtName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.districttable: ~3 rows (approximately)
DELETE FROM `districttable`;
/*!40000 ALTER TABLE `districttable` DISABLE KEYS */;
INSERT INTO `districttable` (`districtId`, `districtName`, `stateId`) VALUES
	(1, '32434', 1),
	(2, 'dsfsdf', 3),
	(3, 'fdgfd', 3);
/*!40000 ALTER TABLE `districttable` ENABLE KEYS */;


-- Dumping structure for table productionapp.documenttable
DROP TABLE IF EXISTS `documenttable`;
CREATE TABLE IF NOT EXISTS `documenttable` (
  `Documentid` int(11) NOT NULL AUTO_INCREMENT,
  `DocumentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Documentid`),
  UNIQUE KEY `UK_2dburkxob2efpl7fjoq3vqlcw` (`DocumentName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.documenttable: ~1 rows (approximately)
DELETE FROM `documenttable`;
/*!40000 ALTER TABLE `documenttable` DISABLE KEYS */;
INSERT INTO `documenttable` (`Documentid`, `DocumentName`) VALUES
	(1, 'test');
/*!40000 ALTER TABLE `documenttable` ENABLE KEYS */;


-- Dumping structure for table productionapp.empcontactdetail
DROP TABLE IF EXISTS `empcontactdetail`;
CREATE TABLE IF NOT EXISTS `empcontactdetail` (
  `employeeId` varchar(20) DEFAULT NULL,
  `pAddress` text,
  `pCoutry` varchar(20) DEFAULT NULL,
  `pState` varchar(20) DEFAULT NULL,
  `pDistrict` varchar(20) DEFAULT NULL,
  `pTaluka` varchar(20) DEFAULT NULL,
  `pZipCode` varchar(20) DEFAULT NULL,
  `cAddress` text,
  `cCoutry` varchar(20) DEFAULT NULL,
  `cState` varchar(20) DEFAULT NULL,
  `cDistrict` varchar(20) DEFAULT NULL,
  `cTaluka` varchar(20) DEFAULT NULL,
  `cZipCode` varchar(20) DEFAULT NULL,
  `email1` varchar(60) DEFAULT NULL,
  `email2` varchar(60) DEFAULT NULL,
  `contactNo1` varchar(20) DEFAULT NULL,
  `contactNo2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.empcontactdetail: ~5 rows (approximately)
DELETE FROM `empcontactdetail`;
/*!40000 ALTER TABLE `empcontactdetail` DISABLE KEYS */;
INSERT INTO `empcontactdetail` (`employeeId`, `pAddress`, `pCoutry`, `pState`, `pDistrict`, `pTaluka`, `pZipCode`, `cAddress`, `cCoutry`, `cState`, `cDistrict`, `cTaluka`, `cZipCode`, `email1`, `email2`, `contactNo1`, `contactNo2`) VALUES
	('1', 'Shivaji Chouk;410041', 'Ind', 'Maharashtra', 'Sangli', 'Miraj', '416410', 'Shivaji Chouk;410041', 'Ind', 'Maharashtra', 'Sangli', 'Miraj', '416410', 'arun@gmail.com', 'arun@gmail.com', '9011043139', '9421096799'),
	('2', 'test', 'Ind', 'Maharashtra', 'Sangli', 'Miraj', '12', 'test', 'Ind', 'Maharashtra', 'Sangli', '', '12', 'balu@gmail.com', 'balu@gmail.com', '9421096799', '9421096799'),
	('3', 'Kamatanur\r\n', 'INDIA', '', '', '', '', 'Narhe, Pune', '--Select Country--', '', '', '', '', '', '', '', ''),
	('', 'KAMATANUR', '--Select Country--', '', '', '', '', 'PUNE', '--Select Country--', '', '', '', '', '', '', '', ''),
	('2', 'Pune', 'INDIA', 'MAHARASTRA', 'PUNE', '', '', 'Pune', '--Select Country--', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `empcontactdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.employee
DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `empCode` bigint(10) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `imgpath` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`empCode`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.employee: ~1 rows (approximately)
DELETE FROM `employee`;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`empCode`, `firstName`, `lastName`, `imgpath`) VALUES
	(1, 'Hanmant', 'Guddapure', '');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


-- Dumping structure for procedure productionapp.employeeDetailInsertIntoTable
DROP PROCEDURE IF EXISTS `employeeDetailInsertIntoTable`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `employeeDetailInsertIntoTable`( 
EmployeeId varchar(20), 
Fname varchar(50),
Middlename varchar(50),
Lastname varchar(50),
Shortname varchar(50),
imgpath varchar(20),

pAddress text,
pCoutry varchar(20),
pState varchar(20),
pDistrict varchar(20),
pTaluka varchar(20),
pZipCode varchar(20),
cAddress text,
cCoutry varchar(20),
cState varchar(20),
cDistrict varchar(20),
cTaluka varchar(20),
cZipCode varchar(20),
email1 varchar(60),
email2 varchar(60),
contactNo1 varchar(20),
contactNo2 varchar(20),
userName varchar(20),
password varchar(20)

)
BEGIN 
IF (SELECT count(Firstname) FROM EmployeeDetails WHERE Firstname= Fname>0) THEN 
        SELECT 'EXISTS';
    ELSE
        
	INSERT INTO EmployeeDetails(EmployeeId,Firstname,Middlename,Lastname,Shortname,imgpath) VALUES (EmployeeId,Fname,Middlename,Lastname,Shortname,imgpath); 
	
	INSERT INTO EmpContactdetail(employeeId,pAddress,pCoutry,pState,pDistrict,pTaluka,pZipCode,cAddress,cCoutry,
cState,cDistrict,cTaluka,cZipCode,email1,email2,contactNo1,contactNo2) VALUES (employeeId,pAddress,pCoutry,pState,pDistrict,pTaluka,pZipCode,cAddress,cCoutry,
cState,cDistrict,cTaluka,cZipCode,email1,email2,contactNo1,contactNo2); 


	INSERT INTO users(empCode, userName,password) VALUES (EmployeeId,userName,password); 
	
END if; 
END//
DELIMITER ;


-- Dumping structure for table productionapp.employeedetails
DROP TABLE IF EXISTS `employeedetails`;
CREATE TABLE IF NOT EXISTS `employeedetails` (
  `EmployeeId` varchar(20) DEFAULT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Middlename` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Shortname` varchar(50) DEFAULT NULL,
  `imgpath` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.employeedetails: ~2 rows (approximately)
DELETE FROM `employeedetails`;
/*!40000 ALTER TABLE `employeedetails` DISABLE KEYS */;
INSERT INTO `employeedetails` (`EmployeeId`, `Firstname`, `Middlename`, `Lastname`, `Shortname`, `imgpath`) VALUES
	('1', 'Hanmant', 'B', 'Guddapure', 'hanmant', 'C:\\'),
	('2', 'Bharat', 'Mallappa', 'Patil', 'Bharat', 'C:\\');
/*!40000 ALTER TABLE `employeedetails` ENABLE KEYS */;


-- Dumping structure for table productionapp.grndetail
DROP TABLE IF EXISTS `grndetail`;
CREATE TABLE IF NOT EXISTS `grndetail` (
  `poNum` int(20) DEFAULT NULL,
  `rmitemCode` varchar(60) DEFAULT NULL,
  `pendingQty` varchar(20) DEFAULT '0',
  `receivedQty` varchar(10) DEFAULT NULL,
  `inspectedQty` varchar(10) DEFAULT NULL,
  `rejectedQty` varchar(10) DEFAULT NULL,
  `receivedDate` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.grndetail: ~5 rows (approximately)
DELETE FROM `grndetail`;
/*!40000 ALTER TABLE `grndetail` DISABLE KEYS */;
INSERT INTO `grndetail` (`poNum`, `rmitemCode`, `pendingQty`, `receivedQty`, `inspectedQty`, `rejectedQty`, `receivedDate`, `status`) VALUES
	(6, '144845-003 RM ', '0', '10', '8', '2', '2016-07-29', NULL),
	(6, '144845-003 RM ', '0', '3', '1', '1', '2016-07-29', NULL),
	(6, '144845-003 RM ', '0', '2', '2', '0', '2016-07-29', NULL),
	(6, '144845-003 RM ', '0', '1', '1', '0', '2016-07-29', NULL),
	(6, '144845-003 RM ', '0', '1', '1', '0', '2016-07-29', NULL);
/*!40000 ALTER TABLE `grndetail` ENABLE KEYS */;


-- Dumping structure for procedure productionapp.insertGrnDetails
DROP PROCEDURE IF EXISTS `insertGrnDetails`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertGrnDetails`( 
IN num varchar(50),item varchar(60),pitem varchar(20), pending varchar(20),receivedQty varchar(10),inspectedQty int,
 rejectedQty varchar(10),rmlocation varchar(60) 
)
BEGIN 
DECLARE qty int;
INSERT INTO grnDetail(poNum,rmitemCode,pendingQty,receivedQty,inspectedQty,rejectedQty,receivedDate) VALUES (num,item,pending,
receivedQty,inspectedQty,rejectedQty,CURDATE());

IF exists(SELECT * FROM grnDetail WHERE poNum= num and rmitemCode=item) THEN 
       update grnDetail set pendingQty=pending where poNum=num and rmitemCode=item; 
      
END if; 

IF exists(SELECT * FROM rmItemStock WHERE rmitemcode=item) THEN 
			set qty=(select rmstockQty from rmItemStock WHERE rmitemcode=item)+inspectedQty;
       update rmItemStock set rmstockQty=qty WHERE rmitemcode=item;
else
		INSERT INTO rmItemStock(rmitemcode,itemCode,rmstockQty,rmitemLoc) VALUES (item,pitem,inspectedQty,
rmlocation);
	   
END if; 

END//
DELIMITER ;


-- Dumping structure for procedure productionapp.insertIntoTablecountryTable
DROP PROCEDURE IF EXISTS `insertIntoTablecountryTable`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertIntoTablecountryTable`( 
cname varchar(150) 
)
BEGIN 
IF (SELECT count(countryName) FROM countryTable WHERE countryName= cname>0) THEN 
        SELECT 'EXISTS';
    ELSE
        
	INSERT INTO countryTable(countryName) VALUES (cname); 
END if; 
END//
DELIMITER ;


-- Dumping structure for procedure productionapp.insertIntoTabledistrictTable
DROP PROCEDURE IF EXISTS `insertIntoTabledistrictTable`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertIntoTabledistrictTable`( 
sname varchar(150),dname varchar(150) 
)
BEGIN 
IF (SELECT count(districtName) FROM districtTable WHERE districtName= dname>0) THEN 
        SELECT 'EXISTS';
    ELSE
        
	INSERT INTO districtTable(stateName,districtName) VALUES (sname,dname); 
END if; 
END//
DELIMITER ;


-- Dumping structure for procedure productionapp.insertIntoTablestateTable
DROP PROCEDURE IF EXISTS `insertIntoTablestateTable`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertIntoTablestateTable`( 
sname varchar(150),dname varchar(150) 
)
BEGIN 
IF (SELECT count(stateName) FROM stateTable WHERE stateName= sname>0) THEN 
        SELECT 'EXISTS';
    ELSE
        
	INSERT INTO stateTable(countryId,stateName) VALUES (sname,dname); 
END if; 
END//
DELIMITER ;


-- Dumping structure for procedure productionapp.insertIntotalukaTable
DROP PROCEDURE IF EXISTS `insertIntotalukaTable`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertIntotalukaTable`( 
dname varchar(150),tname varchar(150) 
)
BEGIN 
IF (SELECT count(talukaName) FROM talukaTable WHERE talukaName= tname>0) THEN 
        SELECT 'EXISTS';
    ELSE
        
	INSERT INTO talukaTable(districtName,talukaName) VALUES (dname,tname); 
END if; 
END//
DELIMITER ;


-- Dumping structure for table productionapp.instrumentdetail
DROP TABLE IF EXISTS `instrumentdetail`;
CREATE TABLE IF NOT EXISTS `instrumentdetail` (
  `instrumentName` varchar(160) NOT NULL,
  `instrumentRange` varchar(150) DEFAULT NULL,
  `instrumentAccuracy` varchar(150) DEFAULT NULL,
  `instrumentQty` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`instrumentName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.instrumentdetail: ~8 rows (approximately)
DELETE FROM `instrumentdetail`;
/*!40000 ALTER TABLE `instrumentdetail` DISABLE KEYS */;
INSERT INTO `instrumentdetail` (`instrumentName`, `instrumentRange`, `instrumentAccuracy`, `instrumentQty`) VALUES
	('BORE GAUGE', '18-35MM', '0.001', '1'),
	('DIAL VERNIER', '0-300MM', '0.02', '1'),
	('DIGITAL VERNIER', '0-150MM', '0.001', '1'),
	('MICROMETER', '0-25MM', '0.001', '1'),
	('test', '34', '23', '34'),
	('tester', '20', '10', '6'),
	('VERNIER', '0-150MM', '0.02', '1'),
	('VERNIR', '0-300MM', '0.02', '1');
/*!40000 ALTER TABLE `instrumentdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.invoicedetail
DROP TABLE IF EXISTS `invoicedetail`;
CREATE TABLE IF NOT EXISTS `invoicedetail` (
  `invoiceNo` varchar(20) DEFAULT NULL,
  `invoiceDate` varchar(30) DEFAULT NULL,
  `orderNo` varchar(20) DEFAULT NULL,
  `orderDate` varchar(20) DEFAULT NULL,
  `custName` varchar(20) DEFAULT NULL,
  `bAmt` varchar(10) DEFAULT NULL,
  `custGstAmt` varchar(10) DEFAULT NULL,
  `custCstAmt` varchar(10) DEFAULT NULL,
  `custVatAmt` varchar(10) DEFAULT NULL,
  `custExciseAmt` varchar(10) DEFAULT NULL,
  `custServiceTaxAmt` varchar(10) DEFAULT NULL,
  `finalAmt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.invoicedetail: ~2 rows (approximately)
DELETE FROM `invoicedetail`;
/*!40000 ALTER TABLE `invoicedetail` DISABLE KEYS */;
INSERT INTO `invoicedetail` (`invoiceNo`, `invoiceDate`, `orderNo`, `orderDate`, `custName`, `bAmt`, `custGstAmt`, `custCstAmt`, `custVatAmt`, `custExciseAmt`, `custServiceTaxAmt`, `finalAmt`) VALUES
	('1', '12/06/2016', NULL, NULL, 'Dench Technology', '600', '0', '', '84', '75', '', '759'),
	('2', '12/06/2016', NULL, NULL, 'Kyadev', '2000', '0', '', 'NaN', 'NaN', '', 'NaN');
/*!40000 ALTER TABLE `invoicedetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.invoiceitemdetail
DROP TABLE IF EXISTS `invoiceitemdetail`;
CREATE TABLE IF NOT EXISTS `invoiceitemdetail` (
  `invoiceNo` varchar(20) DEFAULT NULL,
  `itemCode` varchar(20) DEFAULT NULL,
  `custName` varchar(20) DEFAULT NULL,
  `orderNo` varchar(20) DEFAULT NULL,
  `itemDesc` varchar(60) DEFAULT NULL,
  `itemQty` varchar(10) DEFAULT NULL,
  `itemUnit` varchar(10) DEFAULT NULL,
  `itemRate` varchar(10) DEFAULT NULL,
  `itemAmt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.invoiceitemdetail: ~4 rows (approximately)
DELETE FROM `invoiceitemdetail`;
/*!40000 ALTER TABLE `invoiceitemdetail` DISABLE KEYS */;
INSERT INTO `invoiceitemdetail` (`invoiceNo`, `itemCode`, `custName`, `orderNo`, `itemDesc`, `itemQty`, `itemUnit`, `itemRate`, `itemAmt`) VALUES
	('1', 'item001', 'Dench Technology', '12', 'item001desc', '12', 'NO', '50', '600'),
	('1', 'item001', 'Dench Technology', '12', 'item001desc', '0', 'NO', '50', '600'),
	('2', 'shivu00', 'Kyadev', '10', '001', '9', 'NO', '100', '1000'),
	('2', 'shivu00', 'Kyadev', '10', '001', '1', 'NO', '100', '1000');
/*!40000 ALTER TABLE `invoiceitemdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.invoiceitems
DROP TABLE IF EXISTS `invoiceitems`;
CREATE TABLE IF NOT EXISTS `invoiceitems` (
  `invoiceNo` varchar(20) DEFAULT NULL,
  `itemCode` varchar(20) DEFAULT NULL,
  `itemDesc` varchar(60) DEFAULT NULL,
  `itemQty` varchar(10) DEFAULT NULL,
  `itemUnit` varchar(10) DEFAULT NULL,
  `itemRate` varchar(10) DEFAULT NULL,
  `itemAmt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.invoiceitems: ~0 rows (approximately)
DELETE FROM `invoiceitems`;
/*!40000 ALTER TABLE `invoiceitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoiceitems` ENABLE KEYS */;


-- Dumping structure for table productionapp.item
DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `inStock` int(11) DEFAULT NULL,
  `itemCode` varchar(255) DEFAULT NULL,
  `itemCode1` varchar(255) DEFAULT NULL,
  `itemCode2` varchar(255) DEFAULT NULL,
  `itemCode3` varchar(255) DEFAULT NULL,
  `itemDesc` varchar(255) DEFAULT NULL,
  `itemLoc` varchar(255) DEFAULT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  `maxStock` int(11) DEFAULT NULL,
  `minStock` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `UK_dd53ejouqdcnldmb18h0nap2w` (`itemCode`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.item: ~1 rows (approximately)
DELETE FROM `item`;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`itemId`, `inStock`, `itemCode`, `itemCode1`, `itemCode2`, `itemCode3`, `itemDesc`, `itemLoc`, `itemName`, `maxStock`, `minStock`) VALUES
	(1, 15, 'item001', NULL, NULL, NULL, 'laptop', 'pune', 'laptop', 20, 10);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


-- Dumping structure for table productionapp.itemstock
DROP TABLE IF EXISTS `itemstock`;
CREATE TABLE IF NOT EXISTS `itemstock` (
  `itemCode` varchar(20) DEFAULT NULL,
  `custName` varchar(60) DEFAULT NULL,
  `stockQty` varchar(10) DEFAULT NULL,
  `itemLoc` varchar(60) DEFAULT NULL,
  `itemStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.itemstock: ~3 rows (approximately)
DELETE FROM `itemstock`;
/*!40000 ALTER TABLE `itemstock` DISABLE KEYS */;
INSERT INTO `itemstock` (`itemCode`, `custName`, `stockQty`, `itemLoc`, `itemStatus`) VALUES
	('itemoo1', 'Hanmant', '20', 'test', 'pending'),
	('610776-001', 'ACG PAMPAC MACHINES PVT LTD.', '60', 'test', NULL),
	('611753-003', 'ACG PAMPAC MACHINES PVT LTD.', '55', 'test', NULL);
/*!40000 ALTER TABLE `itemstock` ENABLE KEYS */;


-- Dumping structure for procedure productionapp.moduleAllocation
DROP PROCEDURE IF EXISTS `moduleAllocation`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `moduleAllocation`( 
empcode varchar(150),mname varchar(150) 
)
BEGIN 
IF (SELECT count(EmployeeId) FROM EmployeeDetails WHERE EmployeeId= empcode>0) THEN 
	IF (SELECT count(moduleName) FROM userModules WHERE empID= empcode>0 and moduleName=mname>0) THEN 
		 SELECT 'EXISTS';
	ELSE 
			INSERT INTO userModules(empID,moduleName) VALUES (empcode,mname); 
		 
	END IF;
		
	ELSE
	     SELECT 'EXISTS';
END if; 
END//
DELIMITER ;


-- Dumping structure for procedure productionapp.moduleInsertIntoTable
DROP PROCEDURE IF EXISTS `moduleInsertIntoTable`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `moduleInsertIntoTable`( 
IN name varchar(30),mdesc varchar(150) 
)
BEGIN 
IF (SELECT count(moduleName) FROM moduleTable WHERE moduleName= name>0) THEN 
        SELECT 'EXISTS';
    ELSE
        
	INSERT INTO moduleTable(moduleName,moduleDesc,moduleCreated) VALUES ( name,mdesc,CURDATE()); 
END if; 
END//
DELIMITER ;


-- Dumping structure for table productionapp.moduletable
DROP TABLE IF EXISTS `moduletable`;
CREATE TABLE IF NOT EXISTS `moduletable` (
  `moduleId` varchar(10) NOT NULL DEFAULT '',
  `moduleName` varchar(20) DEFAULT NULL,
  `moduleDesc` varchar(150) DEFAULT NULL,
  `moduleCreated` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.moduletable: ~12 rows (approximately)
DELETE FROM `moduletable`;
/*!40000 ALTER TABLE `moduletable` DISABLE KEYS */;
INSERT INTO `moduletable` (`moduleId`, `moduleName`, `moduleDesc`, `moduleCreated`, `status`) VALUES
	('1', 'Customer', 'Customer', '2016-02-14', 'Active'),
	('10', 'Sales', 'Sales', '2016-04-16', 'Active'),
	('11', 'Inventory', 'Inventory', '2016-05-19', 'Active'),
	('12', 'D.Challan', 'D.Challan', '2016-10-30', 'Active'),
	('2', 'Admin', 'System Admin', '2016-07-12', 'Active'),
	('3', 'Comman', 'Comman', '2016-02-14', 'Active'),
	('4', 'Supplier', 'Supplier', '2016-03-27', 'Active'),
	('5', 'Raw Material', 'Raw Material', '2016-02-18', 'Active'),
	('6', 'Production Planning', 'Production And Planning', '2016-02-23', 'Active'),
	('7', 'Purchase', 'Purchase', '2016-03-15', 'Active'),
	('8', 'HRM', 'Human Resource Management', '2016-04-16', 'Active'),
	('9', 'Quotation', 'Quotation', '2016-02-21', 'Active');
/*!40000 ALTER TABLE `moduletable` ENABLE KEYS */;


-- Dumping structure for table productionapp.operation
DROP TABLE IF EXISTS `operation`;
CREATE TABLE IF NOT EXISTS `operation` (
  `processName` varchar(120) DEFAULT NULL,
  `operationName` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.operation: ~42 rows (approximately)
DELETE FROM `operation`;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` (`processName`, `operationName`) VALUES
	('LATHE', 'BORING'),
	('VMC', 'CENTER DRILL'),
	('CHAMFER', 'chamfer'),
	('VMC', 'COUNTER DRILL'),
	('SLITTING', 'DEPTH'),
	('VMC', 'DRILL'),
	('RM CUTTING', 'Drill counter'),
	('SIZE MILLING', 'Drill Tap'),
	('LATHE', 'DRILLING'),
	('VMC', 'FINISH BORE'),
	('LATHE', 'FINISH BORING'),
	('LATHE', 'FINISH TURNING'),
	('KEY-WAY', 'KEW-WAY'),
	('SIZE MILLING', 'Key-way'),
	('LATHE', 'KNURLING'),
	('SIZE MILLING', 'leght'),
	('RM CUTTING', 'LENGTH'),
	('LATHE', 'OD TURNING'),
	('VMC', 'ROUGH BORE'),
	('SLOT', 'SLOT'),
	('RM CUTTING', 'ste bore'),
	('SIZE MILLING', 'step'),
	('SIZE MILLING', 'step bore'),
	('SIZE MILLING', 'Step Mill'),
	('RM CUTTING', 'STEP MILLING'),
	('VMC', 'TAPPING'),
	('RM CUTTING', 'THICKNESS'),
	('LATHE', 'THREADING'),
	('RM CUTTING', 'WIDTH'),
	('VMC 1ST SETUP', 'DRILLING'),
	('VMC 1ST SETUP', 'DRILL COUNTER'),
	('VMC 2ND SETUP', 'DRILL COUNTER'),
	('VMC 3RD SETUP', 'DRILL COUNTER'),
	('VMC 1ST SETUP', 'Dia50.1 bore'),
	('VMC 1ST SETUP', 'Dia60.1 bore'),
	('VMC 1ST SETUP', 'Dia6.0 Drill'),
	('VMC 1ST SETUP', 'Thickness19.0mm'),
	('VMC 2ND SETUP', 'Thickness18.5mm'),
	('VMC 2ND SETUP', 'Dia 9mm holes'),
	('VMC 3RD SETUP', '3/8" BSP TAP'),
	('VMC 4TH SETUP', 'Thickness 18.35mm'),
	('VMC 5TH SETUP', 'THICKNESS 18.2MM');
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;


-- Dumping structure for table productionapp.process
DROP TABLE IF EXISTS `process`;
CREATE TABLE IF NOT EXISTS `process` (
  `processId` int(5) NOT NULL AUTO_INCREMENT,
  `processName` varchar(120) NOT NULL DEFAULT '',
  `scheduledQty` varchar(10) DEFAULT '0',
  `scheduledTime` varchar(10) DEFAULT '0',
  PRIMARY KEY (`processId`,`processName`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.process: ~19 rows (approximately)
DELETE FROM `process`;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` (`processId`, `processName`, `scheduledQty`, `scheduledTime`) VALUES
	(1, 'RM CUTTING', '0', '0'),
	(2, 'SIZE MILLING', '0', '0'),
	(3, 'ROTARY', '0', '0'),
	(4, 'CHAMFER', '0', '0'),
	(5, 'SLOT', '0', '0'),
	(6, 'KEY-WAY', '0', '0'),
	(7, 'SLITTING', '0', '0'),
	(8, 'STEP', '0', '0'),
	(9, 'LATHE', '0', '0'),
	(10, 'DRILLING', '0', '0'),
	(11, 'DRILL - COUNTER', '0', '0'),
	(12, 'DRILL - TAPP', '0', '0'),
	(13, 'VMC', '0', '0'),
	(14, 'SURFACE GRINDING', '0', '0'),
	(15, 'VMC 1ST SETUP', '0', '0'),
	(16, 'VMC 2ND SETUP', '0', '0'),
	(17, 'VMC 3RD SETUP', '0', '0'),
	(18, 'VMC 4TH SETUP', '0', '0'),
	(19, 'VMC 5TH SETUP', '0', '0');
/*!40000 ALTER TABLE `process` ENABLE KEYS */;


-- Dumping structure for table productionapp.processunit
DROP TABLE IF EXISTS `processunit`;
CREATE TABLE IF NOT EXISTS `processunit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `unitName` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.processunit: ~7 rows (approximately)
DELETE FROM `processunit`;
/*!40000 ALTER TABLE `processunit` DISABLE KEYS */;
INSERT INTO `processunit` (`id`, `unitName`) VALUES
	(1, 'test'),
	(2, 'PER HRS'),
	(3, 'PER KG.'),
	(4, 'PER SQ. INCH'),
	(5, 'PER SQ. CMS'),
	(6, 'PER METER'),
	(7, 'PER LETER');
/*!40000 ALTER TABLE `processunit` ENABLE KEYS */;


-- Dumping structure for procedure productionapp.purchaseItemInsert
DROP PROCEDURE IF EXISTS `purchaseItemInsert`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `purchaseItemInsert`( 
In pono varchar(20) ,suppName varchar(50), itemCode varchar(30),itemDesc varchar(50),qty varchar(50),unit varchar(20),
rate varchar(40),
amt varchar(50)
)
BEGIN 
IF (SELECT count(poNumber) FROM purchaseOrderDetail WHERE poNumber= pono>0) THEN 
      
       insert into purchaseorderItemDetail(poNumber,itemCode,itemDesc,qty,unit,rate,amt)values(pono,itemCode,itemDesc,qty,unit,rate,amt);
    ELSE
		INSERT INTO purchaseOrderDetail(poNumber,suppName) VALUES(pono,suppName);
       insert into purchaseorderItemDetail(poNumber,itemCode,itemDesc,qty,unit,rate,amt)values(pono,itemCode,itemDesc,qty,unit,rate,amt);
END if; 
END//
DELIMITER ;


-- Dumping structure for table productionapp.purchaseorderdetail
DROP TABLE IF EXISTS `purchaseorderdetail`;
CREATE TABLE IF NOT EXISTS `purchaseorderdetail` (
  `poNumber` varchar(50) NOT NULL,
  `suppName` varchar(120) DEFAULT NULL,
  `poDate` varchar(50) DEFAULT NULL,
  `bTotal` varchar(20) DEFAULT NULL,
  `vat` varchar(20) DEFAULT NULL,
  `exciseAmt` varchar(10) DEFAULT NULL,
  `gstAmt` varchar(10) DEFAULT NULL,
  `cstAmt` varchar(10) DEFAULT NULL,
  `serviceTaxAmt` varchar(10) DEFAULT NULL,
  `netAmt` varchar(20) DEFAULT NULL,
  `poStatus` varchar(20) DEFAULT 'pending',
  PRIMARY KEY (`poNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.purchaseorderdetail: ~6 rows (approximately)
DELETE FROM `purchaseorderdetail`;
/*!40000 ALTER TABLE `purchaseorderdetail` DISABLE KEYS */;
INSERT INTO `purchaseorderdetail` (`poNumber`, `suppName`, `poDate`, `bTotal`, `vat`, `exciseAmt`, `gstAmt`, `cstAmt`, `serviceTaxAmt`, `netAmt`, `poStatus`) VALUES
	('1', 'Sai Industry', '', '2700', '380', '338', NULL, NULL, NULL, NULL, 'aproved'),
	('2', 'Sai Industry', '', '4725', '665', '591', NULL, NULL, NULL, NULL, 'aproved'),
	('3', 'Sai Industry', '06/12/2016', '2700', '380', '338', NULL, NULL, NULL, NULL, 'aproved'),
	('4', 'Dhanlaxmi Profiles', '', '5082', '', '', NULL, NULL, NULL, NULL, 'aproved'),
	('5', 'Sai Industry', '', '11250', '1582', '1406', NULL, NULL, NULL, NULL, 'aproved'),
	('6', 'Sai Industry', '', '37350', '5252', '4669', NULL, NULL, NULL, NULL, 'aproved');
/*!40000 ALTER TABLE `purchaseorderdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.purchaseorderitemdetail
DROP TABLE IF EXISTS `purchaseorderitemdetail`;
CREATE TABLE IF NOT EXISTS `purchaseorderitemdetail` (
  `poNumber` varchar(50) DEFAULT NULL,
  `itemCode` varchar(50) DEFAULT NULL,
  `itemDesc` varchar(150) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  `amt` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.purchaseorderitemdetail: ~12 rows (approximately)
DELETE FROM `purchaseorderitemdetail`;
/*!40000 ALTER TABLE `purchaseorderitemdetail` DISABLE KEYS */;
INSERT INTO `purchaseorderitemdetail` (`poNumber`, `itemCode`, `itemDesc`, `qty`, `unit`, `rate`, `amt`, `status`) VALUES
	('1', '144845-003-RM', 'MILD STEEL PROFILE X15X150', '12', 'NO', '225', '2700', 'Pending'),
	('2', '144845-003-RM 1', '', '21', 'NO', '225', '4725', 'Pending'),
	('3', '144845-003-RM 1', 'MILD STEEL PROFILE X15X150', '12', 'NO', '225', '2700', 'Pending'),
	('4', '212332-001-RM', 'Stainless Steel 304 X8X67', '10', 'NO', '231', '2310', 'Pending'),
	('4', '212332-001-RM 1', '', '12', 'NO', '231', '2772', 'Pending'),
	('5', '144845-003 RM ', 'MILD STEEL PROFILE X15X150', '50', 'NO', '225', '11250', 'Pending'),
	('6', '144845-003 RM ', 'MILD STEEL PROFILE X15X150', '12', 'NO', '225', '2700', 'Pending'),
	('6', '144845-003 RM ', 'MILD STEEL PROFILE 12X73X363', '12', 'NO', '225', '2700', 'Pending'),
	('6', '144845-003 RM ', 'MILD STEEL PROFILE X15X150', '50', 'NO', '225', '11250', 'Pending'),
	('6', '144845-003 RM ', 'MILD STEEL PROFILE 12X73X363', '57', 'NO', '225', '12825', 'Pending'),
	('6', '144845-003 RM ', 'MILD STEEL PROFILE 12X73X363', '23', 'NO', '225', '5175', 'Pending'),
	('6', '144845-003 RM ', 'MILD STEEL PROFILE 12X73X363', '12', 'NO', '225', '2700', 'Pending');
/*!40000 ALTER TABLE `purchaseorderitemdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.qmaterialshape
DROP TABLE IF EXISTS `qmaterialshape`;
CREATE TABLE IF NOT EXISTS `qmaterialshape` (
  `qno` varchar(40) DEFAULT NULL,
  `itemCode` varchar(150) DEFAULT NULL,
  `shapeName` varchar(60) DEFAULT NULL,
  `shapeParameter` varchar(60) DEFAULT NULL,
  `shapeDimension` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.qmaterialshape: ~0 rows (approximately)
DELETE FROM `qmaterialshape`;
/*!40000 ALTER TABLE `qmaterialshape` DISABLE KEYS */;
/*!40000 ALTER TABLE `qmaterialshape` ENABLE KEYS */;


-- Dumping structure for table productionapp.qoperations
DROP TABLE IF EXISTS `qoperations`;
CREATE TABLE IF NOT EXISTS `qoperations` (
  `qno` varchar(40) DEFAULT NULL,
  `itemCode` varchar(120) DEFAULT NULL,
  `processName` varchar(120) DEFAULT NULL,
  `operationName` varchar(120) DEFAULT NULL,
  `parameter` varchar(120) DEFAULT NULL,
  `sym` varchar(10) DEFAULT NULL,
  `tolerance` varchar(120) DEFAULT NULL,
  `toolName` varchar(120) DEFAULT NULL,
  `instrumentName` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.qoperations: ~14 rows (approximately)
DELETE FROM `qoperations`;
/*!40000 ALTER TABLE `qoperations` DISABLE KEYS */;
INSERT INTO `qoperations` (`qno`, `itemCode`, `processName`, `operationName`, `parameter`, `sym`, `tolerance`, `toolName`, `instrumentName`) VALUES
	('1', '144845-003', 'RM CUTTING', 'THICKNESS', '129', NULL, '25', '2.0MM HSS DRILL', 'BORE GAUGE'),
	('3', '192237-005', 'RM CUTTING', 'LENGTH', '129', NULL, '25', '2.0MM HSS DRILL', 'DIAL VERNIER'),
	('3', '192237-005', 'RM CUTTING', 'LENGTH', '129', NULL, '25', '2.0MM HSS DRILL', 'BORE GAUGE'),
	('4', '144845-003', 'RM CUTTING', 'LENGTH', '150', NULL, '25', '2.0MM HSS DRILL', 'BORE GAUGE'),
	('7', '144845-003', 'SIZE MILLING', 'leght', '360', NULL, '+/-0.3', '2.0MM HSS DRILL', 'DIAL VERNIER'),
	('7', '144845-003', 'SIZE MILLING', 'leght', '70', NULL, '+/-0.02', '3.0MM HSS DRILL', 'DIGITAL VERNIER'),
	('7', '144845-003', 'SIZE MILLING', 'leght', '12', NULL, '+0.5', '2.0MM HSS DRILL', 'MICROMETER'),
	('7', '144845-003', 'VMC', 'CENTER DRILL', '50', NULL, '+.1', '4.0MM HSS DRILL', 'DIAL VERNIER'),
	('7', '', 'VMC', 'ROUGH BORE', '40', NULL, '.1', '9.0MM HSS DRILL', 'VERNIR'),
	('7', '', 'SURFACE GRINDING', '', '10', NULL, '+/- 0.05', '7.0MM HSS DRILL', 'DIAL VERNIER'),
	('7', '', 'VMC', 'FINISH BORE', '41', NULL, '+/-0.02', '3.0MM HSS DRILL', 'BORE GAUGE'),
	('8', '192237-005', 'SIZE MILLING', 'Step Mill', '125', NULL, '+/-0.2', '4.0MM HSS DRILL', 'DIAL VERNIER'),
	('10', '212332-001', 'SLOT', 'SLOT', '34', NULL, '34', '4.0MM HSS DRILL', 'BORE GAUGE'),
	('10', '211608-006 ', 'RM CUTTING', 'Drill counter', '112', NULL, '12', '3.0MM HSS DRILL', 'DIGITAL VERNIER');
/*!40000 ALTER TABLE `qoperations` ENABLE KEYS */;


-- Dumping structure for table productionapp.qprocess
DROP TABLE IF EXISTS `qprocess`;
CREATE TABLE IF NOT EXISTS `qprocess` (
  `qno` varchar(40) DEFAULT NULL,
  `itemCode` varchar(120) DEFAULT NULL,
  `processName` varchar(120) DEFAULT NULL,
  `custTime` varchar(40) DEFAULT NULL,
  `shopTime` varchar(40) DEFAULT NULL,
  `stdRate` varchar(40) DEFAULT NULL,
  `processAmt` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.qprocess: ~3 rows (approximately)
DELETE FROM `qprocess`;
/*!40000 ALTER TABLE `qprocess` DISABLE KEYS */;
INSERT INTO `qprocess` (`qno`, `itemCode`, `processName`, `custTime`, `shopTime`, `stdRate`, `processAmt`) VALUES
	('3', '192237-005', 'RM CUTTING', '25', '15', '', 'NaN'),
	('10', '212332-001', 'SLOT', '34', '343', '', 'NaN'),
	('10', '211608-006 ', 'RM CUTTING', '12', '12', '50', '600');
/*!40000 ALTER TABLE `qprocess` ENABLE KEYS */;


-- Dumping structure for table productionapp.quotation
DROP TABLE IF EXISTS `quotation`;
CREATE TABLE IF NOT EXISTS `quotation` (
  `qno` varchar(20) NOT NULL,
  `qdate` varchar(60) DEFAULT NULL,
  `custName` varchar(150) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.quotation: ~10 rows (approximately)
DELETE FROM `quotation`;
/*!40000 ALTER TABLE `quotation` DISABLE KEYS */;
INSERT INTO `quotation` (`qno`, `qdate`, `custName`, `status`) VALUES
	('1', '07/08/2016', 'ACG PAMPAC MACHINES PVT LTD.', 'pending'),
	('10', '', 'ACG PAMPAC MACHINES PVT LTD.', 'pending'),
	('2', '07/08/2016', 'ACG PAMPAC MACHINES PVT LTD.', 'pending'),
	('3', '07/08/2016', 'ACG PAMPAC MACHINES PVT LTD.', 'pending'),
	('4', '', 'ACG PAMPAC MACHINES PVT LTD.', 'pending'),
	('5', '', 'ACG PAMPAC MACHINES PVT LTD.', 'pending'),
	('6', '', 'ACG PAMPAC MACHINES PVT LTD.', 'pending'),
	('7', '', 'ACG PAMPAC MACHINES PVT LTD.', 'pending'),
	('8', '07/10/2016', 'ACG PAMPAC MACHINES PVT LTD.', 'pending'),
	('9', '', 'ACG PAMPAC MACHINES PVT LTD.', 'pending');
/*!40000 ALTER TABLE `quotation` ENABLE KEYS */;


-- Dumping structure for procedure productionapp.quotationDetailInputInsert
DROP PROCEDURE IF EXISTS `quotationDetailInputInsert`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `quotationDetailInputInsert`( 
In quotationno varchar(20) ,qdate varchar(60),custName varchar(150),itemCode varchar(150),itemDescription varchar(250),
rmGrade varchar(40),
rmShapeRange varchar(50),
rmSupplierName varchar(150),
rmRate varchar(20),
rmWeight varchar(20),
rmShapeName varchar(20),
dim1 varchar(20),
dim2 varchar(20),
dim3 varchar(20),
brmGrade varchar(20),
rmAmt varchar(20)
)
BEGIN 
IF (SELECT count(qno) FROM quotation WHERE qno= quotationno>0) THEN 
       INSERT INTO quotationItemDetail(qno,itemCode,itemDescription,rmGrade,rmShapeRange,rmSupplierName,rmRate ,rmWeight,rmShapeName,dim1,dim2,dim3,brmGrade,rmAmt) VALUES 
       (quotationno,itemCode,itemDescription,rmGrade,rmShapeRange,rmSupplierName,rmRate ,rmWeight,rmShapeName,dim1,dim2,dim3,brmGrade,rmAmt);
    ELSE
		INSERT INTO quotation(qno,qdate,custName) VALUES (quotationno,qdate,custName); 
            INSERT INTO quotationItemDetail(qno,itemCode,itemDescription,rmGrade,rmShapeRange,rmSupplierName,rmRate ,rmWeight,rmShapeName,dim1,dim2,dim3,brmGrade,rmAmt) VALUES 
       (quotationno,itemCode,itemDescription,rmGrade,rmShapeRange,rmSupplierName,rmRate ,rmWeight,rmShapeName,dim1,dim2,dim3,brmGrade,rmAmt);
END if; 
END//
DELIMITER ;


-- Dumping structure for table productionapp.quotationitemdetail
DROP TABLE IF EXISTS `quotationitemdetail`;
CREATE TABLE IF NOT EXISTS `quotationitemdetail` (
  `qno` varchar(20) DEFAULT NULL,
  `itemCode` varchar(150) DEFAULT NULL,
  `itemDescription` varchar(250) DEFAULT NULL,
  `brmGrade` varchar(30) DEFAULT NULL,
  `rmGrade` varchar(40) DEFAULT NULL,
  `rmShapeName` varchar(30) DEFAULT NULL,
  `dim1` varchar(10) DEFAULT NULL,
  `dim2` varchar(10) DEFAULT NULL,
  `dim3` varchar(10) DEFAULT NULL,
  `rmWeight` varchar(20) DEFAULT NULL,
  `rmShapeRange` varchar(50) DEFAULT NULL,
  `rmSupplierName` varchar(150) DEFAULT NULL,
  `rmRate` varchar(20) DEFAULT NULL,
  `rmAmt` varchar(20) DEFAULT NULL,
  `itemPrice` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.quotationitemdetail: ~19 rows (approximately)
DELETE FROM `quotationitemdetail`;
/*!40000 ALTER TABLE `quotationitemdetail` DISABLE KEYS */;
INSERT INTO `quotationitemdetail` (`qno`, `itemCode`, `itemDescription`, `brmGrade`, `rmGrade`, `rmShapeName`, `dim1`, `dim2`, `dim3`, `rmWeight`, `rmShapeRange`, `rmSupplierName`, `rmRate`, `rmAmt`, `itemPrice`) VALUES
	('5', 'item001', 'item001desc', 'test1', 'test1sub', 'Round', '', '10', '20', '0.0002', '10*16', 'Sai Industry', '200', '0.04', '12760.04'),
	('5', 'item002', 'item002desc', 'test2', 'test2sub', 'Round', NULL, '10', '20', '0.002', '10*16', 'Sai Industry', '200', '0.04', NULL),
	('6', 'item001', 'item001desc', 'Stainless Steel', '78', 'Round', '', '15', '100', '0.0015', '', NULL, '', '', NULL),
	('7', '192237-005', 'CONNECTING MEMBER', 'MILD STEEL', 'PROFILE', 'Rectangel', '20', '51', '158', '0.16116', NULL, NULL, '', '', NULL),
	('8', '192237-005', 'CONNECTING MEMBER', 'MILD STEEL', 'PROFILE', 'Rectangel', '20', '51', '158', '0.16116', NULL, NULL, '', '', NULL),
	('9', '192237-005', 'CONNECTING MEMBER', 'MILD STEEL', 'PROFILE', 'Rectangel', '20', '51', '158', '0.16116', NULL, NULL, '', '', NULL),
	('1', '144845-003', 'CYL. MTG. PLATE', 'MILD STEEL', 'PROFILE', 'Round', '', '15', '150', '0.003', '5*25', 'Sai Industry', '225', '0.675', NULL),
	('2', '192237-005', 'CONNECTING MEMBER', 'MILD STEEL', 'PROFILE', 'Round', '', '15', '150', '0.00225', '', NULL, '', '', NULL),
	('3', '192237-005', 'CONNECTING MEMBER', 'MILD STEEL', 'PROFILE', 'Round', '', '15', '150', '0.00225', '', NULL, '', '', NULL),
	('4', '144845-003', 'CYL. MTG. PLATE', 'MILD STEEL', 'PROFILE', 'Rectangel', '12', '73', '363', '0.317988', NULL, NULL, '', '', NULL),
	('4', '144845-003', 'CYL. MTG. PLATE', 'MILD STEEL', 'PROFILE', 'Rectangel', '12', '73', '363', '0.317988', NULL, NULL, '', NULL, NULL),
	('5', '144845-003', 'CYL. MTG. PLATE', 'MILD STEEL', 'PROFILE', 'Rectangel', '12', '73', '363', '0.317988', NULL, NULL, '', '', NULL),
	('6', '144845-003', 'CYL. MTG. PLATE', 'MILD STEEL', 'PROFILE', 'Rectangel', '12', '73', '363', '0.317988', NULL, NULL, '', '', NULL),
	('7', '144845-003', 'CYL. MTG. PLATE', 'MILD STEEL', 'PROFILE', 'Rectangel', '12', '75', '363', '0.3267', NULL, NULL, '', '', NULL),
	('8', '192237-005', 'CONNECTING MEMBER', 'MILD STEEL', 'PROFILE', 'Round', '', '50', '250', '0.0125', '', NULL, '', '', NULL),
	('9', '610363-007', 'SQUARE PAD UHMWPE-ROTARY PICK UP', 'POLYMERS', 'UHMWPE NATURAL WHITE', 'Rectangel', '20', '135', '140', '0.378', NULL, NULL, '', '', NULL),
	('10', '610363-005', 'pad on gear', 'POLYMERS', 'UHMWPE NATURAL WHITE', 'Rectangel', '20', '5', '500', '0.05', NULL, NULL, '', '', NULL),
	('10', '212332-001', 'CONNECTOR FOR WATER', 'Stainless Steel', '304', 'Round', '', '8', '67', '0.026423728', '5*50', 'Dhanlaxmi Profiles', '231', '6.103881168', 'NaN'),
	('10', '211608-006 ', 'SHAFT FOR PRE BREKER', 'MILD STEEL', 'PROFILE', 'Round', '', '10', '12', '0.007394700000000001', '5*500', 'Somanath', '45', '0.33276150000000004', '600.3327615');
/*!40000 ALTER TABLE `quotationitemdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.rawmaterialgrade
DROP TABLE IF EXISTS `rawmaterialgrade`;
CREATE TABLE IF NOT EXISTS `rawmaterialgrade` (
  `brmgname` varchar(50) DEFAULT NULL,
  `rmGrade` varchar(50) DEFAULT NULL,
  `spw` varchar(50) DEFAULT NULL,
  `rmShapeName` varchar(50) DEFAULT NULL,
  `minDim` int(11) DEFAULT NULL,
  `maxDim` int(11) DEFAULT NULL,
  `minDim1` int(11) DEFAULT NULL,
  `maxDim1` int(11) DEFAULT NULL,
  `supplierName` varchar(50) DEFAULT NULL,
  `supplierRate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.rawmaterialgrade: ~18 rows (approximately)
DELETE FROM `rawmaterialgrade`;
/*!40000 ALTER TABLE `rawmaterialgrade` DISABLE KEYS */;
INSERT INTO `rawmaterialgrade` (`brmgname`, `rmGrade`, `spw`, `rmShapeName`, `minDim`, `maxDim`, `minDim1`, `maxDim1`, `supplierName`, `supplierRate`) VALUES
	('Stainless Steel', '304', '7.85', 'Round', 5, 25, NULL, NULL, 'Sai Industry', '225'),
	('MILD STEEL', 'PROFILE', '7.85', 'Round', 5, 500, NULL, NULL, 'Somanath', '45'),
	('MILD STEEL', 'PROFILE', '7.85', 'Rectangel', 5, 50, 10, 500, 'KUBER PROFILE', '45'),
	('EN SERIES', '8', '7.85', 'Round', 5, 75, NULL, NULL, 'Vardhaman Metal', '58'),
	('MILD STEEL', 'PROFILE', '7.85', 'Rectangel', 5, 75, 5, 250, 'KUBER PROFILE', '45'),
	('MILD STEEL', 'PROFILE', '7.85', 'Rectangel', 5, 75, 5, 250, 'Vardhaman Metal', '43'),
	('MILD STEEL', 'PROFILE', '7.85', 'Rectangel', 5, 75, 5, 250, 'METAL HOUSE INDIA', '41'),
	('POLYMERS', 'UHMWPE', '1.1', 'Round', 10, 250, NULL, NULL, 'PERFECT PACKING', '300'),
	('POLYMERS', 'NYLON', '1.3', 'Rectangel', 5, 50, 10, 2000, 'PERFECT POLYMERS', '305'),
	('POLYMERS', 'UHMWPE NATURAL WHITE', '1.1', 'Rectangel', 5, 250, 5, 500, 'PERFECT PACKING', '300'),
	('POLYMERS', 'UHMWPE NATURAL WHITE', '1.1', 'Rectangel', 5, 250, 5, 500, 'PERFECT POLYMERS', '290'),
	('POLYMERS', 'UHMWPE NATURAL WHITE', '1.1', 'Rectangel', 5, 250, 5, 500, 'POLYMASTER', '325'),
	('MILD STEEL', 'PROFILE', '7.85', 'Round', 25, 500, NULL, NULL, 'KUBER PROFILE', '50'),
	('Stainless Steel', 'SS304', '7.85', 'Round', 5, 50, NULL, NULL, 'Vardhaman Metal', '215'),
	('Stainless Steel', 'SS304', '7.85', 'Round', 5, 50, NULL, NULL, 'METAL HOUSE INDIA', '305'),
	('Stainless Steel', 'SS304', '7.85', 'Round', 5, 50, NULL, NULL, 'Dhanlaxmi Profiles', '231'),
	('Stainless Steel', 'SS304', '7.85', 'Round', 5, 50, NULL, NULL, '--Select--', ''),
	('Stainless Steel', 'SS304', '7.85', 'Round', 5, 50, NULL, NULL, 'Wadilal', '239');
/*!40000 ALTER TABLE `rawmaterialgrade` ENABLE KEYS */;


-- Dumping structure for table productionapp.rawmaterialshape
DROP TABLE IF EXISTS `rawmaterialshape`;
CREATE TABLE IF NOT EXISTS `rawmaterialshape` (
  `rmShapeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.rawmaterialshape: ~4 rows (approximately)
DELETE FROM `rawmaterialshape`;
/*!40000 ALTER TABLE `rawmaterialshape` DISABLE KEYS */;
INSERT INTO `rawmaterialshape` (`rmShapeName`) VALUES
	('Circle'),
	('Rectangle'),
	('CIRCLE'),
	('RECTANAGLE');
/*!40000 ALTER TABLE `rawmaterialshape` ENABLE KEYS */;


-- Dumping structure for table productionapp.rawmaterialshapedetail
DROP TABLE IF EXISTS `rawmaterialshapedetail`;
CREATE TABLE IF NOT EXISTS `rawmaterialshapedetail` (
  `shapeName` varchar(50) DEFAULT NULL,
  `shapeParameter` varchar(50) DEFAULT NULL,
  `shapeDimension` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.rawmaterialshapedetail: ~3 rows (approximately)
DELETE FROM `rawmaterialshapedetail`;
/*!40000 ALTER TABLE `rawmaterialshapedetail` DISABLE KEYS */;
INSERT INTO `rawmaterialshapedetail` (`shapeName`, `shapeParameter`, `shapeDimension`) VALUES
	(NULL, 'Dimeter', '100'),
	(NULL, 'Length', '100'),
	(NULL, '100', '150');
/*!40000 ALTER TABLE `rawmaterialshapedetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.rawmaterialshaperange
DROP TABLE IF EXISTS `rawmaterialshaperange`;
CREATE TABLE IF NOT EXISTS `rawmaterialshaperange` (
  `rmShapeName` varchar(50) DEFAULT NULL,
  `minDim` varchar(20) DEFAULT NULL,
  `maxDim` varchar(20) DEFAULT NULL,
  `minDim1` varchar(20) DEFAULT NULL,
  `maxDim1` varchar(20) DEFAULT NULL,
  `supplierName` varchar(50) DEFAULT NULL,
  `supplierRate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.rawmaterialshaperange: ~0 rows (approximately)
DELETE FROM `rawmaterialshaperange`;
/*!40000 ALTER TABLE `rawmaterialshaperange` DISABLE KEYS */;
/*!40000 ALTER TABLE `rawmaterialshaperange` ENABLE KEYS */;


-- Dumping structure for table productionapp.rmitemstock
DROP TABLE IF EXISTS `rmitemstock`;
CREATE TABLE IF NOT EXISTS `rmitemstock` (
  `rmitemcode` varchar(20) DEFAULT NULL,
  `itemCode` varchar(20) DEFAULT NULL,
  `rmstockQty` varchar(10) DEFAULT NULL,
  `rmitemLoc` varchar(60) DEFAULT NULL,
  `rmitemStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.rmitemstock: ~4 rows (approximately)
DELETE FROM `rmitemstock`;
/*!40000 ALTER TABLE `rmitemstock` DISABLE KEYS */;
INSERT INTO `rmitemstock` (`rmitemcode`, `itemCode`, `rmstockQty`, `rmitemLoc`, `rmitemStatus`) VALUES
	('144845-003 RM ', '144845-003', '2', 'tes', NULL),
	(NULL, 'test', '23', 'test2', NULL),
	('item001-RM', 'test', '55', NULL, NULL),
	('item001-RM 1', 'test', '100', 'test2', NULL);
/*!40000 ALTER TABLE `rmitemstock` ENABLE KEYS */;


-- Dumping structure for table productionapp.salesorderdetail
DROP TABLE IF EXISTS `salesorderdetail`;
CREATE TABLE IF NOT EXISTS `salesorderdetail` (
  `saleorderno` int(11) NOT NULL AUTO_INCREMENT,
  `bTotal` varchar(255) DEFAULT NULL,
  `cstAmt` varchar(255) DEFAULT NULL,
  `custId` int(11) DEFAULT NULL,
  `exciseAmt` varchar(255) DEFAULT NULL,
  `netAmt` varchar(255) DEFAULT NULL,
  `poDate` varchar(255) DEFAULT NULL,
  `poNo` varchar(255) DEFAULT NULL,
  `serviceTaxAmt` varchar(255) DEFAULT NULL,
  `vatAmt` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`saleorderno`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.salesorderdetail: ~8 rows (approximately)
DELETE FROM `salesorderdetail`;
/*!40000 ALTER TABLE `salesorderdetail` DISABLE KEYS */;
INSERT INTO `salesorderdetail` (`saleorderno`, `bTotal`, `cstAmt`, `custId`, `exciseAmt`, `netAmt`, `poDate`, `poNo`, `serviceTaxAmt`, `vatAmt`, `status`) VALUES
	(43, NULL, NULL, 1, NULL, NULL, '12/12/2016', '12', NULL, NULL, NULL),
	(44, NULL, NULL, 1, NULL, NULL, '12/12/2016', '13', NULL, NULL, NULL),
	(45, NULL, NULL, 1, NULL, NULL, '12/12/2016', '11', NULL, NULL, NULL),
	(46, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(47, NULL, NULL, 1, NULL, NULL, '12/12/2016', '55', NULL, NULL, NULL),
	(48, NULL, NULL, 1, NULL, NULL, '12/12/2016', '23', NULL, NULL, NULL),
	(49, NULL, NULL, 1, NULL, NULL, '12/12/2016', '88', NULL, NULL, NULL),
	(50, NULL, NULL, 1, NULL, NULL, '12/13/2016', '56', NULL, NULL, NULL);
/*!40000 ALTER TABLE `salesorderdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.salesorderitemdetail
DROP TABLE IF EXISTS `salesorderitemdetail`;
CREATE TABLE IF NOT EXISTS `salesorderitemdetail` (
  `salesOrderNo` varchar(50) DEFAULT NULL,
  `poNo` varchar(50) NOT NULL,
  `custName` varchar(150) NOT NULL,
  `itemCode` varchar(50) DEFAULT NULL,
  `itemDesc` varchar(150) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `dilDate` varchar(50) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  `amt` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.salesorderitemdetail: ~22 rows (approximately)
DELETE FROM `salesorderitemdetail`;
/*!40000 ALTER TABLE `salesorderitemdetail` DISABLE KEYS */;
INSERT INTO `salesorderitemdetail` (`salesOrderNo`, `poNo`, `custName`, `itemCode`, `itemDesc`, `unit`, `dilDate`, `qty`, `rate`, `amt`, `status`) VALUES
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 45, '50', '2250', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/04/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('1', '12', 'Dench Technology', 'item001', 'item001desc', 'NO', '06/12/2016', 12, '50', '600', 'pending'),
	('2', '10', 'Kyadev', 'shivu00', '001', 'NO', '06/12/2016', 10, '100', '1000', 'pending'),
	('3', '6110250980', 'ACG PAMPAC MACHINES PVT LTD.', '192237-005', 'CONNECTING MEMBER', 'NO', '07/31/2016', 28, '696', '19488', 'pending'),
	('4', '12', 'ACG PAMPAC MACHINES PVT LTD.', '211608-006 ', 'SHAFT FOR PRE BREKER', 'NO', '07/22/2016', 12, '1200', '14400', 'pending'),
	('4', '12', 'ACG PAMPAC MACHINES PVT LTD.', '211608-006 ', 'SHAFT FOR PRE BREKER', 'NO', '07/22/2016', 34, '1200', '40800', 'pending');
/*!40000 ALTER TABLE `salesorderitemdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.salesorderitems
DROP TABLE IF EXISTS `salesorderitems`;
CREATE TABLE IF NOT EXISTS `salesorderitems` (
  `srno` int(11) NOT NULL AUTO_INCREMENT,
  `amt` int(11) DEFAULT NULL,
  `dilDate` varchar(255) DEFAULT NULL,
  `itemCode` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `saleorderno` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `itemDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.salesorderitems: ~103 rows (approximately)
DELETE FROM `salesorderitems`;
/*!40000 ALTER TABLE `salesorderitems` DISABLE KEYS */;
INSERT INTO `salesorderitems` (`srno`, `amt`, `dilDate`, `itemCode`, `qty`, `rate`, `saleorderno`, `unit`, `itemDesc`) VALUES
	(1, 288, NULL, 'item001', 12, '24', 11, 'NO', NULL),
	(2, 288, NULL, 'item001', 12, '24', 12, 'NO', NULL),
	(3, 288, NULL, 'item001', 12, '24', 13, 'NO', NULL),
	(4, 288, NULL, 'item001', 12, '24', 13, 'NO', NULL),
	(5, 288, NULL, 'item001', 12, '24', 14, 'NO', NULL),
	(6, 288, NULL, 'item001', 12, '24', 15, 'NO', NULL),
	(7, 288, NULL, 'item001', 12, '24', 16, 'NO', NULL),
	(8, 288, NULL, 'item001', 12, '24', 16, 'NO', NULL),
	(9, 552, NULL, 'item001', 23, '24', 17, 'NO', NULL),
	(10, 288, NULL, 'item001', 12, '24', 17, 'NO', NULL),
	(11, 288, NULL, 'item001', 12, '24', 17, 'NO', NULL),
	(12, 288, NULL, 'item001', 12, '24', 18, 'NO', NULL),
	(13, 288, NULL, 'item001', 12, '24', 19, 'NO', NULL),
	(14, 552, NULL, 'item001', 23, '24', 20, 'NO', NULL),
	(15, 288, NULL, 'item001', 12, '24', 21, 'NO', NULL),
	(16, 288, NULL, 'item001', 12, '24', 22, 'NO', NULL),
	(17, 288, NULL, 'item001', 12, '24', 23, 'NO', NULL),
	(18, 288, NULL, 'item001', 12, '24', 24, 'NO', NULL),
	(19, 0, NULL, NULL, 12, NULL, 43, NULL, NULL),
	(20, 0, NULL, NULL, 12, NULL, 43, NULL, NULL),
	(21, 0, NULL, 'item001', 12, NULL, 43, NULL, NULL),
	(22, 0, NULL, 'item001', 12, NULL, 43, 'adsa', NULL),
	(23, 0, NULL, 'item001', 12, NULL, 43, 'dfd', NULL),
	(24, 0, NULL, 'item001', 12, NULL, 43, 'sds', NULL),
	(25, 0, NULL, 'item001', 12, NULL, 43, 'sd', NULL),
	(26, 0, NULL, 'item001', 12, NULL, 43, '12', NULL),
	(27, 0, NULL, 'item001', 12, NULL, 43, 'sds', NULL),
	(28, 0, NULL, 'item001', 12, NULL, 43, 'we', NULL),
	(29, 0, NULL, 'item001', 12, NULL, 43, 'sd', NULL),
	(30, 0, NULL, 'item001', 12, NULL, 43, NULL, NULL),
	(31, 0, NULL, 'item001', 12, NULL, 43, 'sdfs', NULL),
	(32, 0, NULL, 'item001', 12, NULL, 43, 'sdfs', NULL),
	(33, 0, NULL, 'item001', 12, NULL, 43, 'sd', NULL),
	(34, 0, '12/20/2016', 'item001', 12, NULL, 43, 'asda', NULL),
	(35, 0, '12/27/2016', 'item001', 12, NULL, 43, 'sad', NULL),
	(36, 0, '12/13/2016', 'item001', 121, NULL, 43, 'aasd', NULL),
	(37, 0, '12/08/2016', 'item001', 12, NULL, 43, 'sd', NULL),
	(38, 0, '12/12/2016', 'item001', 12, NULL, 43, 'sdf', NULL),
	(39, 0, '12/12/2016', 'item001', 12, NULL, 43, 'dfs', NULL),
	(40, 0, '12/12/2016', 'item001', 21, NULL, 43, '12', NULL),
	(41, 0, '12/12/2016', 'item001', 12, NULL, 43, 'df', NULL),
	(42, 0, '12/27/2016', 'item001', 12, NULL, 43, 'sdfa', NULL),
	(43, 0, '12/22/2016', 'item001', 12, NULL, 43, 'we', NULL),
	(44, 0, '12/20/2016', 'item001', 12, NULL, 43, 'asd', NULL),
	(45, 0, '12/20/2016', 'item001', 12, NULL, 43, 'asd', NULL),
	(46, 0, '12/12/2016', 'item001', 12, NULL, 43, 'sdf', NULL),
	(47, 0, '12/12/2016', 'item001', 12, NULL, 43, 'sdf', NULL),
	(48, 0, '12/14/2016', 'item001', 12, NULL, 43, 'df', NULL),
	(49, 0, '12/12/2016', 'item001', 12, NULL, 43, 'rt', NULL),
	(50, 0, '12/13/2016', 'item001', 12, NULL, 43, 'sd', NULL),
	(51, 0, '12/12/2016', 'item001', 12, NULL, 43, 'asd', NULL),
	(52, 0, '12/12/2016', 'item001', 12, NULL, 44, 'asd', NULL),
	(53, 0, '12/12/2016', 'item001', 12, NULL, 43, 'dfs', NULL),
	(54, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(55, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(56, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(57, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(58, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(59, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(60, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(61, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(62, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(63, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(64, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(65, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(66, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(67, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(68, 0, '12/12/2016', 'item001', 12, NULL, 44, 'dfs', NULL),
	(69, 0, '12/13/2016', 'item001', 12, NULL, 43, 'sd', NULL),
	(70, 0, '12/27/2016', 'item001', 12, NULL, 45, 'df', NULL),
	(71, 0, '12/27/2016', 'item001', 12, NULL, 45, 'df', NULL),
	(72, 0, '12/27/2016', 'item001', 12, NULL, 45, 'df', NULL),
	(73, 0, '12/27/2016', 'item001', 12, NULL, 45, 'df', NULL),
	(74, 0, NULL, NULL, 0, NULL, 46, NULL, NULL),
	(75, 0, '12/27/2016', 'item001', 12, NULL, 47, 'fd', NULL),
	(76, 0, '12/27/2016', 'item001', 12, NULL, 48, 'we', NULL),
	(77, 0, '12/27/2016', 'item001', 12, NULL, 43, 'sd', NULL),
	(78, 0, '12/12/2016', 'item001', 23, NULL, 43, 'we', NULL),
	(79, 0, '12/27/2016', 'item001', 12, NULL, 43, 'sd', NULL),
	(80, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(81, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(82, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(83, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(84, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(85, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(86, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(87, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(88, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(89, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(90, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(91, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(92, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(93, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(94, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(95, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(96, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(97, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(98, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(99, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(100, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(101, 0, '12/27/2016', 'item001', 12, NULL, 49, 'sd', NULL),
	(102, 0, '12/28/2016', 'item001', 12, NULL, 43, 'as', NULL),
	(103, 0, '12/27/2016', 'item001', 12, NULL, 50, 'df', NULL);
/*!40000 ALTER TABLE `salesorderitems` ENABLE KEYS */;


-- Dumping structure for table productionapp.scheduledetailmaster
DROP TABLE IF EXISTS `scheduledetailmaster`;
CREATE TABLE IF NOT EXISTS `scheduledetailmaster` (
  `salesOrderno` varchar(10) DEFAULT NULL,
  `itemCode` varchar(50) DEFAULT NULL,
  `orderQty` varchar(20) DEFAULT NULL,
  `pendingqty` varchar(10) DEFAULT NULL,
  `delDate` varchar(20) DEFAULT NULL,
  `scheduleDate` varchar(20) DEFAULT NULL,
  `processName` varchar(50) DEFAULT NULL,
  `shopTime` varchar(50) DEFAULT NULL,
  `custTime` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.scheduledetailmaster: ~0 rows (approximately)
DELETE FROM `scheduledetailmaster`;
/*!40000 ALTER TABLE `scheduledetailmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduledetailmaster` ENABLE KEYS */;


-- Dumping structure for table productionapp.statetable
DROP TABLE IF EXISTS `statetable`;
CREATE TABLE IF NOT EXISTS `statetable` (
  `stateId` int(11) NOT NULL AUTO_INCREMENT,
  `countryId` int(11) DEFAULT NULL,
  `statename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stateId`),
  UNIQUE KEY `UK_ng0rbbloofxh64j2r7r63ybej` (`statename`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.statetable: ~3 rows (approximately)
DELETE FROM `statetable`;
/*!40000 ALTER TABLE `statetable` DISABLE KEYS */;
INSERT INTO `statetable` (`stateId`, `countryId`, `statename`) VALUES
	(1, 2, 'wqwe'),
	(3, 2, '324234'),
	(5, 2, '34543');
/*!40000 ALTER TABLE `statetable` ENABLE KEYS */;


-- Dumping structure for table productionapp.supplierconatactpersions
DROP TABLE IF EXISTS `supplierconatactpersions`;
CREATE TABLE IF NOT EXISTS `supplierconatactpersions` (
  `suppConatactId` int(11) NOT NULL AUTO_INCREMENT,
  `contactPersionName` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `suppId` int(11) DEFAULT NULL,
  PRIMARY KEY (`suppConatactId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.supplierconatactpersions: ~9 rows (approximately)
DELETE FROM `supplierconatactpersions`;
/*!40000 ALTER TABLE `supplierconatactpersions` DISABLE KEYS */;
INSERT INTO `supplierconatactpersions` (`suppConatactId`, `contactPersionName`, `designation`, `email`, `phoneno`, `suppId`) VALUES
	(2, 'sdf', 'sdf', 'sdf', 'sdfsf', 0),
	(3, 'dfgd', 'dfg', 'dfgdfg', 'dfg', 0),
	(4, 'sfdds', 'fdg', 'fdgf', '4354', 11),
	(5, 'dsf', 'sdfsd', 'fsdfsd', '3432', 11),
	(6, 'gasdas', 'dsfsd', 'hanmantguddapure@gmail.com', '343', 12),
	(8, 'dfssdf', 'fdgdf', 'dfgdfg', '4354', 13),
	(9, 'fd', 'df', 'df', 'df', 14),
	(11, 'df', 'df', 'df', 'df', 14),
	(12, 'rahul', 'trst', 'trtr', '23423', 1);
/*!40000 ALTER TABLE `supplierconatactpersions` ENABLE KEYS */;


-- Dumping structure for table productionapp.suppliercontactpersions
DROP TABLE IF EXISTS `suppliercontactpersions`;
CREATE TABLE IF NOT EXISTS `suppliercontactpersions` (
  `SupplierName` varchar(150) DEFAULT NULL,
  `contactPersionName` varchar(100) DEFAULT NULL,
  `designation` varchar(150) DEFAULT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.suppliercontactpersions: ~7 rows (approximately)
DELETE FROM `suppliercontactpersions`;
/*!40000 ALTER TABLE `suppliercontactpersions` DISABLE KEYS */;
INSERT INTO `suppliercontactpersions` (`SupplierName`, `contactPersionName`, `designation`, `phoneno`, `email`) VALUES
	('Vardhaman Metal', 'VIPUL', 'PROPRIETOR', '', ''),
	('KUBER PROFILE', 'RATHI', 'PROPRIETOR', '', ''),
	('METAL HOUSE INDIA', 'SURESH JAIN', 'PROPRIETOR', '', ''),
	('Dhanlaxmi Profiles', 'SANTOSH LUNKAD', 'PROPRIETOR', '', ''),
	('Vardhaman Metal', 'VIKRAM', '', '', ''),
	('Vardhaman Metal', '', '', '', ''),
	('dfd', 'ghg', 'ghh', '676', 'hjh');
/*!40000 ALTER TABLE `suppliercontactpersions` ENABLE KEYS */;


-- Dumping structure for table productionapp.supplierdetail
DROP TABLE IF EXISTS `supplierdetail`;
CREATE TABLE IF NOT EXISTS `supplierdetail` (
  `suppId` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(255) DEFAULT NULL,
  `districtName` varchar(255) DEFAULT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `suppAddress` varchar(255) DEFAULT NULL,
  `suppConatactNo` varchar(255) DEFAULT NULL,
  `suppCst` varchar(255) DEFAULT NULL,
  `suppEmail` varchar(255) DEFAULT NULL,
  `suppExcise` varchar(255) DEFAULT NULL,
  `suppGst` varchar(255) DEFAULT NULL,
  `suppName` varchar(255) DEFAULT NULL,
  `suppServiceTax` varchar(255) DEFAULT NULL,
  `suppShortCutName` varchar(255) DEFAULT NULL,
  `suppStatus` varchar(255) DEFAULT NULL,
  `suppVat` varchar(255) DEFAULT NULL,
  `suppWebsite` varchar(255) DEFAULT NULL,
  `suppZipCode` varchar(255) DEFAULT NULL,
  `talukaName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`suppId`),
  UNIQUE KEY `UK_keyuulbmu6s9iy49wux2s9jnc` (`suppName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.supplierdetail: ~2 rows (approximately)
DELETE FROM `supplierdetail`;
/*!40000 ALTER TABLE `supplierdetail` DISABLE KEYS */;
INSERT INTO `supplierdetail` (`suppId`, `countryName`, `districtName`, `stateName`, `suppAddress`, `suppConatactNo`, `suppCst`, `suppEmail`, `suppExcise`, `suppGst`, `suppName`, `suppServiceTax`, `suppShortCutName`, `suppStatus`, `suppVat`, `suppWebsite`, `suppZipCode`, `talukaName`) VALUES
	(1, '2', '1', '1', 'pune', '4534', 'NO', 'ha@gmail.com', 'YES', 'YES', NULL, 'NO', 'rahul', NULL, 'NO', 'trtes', '343', '6'),
	(2, '--Select Country--', '', '', '', '', 'NO', '', 'NO', 'NO', 'rahul patil', 'NO', 'asdadasd', NULL, 'NO', '', '', '');
/*!40000 ALTER TABLE `supplierdetail` ENABLE KEYS */;


-- Dumping structure for table productionapp.supplierdocuments
DROP TABLE IF EXISTS `supplierdocuments`;
CREATE TABLE IF NOT EXISTS `supplierdocuments` (
  `suppDocId` int(11) NOT NULL AUTO_INCREMENT,
  `docloc` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docno` varchar(255) DEFAULT NULL,
  `pvisible` varchar(255) DEFAULT NULL,
  `suppId` int(11) DEFAULT NULL,
  `wef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`suppDocId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.supplierdocuments: ~3 rows (approximately)
DELETE FROM `supplierdocuments`;
/*!40000 ALTER TABLE `supplierdocuments` DISABLE KEYS */;
INSERT INTO `supplierdocuments` (`suppDocId`, `docloc`, `docname`, `docno`, `pvisible`, `suppId`, `wef`) VALUES
	(1, NULL, '1', '4334', 'yes', 14, 'dffd'),
	(2, NULL, '1', '32432', 'yes', 14, 'dsfsd'),
	(3, NULL, '1', '32432', 'yes', 1, 'tewwrw');
/*!40000 ALTER TABLE `supplierdocuments` ENABLE KEYS */;


-- Dumping structure for table productionapp.supplierregistrationnumbers
DROP TABLE IF EXISTS `supplierregistrationnumbers`;
CREATE TABLE IF NOT EXISTS `supplierregistrationnumbers` (
  `suppName` varchar(150) DEFAULT NULL,
  `perticular` varchar(100) DEFAULT NULL,
  `registrationNo` varchar(60) DEFAULT NULL,
  `wef` varchar(150) DEFAULT NULL,
  `visible` varchar(10) DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.supplierregistrationnumbers: ~2 rows (approximately)
DELETE FROM `supplierregistrationnumbers`;
/*!40000 ALTER TABLE `supplierregistrationnumbers` DISABLE KEYS */;
INSERT INTO `supplierregistrationnumbers` (`suppName`, `perticular`, `registrationNo`, `wef`, `visible`) VALUES
	('Vardhaman Metal', 'VAT NO :', '231323', '', 'YES'),
	('dfd', 'CST NO :', 'y76', 'ghg', 'NO');
/*!40000 ALTER TABLE `supplierregistrationnumbers` ENABLE KEYS */;


-- Dumping structure for procedure productionapp.systemInsertIntoTable
DROP PROCEDURE IF EXISTS `systemInsertIntoTable`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `systemInsertIntoTable`( 
IN mname varchar(20),sname varchar(60),sdesc varchar(150) 
)
BEGIN 
IF (SELECT count(systemName) FROM systemTable WHERE systemName= sname>0) THEN 
        SELECT 'EXISTS';
    ELSE
        
	INSERT INTO systemTable(moduleName,systemName,SystemDesc,systemCreatedDate) VALUES (mname,sname,sdesc,CURDATE()); 
END if; 
END//
DELIMITER ;


-- Dumping structure for table productionapp.systemtable
DROP TABLE IF EXISTS `systemtable`;
CREATE TABLE IF NOT EXISTS `systemtable` (
  `systemId` varchar(10) NOT NULL DEFAULT '',
  `moduleId` varchar(20) DEFAULT NULL,
  `systemName` varchar(60) NOT NULL,
  `SystemDesc` varchar(150) NOT NULL,
  `systemCreatedDate` date DEFAULT NULL,
  `Systemlink` varchar(60) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`systemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.systemtable: ~48 rows (approximately)
DELETE FROM `systemtable`;
/*!40000 ALTER TABLE `systemtable` DISABLE KEYS */;
INSERT INTO `systemtable` (`systemId`, `moduleId`, `systemName`, `SystemDesc`, `systemCreatedDate`, `Systemlink`, `status`) VALUES
	('1', '2', 'Module', 'System Modules', '2016-07-17', 'module', 'Active'),
	('10', '5', 'RawMaterialGradeInput', 'Raw Material Grade Input ', '2016-02-18', 'RawMaterialGradeInput', 'Active'),
	('11', 'test', 'employeeAdd', 'Employye Add for new', '2016-02-21', 'employeeAdd', NULL),
	('110', '11', 'Rm Stock', 'RM Stock', '2016-07-29', 'rmstock', 'Active'),
	('111', '11', 'Item', 'Item ', '2016-07-29', 'itemhome', 'Active'),
	('113', '12', 'Dchallan', 'D.Challan', '2016-11-12', 'dchallnhome', 'Active'),
	('12', 'test', 'record', 'record of employee', '2016-02-21', 'record', 'Active'),
	('13', '9', 'QoutationCreateInput', 'Create Quotation', '2016-02-21', 'QoutationCreateInput', 'Active'),
	('14', '1', 'customerProcessStdRateInput', 'Standerd Prcess Rate', '2016-02-29', 'customerProcessStdRateInput', 'Deactive'),
	('15', '7', 'supllierPruchaseOrderInput', 'Add Purchase Item', '2016-03-15', 'supllierPruchaseOrderInput', 'Active'),
	('150', '12', 'D.Challan List', 'D.Challan List', '2016-12-12', 'dchallanlst', 'Active'),
	('16', '7', 'CreatePurchaseOrder', 'Create Purchase Order', '2016-03-15', 'CreatePurchaseOrder', 'Active'),
	('17', '7', 'GRN ', 'Goods Recive Note', '2016-07-29', 'grndetail', 'Active'),
	('2', '2', 'Systems', 'Available Systems', '2016-07-17', 'system', 'Active'),
	('25', '3', 'Documents', 'Documents', '2016-03-17', 'documenthome', 'Active'),
	('26', '1', 'Search Customer', 'Search Customer', '2016-03-20', 'searchcustomer', 'Active'),
	('27', '4', 'Add Supplier', 'Add Supplier ', '2016-03-27', 'addsupplier', 'Active'),
	('28', '9', 'QoutationDetail', 'Quotation Detail', '2016-03-30', 'QoutationDetail', 'Active'),
	('29', '4', 'Search Supplier', 'Search Supplier', '2016-04-02', 'searchsupplier', 'Active'),
	('3', '3', 'country', 'Country', '2016-02-14', 'countryhome', 'Active'),
	('30', '10', 'SalesOrderDetail', 'Sales Order Detail', '2016-04-03', 'SalesOrderDetail', 'Active'),
	('32', '7', 'CreatePurchaseOrder', 'Purchase Order', '2016-04-10', 'CreatePurchaseOrder', 'Active'),
	('33', '7', 'purchaseGRNInput', 'Purchase GRN Entry', '2016-04-13', 'purchaseGRNInput', 'Active'),
	('34', '10', 'InvoiceInputInsert', 'Create Invoice', '2016-04-16', 'InvoiceInputInsert', 'Active'),
	('35', '8', 'addNewEmployee', 'New Employee', '2016-04-16', 'addNewEmployee', 'Active'),
	('36', '8', 'Module', 'Allocate Module', '2016-04-17', 'usermoduleaccess', 'Active'),
	('37', '1', 'Allocate Item', 'Allocate Item', '2016-04-30', 'allocateitemhome', 'Active'),
	('38', 'Inventory', 'bomInputInsert', 'BOM', '2016-05-19', 'bomInputInsert', 'Active'),
	('4', '3', 'state', 'State', '2016-02-14', 'statehome', 'Active'),
	('40', '10', 'custInvoiceDetail', 'Invoice Detail', '2016-05-21', 'custInvoiceDetail', 'Active'),
	('44', '7', 'SupplierPODetailInput', 'PO Detail', '2016-05-23', 'SupplierPODetailInput', 'Active'),
	('47', '10', 'Sales Order', 'Sales Order', '2016-06-06', 'salesorderhome', 'Active'),
	('5', '3', 'District', ' District', '2016-02-14', 'districthome', 'Active'),
	('50', '1', 'customer list', 'Customer List', '2016-06-16', 'custlisthome', 'Active'),
	('51', '1', 'custprocessratelst', ' Process Rate List', '2016-06-16', 'custprocessratelst', 'DeActive'),
	('52', '1', 'allcustprocessratelst', 'Customer Process Rate List ', '2016-06-16', 'allcustprocessratelst', 'DeActive'),
	('53', '1', 'custitemlstdetail', 'Customer Item List', '2016-06-17', 'custitemlstdetail', 'DeActive'),
	('54', '5', 'basicrmlst', 'Basic RM List', '2016-06-20', 'basicrmlst', 'Active'),
	('55', '5', 'rndetaill', 'RM Detail', '2016-06-20', 'rndetaill', 'Active'),
	('58', '4', 'Supplier List', 'Supplier List', '2016-06-24', 'supplist', 'Active'),
	('6', '3', 'taluka', 'Taluka', '2016-02-14', 'talukahome', 'Active'),
	('60', '6', 'ppgettoollst', 'Tool ', '2016-06-25', 'ppgettoollst', 'Active'),
	('61', '6', 'ppgetprocesslst', 'Process ', '2016-06-25', 'ppgetprocesslst', 'Active'),
	('62', '6', 'ppgetoperationlst', 'Operations', '2016-06-25', 'ppgetoperationlst', 'Active'),
	('63', '6', 'ppinstrumentlst', 'Instruments', '2016-06-25', 'ppinstrumentlst', 'Active'),
	('7', '2', 'User Module Access', 'User Modules', '2016-07-17', 'usermoduleaccess', 'Active'),
	('8', '1', 'Customer Add', 'Customer Add', '2016-02-16', 'addcustomer', 'Active'),
	('9', '5', 'BasicRawMaterialGradeInput', 'Basic Raw Material Grade Insert', '2016-02-18', 'BasicRawMaterialGradeInput', 'Active');
/*!40000 ALTER TABLE `systemtable` ENABLE KEYS */;


-- Dumping structure for table productionapp.talukatable
DROP TABLE IF EXISTS `talukatable`;
CREATE TABLE IF NOT EXISTS `talukatable` (
  `talukaId` int(5) NOT NULL AUTO_INCREMENT,
  `districtId` int(5) DEFAULT NULL,
  `talukaName` varchar(150) NOT NULL,
  PRIMARY KEY (`talukaId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.talukatable: ~3 rows (approximately)
DELETE FROM `talukatable`;
/*!40000 ALTER TABLE `talukatable` DISABLE KEYS */;
INSERT INTO `talukatable` (`talukaId`, `districtId`, `talukaName`) VALUES
	(5, 5, 'dftaluka'),
	(6, 1, 'teds'),
	(7, 1, 'fdgdfg');
/*!40000 ALTER TABLE `talukatable` ENABLE KEYS */;


-- Dumping structure for table productionapp.tools
DROP TABLE IF EXISTS `tools`;
CREATE TABLE IF NOT EXISTS `tools` (
  `toolId` int(5) NOT NULL AUTO_INCREMENT,
  `toolName` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`toolId`,`toolName`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.tools: ~14 rows (approximately)
DELETE FROM `tools`;
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
INSERT INTO `tools` (`toolId`, `toolName`) VALUES
	(1, '2.0MM HSS DRILL'),
	(2, '3.0MM HSS DRILL'),
	(3, '4.0MM HSS DRILL'),
	(4, '5.0MM HSS DRILL'),
	(5, '6.0MM HSS DRILL'),
	(6, '7.0MM HSS DRILL'),
	(7, '8.0MM HSS DRILL'),
	(8, '9.0MM HSS DRILL'),
	(9, '10.0MM HSS DRILL'),
	(10, 'Dia20mm Insert cutter'),
	(11, 'Dia16mm Insert cutter'),
	(12, 'Dia80mm Insert cutter'),
	(13, 'TNMG16 cnc holder'),
	(14, 'CNC 2mm Grooving Toll holder');
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;


-- Dumping structure for table productionapp.usermoduleaccess
DROP TABLE IF EXISTS `usermoduleaccess`;
CREATE TABLE IF NOT EXISTS `usermoduleaccess` (
  `empID` varchar(20) DEFAULT NULL,
  `moduleId` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.usermoduleaccess: ~16 rows (approximately)
DELETE FROM `usermoduleaccess`;
/*!40000 ALTER TABLE `usermoduleaccess` DISABLE KEYS */;
INSERT INTO `usermoduleaccess` (`empID`, `moduleId`, `status`) VALUES
	('1', '2', 'Active'),
	('1', '9', 'Active'),
	('1', '7', 'Active'),
	('1', '6', 'Active'),
	('1', '5', 'Active'),
	('1', '4', 'Active'),
	('1', '3', 'Active'),
	('2', '3', 'Active'),
	('2', '11', 'Active'),
	('2', '1', 'Active'),
	('2', '0', 'Active'),
	('1', '10', 'Active'),
	('1', '1', 'Active'),
	('1', '8', 'Active'),
	('1', '11', 'Active'),
	('1', '12', 'Active');
/*!40000 ALTER TABLE `usermoduleaccess` ENABLE KEYS */;


-- Dumping structure for table productionapp.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `empCode` bigint(10) DEFAULT NULL,
  `userName` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `employee` tinyblob,
  PRIMARY KEY (`userName`),
  KEY `empCode` (`empCode`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`empCode`) REFERENCES `employee` (`empCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table productionapp.users: ~1 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`empCode`, `userName`, `password`, `employee`) VALUES
	(1, 'admin', 'hanmant', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
