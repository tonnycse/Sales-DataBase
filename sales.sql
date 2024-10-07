-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 08:05 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CusID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CusID`, `Name`, `City`, `Phone`) VALUES
(101, 'Aim Tek', 'New York', '111-111-1111'),
(102, 'Compu 21', 'Wilmington', '333-777- 6666'),
(103, 'Spinning Wheel', 'Chicago', '453-674-3066'),
(104, 'New Horizon', 'New York', '181-666-7779'),
(105, 'QA Connect', 'Los Angeles', '865-788-8889'),
(106, 'Learning Tree', 'New York', '899-777-8096'),
(107, 'Knowledge Box', 'Chicago', '899-777-8096');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `ManagerID` int(11) NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `Name`, `Title`, `ManagerID`, `Salary`) VALUES
(101, 'Robert Jones', 'Sales Person', 102, 55000),
(102, 'Liz Farnandez', 'Sales Manager', 106, 70000),
(103, 'Mathew Richards', 'Sales Person', 102, 57500),
(104, 'Ethan Lubatkin', 'Sales Person', 105, 48600),
(105, 'Stuart Little', 'Store Manager', 0, 49000),
(106, 'Samantha Porter', 'Manager', 0, 49000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderNum` int(11) NOT NULL,
  `OrdeDate` varchar(13) NOT NULL,
  `CusID` int(11) NOT NULL,
  `EmpID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderNum`, `OrdeDate`, `CusID`, `EmpID`, `Amount`) VALUES
(1001, '30-JUN-2012', 101, 103, 5600),
(1002, '30-JAN-2013', 103, 102, 6000),
(1003, '30-AUG-2012', 103, 103, 9000),
(1004, '30-MAR-2002', 104, 101, 8090),
(1005, '30-JUN-2000', 101, 103, 9087),
(1006, '30-DEC-2002', 103, 104, 8400),
(1007, '30-JUN-2013', 101, 101, 3459),
(1008, '30-JUL-2014', 104, 103, 977);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
