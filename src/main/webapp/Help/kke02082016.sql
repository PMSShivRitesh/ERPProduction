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

-- Dumping database structure for kke
CREATE DATABASE IF NOT EXISTS `kke` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kke`;


-- Dumping structure for table kke.basicrawmaterialgrade
CREATE TABLE IF NOT EXISTS `basicrawmaterialgrade` (
  `brmgname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.basicrawmaterialgrade: ~6 rows (approximately)
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


-- Dumping structure for table kke.countrytable
CREATE TABLE IF NOT EXISTS `countrytable` (
  `countryId` int(5) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(150) NOT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table kke.countrytable: ~1 rows (approximately)
DELETE FROM `countrytable`;
/*!40000 ALTER TABLE `countrytable` DISABLE KEYS */;
INSERT INTO `countrytable` (`countryId`, `countryName`) VALUES
	(1, 'INDIA'),
	(2, 'japan');
/*!40000 ALTER TABLE `countrytable` ENABLE KEYS */;


-- Dumping structure for table kke.custinputrequest
CREATE TABLE IF NOT EXISTS `custinputrequest` (
  `itemcode` varchar(20) DEFAULT NULL,
  `itemDescription` varchar(80) DEFAULT NULL,
  `itemRate` varchar(20) DEFAULT NULL,
  `custName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.custinputrequest: ~1 rows (approximately)
DELETE FROM `custinputrequest`;
/*!40000 ALTER TABLE `custinputrequest` DISABLE KEYS */;
INSERT INTO `custinputrequest` (`itemcode`, `itemDescription`, `itemRate`, `custName`) VALUES
	('12', 'sample', '124', 'Mahesh');
/*!40000 ALTER TABLE `custinputrequest` ENABLE KEYS */;


-- Dumping structure for table kke.custitemdetail
CREATE TABLE IF NOT EXISTS `custitemdetail` (
  `itemcode` varchar(20) DEFAULT NULL,
  `itemDescription` varchar(80) DEFAULT NULL,
  `itemRate` varchar(20) DEFAULT NULL,
  `custName` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.custitemdetail: ~65 rows (approximately)
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


-- Dumping structure for table kke.custmercontactpersions
CREATE TABLE IF NOT EXISTS `custmercontactpersions` (
  `customerName` varchar(150) DEFAULT NULL,
  `contactPersionName` varchar(100) DEFAULT NULL,
  `designation` varchar(150) DEFAULT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.custmercontactpersions: ~5 rows (approximately)
DELETE FROM `custmercontactpersions`;
/*!40000 ALTER TABLE `custmercontactpersions` DISABLE KEYS */;
INSERT INTO `custmercontactpersions` (`customerName`, `contactPersionName`, `designation`, `phoneno`, `email`) VALUES
	('ACG PAMPAC MACHINES PVT LTD.', 'YOGESH GIRI', 'PURCHASER', '9923009648', 'yogesh.giri@acg-world.com'),
	('Hassia  Packaging Pvt. Ltd.', 'MAKARAND BHOSEKAR', 'MANAGER', '9881409720', 'makarand.bhosekar@ima.it '),
	('Hoerbiger India Private Ltd..', 'ASHUTOSH KULKARNI', 'MATERIALS HEAD', '9890036328', 'ashutosh.kulkarni@hoerbiger.com'),
	('Master Fluid Solutions (India) Pvt. Ltd.', 'VIJAY BHANDARI', 'MANAGER', '', 'vijay.bhandary@masterfluidsolutions.com'),
	('ter', 'fg', 'df', '343', 'fgfg');
/*!40000 ALTER TABLE `custmercontactpersions` ENABLE KEYS */;


-- Dumping structure for table kke.customerdetail
CREATE TABLE IF NOT EXISTS `customerdetail` (
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
  `custStatus` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.customerdetail: ~8 rows (approximately)
DELETE FROM `customerdetail`;
/*!40000 ALTER TABLE `customerdetail` DISABLE KEYS */;
INSERT INTO `customerdetail` (`custId`, `custName`, `custShortCutName`, `custAddress`, `custCountry`, `custState`, `custDistrict`, `custTaluka`, `custZipCode`, `custWebsite`, `custEmail`, `custConatactNo`, `custGst`, `custCst`, `custVat`, `custExcise`, `custServiceTax`, `custStatus`) VALUES
	('1', 'Hassia  Packaging Pvt. Ltd.', 'Hassia', 'Registered Office/Works: Gat No. 768/3, Sanaswadi, Taluka Shirur,\r\nDist. Pune. Pin. 412207', 'INDIA', 'MAHARASTRA', 'PUNE', '', '412207', '', '', '', NULL, NULL, 'YES', 'YES', NULL, 'Active'),
	('2', 'ACG PAMPAC MACHINES PVT LTD.', 'ACG', 'GAT NO.446/2, \nVILLAGE-BEBADOHOL,\nTAL. MAVAL , DIST. PUNE-410506\nPhone No: 02114-237093', 'Ind', 'MAHARASTRA', '', '', '410506', '', '', '', 'YES', 'NO', 'NO', 'YES', 'YES', 'Active'),
	('3', 'Hoerbiger India Private Ltd..', 'HIPL', 'Gat No 303/1, 312, 313\r\nVillage Kondhapuri, Taluka - Shirur\r\n412209', 'INDIA', 'MAHARASTRA', 'PUNE', '', '412209', '', '', '', NULL, NULL, 'YES', 'YES', NULL, 'Active'),
	('4', 'Master Fluid Solutions (India) Pvt. Ltd.', 'MFS', 'B-41, Chakan MIDC Phase 2\r\nVill : Bhambuli, Tal : Khed\r\nPune 410 501', 'INDIA', 'MAHARASTRA', 'PUNE', '', '410501', '', '', '', NULL, NULL, 'YES', 'YES', NULL, 'Active'),
	('5', 'IMA-PG India Private Limited', 'IMA-PG', 'Plot No 396/1 & 396/2, Sanwer Road, Village Limbodagari\r\nTehsil Hatod,Dist. INDORE - 453 111', 'INDIA', 'MADHYA PRADESH', '', '', '453111', '', '', '', NULL, NULL, NULL, NULL, NULL, 'Active'),
	('6', 'Truetzschler India Private Limited', 'TRUZ', 'N.I.D.C. Estate, Near Lambha Village, Post Narol, Ahmedabad - 382 405. (India)\r\nPhone: +91 79 30411100, 25710608/609/ Fax: 91 7925710617, ', 'INDIA', '', '', '', '382405', '', '', '', NULL, 'YES', NULL, 'YES', NULL, 'Active'),
	('7', 'tre', 'rtr', 'rtrt', 'INDIA', 'MAHARASTRA', 'PUNE', '', '4545', '', '', '', NULL, NULL, NULL, NULL, NULL, 'Active'),
	('8', 'ter', 'te', 'te', 'INDIA', 'MAHARASTRA', 'PUNE', '', '4323', 'tes', '', 'we', NULL, NULL, 'YES', NULL, 'YES', 'Active');
/*!40000 ALTER TABLE `customerdetail` ENABLE KEYS */;


-- Dumping structure for procedure kke.customerDetailInsertIntoTable
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


-- Dumping structure for table kke.customerprocessrate
CREATE TABLE IF NOT EXISTS `customerprocessrate` (
  `processName` varchar(120) DEFAULT NULL,
  `custName` varchar(120) DEFAULT NULL,
  `processRate` varchar(120) DEFAULT NULL,
  `processRateUnit` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.customerprocessrate: ~22 rows (approximately)
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


-- Dumping structure for procedure kke.customerRegisterNumbersIntoTable
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


-- Dumping structure for table kke.customerregisternumbersname
CREATE TABLE IF NOT EXISTS `customerregisternumbersname` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.customerregisternumbersname: ~0 rows (approximately)
DELETE FROM `customerregisternumbersname`;
/*!40000 ALTER TABLE `customerregisternumbersname` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerregisternumbersname` ENABLE KEYS */;


-- Dumping structure for table kke.customerregistrationnumbers
CREATE TABLE IF NOT EXISTS `customerregistrationnumbers` (
  `custName` varchar(150) DEFAULT NULL,
  `perticular` varchar(100) DEFAULT NULL,
  `registrationNo` varchar(60) DEFAULT NULL,
  `wef` varchar(150) DEFAULT NULL,
  `visible` varchar(5) DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.customerregistrationnumbers: ~2 rows (approximately)
DELETE FROM `customerregistrationnumbers`;
/*!40000 ALTER TABLE `customerregistrationnumbers` DISABLE KEYS */;
INSERT INTO `customerregistrationnumbers` (`custName`, `perticular`, `registrationNo`, `wef`, `visible`) VALUES
	('ACG PAMPAC MACHINES PVT LTD.', 'Vat No', '27120005702V', 'W.E.F.01-04-2006', 'yes'),
	('ter', 'Range :', '34', 'dfd', 'yes');
/*!40000 ALTER TABLE `customerregistrationnumbers` ENABLE KEYS */;


-- Dumping structure for table kke.cutomerdetail
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

-- Dumping data for table kke.cutomerdetail: ~6 rows (approximately)
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


-- Dumping structure for table kke.districttable
CREATE TABLE IF NOT EXISTS `districttable` (
  `stateId` int(5) DEFAULT NULL,
  `districtId` int(5) NOT NULL AUTO_INCREMENT,
  `districtName` varchar(150) NOT NULL,
  PRIMARY KEY (`districtId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table kke.districttable: ~2 rows (approximately)
DELETE FROM `districttable`;
/*!40000 ALTER TABLE `districttable` DISABLE KEYS */;
INSERT INTO `districttable` (`stateId`, `districtId`, `districtName`) VALUES
	(1, 1, 'Pune');
/*!40000 ALTER TABLE `districttable` ENABLE KEYS */;


-- Dumping structure for table kke.documenttable
CREATE TABLE IF NOT EXISTS `documenttable` (
  `documentName` varchar(50) NOT NULL,
  PRIMARY KEY (`documentName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.documenttable: ~7 rows (approximately)
DELETE FROM `documenttable`;
/*!40000 ALTER TABLE `documenttable` DISABLE KEYS */;
INSERT INTO `documenttable` (`documentName`) VALUES
	('C.E.Registration No :'),
	('Commissionerate :'),
	('CST NO :'),
	('Div :'),
	('ECC No :'),
	('Range :'),
	('VAT NO :');
/*!40000 ALTER TABLE `documenttable` ENABLE KEYS */;


-- Dumping structure for table kke.empcontactdetail
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

-- Dumping data for table kke.empcontactdetail: ~5 rows (approximately)
DELETE FROM `empcontactdetail`;
/*!40000 ALTER TABLE `empcontactdetail` DISABLE KEYS */;
INSERT INTO `empcontactdetail` (`employeeId`, `pAddress`, `pCoutry`, `pState`, `pDistrict`, `pTaluka`, `pZipCode`, `cAddress`, `cCoutry`, `cState`, `cDistrict`, `cTaluka`, `cZipCode`, `email1`, `email2`, `contactNo1`, `contactNo2`) VALUES
	('1', 'Shivaji Chouk;410041', 'Ind', 'Maharashtra', 'Sangli', 'Miraj', '416410', 'Shivaji Chouk;410041', 'Ind', 'Maharashtra', 'Sangli', 'Miraj', '416410', 'arun@gmail.com', 'arun@gmail.com', '9011043139', '9421096799'),
	('2', 'test', 'Ind', 'Maharashtra', 'Sangli', 'Miraj', '12', 'test', 'Ind', 'Maharashtra', 'Sangli', '', '12', 'balu@gmail.com', 'balu@gmail.com', '9421096799', '9421096799'),
	('3', 'Kamatanur\r\n', 'INDIA', '', '', '', '', 'Narhe, Pune', '--Select Country--', '', '', '', '', '', '', '', ''),
	('', 'KAMATANUR', '--Select Country--', '', '', '', '', 'PUNE', '--Select Country--', '', '', '', '', '', '', '', ''),
	('2', 'Pune', 'INDIA', 'MAHARASTRA', 'PUNE', '', '', 'Pune', '--Select Country--', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `empcontactdetail` ENABLE KEYS */;


-- Dumping structure for procedure kke.employeeDetailInsertIntoTable
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


-- Dumping structure for table kke.employeedetails
CREATE TABLE IF NOT EXISTS `employeedetails` (
  `EmployeeId` varchar(20) DEFAULT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Middlename` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Shortname` varchar(50) DEFAULT NULL,
  `imgpath` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.employeedetails: ~2 rows (approximately)
DELETE FROM `employeedetails`;
/*!40000 ALTER TABLE `employeedetails` DISABLE KEYS */;
INSERT INTO `employeedetails` (`EmployeeId`, `Firstname`, `Middlename`, `Lastname`, `Shortname`, `imgpath`) VALUES
	('1', 'Hanmant', 'B', 'Guddapure', 'hanmant', 'C:\\'),
	('2', 'Bharat', 'Mallappa', 'Patil', 'Bharat', 'C:\\');
/*!40000 ALTER TABLE `employeedetails` ENABLE KEYS */;


-- Dumping structure for table kke.grndetail
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

-- Dumping data for table kke.grndetail: ~5 rows (approximately)
DELETE FROM `grndetail`;
/*!40000 ALTER TABLE `grndetail` DISABLE KEYS */;
INSERT INTO `grndetail` (`poNum`, `rmitemCode`, `pendingQty`, `receivedQty`, `inspectedQty`, `rejectedQty`, `receivedDate`, `status`) VALUES
	(6, '144845-003 RM ', '0', '10', '8', '2', '2016-07-29', NULL),
	(6, '144845-003 RM ', '0', '3', '1', '1', '2016-07-29', NULL),
	(6, '144845-003 RM ', '0', '2', '2', '0', '2016-07-29', NULL),
	(6, '144845-003 RM ', '0', '1', '1', '0', '2016-07-29', NULL),
	(6, '144845-003 RM ', '0', '1', '1', '0', '2016-07-29', NULL);
/*!40000 ALTER TABLE `grndetail` ENABLE KEYS */;


-- Dumping structure for procedure kke.insertGrnDetails
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


-- Dumping structure for procedure kke.insertIntoTablecountryTable
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


-- Dumping structure for procedure kke.insertIntoTabledistrictTable
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


-- Dumping structure for procedure kke.insertIntoTablestateTable
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


-- Dumping structure for procedure kke.insertIntotalukaTable
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


-- Dumping structure for table kke.instrumentdetail
CREATE TABLE IF NOT EXISTS `instrumentdetail` (
  `instrumentName` varchar(160) NOT NULL,
  `instrumentRange` varchar(150) DEFAULT NULL,
  `instrumentAccuracy` varchar(150) DEFAULT NULL,
  `instrumentQty` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`instrumentName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.instrumentdetail: ~8 rows (approximately)
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


-- Dumping structure for table kke.invoicedetail
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

-- Dumping data for table kke.invoicedetail: ~2 rows (approximately)
DELETE FROM `invoicedetail`;
/*!40000 ALTER TABLE `invoicedetail` DISABLE KEYS */;
INSERT INTO `invoicedetail` (`invoiceNo`, `invoiceDate`, `orderNo`, `orderDate`, `custName`, `bAmt`, `custGstAmt`, `custCstAmt`, `custVatAmt`, `custExciseAmt`, `custServiceTaxAmt`, `finalAmt`) VALUES
	('1', '12/06/2016', NULL, NULL, 'Dench Technology', '600', '0', '', '84', '75', '', '759'),
	('2', '12/06/2016', NULL, NULL, 'Kyadev', '2000', '0', '', 'NaN', 'NaN', '', 'NaN');
/*!40000 ALTER TABLE `invoicedetail` ENABLE KEYS */;


-- Dumping structure for table kke.invoiceitemdetail
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

-- Dumping data for table kke.invoiceitemdetail: ~4 rows (approximately)
DELETE FROM `invoiceitemdetail`;
/*!40000 ALTER TABLE `invoiceitemdetail` DISABLE KEYS */;
INSERT INTO `invoiceitemdetail` (`invoiceNo`, `itemCode`, `custName`, `orderNo`, `itemDesc`, `itemQty`, `itemUnit`, `itemRate`, `itemAmt`) VALUES
	('1', 'item001', 'Dench Technology', '12', 'item001desc', '12', 'NO', '50', '600'),
	('1', 'item001', 'Dench Technology', '12', 'item001desc', '0', 'NO', '50', '600'),
	('2', 'shivu00', 'Kyadev', '10', '001', '9', 'NO', '100', '1000'),
	('2', 'shivu00', 'Kyadev', '10', '001', '1', 'NO', '100', '1000');
/*!40000 ALTER TABLE `invoiceitemdetail` ENABLE KEYS */;


-- Dumping structure for table kke.invoiceitems
CREATE TABLE IF NOT EXISTS `invoiceitems` (
  `invoiceNo` varchar(20) DEFAULT NULL,
  `itemCode` varchar(20) DEFAULT NULL,
  `itemDesc` varchar(60) DEFAULT NULL,
  `itemQty` varchar(10) DEFAULT NULL,
  `itemUnit` varchar(10) DEFAULT NULL,
  `itemRate` varchar(10) DEFAULT NULL,
  `itemAmt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.invoiceitems: ~0 rows (approximately)
DELETE FROM `invoiceitems`;
/*!40000 ALTER TABLE `invoiceitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoiceitems` ENABLE KEYS */;


-- Dumping structure for table kke.itemstock
CREATE TABLE IF NOT EXISTS `itemstock` (
  `itemCode` varchar(20) DEFAULT NULL,
  `custName` varchar(60) DEFAULT NULL,
  `stockQty` varchar(10) DEFAULT NULL,
  `itemLoc` varchar(60) DEFAULT NULL,
  `itemStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.itemstock: ~3 rows (approximately)
DELETE FROM `itemstock`;
/*!40000 ALTER TABLE `itemstock` DISABLE KEYS */;
INSERT INTO `itemstock` (`itemCode`, `custName`, `stockQty`, `itemLoc`, `itemStatus`) VALUES
	('itemoo1', 'Hanmant', '20', 'test', 'pending'),
	('610776-001', 'ACG PAMPAC MACHINES PVT LTD.', '60', 'test', NULL),
	('611753-003', 'ACG PAMPAC MACHINES PVT LTD.', '55', 'test', NULL);
/*!40000 ALTER TABLE `itemstock` ENABLE KEYS */;


-- Dumping structure for procedure kke.moduleAllocation
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


-- Dumping structure for procedure kke.moduleInsertIntoTable
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


-- Dumping structure for table kke.moduletable
CREATE TABLE IF NOT EXISTS `moduletable` (
  `moduleId` varchar(10) NOT NULL DEFAULT '',
  `moduleName` varchar(20) DEFAULT NULL,
  `moduleDesc` varchar(150) DEFAULT NULL,
  `moduleCreated` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.moduletable: ~11 rows (approximately)
DELETE FROM `moduletable`;
/*!40000 ALTER TABLE `moduletable` DISABLE KEYS */;
INSERT INTO `moduletable` (`moduleId`, `moduleName`, `moduleDesc`, `moduleCreated`, `status`) VALUES
	('1', 'customer', 'Customer', '2016-02-14', 'Active'),
	('10', 'Sales', 'Sales', '2016-04-16', 'Active'),
	('11', 'Inventory', 'Inventory', '2016-05-19', 'Active'),
	('2', 'Admin', 'System Admin', '2016-07-12', 'Active'),
	('3', 'Comman', 'Comman', '2016-02-14', 'Active'),
	('4', 'Supplier', 'Supplier', '2016-03-27', 'Active'),
	('5', 'Raw Material', 'Raw Material', '2016-02-18', 'Active'),
	('6', 'Production Planning', 'Production And Planning', '2016-02-23', 'Active'),
	('7', 'Purchase', 'Purchase', '2016-03-15', 'Active'),
	('8', 'HRM', 'Human Resource Management', '2016-04-16', 'Active'),
	('9', 'Quotation', 'Quotation', '2016-02-21', 'Active');
/*!40000 ALTER TABLE `moduletable` ENABLE KEYS */;


-- Dumping structure for table kke.operation
CREATE TABLE IF NOT EXISTS `operation` (
  `processName` varchar(120) DEFAULT NULL,
  `operationName` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.operation: ~42 rows (approximately)
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


-- Dumping structure for table kke.process
CREATE TABLE IF NOT EXISTS `process` (
  `processId` int(5) NOT NULL AUTO_INCREMENT,
  `processName` varchar(120) NOT NULL DEFAULT '',
  `scheduledQty` varchar(10) DEFAULT '0',
  `scheduledTime` varchar(10) DEFAULT '0',
  PRIMARY KEY (`processId`,`processName`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table kke.process: ~19 rows (approximately)
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


-- Dumping structure for table kke.processunit
CREATE TABLE IF NOT EXISTS `processunit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `unitName` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table kke.processunit: ~7 rows (approximately)
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


-- Dumping structure for procedure kke.purchaseItemInsert
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


-- Dumping structure for table kke.purchaseorderdetail
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

-- Dumping data for table kke.purchaseorderdetail: ~6 rows (approximately)
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


-- Dumping structure for table kke.purchaseorderitemdetail
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

-- Dumping data for table kke.purchaseorderitemdetail: ~12 rows (approximately)
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


-- Dumping structure for table kke.qmaterialshape
CREATE TABLE IF NOT EXISTS `qmaterialshape` (
  `qno` varchar(40) DEFAULT NULL,
  `itemCode` varchar(150) DEFAULT NULL,
  `shapeName` varchar(60) DEFAULT NULL,
  `shapeParameter` varchar(60) DEFAULT NULL,
  `shapeDimension` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.qmaterialshape: ~0 rows (approximately)
DELETE FROM `qmaterialshape`;
/*!40000 ALTER TABLE `qmaterialshape` DISABLE KEYS */;
/*!40000 ALTER TABLE `qmaterialshape` ENABLE KEYS */;


-- Dumping structure for table kke.qoperations
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

-- Dumping data for table kke.qoperations: ~14 rows (approximately)
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


-- Dumping structure for table kke.qprocess
CREATE TABLE IF NOT EXISTS `qprocess` (
  `qno` varchar(40) DEFAULT NULL,
  `itemCode` varchar(120) DEFAULT NULL,
  `processName` varchar(120) DEFAULT NULL,
  `custTime` varchar(40) DEFAULT NULL,
  `shopTime` varchar(40) DEFAULT NULL,
  `stdRate` varchar(40) DEFAULT NULL,
  `processAmt` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.qprocess: ~3 rows (approximately)
DELETE FROM `qprocess`;
/*!40000 ALTER TABLE `qprocess` DISABLE KEYS */;
INSERT INTO `qprocess` (`qno`, `itemCode`, `processName`, `custTime`, `shopTime`, `stdRate`, `processAmt`) VALUES
	('3', '192237-005', 'RM CUTTING', '25', '15', '', 'NaN'),
	('10', '212332-001', 'SLOT', '34', '343', '', 'NaN'),
	('10', '211608-006 ', 'RM CUTTING', '12', '12', '50', '600');
/*!40000 ALTER TABLE `qprocess` ENABLE KEYS */;


-- Dumping structure for table kke.quotation
CREATE TABLE IF NOT EXISTS `quotation` (
  `qno` varchar(20) NOT NULL,
  `qdate` varchar(60) DEFAULT NULL,
  `custName` varchar(150) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.quotation: ~10 rows (approximately)
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


-- Dumping structure for procedure kke.quotationDetailInputInsert
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


-- Dumping structure for table kke.quotationitemdetail
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

-- Dumping data for table kke.quotationitemdetail: ~19 rows (approximately)
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


-- Dumping structure for table kke.rawmaterialgrade
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

-- Dumping data for table kke.rawmaterialgrade: ~18 rows (approximately)
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


-- Dumping structure for table kke.rawmaterialshape
CREATE TABLE IF NOT EXISTS `rawmaterialshape` (
  `rmShapeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.rawmaterialshape: ~4 rows (approximately)
DELETE FROM `rawmaterialshape`;
/*!40000 ALTER TABLE `rawmaterialshape` DISABLE KEYS */;
INSERT INTO `rawmaterialshape` (`rmShapeName`) VALUES
	('Circle'),
	('Rectangle'),
	('CIRCLE'),
	('RECTANAGLE');
/*!40000 ALTER TABLE `rawmaterialshape` ENABLE KEYS */;


-- Dumping structure for table kke.rawmaterialshapedetail
CREATE TABLE IF NOT EXISTS `rawmaterialshapedetail` (
  `shapeName` varchar(50) DEFAULT NULL,
  `shapeParameter` varchar(50) DEFAULT NULL,
  `shapeDimension` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.rawmaterialshapedetail: ~3 rows (approximately)
DELETE FROM `rawmaterialshapedetail`;
/*!40000 ALTER TABLE `rawmaterialshapedetail` DISABLE KEYS */;
INSERT INTO `rawmaterialshapedetail` (`shapeName`, `shapeParameter`, `shapeDimension`) VALUES
	(NULL, 'Dimeter', '100'),
	(NULL, 'Length', '100'),
	(NULL, '100', '150');
/*!40000 ALTER TABLE `rawmaterialshapedetail` ENABLE KEYS */;


-- Dumping structure for table kke.rawmaterialshaperange
CREATE TABLE IF NOT EXISTS `rawmaterialshaperange` (
  `rmShapeName` varchar(50) DEFAULT NULL,
  `minDim` varchar(20) DEFAULT NULL,
  `maxDim` varchar(20) DEFAULT NULL,
  `minDim1` varchar(20) DEFAULT NULL,
  `maxDim1` varchar(20) DEFAULT NULL,
  `supplierName` varchar(50) DEFAULT NULL,
  `supplierRate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.rawmaterialshaperange: ~0 rows (approximately)
DELETE FROM `rawmaterialshaperange`;
/*!40000 ALTER TABLE `rawmaterialshaperange` DISABLE KEYS */;
/*!40000 ALTER TABLE `rawmaterialshaperange` ENABLE KEYS */;


-- Dumping structure for table kke.rmitemstock
CREATE TABLE IF NOT EXISTS `rmitemstock` (
  `rmitemcode` varchar(20) DEFAULT NULL,
  `itemCode` varchar(20) DEFAULT NULL,
  `rmstockQty` varchar(10) DEFAULT NULL,
  `rmitemLoc` varchar(60) DEFAULT NULL,
  `rmitemStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.rmitemstock: ~4 rows (approximately)
DELETE FROM `rmitemstock`;
/*!40000 ALTER TABLE `rmitemstock` DISABLE KEYS */;
INSERT INTO `rmitemstock` (`rmitemcode`, `itemCode`, `rmstockQty`, `rmitemLoc`, `rmitemStatus`) VALUES
	('144845-003 RM ', '144845-003', '2', 'tes', NULL),
	(NULL, 'test', '23', 'test2', NULL),
	('item001-RM', 'test', '55', NULL, NULL),
	('item001-RM 1', 'test', '100', 'test2', NULL);
/*!40000 ALTER TABLE `rmitemstock` ENABLE KEYS */;


-- Dumping structure for table kke.salesorderdetail
CREATE TABLE IF NOT EXISTS `salesorderdetail` (
  `salesOrderNo` varchar(50) NOT NULL,
  `poNo` varchar(50) NOT NULL,
  `poDate` varchar(50) NOT NULL,
  `custName` varchar(150) NOT NULL,
  `bAmt` varchar(10) DEFAULT NULL,
  `custGstAmt` varchar(10) DEFAULT NULL,
  `custCstAmt` varchar(10) DEFAULT NULL,
  `custVatAmt` varchar(10) DEFAULT NULL,
  `custExciseAmt` varchar(10) DEFAULT NULL,
  `custServiceTaxAmt` varchar(10) DEFAULT NULL,
  `finalAmt` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`salesOrderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.salesorderdetail: ~3 rows (approximately)
DELETE FROM `salesorderdetail`;
/*!40000 ALTER TABLE `salesorderdetail` DISABLE KEYS */;
INSERT INTO `salesorderdetail` (`salesOrderNo`, `poNo`, `poDate`, `custName`, `bAmt`, `custGstAmt`, `custCstAmt`, `custVatAmt`, `custExciseAmt`, `custServiceTaxAmt`, `finalAmt`) VALUES
	('1', '12', '06/12/2016', 'Dench Technology', '12450', '0', '', '1751', '1556', '', '15757'),
	('2', '10', '06/12/2016', 'Kyadev', '1000', '0', '', '141', '125', '', '1266'),
	('3', '6110250980', '29/6/2016', 'ACG PAMPAC MACHINES PVT LTD.', '19488', '0', '', '2741', '2436', '', '24665');
/*!40000 ALTER TABLE `salesorderdetail` ENABLE KEYS */;


-- Dumping structure for table kke.salesorderitemdetail
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

-- Dumping data for table kke.salesorderitemdetail: ~22 rows (approximately)
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


-- Dumping structure for table kke.scheduledetailmaster
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

-- Dumping data for table kke.scheduledetailmaster: ~0 rows (approximately)
DELETE FROM `scheduledetailmaster`;
/*!40000 ALTER TABLE `scheduledetailmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduledetailmaster` ENABLE KEYS */;


-- Dumping structure for table kke.statetable
CREATE TABLE IF NOT EXISTS `statetable` (
  `countryId` int(5) DEFAULT NULL,
  `stateId` int(5) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(150) NOT NULL,
  PRIMARY KEY (`stateId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table kke.statetable: ~1 rows (approximately)
DELETE FROM `statetable`;
/*!40000 ALTER TABLE `statetable` DISABLE KEYS */;
INSERT INTO `statetable` (`countryId`, `stateId`, `stateName`) VALUES
	(1, 1, 'Maharashtra');
/*!40000 ALTER TABLE `statetable` ENABLE KEYS */;


-- Dumping structure for table kke.suppliercontactpersions
CREATE TABLE IF NOT EXISTS `suppliercontactpersions` (
  `SupplierName` varchar(150) DEFAULT NULL,
  `contactPersionName` varchar(100) DEFAULT NULL,
  `designation` varchar(150) DEFAULT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.suppliercontactpersions: ~7 rows (approximately)
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


-- Dumping structure for table kke.supplierdetail
CREATE TABLE IF NOT EXISTS `supplierdetail` (
  `suppId` varchar(150) NOT NULL,
  `suppName` varchar(150) NOT NULL,
  `suppShortCutName` varchar(100) DEFAULT NULL,
  `suppAddress` text,
  `suppCountry` varchar(50) DEFAULT NULL,
  `suppState` varchar(50) DEFAULT NULL,
  `suppDistrict` varchar(50) DEFAULT NULL,
  `suppTaluka` varchar(50) DEFAULT NULL,
  `suppZipCode` varchar(50) DEFAULT NULL,
  `suppWebsite` varchar(50) DEFAULT NULL,
  `suppEmail` varchar(120) DEFAULT NULL,
  `suppConatactNo` varchar(15) DEFAULT NULL,
  `suppGst` varchar(10) DEFAULT 'NO',
  `suppCst` varchar(10) DEFAULT 'NO',
  `suppVat` varchar(10) DEFAULT 'NO',
  `suppExcise` varchar(10) DEFAULT 'NO',
  `suppServiceTax` varchar(10) DEFAULT 'NO',
  `suppStatus` varchar(10) DEFAULT 'Active',
  PRIMARY KEY (`suppId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.supplierdetail: ~10 rows (approximately)
DELETE FROM `supplierdetail`;
/*!40000 ALTER TABLE `supplierdetail` DISABLE KEYS */;
INSERT INTO `supplierdetail` (`suppId`, `suppName`, `suppShortCutName`, `suppAddress`, `suppCountry`, `suppState`, `suppDistrict`, `suppTaluka`, `suppZipCode`, `suppWebsite`, `suppEmail`, `suppConatactNo`, `suppGst`, `suppCst`, `suppVat`, `suppExcise`, `suppServiceTax`, `suppStatus`) VALUES
	('1', 'Vardhaman Metal', 'Vardhaman', '143/15/2,Yashwant Ind.Estate,Lagadmala,\r\nSinhagad Road, Dhayari.', 'INDIA', 'MAHARASTRA', '', '', '', '', '', '', NULL, NULL, 'YES', 'YES', NULL, 'Active'),
	('10', 'dfd', 'dsfsd', 'dfdf', 'INDIA', 'MAHARASTRA', 'PUNE', '', '454', 'rttr', '', '', NULL, NULL, 'YES', NULL, NULL, 'Active'),
	('2', 'KUBER PROFILE', 'KUBER', 'S. NO. 38/2, NEAR PARI COMPANY,\r\nNARHE-DHAYARI ROAD,\r\nNARHE,', 'INDIA', 'MAHARASTRA', '', '', '', '', '', '', NULL, NULL, 'YES', 'YES', NULL, 'Active'),
	('3', 'METAL HOUSE INDIA', '', '', '--Select Country--', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'Active'),
	('4', 'Dhanlaxmi Profiles', '', 'Manikbaug, Vadgaon BK.\r\n', 'INDIA', 'MAHARASTRA', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'Active'),
	('5', 'PERFECT PACKING', '', '', 'INDIA', 'MAHARASTRA', 'PUNE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'Active'),
	('6', 'PERFECT POLYMERS', '', '', 'INDIA', 'MAHARASTRA', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'Active'),
	('7', 'POLYMASTER', '', '', 'INDIA', 'MAHARASTRA', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'Active'),
	('8', 'Wadilal', '', '', 'INDIA', 'MAHARASTRA', 'PUNE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'Active'),
	('9', 'Sai Industry', 'sai', 'Flat No -!7 Manglamurti APt Near \nBOM Narhe Pune', 'INDIA', 'MAHARASTRA', '', '', '', '', '', '', 'NO', 'YES', 'YES', 'YES', 'YES', 'Active');
/*!40000 ALTER TABLE `supplierdetail` ENABLE KEYS */;


-- Dumping structure for table kke.supplierregistrationnumbers
CREATE TABLE IF NOT EXISTS `supplierregistrationnumbers` (
  `suppName` varchar(150) DEFAULT NULL,
  `perticular` varchar(100) DEFAULT NULL,
  `registrationNo` varchar(60) DEFAULT NULL,
  `wef` varchar(150) DEFAULT NULL,
  `visible` varchar(10) DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.supplierregistrationnumbers: ~2 rows (approximately)
DELETE FROM `supplierregistrationnumbers`;
/*!40000 ALTER TABLE `supplierregistrationnumbers` DISABLE KEYS */;
INSERT INTO `supplierregistrationnumbers` (`suppName`, `perticular`, `registrationNo`, `wef`, `visible`) VALUES
	('Vardhaman Metal', 'VAT NO :', '231323', '', 'YES'),
	('dfd', 'CST NO :', 'y76', 'ghg', 'NO');
/*!40000 ALTER TABLE `supplierregistrationnumbers` ENABLE KEYS */;


-- Dumping structure for procedure kke.systemInsertIntoTable
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


-- Dumping structure for table kke.systemtable
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

-- Dumping data for table kke.systemtable: ~46 rows (approximately)
DELETE FROM `systemtable`;
/*!40000 ALTER TABLE `systemtable` DISABLE KEYS */;
INSERT INTO `systemtable` (`systemId`, `moduleId`, `systemName`, `SystemDesc`, `systemCreatedDate`, `Systemlink`, `status`) VALUES
	('1', '2', 'Module', 'System Modules', '2016-07-17', 'module', 'Active'),
	('10', '5', 'RawMaterialGradeInput', 'Raw Material Grade Input ', '2016-02-18', 'RawMaterialGradeInput', 'Active'),
	('11', 'test', 'employeeAdd', 'Employye Add for new', '2016-02-21', 'employeeAdd', NULL),
	('110', '11', 'Rm Stock', 'RM Stock', '2016-07-29', 'rmstock', 'Active'),
	('111', '11', 'Item Stock', 'Item Stock', '2016-07-29', 'itemstockdetail', 'Active'),
	('12', 'test', 'record', 'record of employee', '2016-02-21', 'record', 'Active'),
	('13', '9', 'QoutationCreateInput', 'Create Quotation', '2016-02-21', 'QoutationCreateInput', 'Active'),
	('14', '1', 'customerProcessStdRateInput', 'Standerd Prcess Rate', '2016-02-29', 'customerProcessStdRateInput', 'Active'),
	('15', '7', 'supllierPruchaseOrderInput', 'Add Purchase Item', '2016-03-15', 'supllierPruchaseOrderInput', 'Active'),
	('16', '7', 'CreatePurchaseOrder', 'Create Purchase Order', '2016-03-15', 'CreatePurchaseOrder', 'Active'),
	('17', '7', 'GRN ', 'Goods Recive Note', '2016-07-29', 'grndetail', 'Active'),
	('2', '2', 'Systems', 'Available Systems', '2016-07-17', 'system', 'Active'),
	('25', '3', 'commanDocumentNameInsert', 'Documents', '2016-03-17', 'commanDocumentNameInsert', 'Active'),
	('26', '1', 'CustomerDetailView', 'View Customer Detail', '2016-03-20', 'CustomerDetailView', 'Active'),
	('27', '4', 'supplierInputInsert', 'Add Supplier Detail', '2016-03-27', 'supplierInputInsert', 'Active'),
	('28', '9', 'QoutationDetail', 'Quotation Detail', '2016-03-30', 'QoutationDetail', 'Active'),
	('29', '4', 'SupplierDetailView', 'Supllier Detail', '2016-04-02', 'SupplierDetailView', 'Active'),
	('3', '3', 'CommanCountryInput', 'Country', '2016-02-14', 'CommanCountryInput', 'Active'),
	('30', '10', 'SalesOrderDetail', 'Sales Order Detail', '2016-04-03', 'SalesOrderDetail', 'Active'),
	('32', '7', 'CreatePurchaseOrder', 'Purchase Order', '2016-04-10', 'CreatePurchaseOrder', 'Active'),
	('33', '7', 'purchaseGRNInput', 'Purchase GRN Entry', '2016-04-13', 'purchaseGRNInput', 'Active'),
	('34', '10', 'InvoiceInputInsert', 'Create Invoice', '2016-04-16', 'InvoiceInputInsert', 'Active'),
	('35', '8', 'addNewEmployee', 'New Employee', '2016-04-16', 'addNewEmployee', 'Active'),
	('36', '8', 'Module', 'Allocate Module', '2016-04-17', 'usermoduleaccess', 'Active'),
	('37', '1', 'custItemInputInsert', 'Add Item', '2016-04-30', 'custItemInputInsert', 'Active'),
	('38', 'Inventory', 'bomInputInsert', 'BOM', '2016-05-19', 'bomInputInsert', 'Active'),
	('4', '3', 'CommanStateInput', 'State', '2016-02-14', 'CommanStateInput', 'Active'),
	('40', '10', 'custInvoiceDetail', 'Invoice Detail', '2016-05-21', 'custInvoiceDetail', 'Active'),
	('44', '7', 'SupplierPODetailInput', 'PO Detail', '2016-05-23', 'SupplierPODetailInput', 'Active'),
	('47', '10', 'customerPurchaseOrderInput', 'Add Sales Order', '2016-06-06', 'customerPurchaseOrderInput', 'Active'),
	('5', '3', 'CommanDistrictInput', ' District', '2016-02-14', 'CommanDistrictInput', 'Active'),
	('50', '1', 'custlist', 'Customer List', '2016-06-16', 'custlist', 'Active'),
	('51', '1', 'custprocessratelst', ' Process Rate List', '2016-06-16', 'custprocessratelst', 'Active'),
	('52', '1', 'allcustprocessratelst', 'Customer Process Rate List ', '2016-06-16', 'allcustprocessratelst', 'Active'),
	('53', '1', 'custitemlstdetail', 'Customer Item List', '2016-06-17', 'custitemlstdetail', 'Active'),
	('54', '5', 'basicrmlst', 'Basic RM List', '2016-06-20', 'basicrmlst', 'Active'),
	('55', '5', 'rndetaill', 'RM Detail', '2016-06-20', 'rndetaill', 'Active'),
	('58', '4', 'allsupplierlst', 'All Supplier List', '2016-06-24', 'allsupplierlst', 'Active'),
	('6', '3', 'CommanTalukaInput', 'Taluka', '2016-02-14', 'CommanTalukaInput', 'Active'),
	('60', '6', 'ppgettoollst', 'Tool ', '2016-06-25', 'ppgettoollst', 'Active'),
	('61', '6', 'ppgetprocesslst', 'Process ', '2016-06-25', 'ppgetprocesslst', 'Active'),
	('62', '6', 'ppgetoperationlst', 'Operations', '2016-06-25', 'ppgetoperationlst', 'Active'),
	('63', '6', 'ppinstrumentlst', 'Instruments', '2016-06-25', 'ppinstrumentlst', 'Active'),
	('7', '2', 'User Module Access', 'User Modules', '2016-07-17', 'usermoduleaccess', 'Active'),
	('8', '1', 'CustomerDetailInput', 'Add New Customer Detail', '2016-02-16', 'CustomerDetailInput', 'Active'),
	('9', '5', 'BasicRawMaterialGradeInput', 'Basic Raw Material Grade Insert', '2016-02-18', 'BasicRawMaterialGradeInput', 'Active');
/*!40000 ALTER TABLE `systemtable` ENABLE KEYS */;


-- Dumping structure for table kke.talukatable
CREATE TABLE IF NOT EXISTS `talukatable` (
  `talukaId` int(5) NOT NULL AUTO_INCREMENT,
  `districtId` int(5) DEFAULT NULL,
  `talukaName` varchar(150) NOT NULL,
  PRIMARY KEY (`talukaId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table kke.talukatable: ~0 rows (approximately)
DELETE FROM `talukatable`;
/*!40000 ALTER TABLE `talukatable` DISABLE KEYS */;
INSERT INTO `talukatable` (`talukaId`, `districtId`, `talukaName`) VALUES
	(1, 1, 'haveli');
/*!40000 ALTER TABLE `talukatable` ENABLE KEYS */;


-- Dumping structure for table kke.tools
CREATE TABLE IF NOT EXISTS `tools` (
  `toolId` int(5) NOT NULL AUTO_INCREMENT,
  `toolName` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`toolId`,`toolName`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table kke.tools: ~14 rows (approximately)
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


-- Dumping structure for table kke.usermoduleaccess
CREATE TABLE IF NOT EXISTS `usermoduleaccess` (
  `empID` varchar(20) DEFAULT NULL,
  `moduleId` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.usermoduleaccess: ~15 rows (approximately)
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
	('1', '11', 'Active');
/*!40000 ALTER TABLE `usermoduleaccess` ENABLE KEYS */;


-- Dumping structure for table kke.users
CREATE TABLE IF NOT EXISTS `users` (
  `empCode` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kke.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`empCode`, `userName`, `password`) VALUES
	('1', 'admin', 'shivuhanmant'),
	('2', 'bharat', '123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
