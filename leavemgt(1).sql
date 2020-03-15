-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2020 at 03:11 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `leavemgt`
--
CREATE DATABASE IF NOT EXISTS `leavemgt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `leavemgt`;

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE IF NOT EXISTS `administration` (
  `Officer_ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Officer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `Designation_ID` varchar(100) NOT NULL,
  `Designation_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Designation_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `head of department`
--

CREATE TABLE IF NOT EXISTS `head of department` (
  `HOD ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leave_form`
--

CREATE TABLE IF NOT EXISTS `leave_form` (
  `leave_no` int(100) NOT NULL AUTO_INCREMENT,
  `EmployeeID` varchar(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `HOD` varchar(100) NOT NULL,
  `Officer_acting` varchar(100) NOT NULL,
  `Officer_acting_Email` varchar(100) NOT NULL,
  `Type_of_Leave` varchar(100) NOT NULL,
  `Days` int(100) NOT NULL,
  `Commencing_leave` varchar(100) NOT NULL,
  `Resuming` varchar(100) NOT NULL,
  `Reason` varchar(200) NOT NULL,
  `Address_on_Leave` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  PRIMARY KEY (`leave_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `leave_form`
--

INSERT INTO `leave_form` (`leave_no`, `EmployeeID`, `Username`, `Designation`, `Department`, `HOD`, `Officer_acting`, `Officer_acting_Email`, `Type_of_Leave`, `Days`, `Commencing_leave`, `Resuming`, `Reason`, `Address_on_Leave`, `Status`) VALUES
(1, '2', 'se', 'Senior lecturer', 'Department of Science and Technology', 'accepted', 'accepted', 's@gmail.com', 'Casual', 2, '2020-03-04', '2020-03-19', 'dfdsdfs', 'fdsfds', 'Pending'),
(2, '2', 'se', 'Senior lecturer', 'Department of Science and Technology', 'N/A', 'N/A', 's@gmail.com', 'Sick', 4, '2020-03-25', '2020-03-26', 'dgd', 'f', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `UserType` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `UserID`, `Password`, `UserType`) VALUES
(1, 'a', 'b', 'Head of the Department'),
(2, 'sss', 'rrr', 'Senior lecturer'),
(3, 'aaa', 'aaa', 'admin'),
(4, 'ivo', '321', 'Assistant lecturer');

-- --------------------------------------------------------

--
-- Table structure for table `officer_acting`
--

CREATE TABLE IF NOT EXISTS `officer_acting` (
  `officer_acting_ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Faculty` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `UserID` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `Firstname`, `Lastname`, `Gender`, `Designation`, `Faculty`, `Department`, `Email`, `Phone`, `Address`, `UserID`) VALUES
(1, 'a', 'a', 'Female', 'Head of the Department', 'Faculty of Applied Sciences', 'Department of Management Science', 'ddd@gmail.com', '0789223345', 'gfhg', 'a'),
(2, 'se', 'fdo', 'Female', 'Senior lecturer', 'Faculty of Applied Sciences', 'Department of Science and Technology', 's@gmail.com', '1234567891', 'husdfgfuslg', 'sss'),
(3, 'ddd', 'dd', 'dd', 'admin', 'dd', 'dd', 'dd', 'dd', 'dd', 'aaa'),
(4, 'ivoshani', 'senevirathne', 'Female', 'Assistant lecturer', 'Faculty of Applied Sciences', 'Department of Computer Science and Informatics', 'ivoshanisenevi@gmail.com', '0789688116', 'kandy', 'ivo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
