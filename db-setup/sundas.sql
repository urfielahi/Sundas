-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2016 at 07:28 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_pay_requests`
--

CREATE TABLE `advance_pay_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `request_description` text NOT NULL,
  `amount_requested` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','approved','rejected','deleted') NOT NULL DEFAULT 'active',
  `approved_by` int(11) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advance_pay_requests`
--

INSERT INTO `advance_pay_requests` (`id`, `employee_id`, `request_description`, `amount_requested`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`, `approved_by`, `rejected_by`) VALUES
(1, 12, 'This is a Test Description, for the advance pay.', 5000, 2, '2016-03-16 09:00:47', 1, '2016-03-16 10:21:03', 'active', NULL, NULL),
(2, 0, 'gchj,blk.m', 23000, 6, '2016-04-09 11:10:36', NULL, NULL, 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` int(11) NOT NULL,
  `company_name` varchar(32) DEFAULT NULL,
  `tag_line` varchar(64) DEFAULT NULL,
  `logo` varchar(32) DEFAULT 'logo.png',
  `website_url` varchar(64) DEFAULT NULL,
  `about_company` varchar(512) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `contact_no` varchar(16) DEFAULT NULL,
  `fax_no` varchar(16) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`id`, `company_name`, `tag_line`, `logo`, `website_url`, `about_company`, `email`, `contact_no`, `fax_no`, `country`, `state`, `city`, `address`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`) VALUES
(1, 'Insights Communications', 'We Provide Business Solutions', 'avatar_1.png', 'http://www.insightsdubai.com', 'This is a solution provider company.', 'contact@insightsdubai.com', '1231231231', '1231321231', 'Antigua and Barbuda', 'Saint George', 'Dubai', 'Ist Floor, Acdt. Complex', NULL, '2016-03-04 10:19:18', 1, '2016-03-17 09:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `skype` varchar(32) NOT NULL,
  `mobile` varchar(16) NOT NULL,
  `landline` varchar(16) NOT NULL,
  `note` varchar(512) NOT NULL,
  `company_name` varchar(32) NOT NULL,
  `business_line` varchar(32) NOT NULL,
  `designation` varchar(32) NOT NULL,
  `country` text NOT NULL,
  `state` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `skype`, `mobile`, `landline`, `note`, `company_name`, `business_line`, `designation`, `country`, `state`, `address`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 'Faizan', 'faizan@insightsdubai.com', 'faizan123', '9898989765', '1231231231231', 'This is a Test Contact', 'insights Com', 'Software Development', 'PHP Developer', 'Turkey', 'Artvin', 'Ist Floor, Lower Street', 1, '2016-03-07 09:24:29', 1, '2016-03-07 08:08:02', 'active'),
(2, 'Kent Tupas', 'contact@insightsdubai.com', 'asd123', '9898981231', '1231231231234', 'dasdasda', 'Insights Communications', 'Software Development', 'Developer', 'Austria', 'Oberoesterreich', 'as', 1, '2016-03-07 09:45:21', NULL, NULL, 'active'),
(3, 'Mohammed Imran', 'irfan@insightsdubai.com', 'irfan', '9898989765', '1231231231231', 'asd', 'Test Company', 'Software Development', 'Developer', 'Ashmore and Cartier Island', 'Ashmore and Cartier Island', 'asdasd', 1, '2016-03-11 06:46:31', NULL, NULL, 'active'),
(4, 'Asif Mustafa Memon', 'asif@gmail.com', 'asif123', '98989897612', '1231231231231', '', 'Insights Communications', 'Software Development', 'Developer', 'Bahamas', 'Ragged Island', 'asd', 1, '2016-03-11 07:02:17', NULL, NULL, 'active'),
(19, 'Shoaib Mohmad', 'mohmad.shoaib@gmail.com', 'shoai123', '9898989765', '1231231231231', 'sdasd', 'Insights Communications', 'Software Development', 'Developer', 'American Samoa', 'Swains Island', 'Ist Floor, Acdt. Complex', 1, '2016-03-11 08:25:02', NULL, NULL, 'active'),
(20, 'Kent Tupas ASD', 'contaasct@insightsdubai.com', 'asd123', '9898989765', '1231231231231', 'asd', 'Insights Communications', 'Software Development', 'Developer', 'United Arab Emirates', 'Abu Zaby (Abu Dhabi)', 'Ist Floor, Acdt. Complex', 1, '2016-03-17 09:09:33', NULL, NULL, 'active'),
(21, 'Ayesha Khan asd', 'ayesha@insaightsdubai.com', 'asd123', '9898981231', '1231231231231', 'asdasdasd', 'Insights Communications', 'Software Development', 'PHP Developer', 'United Arab Emirates', 'Abu Zaby (Abu Dhabi)', 'asd', 1, '2016-03-17 16:47:11', NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `designation` varchar(32) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `fathers_name` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  `contact_no` varchar(16) NOT NULL,
  `mobile_no` varchar(16) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `user_password` varchar(128) NOT NULL,
  `email` varchar(32) NOT NULL,
  `email_password` varchar(32) DEFAULT NULL,
  `avatar` varchar(32) NOT NULL DEFAULT 'avatar.gif',
  `country` varchar(32) NOT NULL,
  `state` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `address` varchar(64) NOT NULL,
  `pin` varchar(16) NOT NULL,
  `certifications` varchar(128) NOT NULL,
  `trainings` varchar(128) NOT NULL,
  `doj` date NOT NULL,
  `probation_period` varchar(32) NOT NULL,
  `employee_note` varchar(512) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `link_value` bigint(20) DEFAULT NULL,
  `status` enum('active','suspended','terminated','link_send','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `designation_id`, `designation`, `first_name`, `last_name`, `fathers_name`, `dob`, `contact_no`, `mobile_no`, `user_name`, `user_password`, `email`, `email_password`, `avatar`, `country`, `state`, `city`, `address`, `pin`, `certifications`, `trainings`, `doj`, `probation_period`, `employee_note`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `link_value`, `status`) VALUES
(1, 0, 'Admin', 'Shoaib', 'Mohmad', 'Father', '2010-10-13', '1231231231', '9596545092', 'admin', '202cb962ac59075b964b07152d234b70', 'mohmad.shoaib@gmail.com', 'asd123', 'avatar_1.jpg', 'India', 'Jammu and Kashmir', 'Srinagar', 'Zakura, Hazratbal', '190006', 'Test Certification1', 'Test Training1', '2016-03-01', '3', 'This is Admin of the Application', 0, '2016-03-04 05:28:34', 1, '2016-03-05 06:19:46', NULL, 'active'),
(6, 4, 'Reporting Officer', 'Shoaib', 'Mohmad', 'Father', '2016-03-24', '1231231231', '9596545092', 'shoaib', '202cb962ac59075b964b07152d234b70', 'mohmad.shoaib@gmail.com', 'asd', 'avatar.gif', 'Armenia', 'Lorri', 'Dubai', 'Ist Floor, Acdt. Complex', '123', 'Certifications', 'Trainings', '2016-03-14', '2', 'This is a Test Employee note...', 1, '2016-03-04 12:30:23', 1, '2016-04-06 12:04:31', NULL, 'active'),
(12, 4, 'Reporting Officer', 'Hilal', 'Ahmad', 'Father', '2016-03-15', '1231231231', '9596545091', 'hilal', '202cb962ac59075b964b07152d234b70', 'contact@insightsdubai.com', 'sad', 'avatar.gif', 'Bahrain', 'Madinat ''Isa', 'Dubai', 'Ist Floor, Acdt. Complex', '123123', 'Certifications', 'Trainings', '2016-03-01', '2', 'Asd', 1, '2016-03-05 09:08:10', 1, '2016-04-06 11:42:20', NULL, 'active'),
(13, 2, 'Project Manager', 'Ameer ', 'Ullah', 'Aziz ud Din', '2000-01-05', '1231231231', '1231231231', 'ameer', '202cb962ac59075b964b07152d234b70', 'ameer@gmail.com', '123', 'avatar.gif', 'India', 'Jammu and Kashmir', 'Srinagar', 'Ist Floor Wani Comples', '190001', '', '', '2016-03-01', '', 'This is a Test Project Manager.', 1, '2016-03-18 05:58:51', 1, '2016-04-06 12:04:48', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `employee_assets`
--

CREATE TABLE `employee_assets` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `asset_name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `issued_on` date DEFAULT NULL,
  `returned_on` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('issued','returned','deleted') NOT NULL DEFAULT 'issued'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_assets`
--

INSERT INTO `employee_assets` (`id`, `employee_id`, `asset_name`, `description`, `issued_on`, `returned_on`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 12, 'laptop', 'Dell laptop', '1970-01-01', '2016-03-23', 1, '2016-03-29 07:36:02', 1, '2016-03-29 09:37:29', 'returned'),
(2, 13, 'iPhone', 'Apple Phones', '2016-03-10', NULL, 1, '2016-03-29 09:38:40', 1, '2016-03-29 10:18:54', 'issued'),
(3, 12, 'Router', 'D-Link router', '2016-03-01', NULL, 1, '2016-03-29 10:23:38', NULL, NULL, 'issued'),
(4, 6, 'xzbfx nc', 'dszbfdxhgv', '2016-03-21', NULL, 1, '2016-03-29 10:24:01', 1, '2016-03-29 10:29:18', 'deleted');

-- --------------------------------------------------------

--
-- Table structure for table `employee_designations`
--

CREATE TABLE `employee_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation_title` varchar(128) NOT NULL,
  `designation_description` varchar(512) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_designations`
--

INSERT INTO `employee_designations` (`id`, `designation_title`, `designation_description`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 'Team Leader', 'Team Leader''s job is to Lead the Team.', 1, '2016-04-06 11:03:08', NULL, NULL, 'active'),
(2, 'Project Manager', 'Project Manager''s Job is to manage the Project.', 1, '2016-04-06 11:05:09', NULL, NULL, 'active'),
(3, 'Line Manager', 'Line Manager''s Job is to view the Performance.', 1, '2016-04-06 11:05:59', 1, '2016-04-06 11:10:02', 'active'),
(4, 'Reporting Officer', 'Reporting Officer''s Job is to manage the Leads.', 1, '2016-04-06 11:06:33', NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `employee_evaluation`
--

CREATE TABLE `employee_evaluation` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question_description` text NOT NULL,
  `employee_rating` int(11) NOT NULL,
  `concerned_heads_ids` varchar(128) DEFAULT NULL,
  `concerned_heads_rating` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_evaluation`
--

INSERT INTO `employee_evaluation` (`id`, `question_id`, `question_description`, `employee_rating`, `concerned_heads_ids`, `concerned_heads_rating`, `employee_id`, `created_by`, `created_at`) VALUES
(1, 1, 'How do you rate your performance?			\r\n			\r\n', 2, NULL, NULL, 6, 6, '2016-04-09 11:41:09'),
(2, 1, 'How do you rate your performance?			\r\n			\r\n', 3, NULL, NULL, 6, 6, '2016-04-09 11:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `employee_experience`
--

CREATE TABLE `employee_experience` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `designation` varchar(32) NOT NULL,
  `employer` varchar(128) NOT NULL,
  `duration_from` date NOT NULL,
  `duration_to` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_experience`
--

INSERT INTO `employee_experience` (`id`, `employee_id`, `designation`, `employer`, `duration_from`, `duration_to`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(7, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-05 09:08:11', 1, '2016-04-06 11:42:20', 'deleted'),
(8, 12, 'Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-05 09:08:11', 1, '2016-04-06 11:42:20', 'deleted'),
(12, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-05 10:45:17', 1, '2016-04-06 11:42:20', 'deleted'),
(13, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-05 10:46:41', 1, '2016-04-06 11:42:20', 'deleted'),
(14, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-05 10:47:14', 1, '2016-04-06 11:42:20', 'deleted'),
(15, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-05 10:47:14', 1, '2016-04-06 11:42:20', 'deleted'),
(16, 6, 'Developer', 'SDF', '2016-03-01', '2016-03-10', 1, '2016-03-05 11:15:50', 1, '2016-04-06 12:04:31', 'deleted'),
(17, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-07 11:14:11', 1, '2016-04-06 11:42:20', 'deleted'),
(18, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-07 11:14:11', 1, '2016-04-06 11:42:20', 'deleted'),
(19, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-07 12:27:04', 1, '2016-04-06 11:42:20', 'deleted'),
(20, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-07 12:27:04', 1, '2016-04-06 11:42:20', 'deleted'),
(21, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-07 12:30:38', 1, '2016-04-06 11:42:20', 'deleted'),
(22, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-07 12:30:38', 1, '2016-04-06 11:42:20', 'deleted'),
(23, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-08 06:40:25', 1, '2016-04-06 11:42:20', 'deleted'),
(24, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-08 06:40:25', 1, '2016-04-06 11:42:20', 'deleted'),
(25, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-08 06:41:48', 1, '2016-04-06 11:42:20', 'deleted'),
(26, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-08 06:41:48', 1, '2016-04-06 11:42:20', 'deleted'),
(27, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-14 07:33:53', 1, '2016-04-06 11:42:20', 'deleted'),
(28, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-14 07:33:53', 1, '2016-04-06 11:42:20', 'deleted'),
(29, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-14 07:35:19', 1, '2016-04-06 11:42:20', 'deleted'),
(30, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-14 07:35:19', 1, '2016-04-06 11:42:20', 'deleted'),
(31, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-14 07:35:58', 1, '2016-04-06 11:42:20', 'deleted'),
(32, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-14 07:35:58', 1, '2016-04-06 11:42:20', 'deleted'),
(33, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-14 07:48:35', 1, '2016-04-06 11:42:20', 'deleted'),
(34, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-14 07:48:35', 1, '2016-04-06 11:42:20', 'deleted'),
(35, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-14 07:49:51', 1, '2016-04-06 11:42:20', 'deleted'),
(36, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-14 07:49:51', 1, '2016-04-06 11:42:20', 'deleted'),
(37, 6, 'Developer', 'SDF', '2016-03-01', '2016-03-10', 1, '2016-03-14 08:04:04', 1, '2016-04-06 12:04:31', 'deleted'),
(38, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-03-16 05:24:15', 1, '2016-04-06 11:42:20', 'deleted'),
(39, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-03-16 05:24:15', 1, '2016-04-06 11:42:20', 'deleted'),
(40, 12, 'Developer', 'ABC', '2016-03-10', '2016-03-12', 1, '2016-04-06 11:42:20', NULL, NULL, 'active'),
(41, 12, 'Sr Developer', 'DEF', '2016-03-30', '2016-03-31', 1, '2016-04-06 11:42:20', NULL, NULL, 'active'),
(42, 6, 'Developer', 'SDF', '2016-03-01', '2016-03-10', 1, '2016-04-06 12:04:31', NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `employee_files`
--

CREATE TABLE `employee_files` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `file_name_url` varchar(32) NOT NULL,
  `file_name` varchar(64) NOT NULL,
  `file_description` varchar(256) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_files`
--

INSERT INTO `employee_files` (`id`, `employee_id`, `file_name_url`, `file_name`, `file_description`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(3, 12, '12_1.xlsx', 'Experience Certificate', 'This is the Experience Certificate of Hilal Ahmad', 1, '2016-03-05 09:08:10', NULL, NULL, 'active'),
(4, 12, '12_2.pdf', 'Sde', 'asdasd', 1, '2016-03-05 09:08:11', 1, '2016-03-05 10:33:42', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `subject` text NOT NULL,
  `leave_description` text NOT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','approved','rejected','deleted') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_id`, `leave_from`, `leave_to`, `subject`, `leave_description`, `approved_by`, `rejected_by`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 12, 2, '2016-03-30', '1970-01-01', 'Wedding', 'marriage ceremony of my sister', NULL, NULL, 1, '2016-03-23 07:01:36', NULL, NULL, 'active'),
(2, 6, 1, '2016-03-30', '1970-01-01', 'hello', 'hello', 1, NULL, 1, '2016-03-23 09:23:31', 1, '2016-03-23 11:02:45', 'approved'),
(3, 1, 1, '2016-03-30', '1970-01-01', 'wafesg', 'awfergth', NULL, NULL, 1, '2016-03-23 09:25:20', NULL, NULL, 'active'),
(4, 1, 1, '2016-03-20', '1970-01-01', 'dSEGrdh', 'qwrgahe', NULL, 1, 1, '2016-03-23 09:29:12', 1, '2016-03-23 11:03:02', 'rejected'),
(5, 1, 3, '2016-03-21', '2016-03-23', 'This is a Test', 'This is a Test Description.', NULL, NULL, 1, '2016-03-23 09:30:29', 6, '2016-03-28 11:30:08', 'active'),
(6, 1, 2, '2016-03-21', '1970-01-01', 'new', 'new', NULL, NULL, 1, '2016-03-23 10:20:43', 1, '2016-03-23 11:03:14', 'deleted');

-- --------------------------------------------------------

--
-- Table structure for table `employee_login`
--

CREATE TABLE `employee_login` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `logged_in_at` time NOT NULL,
  `logged_out_at` time DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_login`
--

INSERT INTO `employee_login` (`id`, `employee_id`, `logged_in_at`, `logged_out_at`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(55, 1, '05:30:00', '07:15:00', 1, '2016-03-23 08:07:13', 6, '2016-03-28 10:19:35', 'active'),
(56, 12, '04:20:00', '09:26:00', 6, '2016-03-22 10:23:22', NULL, NULL, 'active'),
(57, 12, '09:00:00', NULL, 12, '2016-03-22 10:26:10', 1, '2016-03-22 11:07:26', 'active'),
(58, 12, '11:17:58', '05:30:00', 1, '2016-03-23 05:47:58', 6, '2016-03-28 10:23:38', 'active'),
(59, 6, '10:58:16', NULL, 6, '2016-04-07 05:28:16', NULL, NULL, 'active'),
(60, 1, '10:45:50', '10:50:03', 1, '2016-04-08 05:15:50', 1, '2016-04-08 05:20:03', 'active'),
(62, 1, '10:51:41', '10:51:50', 1, '2016-04-09 05:21:41', 1, '2016-04-09 05:21:50', 'active'),
(63, 1, '10:52:14', '10:52:19', 1, '2016-04-09 05:22:14', 1, '2016-04-09 05:22:19', 'active'),
(64, 1, '10:55:50', NULL, 1, '2016-04-09 05:25:50', NULL, NULL, 'active'),
(65, 1, '11:02:32', NULL, 1, '2016-04-09 05:32:32', NULL, NULL, 'active'),
(66, 1, '11:07:00', NULL, 1, '2016-04-09 05:37:00', NULL, NULL, 'active'),
(67, 1, '11:07:53', '11:07:59', 1, '2016-04-09 05:37:53', 1, '2016-04-09 05:37:59', 'active'),
(68, 1, '11:08:18', NULL, 1, '2016-04-09 05:38:18', NULL, NULL, 'active'),
(72, 1, '11:55:07', NULL, 1, '2016-04-08 06:25:07', NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `employee_qualification`
--

CREATE TABLE `employee_qualification` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `qualification` varchar(64) NOT NULL,
  `authority` varchar(64) NOT NULL,
  `percentage` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_qualification`
--

INSERT INTO `employee_qualification` (`id`, `employee_id`, `qualification`, `authority`, `percentage`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 12, '1', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(2, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(3, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(4, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(5, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(6, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(7, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(8, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(9, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(10, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(11, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(12, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(13, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(14, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(15, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(16, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(17, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(18, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(19, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', 1, '2016-04-06 11:42:20', 'deleted'),
(20, 12, '10th', 'JKBOSE', 67, 1, '2016-04-06 11:42:20', NULL, NULL, 'active'),
(21, 12, '12th', 'JKBOSE', 45, 1, '2016-04-06 11:42:20', NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `house_allowance` int(11) NOT NULL,
  `travelling_allowance` int(11) NOT NULL,
  `other_allowance` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`id`, `employee_id`, `basic_salary`, `house_allowance`, `travelling_allowance`, `other_allowance`, `salary`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 12, 2000, 1000, 500, 1000, 4500, 1, '2016-03-14 07:33:53', 1, '2016-03-14 07:49:51', 'deleted'),
(5, 12, 2000, 1000, 500, 1000, 4500, 1, '2016-03-14 07:49:51', 1, '2016-03-14 11:22:21', 'deleted'),
(6, 6, 2000, 2000, 1000, 1000, 6000, 1, '2016-03-14 08:04:04', NULL, NULL, 'active'),
(7, 12, 2000, 1000, 1000, 1000, 5000, 1, '2016-03-14 11:22:21', NULL, NULL, 'active'),
(8, 13, 2000, 1000, 1000, 1000, 5000, 1, '2016-03-19 06:29:15', NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `late_sitting`
--

CREATE TABLE `late_sitting` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `hours` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `status` enum('active','rejected','approved','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `late_sitting`
--

INSERT INTO `late_sitting` (`id`, `employee_id`, `date`, `hours`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `approved_by`, `rejected_by`, `status`) VALUES
(1, 1, '2016-03-23', 3, 1, '2016-03-25 10:44:22', 6, '2016-03-28 10:43:19', 1, NULL, 'deleted'),
(2, 1, '2016-03-09', 3, 1, '2016-03-25 10:46:42', 1, '2016-03-25 11:36:32', NULL, 1, 'deleted'),
(3, 1, '2016-03-18', 2, 1, '2016-03-25 10:47:59', 1, '2016-03-26 05:24:07', NULL, 1, 'rejected'),
(4, 12, '2016-03-15', 2, 12, '2016-03-25 11:03:49', 1, '2016-03-25 11:36:39', NULL, 1, 'deleted'),
(5, 1, '2016-03-22', 4, 1, '2016-03-25 11:06:05', 1, '2016-03-26 05:24:38', NULL, 1, 'deleted'),
(6, 1, '2016-03-30', 3, 1, '2016-03-25 11:37:18', 1, '2016-03-26 05:24:34', NULL, 1, 'deleted'),
(7, 1, '2016-03-16', 3, 1, '2016-03-26 05:24:23', 6, '2016-03-28 10:43:10', 6, NULL, 'approved'),
(8, 1, '2016-03-31', 5, 1, '2016-03-26 05:43:26', NULL, NULL, NULL, NULL, 'active'),
(9, 6, '2016-03-18', 5, 6, '2016-03-28 10:45:45', NULL, NULL, NULL, NULL, 'active'),
(10, 6, '2016-04-07', 3, 6, '2016-04-09 10:18:09', NULL, NULL, NULL, NULL, 'active'),
(11, 6, '2016-04-06', 5, 6, '2016-04-09 10:23:59', NULL, NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `cp_id` int(11) NOT NULL,
  `cp_name` varchar(64) NOT NULL,
  `cp_email` varchar(64) NOT NULL,
  `cp_skype` varchar(32) NOT NULL,
  `cp_mobile` varchar(16) NOT NULL,
  `cp_landline` varchar(16) NOT NULL,
  `cp_company_name` varchar(64) NOT NULL,
  `cp_business_line` varchar(64) NOT NULL,
  `cp_designation` varchar(64) NOT NULL,
  `cp_country` varchar(32) NOT NULL,
  `cp_state` varchar(32) NOT NULL,
  `cp_address` varchar(256) NOT NULL,
  `cp_note` varchar(512) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `lead_title` varchar(256) NOT NULL,
  `lead_description` text NOT NULL,
  `lead_revenue` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `assignee_note` varchar(256) DEFAULT NULL,
  `update_note` varchar(512) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','converted','closed','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `cp_id`, `cp_name`, `cp_email`, `cp_skype`, `cp_mobile`, `cp_landline`, `cp_company_name`, `cp_business_line`, `cp_designation`, `cp_country`, `cp_state`, `cp_address`, `cp_note`, `rating`, `lead_title`, `lead_description`, `lead_revenue`, `assigned_to`, `assignee_note`, `update_note`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 3, 'Mohammed Imran', 'irfan@insightsdubai.com', 'irfan', '9898989765', '1231231231231', 'Test Company', 'Software Development', 'Developer', 'Ashmore and Cartier Island', 'Ashmore and Cartier Island', 'Test address.', 'Test Note.', 6, 'Test Lead 1', 'The necessity of seeking particulars of all these engineers who remained posted at one or other point of time in the areas through which the river Jhelum passes.', 5500, 12, 'Assigned to Hilal', 'Coverted.', 1, '2016-03-11 08:44:21', 1, '2016-03-11 11:27:36', 'converted'),
(2, 3, 'Mohammed Imran', 'irfan@insightsdubai.com', 'irfan', '9898989765', '1231231231231', 'Test Company', 'Software Development', 'Developer', 'Ashmore and Cartier Island', 'Ashmore and Cartier Island', 'asdasd', 'Test Note', 8, 'Test Lead 2', 'arose because it has come on record that this River has been unabashedly encroached upon throughout its course.', 5000, 6, 'Assigned to Shoaib.', 'Converted the lead.', 1, '2016-03-11 08:44:43', 1, '2016-03-14 12:10:31', 'converted'),
(3, 2, 'Kent Tupas', 'contact@insightsdubai.com', 'asd123', '9898981231', '1231231231234', 'Insights Communications', 'Software Development', 'Developer', 'Austria', 'Oberoesterreich', 'as', 'dasdasda', NULL, 'Test Lead 4', 'This is a Test Lead.', 13000, 12, 'Note is here', 'Work done.', 1, '2016-03-16 06:28:13', 1, '2016-03-16 06:29:03', 'converted');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_name` varchar(128) NOT NULL,
  `leave_description` varchar(1024) NOT NULL,
  `yearly_leaves` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `leave_name`, `leave_description`, `yearly_leaves`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 'Earned Leave or Privilege Leave', 'Employees earn as they work for an organisation for a specified number of days.', 12, 1, '2016-03-16 05:25:36', 1, '2016-03-16 10:38:26', 'active'),
(2, 'Casual Leave', 'Granted for short durations and can ordinarily be taken with prior information to the employer except in cases when informing the employer is not possible.', 10, 1, '2016-03-16 05:25:59', 1, '2016-03-16 05:41:03', 'active'),
(3, 'Sick Leave or Medical Leave', 'An employee can call in sick if he is not in a state to come to office for work.', 8, 1, '2016-03-16 05:31:20', 1, '2016-03-17 05:17:33', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `loan_requests`
--

CREATE TABLE `loan_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `loan_description` text NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','approved','rejected','deleted') NOT NULL DEFAULT 'active',
  `approved_by` int(11) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_requests`
--

INSERT INTO `loan_requests` (`id`, `employee_id`, `loan_description`, `loan_amount`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`, `approved_by`, `rejected_by`) VALUES
(1, 12, 'Sanction the Loan ASAP.', 45000, 12, '2016-03-16 10:27:35', 1, '2016-03-16 10:35:54', 'active', NULL, NULL),
(2, 0, 'fhgvkj,b', 34000, 6, '2016-04-09 11:18:53', NULL, NULL, 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `miss_attendance`
--

CREATE TABLE `miss_attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `missed` enum('time-in','time-out') NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `status` enum('active','approved','rejected','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `miss_attendance`
--

INSERT INTO `miss_attendance` (`id`, `employee_id`, `date`, `missed`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `approved_by`, `rejected_by`, `status`) VALUES
(1, 12, '2016-03-28', 'time-in', 12, '2016-03-28 10:13:11', 1, '2016-03-28 10:50:07', NULL, 1, 'rejected'),
(2, 1, '2016-03-31', 'time-out', 1, '2016-03-28 10:28:11', 6, '2016-03-29 05:50:49', NULL, NULL, 'active'),
(3, 1, '2016-03-20', 'time-in', 1, '2016-03-28 10:48:38', 1, '2016-03-28 10:50:13', 1, NULL, 'deleted'),
(4, 1, '2016-03-30', 'time-in', 1, '2016-03-29 05:15:25', NULL, NULL, NULL, NULL, 'active'),
(5, 6, '2016-04-07', 'time-out', 6, '2016-04-09 10:51:35', NULL, NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `note_type` enum('reminder','note') NOT NULL,
  `reminder_category` varchar(32) DEFAULT NULL,
  `fa_awesome` varchar(16) DEFAULT NULL,
  `note_title` varchar(512) NOT NULL,
  `note_description` text NOT NULL,
  `reminder_date_time` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','discarded','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `note_type`, `reminder_category`, `fa_awesome`, `note_title`, `note_description`, `reminder_date_time`, `created_by`, `created_at`, `status`) VALUES
(1, 'reminder', 'meeting', NULL, 'Test Title', 'This is a Test Reminder.', '2016-03-06 18:30:00', 0, '2016-03-07 09:55:19', 'active'),
(6, 'reminder', 'chat', 'fa fa-comments', 'Chat with Client', 'Need to chat with client today.', '2016-03-11 04:38:00', 1, '2016-03-10 11:38:31', 'active'),
(7, 'reminder', 'call', 'fa fa-phone', 'Call to Employee', 'Make a call to the employee...', '2016-03-11 15:55:00', 1, '2016-03-10 15:50:22', 'active'),
(8, 'reminder', 'document', 'fa fa-file-text', 'Send Document', 'Mail the document to the Boss.', '2016-03-11 16:10:00', 1, '2016-03-10 15:51:02', 'active'),
(9, 'reminder', 'meeting', 'fa fa-briefcase', 'Meeting with client.', 'Meeting has been fixed.', '2016-03-11 16:15:00', 1, '2016-03-10 15:51:52', 'active'),
(10, 'note', '', 'fa fa-clock-o', 'Test Note ', 'This is a Test Note created by Shoaib.', '0000-00-00 00:00:00', 1, '2016-03-10 15:59:37', 'active'),
(11, 'reminder', 'meeting', 'fa fa-briefcase', 'Meeting', 'Nith', '2016-03-10 17:50:00', 1, '2016-03-10 16:32:05', 'active'),
(12, 'reminder', 'chat', 'fa fa-comments-o', 'Chat with Client', 'Need to chat with the client.', '2016-03-19 08:50:00', 1, '2016-03-19 07:50:28', 'active'),
(13, 'reminder', 'chat', 'fa fa-comments-o', 'Chat with Client', 'Addfr fv wefew efef wefwef.', '2016-03-21 09:56:00', 1, '2016-03-21 09:56:15', 'active'),
(14, 'reminder', 'meeting', 'fa fa-briefcase', 'Meeting with Client', 'I have a meeting with the Client.', '2016-04-07 06:34:00', 6, '2016-03-21 11:19:55', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `off_day`
--

CREATE TABLE `off_day` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `status` enum('active','approved','rejected','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `off_day`
--

INSERT INTO `off_day` (`id`, `employee_id`, `date`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `approved_by`, `rejected_by`, `status`) VALUES
(1, 1, '2016-03-30', 1, '2016-03-26 10:37:21', 1, '2016-03-26 10:55:31', 0, 1, 'rejected'),
(2, 1, '2016-03-25', 1, '2016-03-26 10:49:26', 1, '2016-03-26 10:55:25', 1, NULL, 'approved'),
(3, 1, '2016-03-31', 1, '2016-03-26 10:55:43', NULL, NULL, NULL, NULL, 'active'),
(4, 6, '2016-03-22', 6, '2016-03-26 11:12:46', 1, '2016-03-28 07:11:16', NULL, 1, 'rejected'),
(5, 12, '2016-03-29', 12, '2016-03-26 12:13:42', NULL, NULL, NULL, NULL, 'active'),
(6, 6, '2016-03-28', 6, '2016-03-28 10:57:13', 6, '2016-03-28 11:02:00', NULL, NULL, 'active'),
(7, 6, '2016-04-06', 6, '2016-04-09 10:36:33', NULL, NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`id`, `question`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 'How do you rate your performance?			\r\n			\r\n', 6, '2016-03-18 06:19:53', 1, '2016-03-18 11:52:21', 'active'),
(2, 'You attitude towards work?			\r\n			\r\n', 6, '2016-03-18 06:20:59', NULL, NULL, 'active'),
(3, 'Not been able to do?			\r\n			\r\n', 6, '2016-03-18 06:21:37', NULL, NULL, 'active'),
(4, 'Multi tasking			\r\n			\r\n', 6, '2016-03-18 06:22:06', NULL, NULL, 'active'),
(5, 'Taking Ownership			\r\n			\r\n', 6, '2016-03-18 06:22:33', NULL, NULL, 'active'),
(6, 'Needed to be reminded			\r\n			\r\n', 6, '2016-03-18 06:22:54', NULL, NULL, 'active'),
(7, 'Time management			\r\n			\r\n', 6, '2016-03-18 06:23:19', NULL, NULL, 'active'),
(8, 'Job timely delivery			\r\n			\r\n', 6, '2016-03-18 06:23:38', NULL, NULL, 'active'),
(9, 'Communication			\r\n			\r\n', 6, '2016-03-18 06:23:56', NULL, NULL, 'active'),
(10, 'Skills			\r\n', 6, '2016-03-18 06:24:33', NULL, NULL, 'active'),
(11, 'Speed			\r\n', 6, '2016-03-18 06:24:56', NULL, NULL, 'active'),
(12, 'New skills			\r\n			\r\n', 6, '2016-03-18 06:25:11', NULL, NULL, 'active'),
(13, 'Training Requirement			\r\n			\r\n', 6, '2016-03-18 06:25:30', NULL, NULL, 'active'),
(14, 'Initiative to Learn			\r\n			\r\n', 6, '2016-03-18 06:25:46', NULL, NULL, 'active'),
(15, 'Any Compliments from manager/Colleague?			\r\n			\r\n', 6, '2016-03-18 06:26:12', NULL, NULL, 'active'),
(16, 'Good candidate for future of co			\r\n			\r\n', 6, '2016-03-18 06:26:58', NULL, NULL, 'active'),
(17, 'Any thing we missed to appreciate you for?			\r\n			\r\n', 6, '2016-03-18 06:27:26', NULL, NULL, 'active'),
(18, 'Any value addition to company?			\r\n			\r\n', 6, '2016-03-18 06:28:00', NULL, NULL, 'active'),
(19, 'Where do you want to to see yourself in next 12 months?			\r\n			\r\n', 6, '2016-03-18 06:28:37', NULL, NULL, 'active'),
(20, 'How do you plan to do it?			\r\n			\r\n', 6, '2016-03-18 06:28:59', NULL, NULL, 'active'),
(21, 'How fair is company to you?			\r\n			\r\n', 6, '2016-03-18 06:29:20', NULL, NULL, 'active'),
(22, 'What is one thing you want to change in company (except boss)?			\r\n			\r\n', 6, '2016-03-18 06:29:46', NULL, NULL, 'active'),
(23, 'Attendance			\r\n			\r\n', 6, '2016-03-18 06:30:08', NULL, NULL, 'active'),
(24, 'hi', 1, '2016-03-18 07:25:10', 1, '2016-03-18 07:32:39', 'deleted');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire_settings`
--

CREATE TABLE `questionnaire_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `evaluation_process` enum('monthly','half_yearly','quaterly','yearly') NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire_settings`
--

INSERT INTO `questionnaire_settings` (`id`, `evaluation_process`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 'half_yearly', 1, '2016-03-18 11:51:48', 1, '2016-03-18 11:54:41', 'deleted'),
(2, 'half_yearly', 1, '2016-03-18 11:54:41', 1, '2016-03-18 11:55:13', 'deleted'),
(3, 'half_yearly', 1, '2016-03-18 11:55:13', 1, '2016-03-18 11:57:32', 'deleted'),
(4, 'half_yearly', 1, '2016-03-18 11:57:32', 1, '2016-03-18 12:00:57', 'deleted'),
(5, 'half_yearly', 1, '2016-03-18 12:00:57', NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_description` text NOT NULL,
  `employee_designations` varchar(128) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  `controller` varchar(32) DEFAULT NULL,
  `function` varchar(32) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_description`, `employee_designations`, `module`, `controller`, `function`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 'View all the Business Leads of Company.', 'reporting_officer,line_manager,project_manager,hod', 'business', 'leads', 'index', 1, '2016-04-06 11:04:36', 'active'),
(2, 'Add Business Leads of the Company.', 'reporting_officer', 'business', 'leads', 'add', 1, '2016-04-06 11:04:54', 'active'),
(3, 'Assign Lead to an Employee', NULL, 'business', 'leads', 'assign_lead', NULL, NULL, 'active'),
(4, 'Update Lead Status', NULL, 'business', 'leads', 'update_lead_status', NULL, NULL, 'active'),
(5, 'Update Lead Contact Details', NULL, 'business', 'leads', 'update_lead_contact', NULL, NULL, 'active'),
(6, 'Edit Business Leads of the Company.', 'reporting_officer,line_manager', 'business', 'leads', 'edit', 1, '2016-04-06 06:35:50', 'active'),
(7, 'Delete Business Leads of the Company.', 'project_manager', 'business', 'leads', 'delete', 1, '2016-04-06 06:35:50', 'active'),
(8, 'Add Business Contacts of the Company.', 'reporting_officer', 'business', 'contacts', 'add', 1, '2016-04-06 06:35:50', 'active'),
(9, 'View Business Contacts of the Company.', 'reporting_officer,line_manager,project_manager,hod', 'business', 'contacts', 'index', 1, '2016-04-06 06:35:50', 'active'),
(10, 'Edit Business Contacts of the Company.', 'reporting_officer,line_manager,project_manager,hod', 'business', 'contacts', 'edit', 1, '2016-04-06 06:35:50', 'active'),
(11, 'Delete Business Contacts of the Company.', 'project_manager', 'business', 'contacts', 'delete', 1, '2016-04-06 06:35:50', 'active'),
(12, 'View SMS sent to the Employees of the Company.', NULL, '', '', '', NULL, '2016-04-06 06:35:50', 'active'),
(13, 'Compose SMS to the Employees of the Company.', NULL, '', '', '', NULL, '2016-04-06 06:35:50', 'active'),
(14, 'View Employee details of the Company.', NULL, 'employees', 'employee', 'index', NULL, '2016-04-06 07:11:32', 'active'),
(15, 'Add Employee details of the Company.', NULL, 'employees', 'employee', 'add_employee', NULL, '2016-04-06 07:11:32', 'active'),
(16, 'View Attendance Calendar of an Employee', NULL, 'employees', 'employee', 'attendance_calendar', NULL, NULL, 'active'),
(17, 'Edit Employee details.', NULL, 'employees', 'employee', 'edit_employee', NULL, '2016-04-06 07:48:56', 'active'),
(18, 'Delete Employees of the Company.', NULL, 'employees', 'employee', 'delete_employee', NULL, '2016-04-06 07:49:17', 'active'),
(19, 'View Assets Issued to Employees', NULL, 'employees', 'assets', 'index', NULL, NULL, 'active'),
(20, 'Issue Assets to an Employee', NULL, 'employees', 'assets', 'issue_asset', NULL, NULL, 'active'),
(21, 'Return Issued Asset', NULL, 'employees', 'assets', 'return_asset', NULL, NULL, 'active'),
(22, 'Edit Issued Asset', NULL, 'employees', 'assets', 'edit_asset', NULL, NULL, 'active'),
(23, 'Delete Issued Asset', NULL, 'employees', 'assets', 'delete_asset', NULL, NULL, 'active'),
(24, 'View Attendance of the Employees of the Company.', NULL, 'employees', 'attendance', 'index', NULL, '2016-04-06 08:29:09', 'active'),
(25, 'Update Attendance of an Employee', NULL, 'employees', 'attendance', 'update_login', NULL, NULL, 'active'),
(26, 'View Extra Working Hours of an Employee', NULL, 'employees', 'attendance', 'extra_hours', NULL, NULL, 'active'),
(27, 'Request Extra Working Hours', NULL, 'employees', 'attendance', 'request_extra_hours', NULL, NULL, 'active'),
(28, 'Edit Extra Working Hour Requests', NULL, 'employees', 'attendance', 'edit_extra_hours', NULL, NULL, 'active'),
(29, 'Approve Requested Extra Working Hours', NULL, 'employees', 'attendance', 'approve_extra_hours', NULL, NULL, 'active'),
(30, 'Reject requested Extra Working Hours', NULL, 'employees', 'attendance', 'reject_extra_hours', NULL, NULL, 'active'),
(31, 'Delete Requested Extra Working Hours', NULL, 'employees', 'attendance', 'delete_extra_hours', NULL, NULL, 'active'),
(32, 'View Off Days of Employees', NULL, 'employees', 'attendance', 'off_days', NULL, NULL, 'active'),
(33, 'Request Off Days', NULL, 'employees', 'attendance', 'request_off_day', NULL, NULL, 'active'),
(34, 'Edit Requested Off Days', NULL, 'employees', 'attendance', 'edit_off_day', NULL, NULL, 'active'),
(35, 'Approve Requested Off Days', NULL, 'employees', 'attendance', 'approve_off_day', NULL, NULL, 'active'),
(36, 'Reject Requested Off Days', NULL, 'employees', 'attendance', 'reject_off_day', NULL, NULL, 'active'),
(37, 'Delete Requested Off Days', NULL, 'employees', 'attendance', 'delete_off_day', NULL, NULL, 'active'),
(38, 'View Missed TIME-IN/TIME-OUT of Employees', NULL, 'employees', 'attendance', ' missing_time', NULL, NULL, 'active'),
(39, 'Request Missed TIME-IN/TIME-OUT', NULL, 'employees', 'attendance', 'request_missing_time', NULL, NULL, 'active'),
(40, 'Edit Missed TIME-IN/TIME-OUT Requests', NULL, 'employees', 'attendance', 'edit_missing_time', NULL, NULL, 'active'),
(41, 'Approve Missed TIME-IN/TIME-OUT Requests', NULL, 'employees', 'attendance', 'approve_missing_time', NULL, NULL, 'active'),
(42, 'Reject Missed TIME-IN/TIME-OUT Requests', NULL, 'employees', 'attendance', ' reject_missing_time', NULL, NULL, 'active'),
(43, 'Delete Missed TIME-IN/TIME-OUT Requests', NULL, 'employees', 'attendance', 'delete_missing_time', NULL, NULL, 'active'),
(44, 'View Activities of the Emloyees of the Company.', NULL, 'employees', 'activities', 'index', NULL, '2016-04-06 09:03:57', 'active'),
(45, 'Rate Activities done by the Employees of the Company.', NULL, 'employees', 'activities', 'assign_rating', NULL, '2016-04-06 09:04:45', 'active'),
(46, 'View Company Leaves.', NULL, 'employees', 'leaves', 'index', NULL, '2016-04-06 09:13:02', 'active'),
(47, 'Add Company Leave', NULL, 'employees', 'leaves', 'add', NULL, NULL, 'active'),
(48, 'Edit Company Leave', NULL, 'employees', 'leaves', 'edit', NULL, NULL, 'active'),
(49, 'Delete Company Leave', NULL, 'employees', 'leaves', 'delete', NULL, NULL, 'active'),
(50, 'View Employee Leaves', NULL, 'employees', 'leaves', 'employee_leaves', NULL, NULL, 'active'),
(51, 'Request a new Leave', NULL, 'employees', 'leaves', 'request_leave', NULL, NULL, 'active'),
(52, 'Edit Leave Requested By Employee', NULL, 'employees', 'leaves', 'edit_leave(', NULL, NULL, 'active'),
(53, 'Approve Leave Requested By Employee', NULL, 'employees', 'leaves', 'approve', NULL, NULL, 'active'),
(54, 'Reject Leave Requested By Employee', NULL, 'employees', 'leaves', 'reject', NULL, NULL, 'active'),
(55, 'Delete Leave Requested By Employee', NULL, 'employees', 'leaves', 'delete_leave', NULL, NULL, 'active'),
(56, 'View Travel Plans of the Company.', NULL, 'employees', 'travel_plans', 'index', NULL, '2016-04-06 09:22:44', 'active'),
(57, 'Add Travel Plans of the Company.', NULL, 'employees', 'travel_plans', 'add', NULL, '2016-04-06 09:23:28', 'active'),
(58, 'Edit Travel Plans of the Company.', NULL, 'employees', 'travel_plans', 'edit', NULL, '2016-04-06 09:24:18', 'active'),
(59, 'Delete Travel Plans of the Company.', NULL, 'employees', 'travel_plans', 'delete', NULL, '2016-04-06 09:24:56', 'active'),
(60, 'View Questionnaires for the Employees evaluation in the Company.', NULL, 'employees', 'questionnaire', 'index', NULL, '2016-04-06 09:27:04', 'active'),
(61, 'Add Questionnaires (For the Employees evaluation in the Company).', NULL, 'employees', 'questionnaire', 'add', NULL, '2016-04-06 09:27:53', 'active'),
(62, 'Edit Questionnaires (For the Employees evaluation in the Company).', NULL, 'employees', 'questionnaire', 'edit', NULL, '2016-04-06 09:29:13', 'active'),
(63, 'Delete Questionnaires (For the Employees evaluation in the Company).', NULL, 'employees', 'questionnaire', 'delete', NULL, '2016-04-06 09:29:48', 'active'),
(64, 'View Employee Feedback in Questionaries', NULL, 'employees', 'evaluation', NULL, NULL, NULL, 'active'),
(65, 'Edit Employee Feedback in Questionaries.\r\n', NULL, 'employees', 'evaluation', '', NULL, '2016-04-06 09:35:15', 'active'),
(66, 'Delete Employee Feedback in Questionaries.\r\n', NULL, 'employees', 'evaluation', '', NULL, '2016-04-06 09:35:50', 'active'),
(67, 'Set Employees evaluation months in the Company.', NULL, 'employees', 'evaluation', '', NULL, '2016-04-06 09:40:12', 'active'),
(68, 'Manage Evaluation Process Settings', NULL, 'employees', 'questionnaire', 'settings', NULL, NULL, 'active'),
(69, 'View Attended training for the Employees of the Company. ', NULL, 'employees', 'trainings_attended', 'index', NULL, '2016-04-06 09:44:42', 'active'),
(70, 'Add Attended training for the Employees of the Company.', NULL, 'employees', 'trainings_attended', 'add', NULL, NULL, 'active'),
(71, 'Edit Attended training for the Employees of the Company.', NULL, 'employees', 'trainings_attended', 'edit', NULL, NULL, 'active'),
(72, 'Delete Attended training for the Employees of the Company.', NULL, 'employees', 'trainings_attended', 'delete', NULL, NULL, 'active'),
(73, 'View Recommended training for the Employees of the Company. ', NULL, 'employees', 'trainings_recommended', 'index', NULL, '2016-04-06 09:50:17', 'active'),
(74, 'Recommend Training for the Employees of the Company. ', NULL, 'employees', 'trainings_recommended', 'add', NULL, NULL, 'active'),
(75, 'Edit Recommended training for the Employees of the Company. ', NULL, 'employees', 'trainings_recommended', 'edit', NULL, '2016-04-06 09:53:01', 'active'),
(76, 'Approve Recommended training for the Employees of the Company. ', NULL, 'employees', 'trainings_recommended', 'approve', NULL, '2016-04-06 09:54:08', 'active'),
(77, 'Reject Recommended training for the Employees of the Company. ', NULL, 'employees', 'trainings_recommended', 'reject', NULL, '2016-04-06 09:54:38', 'active'),
(78, 'Delete Recommended training for the Employees of the Company. ', NULL, 'employees', 'trainings_recommended', 'delete', NULL, '2016-04-06 09:55:43', 'active'),
(79, 'View training requests of the employees.', NULL, 'employees', 'trainings_requests', 'index', NULL, '2016-04-06 09:57:57', 'active'),
(80, 'Request training for the employees.', NULL, 'employees', 'trainings_requests', 'add', NULL, '2016-04-06 09:58:51', 'active'),
(81, 'Edit training requests of the employees.', NULL, 'employees', 'trainings_requests', 'edit', NULL, NULL, 'active'),
(82, 'Approve training requests of the employees.', NULL, 'employees', 'trainings_requests', 'approve', NULL, '2016-04-06 10:02:03', 'active'),
(83, 'Reject training requests of the employees.', NULL, 'employees', 'trainings_requests', 'reject', NULL, NULL, 'active'),
(84, 'Delete training requests of the employees.', NULL, 'employees', 'trainings_requests', 'delete', NULL, NULL, 'active'),
(85, 'Training Reporting of Employees', NULL, 'employees', 'trainings_reports', 'generate_report', NULL, NULL, 'active'),
(86, 'View Salary of Employees', NULL, 'employees', 'salary', 'index', NULL, NULL, 'active'),
(87, 'Edit Salary of the Employees of the Company', NULL, 'employees', 'salary', 'edit_salary', NULL, NULL, 'active'),
(88, 'View Salary Timeline of the Employees of Company', NULL, 'employees', 'salary', 'timeline', NULL, NULL, 'active'),
(89, 'View advance pay requests of the Employees of the Company.', NULL, 'employees', 'pay_requests', 'index', NULL, '2016-04-06 10:16:39', 'active'),
(90, 'Add advance pay requests of the Employees of the Company.', NULL, 'employees', 'pay_requests', 'add', NULL, NULL, 'active'),
(91, 'Edit advance pay requests of the Employees of the Company.', NULL, 'employees', 'pay_requests', 'edit', NULL, NULL, 'active'),
(92, 'Approve advance pay requests of the Employees of the Company.', NULL, 'employees', 'pay_requests', 'approve', NULL, NULL, 'active'),
(93, 'Reject advance pay requests of the Employees of the Company.', NULL, 'employees', 'pay_requests', 'reject', NULL, '2016-04-06 10:21:21', 'active'),
(94, 'Delete advance pay requests of the Employees of the Company.', NULL, 'employees', 'pay_requests', 'delete', NULL, '2016-04-06 10:21:49', 'active'),
(95, 'View loan requests of the Employees of the Company.', NULL, 'employees', 'loan_requests', 'index', NULL, '2016-04-06 10:23:06', 'active'),
(96, 'Add loan requests of the Employees of the Company.', NULL, 'employees', 'loan_requests', 'add', NULL, '2016-04-06 10:23:54', 'active'),
(97, 'Edit loan requests of the Employees of the Company.', NULL, 'employees', 'loan_requests', 'edit', NULL, '2016-04-06 10:29:31', 'active'),
(98, 'Approve loan requests of the Employees of the Company.', NULL, 'employees', 'loan_requests', 'approve', NULL, '2016-04-06 10:30:33', 'active'),
(99, 'Reject loan requests of the Employees of the Company.', NULL, 'employees', 'loan_requests', 'reject', NULL, '2016-04-06 10:31:16', 'active'),
(100, 'Delete loan requests of the Employees of the Company.', NULL, 'employees', 'loan_requests', 'delete', NULL, '2016-04-06 10:32:00', 'active'),
(101, 'View BMS+ Roles Description', NULL, 'employees', 'roles', 'index', NULL, NULL, 'active'),
(102, 'Update BMS+ Roles Description', NULL, 'employees', 'roles', 'update', NULL, NULL, 'active'),
(103, 'Reporting of the Employees of Company', NULL, 'employees', 'reports', 'generate_report', NULL, NULL, 'active'),
(104, 'View Signatures of the Employees Of Company.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(105, 'Add Signatures of the Employees Of Company.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(106, 'Edit Signatures of the Employees Of Company.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(107, 'Delete Signatures of the Employees Of Company.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(108, 'View Products in the Catalogue.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(109, 'Add Product to the Catalogue', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(110, 'Edit Product in the Catalogue', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(111, 'Delete Product from the Catalogue', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(112, 'View Facebook Posts.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(113, 'Add a Facebook Post.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(114, 'Edit Facebook Post.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(115, 'Delete Facebook Post.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(116, 'View Twitter Tweets.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(117, 'Add a Twitter Tweet.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(118, 'Edit Twitter Tweets.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(119, 'Delete Twitter Tweet.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(120, 'View LinkedIn Posts.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(121, 'Add a LinkedIn Post.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(122, 'Edit LinkedIn Post.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(123, 'Delete LinkedIn Post.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(124, 'View Google+ Posts.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(125, 'Add Google+ Posts.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(126, 'Edit Google+ Posts.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(127, 'Delete Google+ Posts.', NULL, '', NULL, NULL, NULL, NULL, 'active'),
(128, 'Manage Website.', '', 'website', 'website', 'website', NULL, '2016-04-07 05:32:49', 'active'),
(129, 'Manage Popups.', NULL, 'popups', 'popups', 'popups', NULL, '2016-04-07 05:33:02', 'active'),
(130, 'Manage Chat.', NULL, 'chat', 'chat', 'chat', NULL, '2016-04-07 05:33:14', 'active'),
(131, 'Monitor SEO. ', NULL, 'seo', 'seo', 'seo', NULL, '2016-04-07 05:33:24', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `trainings_attended`
--

CREATE TABLE `trainings_attended` (
  `id` int(11) UNSIGNED NOT NULL,
  `training_title` varchar(128) NOT NULL,
  `training_description` text NOT NULL,
  `training_country` varchar(32) NOT NULL,
  `training_state` varchar(32) NOT NULL,
  `training_city` varchar(64) NOT NULL,
  `training_start` date NOT NULL,
  `training_end` date NOT NULL,
  `attended_by` varchar(128) NOT NULL,
  `recommended_requested_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainings_attended`
--

INSERT INTO `trainings_attended` (`id`, `training_title`, `training_description`, `training_country`, `training_state`, `training_city`, `training_start`, `training_end`, `attended_by`, `recommended_requested_by`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(1, 'Oracle', 'Stored Procedures and Cursors', 'India', 'Jammu and Kashmir', 'Srinagar', '2016-03-17', '2016-03-18', '6', 1, 12, '2016-03-16 07:41:44', 1, '2016-03-16 11:18:02', 'active'),
(2, 'Codeigniter', 'Database Manipulation', 'Russia', '', '', '2016-03-23', '2016-03-18', '6', 6, 1, '2016-03-16 11:27:04', NULL, NULL, 'active'),
(3, 'sdgdxh', 'dhdhzjtzdhzh', 'Egypt', '', '', '2016-03-24', '2016-03-25', '12', 1, 1, '2016-03-16 11:33:42', NULL, NULL, 'active'),
(4, 'Web Designing', 'Html, CSS, Javascript', 'Azerbaijan', 'Bilasuvar Rayonu', 'Nishat', '2016-03-01', '2016-03-03', '6,12', 1, 6, '2016-03-17 14:46:57', NULL, NULL, 'active'),
(5, 'Web Designing', 'Html, CSS, Javascript', 'Dominican Republic', 'Maria Trinidad Sanchez', 'Nishat', '2016-03-10', '2016-03-15', '12', 12, 1, '2016-03-17 14:51:27', NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `trainings_recommended`
--

CREATE TABLE `trainings_recommended` (
  `id` int(10) UNSIGNED NOT NULL,
  `training_title` varchar(128) NOT NULL,
  `training_description` text NOT NULL,
  `training_country` varchar(32) NOT NULL,
  `training_state` varchar(32) NOT NULL,
  `training_city` varchar(64) NOT NULL,
  `training_start` date NOT NULL,
  `training_end` date NOT NULL,
  `recommended_by` int(11) NOT NULL,
  `recommended_for` varchar(128) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','approved','rejected','attended','deleted') NOT NULL DEFAULT 'active',
  `approved_by` int(11) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainings_recommended`
--

INSERT INTO `trainings_recommended` (`id`, `training_title`, `training_description`, `training_country`, `training_state`, `training_city`, `training_start`, `training_end`, `recommended_by`, `recommended_for`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`, `approved_by`, `rejected_by`) VALUES
(1, 'Web Designing', 'Html, CSS, Javascript', 'Azerbaijan', 'Bilasuvar Rayonu', 'Nishat', '2016-03-01', '2016-03-03', 1, '6,12', 6, '2016-03-16 08:00:38', 1, '2016-03-17 14:46:57', 'active', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainings_requests`
--

CREATE TABLE `trainings_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `training_title` varchar(128) NOT NULL,
  `training_description` text NOT NULL,
  `training_location` varchar(128) NOT NULL,
  `training_country` varchar(32) NOT NULL,
  `training_state` varchar(32) NOT NULL,
  `training_city` varchar(64) NOT NULL,
  `training_start` date NOT NULL,
  `training_end` date NOT NULL,
  `requested_by` int(11) NOT NULL,
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','approved','rejected','attended','deleted') NOT NULL DEFAULT 'active',
  `approved_by` int(11) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainings_requests`
--

INSERT INTO `trainings_requests` (`id`, `training_title`, `training_description`, `training_location`, `training_country`, `training_state`, `training_city`, `training_start`, `training_end`, `requested_by`, `requested_at`, `last_updated_by`, `last_updated_at`, `status`, `approved_by`, `rejected_by`) VALUES
(1, 'Web Designing', 'Html, CSS, Javascript', 'Dubai', 'Czeck Republic', 'Kralovehradecky', 'Nishat', '2016-03-10', '2016-03-15', 12, '2016-03-16 08:11:58', 1, '2016-03-17 15:32:36', 'active', 1, 1),
(2, 'gfchgvrdty', 'trdytkf,iug.', '', 'Afghanistan', 'Badakhshan', 'sgfrdhjgf', '2016-04-10', '2016-04-26', 6, '2016-04-09 09:52:00', NULL, NULL, 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `travel_plans`
--

CREATE TABLE `travel_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `employees` varchar(128) NOT NULL,
  `project_manager` int(11) NOT NULL,
  `alternate_support` int(11) DEFAULT NULL,
  `travel_purpose` text NOT NULL,
  `travel_summary` text NOT NULL,
  `travel_from_country` varchar(32) NOT NULL,
  `travel_from_state` varchar(32) NOT NULL,
  `travel_from_city` varchar(64) NOT NULL,
  `travel_to_country` varchar(32) NOT NULL,
  `travel_to_state` varchar(32) NOT NULL,
  `travel_to_city` varchar(64) NOT NULL,
  `travel_from_date` date NOT NULL,
  `travel_to_date` date NOT NULL,
  `travel_through` varchar(32) NOT NULL,
  `travel_allowance` int(11) NOT NULL,
  `food_allowance` int(11) NOT NULL,
  `living_allowance` int(11) NOT NULL,
  `success_rate` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_plans`
--

INSERT INTO `travel_plans` (`id`, `employees`, `project_manager`, `alternate_support`, `travel_purpose`, `travel_summary`, `travel_from_country`, `travel_from_state`, `travel_from_city`, `travel_to_country`, `travel_to_state`, `travel_to_city`, `travel_from_date`, `travel_to_date`, `travel_through`, `travel_allowance`, `food_allowance`, `living_allowance`, `success_rate`, `created_by`, `created_at`, `last_updated_by`, `last_updated_at`, `status`) VALUES
(2, '6,12', 13, 12, 'This is a Test Project Plan, no Purpose at all.', 'Nothing achieved.', 'India', 'Jammu and Kashmir', 'Srinagar', 'Afghanistan', 'Helmand', 'Tora Bora', '2016-03-25', '2016-03-31', 'Flight', 3000, 3000, 6000, 3, 1, '2016-03-18 06:18:07', 1, '2016-03-18 07:10:54', 'deleted'),
(3, '12,6', 13, 12, 'This is a Test Project Plan, no Purpose at all.', 'Nothing achieved. This is a Test Project Plan, no Purpose at all.', 'India', 'Jammu and Kashmir', 'Srinagar', 'Afghanistan', 'Helmand', 'Tora Bora', '2016-03-25', '2016-03-31', 'Flight', 3000, 3000, 6000, 3, 1, '2016-03-18 07:08:06', 1, '2016-03-18 07:27:45', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance_pay_requests`
--
ALTER TABLE `advance_pay_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_assets`
--
ALTER TABLE `employee_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_designations`
--
ALTER TABLE `employee_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_evaluation`
--
ALTER TABLE `employee_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_experience`
--
ALTER TABLE `employee_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_files`
--
ALTER TABLE `employee_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_login`
--
ALTER TABLE `employee_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_qualification`
--
ALTER TABLE `employee_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `late_sitting`
--
ALTER TABLE `late_sitting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_requests`
--
ALTER TABLE `loan_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `miss_attendance`
--
ALTER TABLE `miss_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `off_day`
--
ALTER TABLE `off_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire_settings`
--
ALTER TABLE `questionnaire_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings_attended`
--
ALTER TABLE `trainings_attended`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings_recommended`
--
ALTER TABLE `trainings_recommended`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings_requests`
--
ALTER TABLE `trainings_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_plans`
--
ALTER TABLE `travel_plans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advance_pay_requests`
--
ALTER TABLE `advance_pay_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `employee_assets`
--
ALTER TABLE `employee_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee_designations`
--
ALTER TABLE `employee_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee_evaluation`
--
ALTER TABLE `employee_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee_experience`
--
ALTER TABLE `employee_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `employee_files`
--
ALTER TABLE `employee_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `employee_login`
--
ALTER TABLE `employee_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `employee_qualification`
--
ALTER TABLE `employee_qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `late_sitting`
--
ALTER TABLE `late_sitting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `loan_requests`
--
ALTER TABLE `loan_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `miss_attendance`
--
ALTER TABLE `miss_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `off_day`
--
ALTER TABLE `off_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `questionnaire_settings`
--
ALTER TABLE `questionnaire_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `trainings_attended`
--
ALTER TABLE `trainings_attended`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `trainings_recommended`
--
ALTER TABLE `trainings_recommended`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `trainings_requests`
--
ALTER TABLE `trainings_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `travel_plans`
--
ALTER TABLE `travel_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
