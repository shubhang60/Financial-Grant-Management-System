-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2016 at 12:52 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `FinancialGrantManagementSystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `AllUsers`
--
-- Creation: Mar 08, 2016 at 09:35 AM
--

CREATE TABLE IF NOT EXISTS `AllUsers` (
  `RollNumber` varchar(20) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Unregistered',
  `Password` varchar(25) DEFAULT NULL,
  `Accessor` varchar(20) DEFAULT NULL,
  `Requester` varchar(20) DEFAULT NULL,
  `Justification` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AllUsers`
--

INSERT INTO `AllUsers` (`RollNumber`, `Name`, `EmailId`, `Role`, `Status`, `Password`, `Accessor`, `Requester`, `Justification`) VALUES
('185028', 'Nishit', '185028@nith.ac.in', 'Admin1', 'Registered', 'nishit', NULL, NULL, ''),
('185060', 'Shubhang', '185060@nith.ac.in', 'Admin2', 'Registered', '185060', NULL, NULL, ''),
('185038', 'Kishore', '185038@nith.ac.in', 'MTech', 'Registered', '185038', NULL, NULL, ''),
('185010', 'Akshay', '185010@nith.ac.in', 'PhD', 'Registered', '185010', NULL, NULL,''),
('185079', 'Prachi', '185079@nith.ac.in', 'PhD', 'Registered', '185079', NULL, NULL,''),
('185031', 'Vanshaj', '185031@nith.ac.in', 'MTech', 'Registered', '185031', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `GrantDetails`
--
-- Creation: Mar 01, 2016 at 06:46 AM
--

CREATE TABLE IF NOT EXISTS `GrantDetails` (
  `GrantID` int(11) NOT NULL AUTO_INCREMENT,
  `RollNumber` varchar(20) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Justification` varchar(200) DEFAULT NULL,
  `AmountRequested` bigint(20) DEFAULT NULL,
  `AmountApproved` bigint(20) DEFAULT NULL,
  `RequestDate` date DEFAULT NULL,
  `ApprovalDate` date DEFAULT NULL,
  `SettlementDate` date DEFAULT NULL,
  `GrantStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GrantID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `GrantDetails`
--

INSERT INTO `GrantDetails` (`GrantID`, `RollNumber`, `Type`, `Justification`, `AmountRequested`, `AmountApproved`, `RequestDate`, `ApprovalDate`, `SettlementDate`, `GrantStatus`) VALUES
(80, '185030', 'Travel Allowances', 'feadsxcv ', 1234, 1000, '2016-03-10', '2016-03-10', '2016-03-10', 'Settled'),
(81, '185031', 'Medical', 'Conference in IITB', 12345, 12345, '2016-03-09', '2016-03-09', NULL, 'Unsettled'),
(82, '185010', 'Resources', 'Stationary', 120, NULL, '2016-03-09', NULL, NULL, 'Admin2_Rejected'),
(83, '185079', 'Travel Allowances', 'Printer', 2000, NULL, '2016-03-09', NULL, NULL, 'Admin2_Approved'),
(84, '185079', 'Resources', 'Germany DAAD', 2400, NULL, '2016-03-09', NULL, NULL, 'Cancelled'),
(85, '185031', 'Travel Allowances', 'New Research', 12345, 123, '2016-03-09', '2016-03-09', NULL, 'Unsettled');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
