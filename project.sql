-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 01:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `job_id` int(11) NOT NULL,
  `s_mail` varchar(20) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `c_mail` varchar(20) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`job_id`, `s_mail`, `c_name`, `status`, `c_mail`, `app_id`) VALUES
(0, 'pavan@gmail.com', '', 1, 'infosys@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `companys`
--

CREATE TABLE `companys` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `ceo` varchar(20) NOT NULL,
  `cto` varchar(20) NOT NULL,
  `hr` varchar(20) NOT NULL,
  `worth` bigint(20) NOT NULL,
  `found` varchar(20) NOT NULL,
  `founder` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companys`
--

INSERT INTO `companys` (`name`, `email`, `pwd`, `phone`, `location`, `ceo`, `cto`, `hr`, `worth`, `found`, `founder`) VALUES
('infosys', 'infosys@gmail.com', '1234', 123456789, 'tirupati', 'jh', 'jh', 'hb', 20, '1980', 'fb');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `branch` varchar(6) NOT NULL,
  `year` int(11) NOT NULL,
  `cpi` float NOT NULL,
  `12p` float NOT NULL,
  `10p` float NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `degree` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`name`, `email`, `dob`, `branch`, `year`, `cpi`, `12p`, `10p`, `pwd`, `phone`, `degree`) VALUES
('pavan', 'pavan@gmail.com', '2000-01-25', 'cse', 2023, 7, 72, 88, '1234', 7097813735, 'B.Tech');

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `job_title` varchar(20) NOT NULL,
  `salary` decimal(10,0) NOT NULL,
  `deadline` varchar(20) NOT NULL,
  `bond` int(11) NOT NULL,
  `year_e` int(11) NOT NULL,
  `cpi_e` float NOT NULL,
  `12p_e` float NOT NULL,
  `10p_e` float NOT NULL,
  `branch` varchar(20) NOT NULL,
  `age_e` int(11) NOT NULL,
  `degree_e` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `company_name` varchar(20) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`job_title`, `salary`, `deadline`, `bond`, `year_e`, `cpi_e`, `12p_e`, `10p_e`, `branch`, `age_e`, `degree_e`, `location`, `company_name`, `job_id`) VALUES
('Student', '2', '2023-01-25', 2, 2023, 7, 68.09, 88, '', 23, 'B.Tech', 'Tirupati', 'infosys', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `companys`
--
ALTER TABLE `companys`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD UNIQUE KEY `job_title` (`job_title`),
  ADD UNIQUE KEY `job_id` (`job_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
