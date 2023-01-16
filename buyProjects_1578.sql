-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2023 at 10:45 PM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buyProjects_1578`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0dfa307158ff7543b92debb21dc9dd9c3a51e1a39339f916fdd701d7a12acf28268b6981805dd111', 1, 2, 'MyApp', '[]', 0, '2019-07-11 18:19:00', '2019-07-11 18:19:00', '2019-08-11 11:19:00'),
('11eff82e414fa8907d011791d41f41f480a069e2a4a602c9d369498621ed494d78551bd740cbbe77', 1, 2, 'MyApp', '[]', 0, '2019-07-04 13:11:18', '2019-07-04 13:11:18', '2019-08-04 06:11:16'),
('12995e7663ced6ac053618debcec9e3e253670431cc92083f29c536df43d39f68beacbc61e963e63', 1, 2, 'MyApp', '[]', 0, '2020-03-16 08:50:31', '2020-03-16 08:50:31', '2020-04-16 01:50:31'),
('28eb1f573fd9a6fedfaad5def73cb95e781da3a532a4751193a7884000005758a9bc63af9e12be51', 1, 2, 'MyApp', '[]', 0, '2019-07-09 19:25:42', '2019-07-09 19:25:42', '2019-08-09 12:25:42'),
('2f7a308fa499e7df5316b2fddb3f666a2bd46f101da04281505c2b7340503316129d10cdc715051b', 1, 2, 'MyApp', '[]', 0, '2020-02-03 22:03:45', '2020-02-03 22:03:45', '2020-03-03 15:03:44'),
('51b3693241926a0d006ef060d50c2b840b924c13fe8c5b33c7e3802616489fb3b9a1e09aa2cb5439', 1, 2, 'MyApp', '[]', 0, '2019-07-06 15:59:11', '2019-07-06 15:59:11', '2019-08-06 08:59:10'),
('59c40292276c35d7d9c695939cacd87402d30319796fe61c92bbed2a7618f362b51f1cd7a714b508', 1, 2, 'MyApp', '[]', 0, '2019-07-09 19:26:49', '2019-07-09 19:26:49', '2019-08-09 12:26:49'),
('7664a4e26f2a66afc92c91a6cee9b1137fb870fad4416719d03489f12106a6a7d8405b58a4dfe63f', 1, 2, 'MyApp', '[]', 0, '2020-03-16 08:51:16', '2020-03-16 08:51:16', '2020-04-16 01:51:16'),
('7bc60256605d42898d7da249bdb3074ae2c8efd15703139f2450ebe4a803bbfea43e576914c1ed3f', 1, 1, 'MyApp', '[]', 0, '2019-06-07 08:09:16', '2019-06-07 08:09:16', '2019-07-07 13:39:13'),
('8b1a3ee6d640b9e572c4cefe9add3bc88dc0801950ed82156c3c411f005ad14a88c343fe9acf6d4c', 1, 2, 'MyApp', '[]', 0, '2019-07-11 16:09:40', '2019-07-11 16:09:40', '2019-08-11 09:09:40'),
('8ccc6207be82d29a97fd983e3712af245c9204b567b6b50cde17c0d0a74a51cfa208742bb55f2de7', 2, 1, 'MyApp', '[]', 0, '2019-06-14 05:10:10', '2019-06-14 05:10:10', '2019-07-14 10:40:10'),
('adedcd48f9e29a4bae7e14f2ccfa2628c36544082aed8f2279b75b3bc1ee265d453bb36740e8e1fe', 1, 2, 'MyApp', '[]', 0, '2019-07-11 16:07:11', '2019-07-11 16:07:11', '2019-08-11 09:07:11'),
('becb2f0ffba80d90995bc07373e7e75b5f4204cbfb97a54df43cd8b3187bcac8068941d604c601ae', 1, 2, 'MyApp', '[]', 0, '2019-07-01 12:06:33', '2019-07-01 12:06:33', '2019-08-01 05:06:33'),
('c87e6879c659dbbdc23f5d00259269c2964fed42cc8b77688d3b9a186697bc7679fef4478ead7813', 1, 1, 'MyApp', '[]', 0, '2019-06-03 11:57:23', '2019-06-03 11:57:23', '2019-07-03 17:27:23'),
('dabd5cdb1c9da8e61809750bea53369a2330e36e9e323ad1958b08afec89c193cdcbf445bb51ac15', 1, 2, 'MyApp', '[]', 0, '2019-07-11 18:21:00', '2019-07-11 18:21:00', '2019-08-11 11:21:00'),
('dc2b3fdd7cf0e7e031fed1ab66d47aed03ef175db321c51f7ee9589233addf31ae01f111fa41ab26', 2, 1, 'MyApp', '[]', 0, '2019-06-14 05:08:04', '2019-06-14 05:08:04', '2019-07-14 10:38:04'),
('e7db0463b21ba5618f8426b5fe7dd880b5396547dbb33775416a66d9804bd20739f6d14051508463', 1, 2, 'MyApp', '[]', 0, '2020-03-16 08:51:22', '2020-03-16 08:51:22', '2020-04-16 01:51:22'),
('f2945d1b7fe75642b2c65e0c7d62e8107145e721959da79bc39b6a0a109ce9a6939daec47622a380', 1, 1, 'MyApp', '[]', 0, '2019-06-07 08:18:07', '2019-06-07 08:18:07', '2019-07-07 13:48:06'),
('f4137739a4bb58b7135786bfade8480fd8c2750acfecd161930100e66e9d3c6d168858895e0ade01', 2, 1, 'MyApp', '[]', 0, '2019-06-14 04:58:25', '2019-06-14 04:58:25', '2019-07-14 10:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'vinodkumar', 'egipZVtDwGePd0nVXOHVYFLdKVyZGVdSzYTpmc0e', 'http://localhost', 1, 0, 0, '2019-06-03 11:55:42', '2019-06-03 11:55:42'),
(2, NULL, 'Laravel Personal Access Client', 'PKhvUqOOf8VFN0iSKA2Rx0IAy5DH9ObXgBTTjOdr', 'http://localhost', 1, 0, 0, '2019-06-28 04:27:56', '2019-06-28 04:27:56'),
(3, NULL, 'Laravel Password Grant Client', 'sUEffIGPsaoNI0NRE3UD3P94LXWxbmXhi32qdFaP', 'http://localhost', 0, 1, 0, '2019-06-28 04:27:56', '2019-06-28 04:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-06-03 11:55:42', '2019-06-03 11:55:42'),
(2, 2, '2019-06-28 04:27:56', '2019-06-28 04:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('itsisaachere@gmail.com', '$2y$10$ME43eQtLv4T7RTZ33WGSre.73m4TM78YG7hPcN5EPi/DM7niN6TRy', '2021-01-08 23:54:22'),
('itsisaachere@gmail.com', '$2y$10$ME43eQtLv4T7RTZ33WGSre.73m4TM78YG7hPcN5EPi/DM7niN6TRy', '2021-01-08 23:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories_sub`
--

CREATE TABLE `tbl_categories_sub` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `catid` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories_sub`
--

INSERT INTO `tbl_categories_sub` (`cat_id`, `category_name`, `image`, `catid`, `status`, `updated_at`) VALUES
(17, 'Java Programming', '16736288949511.java-logo-vector-1.svg', '0', 1, '2023-01-13 16:54:54'),
(18, 'Hyper Text Markup Language(HTML)', '16724018822206.html.png', '0', 1, '2022-12-30 12:04:42'),
(19, 'Cascading Style Sheets(CSS)', '16724019591818.css.png', '0', 1, '2022-12-30 12:05:59'),
(20, 'Bootstrap (Front-End Framework)', '16724020655158.bootstrap.jpg', '0', 1, '2022-12-30 12:07:45'),
(21, 'Structured Query Language (SQL)', '16736291443212.sqqq.png', '0', 1, '2023-01-13 16:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clients`
--

CREATE TABLE `tbl_clients` (
  `id` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_company` varchar(60) NOT NULL,
  `amount` int(20) NOT NULL,
  `feedback` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clients`
--

INSERT INTO `tbl_clients` (`id`, `client_name`, `client_company`, `amount`, `feedback`, `status`) VALUES
(1, 'Prasad U', 'Sriram consultancy Services', 20000, '<p>Good Work</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `user_name`, `email`, `phone`, `subject`, `message`) VALUES
(10, 'CrytoSuich', 'dini2552@gmail.com', '89031557217', 'Earning $1000 a day is easy if you use this financial Robot.', 'Turn $1 into $100 instantly. Use the financial Robot. https://Suich.worldnews.biz.pl/Suich'),
(11, 'CrytoSuich', 'rhirschman@cox.net', '89036932716', 'Robot never sleeps. It makes money for you 24/7.', 'Your computer can bring you additional income if you use this Robot. https://Suich.worldnews.biz.pl/Suich'),
(12, 'CrytoSuich', 'thanbanh12bet@gmail.com', '89031274942', 'Make thousands of bucks. Financial robot will help you to do it!', 'Find out about the fastest way for a financial independence. https://Suich.worldnews.biz.pl/Suich');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers_app`
--

CREATE TABLE `tbl_customers_app` (
  `user_id` int(11) NOT NULL,
  `person_name` varchar(120) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobile_number` varchar(12) DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `otp_verification` varchar(11) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `shop_name` varchar(50) DEFAULT NULL,
  `shop_address_1` text,
  `shop_address_2` text,
  `gst` varchar(100) DEFAULT NULL,
  `shop_location` text,
  `shop_photo` varchar(100) DEFAULT '',
  `shop_category` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customers_app`
--

INSERT INTO `tbl_customers_app` (`user_id`, `person_name`, `email`, `mobile_number`, `otp`, `otp_verification`, `password`, `shop_name`, `shop_address_1`, `shop_address_2`, `gst`, `shop_location`, `shop_photo`, `shop_category`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'raju@gmail.com', '9010992865', '71529', NULL, NULL, 'rafdfdf', 'dfdfdfdf 1', 'dfdfdfd address2', 'dklfjdlfjdlf', 'location', '16672326996577.chicken_breast.jpg', 'ldkjfdlfjdlfjdfdlf', NULL, NULL, NULL),
(2, NULL, 'gha@gmail.com', '9861962003', '71563', '1', NULL, 'Chicken Center', 'Marathalli', 'Bengalurur', '1234567856', 'Bengalurur', '16674920751927.image_cropper_1667492044885.png', 'Chicken Center', 1, NULL, NULL),
(3, 'Ghanashyam Behera', 'gha@gmail.com', '9573986661', '79582', '1', NULL, 'Chicken center', 'Marathalli sgr dentail clg road', 'Benguluru,karnataka', '45628647GH', 'Bengaluru', '16698251041178.logo.png', 'Chicken', 1, NULL, NULL),
(4, NULL, 'ashok.appdev@gmail.com', '9581448464', '93864', '1', NULL, 'ready', 'bangalore', 'india', '9581448464', 'itpl', '16682368674166.image_cropper_1668236859609.png', 'ready', 1, NULL, NULL),
(5, NULL, NULL, '97861962003', '27168', '1', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL),
(6, NULL, NULL, '957399866613', '71846', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL),
(7, NULL, NULL, '95739986661', '14679', '1', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL),
(8, NULL, NULL, NULL, '12653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `dept_id` varchar(200) NOT NULL,
  `dept_name` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `dept_id`, `dept_name`, `status`, `updated_at`) VALUES
(1, 'DEPT001', 'FC Warehouse', 1, '2021-05-04 06:05:03'),
(2, 'DEPT002', 'IT', 1, '2021-04-25 15:10:58'),
(3, 'DEPT003', 'Admin Manager', 1, '2021-04-26 04:39:16'),
(4, 'DEPT004', 'Procurement', 1, '2021-04-26 04:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation_employees_history`
--

CREATE TABLE `tbl_designation_employees_history` (
  `desig_id` int(11) NOT NULL,
  `emp_id` varchar(50) DEFAULT NULL,
  `emp_designation` varchar(120) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `center_type_id` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(25) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `emplocation` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `adharno` varchar(25) DEFAULT NULL,
  `uploadadhar` varchar(200) DEFAULT NULL,
  `pancard` varchar(20) DEFAULT NULL,
  `uploadpancard` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `date` date DEFAULT NULL,
  `reportingto` varchar(20) DEFAULT NULL,
  `employeetype` varchar(20) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `center_type_id` varchar(11) DEFAULT NULL,
  `center_designation` varchar(100) DEFAULT NULL,
  `center_id` int(11) DEFAULT NULL,
  `mobile_number` varchar(12) DEFAULT NULL,
  `employee_photo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`id`, `employee_id`, `name`, `email`, `emplocation`, `department`, `designation`, `location`, `nationality`, `adharno`, `uploadadhar`, `pancard`, `uploadpancard`, `status`, `date`, `reportingto`, `employeetype`, `updated_at`, `center_type_id`, `center_designation`, `center_id`, `mobile_number`, `employee_photo`) VALUES
(5, 'EMP001', 'Shaik Nabi Rasool', 'sknabi@freshgrupo.com', 'Bangalore', 'FC Warehouse', 'Manager', 'BLR', 'Indian', '684221787790', '16189985259445.Colod scan AAdhar.pdf', 'CLDBPR7702N', '16189985251958.Colod scan PAN.pdf', 1, '2021-06-21', NULL, 'fulltime', '2021-04-26 19:37:13', NULL, NULL, 115, '9398325250', '16194208339878.team-3 (1).jpg'),
(6, 'EMP002', 'Naveen Kumar', 'naveen@gmail.com', 'bangalore', 'FC Warehouse', 'Manager', 'MTHDC', 'india', '684221787790', '16191786781312.16189985259445.Colod scan AAdhar.pdf', 'clbpr7702n', '16191786787364.16189985251958.Colod scan PAN.pdf', 1, '2021-04-22', 'ashok Kumar', 'fulltime', '2021-04-25 14:51:43', NULL, NULL, 119, '9398325250', '1619362046261.team-1 (1).jpg'),
(7, 'EMP003', 'Ashok Kumar', 'ashok@gmail.com', 'bangalore', 'Procurement', 'Manager', 'PeresandraCC', 'india', '684221787790', '1619178764518.16189985259445.Colod scan AAdhar.pdf', 'clbpr7702n', '16191787645629.16189985251958.Colod scan PAN.pdf', 1, '2021-04-22', 'ashok Kumar', 'fulltime', '2021-04-25 14:51:47', NULL, NULL, 117, '9398325250', '16193621747452.team-2 (1).jpg'),
(8, 'EMP004', 'Ashok Kumar', 'ashok@gmail.com', 'bangalore', 'Procurement', 'Manager', 'BLR', 'india', '684221787790', '16191787877684.16189985259445.Colod scan AAdhar.pdf', 'clbpr7702n', '1619178787280.16189985251958.Colod scan PAN.pdf', 1, '2021-04-22', 'ashok Kumar', 'fulltime', '2021-04-25 06:18:06', NULL, NULL, 115, NULL, NULL),
(9, 'EMP005', 'mubarak', 'mubarak@gmail.com', 'bangalore', 'Sales/Marketing', 'salers Manager', 'PeresandraCC', 'india', '423476248290', '16192406986320.16189985259445.Colod scan AAdhar.pdf', 'clbpr7702n', '16192406981264.16189985251958.Colod scan PAN.pdf', 1, '2021-04-23', 'ashok Kumar', 'fulltime', '2021-04-25 14:54:25', NULL, NULL, 117, '9398325251', '16193624569736.team-4 (1).jpg'),
(13, 'EMP006', 'BABA', 'baba@gmail.com', 'bangalore', 'Procurement', 'Manager', 'dc', 'india', '423476248290', '16197569184447.srebu2222222222222222 (2).pdf', 'clbpr7702n', '16197569187698.srebu2222222222222222 (2).pdf', 1, '2021-04-21', 'nabi', 'fulltime', '2021-04-30 14:33:05', NULL, NULL, 130, '9398325250', '1619757014570.team-4.jpg'),
(14, 'EMP007', 'dudu', 'baba@gmail.com', 'bangalore', 'Procurement', 'Manager', 'cc', 'india', '423476248290', '16197570738884.srebu2222222222222222 (2).pdf', 'clbpr7702n', '16197570734830.srebu2222222222222222 (2).pdf', 1, '2021-04-21', 'nabi', 'fulltime', '2021-05-04 05:18:23', NULL, NULL, 132, '9398325250', '16197570732005.team-1 (2).jpg'),
(15, 'EMP008', 'Suraj Sing', 'suraj@freshgrupo.com', 'Bangalore', 'IT', 'Associate software', '0', 'Indian', '567864538597', '16221816751974.Gmail Logo FG.png', 'SSKPB682L', '16221816752236.Gmail Logo FG.png', 1, '2021-05-28', 'Ashok Kumar', 'fulltime', '2021-06-01 06:42:17', NULL, NULL, 0, '9708912378', '16221816756667.fb profile.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_name` varchar(580) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `picture_id` int(11) NOT NULL,
  `pic_name` varchar(567) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `alt_tag` varchar(300) DEFAULT NULL,
  `title_tag` varchar(300) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `discount_price` varchar(50) DEFAULT NULL,
  `weight_format` varchar(50) DEFAULT NULL,
  `stock` varchar(50) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_details`
--

CREATE TABLE `tbl_orders_details` (
  `order_serial` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `order_data` text NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_data`
--

CREATE TABLE `tbl_order_data` (
  `order_file_id` int(11) NOT NULL,
  `shop_name` varchar(300) DEFAULT NULL,
  `person_name` varchar(300) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` text NOT NULL,
  `total_cost` varchar(100) NOT NULL,
  `cust_id` varchar(100) NOT NULL,
  `cart_data` text NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_data`
--

INSERT INTO `tbl_order_data` (`order_file_id`, `shop_name`, `person_name`, `email`, `mobile`, `address`, `total_cost`, `cust_id`, `cart_data`, `payment_type`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 'Isaac', NULL, 'itsisaachere@gmail.com', '9010992865', 'hyderabad, New bhoiguda', '5000', '14', '\"cart data in jsonformat\"', 'COD', '0', '2022-11-18 21:01:26', '2022-11-18 21:01:26'),
(3, 'Ghanashyam', NULL, 'ghanashyam@gmail.com', '9573986661', 'Bengaluru', '38165', '3', '[{\"product_column_id\":\"61\",\"customer_id\":\"3\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"},{\"product_column_id\":\"62\",\"customer_id\":\"3\",\"product_id\":\"3\",\"product_name\":\"Chicken drumstick\",\"product_price\":\"360\",\"quantity\":\"1\",\"grandtotal\":\"360\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-18 21:16:05', '2022-11-18 21:16:05'),
(4, 'Ghanashyam', NULL, 'ghanashyam@gmail.com', '9573986661', 'Bengaluru', '38165', '3', '[{\"product_column_id\":\"61\",\"customer_id\":\"3\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"},{\"product_column_id\":\"62\",\"customer_id\":\"3\",\"product_id\":\"3\",\"product_name\":\"Chicken drumstick\",\"product_price\":\"360\",\"quantity\":\"1\",\"grandtotal\":\"360\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-21 18:22:19', '2022-11-21 18:22:19'),
(5, 'Rama egges center', NULL, 'rama123@gmail.com', '9573986661', 'Bengaluru,Karnataka,India', '680', '3', '[{\"product_column_id\":\"66\",\"customer_id\":\"3\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"},{\"product_column_id\":\"67\",\"customer_id\":\"3\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-18 23:53:35', '2022-11-18 23:53:35'),
(6, 'Rama egges center', NULL, 'rama123@gmail.com', '9573986661', 'Bengaluru,Karnataka,India', '680', '3', '[{\"product_column_id\":\"66\",\"customer_id\":\"3\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"},{\"product_column_id\":\"67\",\"customer_id\":\"3\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-18 23:54:32', '2022-11-18 23:54:32'),
(7, 'Rama egges center', NULL, 'rama123@gmail.com', '9573986661', 'Bengaluru,Karnataka,India', '680', '3', '[{\"product_column_id\":\"66\",\"customer_id\":\"3\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"},{\"product_column_id\":\"67\",\"customer_id\":\"3\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-18 23:54:34', '2022-11-18 23:54:34'),
(8, 'Rama egges center', NULL, 'rama123@gmail.com', '9573986661', 'Bengaluru,Karnataka,India', '680', '3', '[{\"product_column_id\":\"66\",\"customer_id\":\"3\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"},{\"product_column_id\":\"67\",\"customer_id\":\"3\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-18 23:54:58', '2022-11-18 23:54:58'),
(9, 'Ghanashyam', NULL, 'ghanashyam@gmail.com', '9573986661', 'Bengaluru', '38165', '3', '[{\"product_column_id\":\"61\",\"customer_id\":\"3\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"},{\"product_column_id\":\"62\",\"customer_id\":\"3\",\"product_id\":\"3\",\"product_name\":\"Chicken drumstick\",\"product_price\":\"360\",\"quantity\":\"1\",\"grandtotal\":\"360\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-18 23:56:25', '2022-11-18 23:56:25'),
(10, 'Rama egges center', NULL, 'rama123@gmail.com', '9573986661', 'Bengaluru,Karnataka,India', '680', '3', '[{\"product_column_id\":\"66\",\"customer_id\":\"3\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"},{\"product_column_id\":\"67\",\"customer_id\":\"3\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-20 00:55:39', '2022-11-20 00:55:39'),
(11, 'Rama egges center', NULL, 'rama123@gmail.com', '9573986661', 'Bengaluru,Karnataka,India', '680', '3', '[{\"product_column_id\":\"66\",\"customer_id\":\"3\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"},{\"product_column_id\":\"67\",\"customer_id\":\"3\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-20 01:04:20', '2022-11-20 01:04:20'),
(12, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '700', '2', '[{\"product_column_id\":\"90\",\"customer_id\":\"2\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"2\",\"grandtotal\":\"700\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-20 01:07:15', '2022-11-20 01:07:15'),
(13, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '350', '2', '[{\"product_column_id\":\"92\",\"customer_id\":\"2\",\"product_id\":\"1\",\"product_name\":\"Chicken Breast\",\"product_price\":\"350\",\"quantity\":\"1\",\"grandtotal\":\"350\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-21 21:01:40', '2022-11-21 21:01:40'),
(14, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '610', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-21 21:23:03', '2022-11-21 21:23:03'),
(15, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '610', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-24 14:39:37', '2022-11-24 14:39:37'),
(16, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '610', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-24 14:42:18', '2022-11-24 14:42:18'),
(17, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '611', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-24 14:43:37', '2022-11-24 14:43:37'),
(18, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '5', '2', '[{\"product_column_id\":\"105\",\"customer_id\":\"2\",\"product_id\":\"6\",\"product_name\":\"Eggs\",\"product_price\":\"5\",\"quantity\":\"1\",\"grandtotal\":\"5\",\"weighformat\":\"2\"}]', 'COD', '0', '2022-11-24 14:47:43', '2022-11-24 14:47:43'),
(19, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '5', '2', '[{\"product_column_id\":\"105\",\"customer_id\":\"2\",\"product_id\":\"6\",\"product_name\":\"Eggs\",\"product_price\":\"5\",\"quantity\":\"1\",\"grandtotal\":\"5\",\"weighformat\":\"2\"}]', 'COD', '0', '2022-11-24 14:50:43', '2022-11-24 14:50:43'),
(20, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '611', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-24 15:32:16', '2022-11-24 15:32:16'),
(21, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '611', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-24 15:37:43', '2022-11-24 15:37:43'),
(22, 'Chicken Center', NULL, 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '611', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-29 21:35:20', '2022-11-29 21:35:20'),
(23, 'Chicken Center', 'Ghanashyam Behera', 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '611', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-30 23:33:19', '2022-11-30 23:33:19'),
(24, 'Chicken Center', 'Ghanashyam Behera', 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '611', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-30 23:33:58', '2022-11-30 23:33:58'),
(25, 'Chicken Center2', 'Ghanashyam Behera2', 'gha@gmail.com', '98619620032', 'Bengaluru,Karnataka,India2', '6112', '22', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'CODd', '0', '2022-11-30 23:36:58', '2022-11-30 23:36:58'),
(26, 'Chicken Center', 'Ghanashyam Behera', 'gha@gmail.com', '9861962003', 'Bengaluru,Karnataka,India', '611', '2', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'COD', '0', '2022-11-30 23:37:30', '2022-11-30 23:37:30'),
(27, 'Chicken Center2', 'Ghanashyam Behera2', 'gha@gmail.com', '98619620032', 'Bengaluru,Karnataka,India2', '6112', '22', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'CODd', '0', '2022-11-30 23:38:21', '2022-11-30 23:38:21'),
(28, 'Chicken Center2', 'Ghanashyam Behera2', 'gha@gmail.com', '98619620032', 'Bengaluru,Karnataka,India2', '6112', '22', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'CODd', '0', '2022-11-30 23:47:23', '2022-11-30 23:47:23'),
(29, 'Chicken Center2', 'Ghanashyam Behera2', 'gha@gmail.com', '98619620032', 'Bengaluru,Karnataka,India2', '6112', '22', '[{\"product_column_id\":\"94\",\"customer_id\":\"2\",\"product_id\":\"5\",\"product_name\":\"Chicken thigh (bone in)\",\"product_price\":\"330\",\"quantity\":\"1\",\"grandtotal\":\"330\",\"weighformat\":\"1\"},{\"product_column_id\":\"93\",\"customer_id\":\"2\",\"product_id\":\"4\",\"product_name\":\"Chicken wing\",\"product_price\":\"280\",\"quantity\":\"1\",\"grandtotal\":\"280\",\"weighformat\":\"1\"}]', 'CODd', '0', '2022-12-03 06:38:08', '2022-12-03 06:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `rate_for_one_kg` varchar(150) NOT NULL,
  `product_type` varchar(150) NOT NULL,
  `inventory_product` varchar(150) NOT NULL,
  `image` varchar(160) NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `disprice` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `rate_for_one_kg`, `product_type`, `inventory_product`, `image`, `status`, `updated_at`, `disprice`) VALUES
(1, 'Chicken Breast', '350', '1', '0', 'chicken_breast.jpg', 1, '2022-10-26 07:51:19', '0'),
(2, 'chicken Leg Pieces', '300', '1', '0', 'chicken_leg.jpg', 1, '2022-10-26 07:49:16', '0'),
(3, 'Chicken drumstick', '360', '1', '0', 'chicken_drumstick.jpg', 1, '2022-10-26 07:51:17', '0'),
(4, 'Chicken wing', '280', '1', '0', 'chicken_wing.jpg', 1, '2022-10-26 08:18:36', '0'),
(5, 'Chicken thigh (bone in)', '330', '1', '0', 'chicken_thigh_bone.jpg', 1, '2022-10-26 07:53:30', '0'),
(6, 'Eggs', '5', '2', '0', 'eggs.jpg', 1, '2022-10-26 08:13:21', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store_products_data`
--

CREATE TABLE `tbl_store_products_data` (
  `pro_id` int(11) NOT NULL,
  `customer_id` varchar(11) NOT NULL,
  `product_id` varchar(11) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `product_price` varchar(55) NOT NULL,
  `quantity` varchar(55) NOT NULL,
  `grandtotal` varchar(50) NOT NULL,
  `image` varchar(150) NOT NULL,
  `disprice` varchar(50) NOT NULL,
  `discount_total` varchar(50) DEFAULT NULL,
  `netweight` varchar(50) DEFAULT NULL,
  `weighformat` varchar(50) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_store_products_data`
--

INSERT INTO `tbl_store_products_data` (`pro_id`, `customer_id`, `product_id`, `product_name`, `product_price`, `quantity`, `grandtotal`, `image`, `disprice`, `discount_total`, `netweight`, `weighformat`, `updated_at`) VALUES
(108, '2', '1', 'Chicken Breast', '350', '6', '2100', '0', '0', '0', '0', '1', '2022-11-24 01:19:59'),
(131, '3', '4', 'Chicken wing', '280', '1', '280', '0', '0', '0', '0', '1', '2022-12-09 02:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategories`
--

CREATE TABLE `tbl_subcategories` (
  `subcat_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subcategory_name` varchar(300) NOT NULL,
  `topic_name` text,
  `description` text,
  `cat_id` int(11) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subcategories`
--

INSERT INTO `tbl_subcategories` (`subcat_id`, `user_id`, `subcategory_name`, `topic_name`, `description`, `cat_id`, `price`, `status`, `updated_at`, `type_category`) VALUES
(42, 114, 'Java Programming', 'Introduction to Java', '<h2><strong>What is Java?</strong></h2>\r\n\r\n<hr />\r\n<p><strong>Java is a high-level programming language originally developed by Sun Microsystems and released in 1995.</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp;Java runs on a variety of platforms,&nbsp;</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; such as Windows, Mac OS,&nbsp;</strong></p>\r\n\r\n<hr />\r\n<h2><strong>Execute Java Program&nbsp;</strong></h2>\r\n\r\n<p><strong>public class SayHello(){</strong></p>\r\n\r\n<p><strong>public static void main(String argos[]){</strong></p>\r\n\r\n<p><strong>System.out.println(&ldquo;Hey Good Morning Mr John&rdquo;);</strong></p>\r\n\r\n<p>}</p>\r\n\r\n<p>}</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Java programming language was originally developed by Sun Microsystems.</strong></p>\r\n\r\n<p><strong>which was initiated by James Gosling and released in 1995 as core component of Sun Microsystems&#39; Java platform&nbsp;</strong></p>\r\n\r\n<p><strong>The latest release of the Java Standard Edition is Java SE 8.&nbsp;</strong></p>\r\n\r\n<p><strong>The new J2 versions were renamed as Java SE, Java EE, and Java ME respectively. Java is guaranteed to be Write Once, Run Anywhere.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Major Features of Java Programming Language</strong></h2>\r\n\r\n<hr />\r\n<p><strong>Object Oriented: Java is an Object Oriented Programming Language, which means in Java everything is written in terms of classes and objects.&nbsp;</strong></p>\r\n\r\n<p><strong>Ex: Bike,Pen,Car</strong></p>\r\n\r\n<p><strong><img src=\"https://lh4.googleusercontent.com/vDA-06ihbI9N9agRvUOAgP5pNamU0L96nSkr56456QRv8-DIWc6LDyvGOcBAEuxLjLFFQ-hETF8xtuD7VESIh7xZuOF1EWcPPBz1Pz1E_6JVKXkILe1OOpT3b78jUoopa_vQYQxIxgih8dWOcMLXn-0REySxZfZhFq2wjRwtDqaJFHXt0c8sqMXpY3hbwVl4\" style=\"height:230px; width:442px\" /></strong></p>\r\n\r\n<p><strong>Platform Independent: The meaning of platform-independent is that the java compiled code(byte code) can run on all operating systems.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img src=\"https://lh6.googleusercontent.com/T_GIIjYAWHf8SVpcAX1EC151exRqiWzXry8ornU5WngCPF3Tp5jmPS8hEpo57PXk8-I5VxIkxU9hRdNV6JjymZ3nmHJzl2G9JUtqb6xQhlPQJIJnLB2gdhZRRc79G0ilq0guASi81R38Aena0-oOugBNAR43wnuArvQT5L_PQVMf5Wun-ToG5Qd91-HYPKQE\" style=\"border-style:solid; border-width:1px; height:256px; width:565px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Simple: Java is very easy to learn, and its syntax is simple, clean and easy to understand</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img src=\"https://lh5.googleusercontent.com/FjD4zvmYRGR3vwiMYBhVLbXayek-32p4G8omGDBCVGDilw6hIYcTnguRV0syciNld8-qlxnqRZ7ZgtDPyd79dkhu39Jia-BupEcTzBkjU1KrTAL8xqRe9-_TwXLU2Nr9Uk4gOyYW7smZIRHv_C8yEh6WRX9MdLPq7573IqA4ns5DwEer4bTb13CvMKN3o4Nj\" style=\"height:169px; width:578px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Secure: With Java&#39;s secure feature it enables to develop virus-free, tamper-free systems. Authentication techniques are based on public-key encryption.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img src=\"https://lh6.googleusercontent.com/N7l3tszT0tuGCmWGAws6XGgF87I-DYi4LoBilevhEnP5NJN33Shf4me_MovuVmvcgH2Hal5yHa6H13mN1OqNEkH64ThU4Nz3Uu9c3lWYymIRObtBNBVG2B8_ahFdNgEjFbEieZ57Qt-aQm064xnXxDPxG53yV214mIQKPP5IF7abZubUXF6SiPOHbUkmeTT-\" style=\"height:280px; width:513px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Architecture-neutral: Java compiler generates an architecture-neutral object file format, which makes the compiled code executable on many processors, with the presence of Java runtime system.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Portable: Java is portable because it facilitates you to carry the Java bytecode to any platform. It doesn&#39;t require any implementation.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img src=\"https://lh5.googleusercontent.com/5mNkbzwB4xe_fOU2tIn7bgQpy9vGJg8TfzX2ijMVR48049NS6koWO0KMHWoYE-9sut7mhcMjslAtJqetqpHBXYFowqGYmzmZ4zBsFAAZU5M5kkSPCU5H6r9xrU7f_6Gk5KcCiybV2ggKiktejmtQJe9PNtJxxs_XHnSX6eqZl6rX-49YQNkQm2kQQ0IPohMb\" style=\"height:254px; width:535px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Robust: Java makes an effort to eliminate error prone situations by emphasizing mainly on compile time error checking and runtime checking.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Multithreaded: With Java&#39;s multithreaded feature it is possible to write programs that can perform many tasks simultaneously. This design feature allows the developers to construct interactive applications that can run smoothly.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img src=\"https://lh4.googleusercontent.com/b4VKqHUpOb_6o-YFN4TOmPm2lITicZZl4VIkKKy_H6pLvC4tRmtjOi-ovrWVHJMng96RmUaHH5umNdF-rJG5CmYcibIB27ZJI1vdihmg9JT1CoBQ-6ksMKukodg40xNewYxDqOK7OMzMO6v5omLJv3XisUcNtoMpZ2H6cZGvhmh0CsrgFyzmDh2WcKnK2vpK\" style=\"height:236px; width:482px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Interpreted: Java byte code is translated on the fly to native machine instructions and is not stored anywhere. The development process is more rapid and analytical since the linking is an incremental and light-weight process.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img src=\"https://lh5.googleusercontent.com/8gmRJuV0FaJf5iGaM5tuvkQCq65w7CvCUFgxLE3meezAVWDcZnBF7vhxpDu8hPelQuZU06Nu-y0eDGQNA254VrLao0A_oAFhsTRLhZvPFxkznVaHwLCBMT9HUR5RWQgIEMcrY4qfThE9ZEn80Ka8fa2D5HM0EWEOLqM8CgdTL3zdN0xQR6kxKP2JYAe_Keby\" style=\"height:272px; width:551px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>High Performance: With the use of Just-In-Time compilers, Java enables high performance.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Distributed: Java is designed for the distributed environment of the internet.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img src=\"https://lh4.googleusercontent.com/91DeNIaj7RryNCI-9DLQUVlyD6L1z0S25Kd_6YyD1WftU8l9XVIOE7WbtGa69mY_MD7ihxOmgJbkYk-sYQ4Sc30jXWUtGFY8JaEYDwF30SoYMOzczZLoM6OQ40ULa2-29M04fPGboVNBDMnhlPPzOrxZZisKLX1xgIe0tuYRP0S5kAP_E6iXTAkJMG7biVfg\" style=\"height:277px; width:616px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dynamic: Java is considered to be more dynamic than C or C++ since it is designed to adapt to an evolving environment. Java programs can carry extensive amount of run-time information that can be used to verify and resolve accesses to objects on run-time.</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h2><strong>History of Java</strong></h2>\r\n\r\n<p><strong>The language, initially called &lsquo;Oak&rsquo; after an oak tree that stood outside Gosling&#39;s office, also went by the name &lsquo;Green&rsquo; and ended up later being renamed as Java, from a list of random words.</strong></p>\r\n\r\n<hr />\r\n<h2><strong>Tools You Will Need</strong></h2>\r\n\r\n<p><strong>You will also need the following softwares:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Windows 10 operating system or Linux</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Java JDK 8</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Notepad++</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>SayHello.java</strong></h3>\r\n\r\n<p><strong>public class SayHello()</strong></p>\r\n\r\n<p><strong>{</strong></p>\r\n\r\n<p><strong>public static void main(String argos[])</strong></p>\r\n\r\n<p><strong>{</strong></p>\r\n\r\n<p><strong>System.out.println(&ldquo;Hey Good Morning Mr John&rdquo;);</strong></p>\r\n\r\n<p><strong>}</strong></p>\r\n\r\n<p><strong>}</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 42, NULL, 1, '2022-12-30 12:34:33', NULL),
(43, 114, 'Java Programming', 'Local Environment Setup', '<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp;Local Environment Setup</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<hr />\r\n	<p><strong>Java SE is freely available from the link <a href=\"http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html\">Download Java</a>. You can download a version based on your operating system.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Follow the instructions to download Java and run the .exe to install Java on your machine.&nbsp;</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Once you installed Java on your machine, you will need to set environment variables to point to correct installation directories:</strong></p>\r\n\r\n	<hr />\r\n	<p>&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>&nbsp; &nbsp; &nbsp;Setting Up the Path for Windows</strong></h3>\r\n\r\n<hr />\r\n<p><strong>Assuming you have installed Java in c:\\Program Files\\java\\jdk directory:</strong></p>\r\n\r\n<p><strong>Step-1:</strong></p>\r\n\r\n<p><strong>Right-click on &#39;My Computer&#39; and select &#39;Properties&#39;.</strong></p>\r\n\r\n<p><strong><img src=\"https://lh6.googleusercontent.com/rbteuFH5ixt5NpqGf-jQLw_Fklb2TYjniQCLWKk_o9-HantY_ocrI5ZhjKberfR1frjpS_MD52W7RX4-G0GblYpkmO1EY2uTtZ6HFKbE5BVKd_J-LzX-nFgNm3OqqiSEzd6DSE3l-vfOc0eY4Z8gKsVu7nQVkzWMBWoavf8XPOglFsH-0QNYMTskEL64APM\" style=\"height:297px; width:503px\" /></strong></p>\r\n\r\n<p><strong>Click the &#39;Environment variables&#39; button under the &#39;Advanced&#39; tab.</strong></p>\r\n\r\n<p><strong><img src=\"https://lh5.googleusercontent.com/xvcwsNk97bURF5HCbyxl5WLlB7PkauHfDA-sr-EBWo1dLC1Dx_n9_I8DNJuHS0kHmhHzxGPaHOCPVYDnMVBokeh5OubbXJw9JDLar3YPBMEk6zBivoTiE1EKz2q9xTliV6E08mfpsorJQewjzC6R2vb_oUiW1TBC60M28LmBT9m83ArEOME9I09EY30yz7w\" style=\"height:289px; width:460px\" /></strong></p>\r\n\r\n<p><strong>Click On Environment</strong></p>\r\n\r\n<p><strong><img src=\"https://lh6.googleusercontent.com/S8GAqJzoDY-m18Z-YUJ_X5gyOo74xQvFfA8Wih0Y6jaw5xA5GTojvta9PftNwqDAmFtKRwQlTH7YThbXygj8f9ekKoUAC4LMsV_-aPtBMxFDJvqjJHxlURSCla4Q8Ge1rhveL6rgsUQVzXQ0wuVz3A4M2en86ZXBd3JpshNMDbPHg-DDDMQNUVfPK7-weeI\" style=\"height:360px; width:675px\" /></strong></p>\r\n\r\n<h3><strong>Click on System variables &lsquo;NEW&rsquo;</strong></h3>\r\n\r\n<p><strong><img src=\"https://lh4.googleusercontent.com/zR2KJj6Mn9EiCmQtMK9ne_dP5V__eauMRu7dN6bWVqcOFBq7PcQnR3nADrajuK_uAHqXlhDZJzmBry_gBCOQMrxFhhziYneAfHuWpUaqu0nUrpu3t_uQww1orP39ooEwO_Rew-wta0OprEQ_n1QHr3gSWGJ0cGGN76AWfwJbU7UiL7J1foAnHuvdbOE4pcw\" style=\"height:280px; width:608px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Click on OK all the Tabs.</strong></p>\r\n\r\n<h2><strong>Popular Java Editors</strong></h2>\r\n\r\n<p><strong>To write your Java programs, you will need a text editor.&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Notepad:&nbsp;</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Netbeans:&nbsp;</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Eclipse:</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 43, NULL, 1, '2022-12-30 12:39:01', NULL),
(44, 114, 'Java Programming', 'Java Basic Syntax', '<ul>\r\n	<li>\r\n	<p><strong>Class - A class can be defined as a blueprint of the Class that describes the behavior and state that the object of its type supports.</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><strong>Ex: Light,Car,Dog.</strong></p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Methods - A method is a behavior. A class can contain many methods. It is in methods where the logics are written, data is manipulated and all the actions are executed.</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><strong>Ex: lightOn(),LightOff(),BowBow();</strong></p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Instance Variables - Each object has its unique set of instance variables. An object&#39;s state is created by the values assigned to these instance variables.</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><strong>Ex:String CarName=&rdquo;BMW&rdquo;,int Price=10000;</strong></p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2><strong>First Java Program</strong></h2>\r\n\r\n<p><strong>Let us look at a simple code that will print the words Car Details.</strong></p>\r\n\r\n<p><strong>Car.java</strong></p>\r\n\r\n<p><strong>public class Car()</strong></p>\r\n\r\n<p><strong>{</strong></p>\r\n\r\n<p><strong>public static void main(String argos[])</strong></p>\r\n\r\n<p><strong>{</strong></p>\r\n\r\n<p><strong>String CarName=&rdquo;BMW&rdquo;;</strong></p>\r\n\r\n<p><strong>int CarPrice=10000;</strong></p>\r\n\r\n<p><strong>System.out.println(&ldquo;My Car Name is &rdquo;+CarName+&rdquo;its Price Is&rdquo;+CarPrice);</strong></p>\r\n\r\n<p><strong>}</strong></p>\r\n\r\n<p><strong>}</strong></p>\r\n\r\n<hr />\r\n<p><strong>&nbsp;Please follow the subsequent steps:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Open the notepad and add the code as above.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Save the file as: Car.java</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Type &#39;javac Car.java&#39; and press enter to compile your code.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>&nbsp;If there are no errors in your code, the command prompt will take you to the next line (Assumption : The path variable is set)</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Now, type &#39; java Car&#39; to run your program.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>You will be able to see &#39; Hello World &#39; printed on the window.</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>-&gt;javac Car.Java</strong></p>\r\n\r\n<p><strong>-&gt;Java Car</strong></p>\r\n\r\n<p><strong>My Car Name is BMW its Price Is 10000</strong></p>\r\n\r\n<hr />\r\n<h2><strong>Basic Syntax</strong></h2>\r\n\r\n<p><strong>About Java programs, it is very important to keep in mind the following points.</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Case Sensitivity - Java is case sensitive, which means identifier Helloand hello would have different meaning in Java.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Class Names - For all class names the first letter should be in Upper Case.</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>If several words are used to form a name of the class, each inner word&#39;s first letter should be in Upper Case.</strong></p>\r\n\r\n<hr />\r\n<p><strong>Example: class MyFirstJavaClass</strong></p>\r\n\r\n<hr />\r\n<ul>\r\n	<li>\r\n	<p><strong>Method Names - All method names should start with a Lower Case letter.</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>If several words are used to form the name of the method, then each inner word&#39;s first letter should be in Upper Case.</strong></p>\r\n\r\n<p><strong>Example: public void myMethodName()</strong></p>\r\n\r\n<p><strong>Program File Name - Name of the program file should exactly match the class name.</strong></p>\r\n\r\n<p><strong>When saving the file, you should save it using the class name (Remember Java is case sensitive) and append &#39;.java&#39; to the end of the name (if the file name and the class name do not match, your program will not compile).</strong></p>\r\n\r\n<p><strong>Example: Assume &#39;MyFirstJavaProgram&#39; is the class name. Then the file should be saved as &#39;MyFirstJavaProgram.java&#39;</strong></p>\r\n\r\n<p><strong>public static void main(String args[]) - Java program processing starts from the main() method which is a mandatory part of every Java program.</strong></p>', 17, NULL, 1, '2022-12-30 18:36:27', NULL),
(45, 114, 'Hyper Text Markup Language(HTML)', 'Heading Tag', '<p><tt>Hello world&nbsp;</tt></p>', 45, NULL, 1, '2023-01-12 03:23:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `identity_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_number` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_otp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci,
  `pincode` int(10) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `usertype` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `webadmin_id` int(11) DEFAULT NULL,
  `lmsadmin_id` int(11) DEFAULT NULL,
  `college_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yearofpassing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `identity_number`, `name`, `email`, `email_verified_at`, `mobile_number`, `password`, `remember_token`, `mobile_otp`, `state`, `city`, `pincode`, `address`, `usertype`, `image`, `communication`, `login_status`, `status`, `created_at`, `updated_at`, `webadmin_id`, `lmsadmin_id`, `college_name`, `branch`, `stream`, `yearofpassing`) VALUES
(114, '', 'Nabi Rasool, Shaik', 'admin@gmail.com', NULL, '9398325250', '$2y$10$X37TMR1nrIOlmS51E68wdeJ7W0WIrMv0876VotEy3QyBcCNZcWc6O', NULL, NULL, 'Karnataka state', 'Bangalore', 560037, 'bangalore marathalli 560037', '1', '', NULL, 0, 1, '2021-03-17 19:30:18', '2021-03-17 19:30:18', NULL, NULL, NULL, NULL, NULL, NULL),
(191, NULL, 'Web Admin', 'webadmin@gmail.com', NULL, '1234567890', '$2y$10$HlZCshItf9.X03Nk/UhBzOHG1eSW71EekmV84stbA2zzvYOjPws3u', NULL, NULL, NULL, NULL, 560037, 'Banagalore', '3', NULL, 'email,SMS', 0, NULL, '2022-12-24 05:56:45', '2022-12-24 05:56:45', 114, NULL, NULL, NULL, NULL, NULL),
(193, NULL, 'Nabi Rasool Shaik', 'Lmsadmin@gmail.com', NULL, '9398325250', '$2y$10$w63erQUevJPRVilLptMrK.xfpY3S0Q0LMqFCG2rjmJcBGAlGz9Q9G', NULL, NULL, NULL, 'Marathahalli', 515300, 'Bangalore', '2', NULL, 'email', 0, NULL, '2022-12-24 06:18:41', '2022-12-24 06:18:41', 114, NULL, NULL, NULL, NULL, NULL),
(194, NULL, 'Web Sub Admin', 'websubadmin@gmail.com', NULL, '9398325250', '$2y$10$ws0HSkWWVPd/xMvOUqfQLOp.cnTFknPvS1rXJkVxmKh8DABlaV5i6', NULL, NULL, NULL, 'Bangalore', 516005, 'Bangalore', '4', NULL, 'email,SMS,Phone', 0, NULL, '2022-12-25 03:19:46', '2022-12-25 03:19:46', 191, NULL, NULL, NULL, NULL, NULL),
(195, NULL, 'Web Admin 1', 'websubadmin1@gmail.com', NULL, '9398325250', '$2y$10$KyBvGw4CFDfA82X/DALtTO8govaxYUiO07jESVHrs73gmc2x.YX.q', NULL, NULL, NULL, 'Marathahalli', 515300, 'Bangalore', '4', NULL, 'email,SMS', 0, NULL, '2022-12-25 04:35:20', '2022-12-25 04:35:20', 191, NULL, NULL, NULL, NULL, NULL),
(197, NULL, 'LMS SUB ADMIN', 'Lmsadminsub@gmail.com', NULL, '9398325250', '$2y$10$wCzchAEz4dscq10zoYZAOOQBBykxzCUIyNlt0rClY.NBY.AXbKGeu', NULL, NULL, 'Karnataka', 'Bangalore', 560037, '#54,3rd A cross Sowjanya Building ,PR Layout , Marathahalli,Bangalore-560037', '5', NULL, 'email,SMS,Phone', 0, NULL, '2022-12-25 07:06:23', '2022-12-25 07:06:23', NULL, 193, NULL, NULL, NULL, NULL),
(206, NULL, 'Nabi rasool Shaik', 'sknabirasool104@gmail.com', NULL, NULL, '$2y$10$BKk/IUXdTcVELsitPOVl3..bTGANLcouYIc5HpUI7rZjRmx0fNDxK', NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, 0, NULL, '2022-12-26 18:12:10', '2022-12-26 18:12:10', NULL, NULL, NULL, NULL, NULL, NULL),
(207, NULL, 'SAMAVARTHI', 'samavarthip@gmail.com', NULL, NULL, '$2y$10$EaSOuoTkfWRvbUyr2cxAluF2O3oZ.oKPs89LNbxmNX5SWO74c/PiK', NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, 0, NULL, '2022-12-26 18:22:20', '2022-12-26 18:22:20', NULL, NULL, NULL, NULL, NULL, NULL),
(208, NULL, 'Rasool590', 'sknabirasool590@gmail.com', NULL, NULL, '$2y$10$b2KnrRwu2GQ1Fgex.dTAauD9Aq0BHxdEok/mcSa6plwRQRASrMHxm', NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, 0, NULL, '2022-12-26 19:55:40', '2022-12-26 19:55:40', NULL, NULL, NULL, NULL, NULL, NULL),
(209, NULL, 'Veera', 'veerashankarreddy691@gmail.com', NULL, NULL, '$2y$10$RRtfQ2VS2phTSQqg0.XkA.vyn4wAbmslMydORlFuF1VlJW7HW6kUC', NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, 0, NULL, '2022-12-28 01:19:44', '2022-12-28 01:19:44', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_categories_sub`
--
ALTER TABLE `tbl_categories_sub`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers_app`
--
ALTER TABLE `tbl_customers_app`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designation_employees_history`
--
ALTER TABLE `tbl_designation_employees_history`
  ADD PRIMARY KEY (`desig_id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`picture_id`);

--
-- Indexes for table `tbl_orders_details`
--
ALTER TABLE `tbl_orders_details`
  ADD PRIMARY KEY (`order_serial`);

--
-- Indexes for table `tbl_order_data`
--
ALTER TABLE `tbl_order_data`
  ADD PRIMARY KEY (`order_file_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_store_products_data`
--
ALTER TABLE `tbl_store_products_data`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tbl_subcategories`
--
ALTER TABLE `tbl_subcategories`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_categories_sub`
--
ALTER TABLE `tbl_categories_sub`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_customers_app`
--
ALTER TABLE `tbl_customers_app`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_designation_employees_history`
--
ALTER TABLE `tbl_designation_employees_history`
  MODIFY `desig_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `picture_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders_details`
--
ALTER TABLE `tbl_orders_details`
  MODIFY `order_serial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_data`
--
ALTER TABLE `tbl_order_data`
  MODIFY `order_file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_store_products_data`
--
ALTER TABLE `tbl_store_products_data`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `tbl_subcategories`
--
ALTER TABLE `tbl_subcategories`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
