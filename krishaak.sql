-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 12:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krishaak`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `phone_num` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `district` varchar(30) NOT NULL,
  `subdistrict` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` int(10) NOT NULL,
  `PostPost_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`phone_num`, `name`, `district`, `subdistrict`, `password`, `id`, `PostPost_id`) VALUES
('01795772575', 'Joy', 'Dhaka', 'Dhaka', '01726297111', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title_eng` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `image` longblob NOT NULL,
  `images` varchar(100) NOT NULL,
  `dlink` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `title_eng`, `author`, `image`, `images`, `dlink`) VALUES
(22, 'কৃষি শিক্ষা ষষ্ঠ শ্রেণী', 'krishi shikkha class 6', 'dhaka board', '', 'abc.jpg', 'https://drive.google.com/file/d/1aK6huU8JxorHPoQOvAg4e8IYZDeLsF96/view'),
(23, 'কৃষি শিক্ষা সপ্তম শ্রেণী', 'krishi shikkha class 7', 'dhaka board', '', 'kri7.jpg', 'https://drive.google.com/file/d/14mB7btgK0iZgF3hcg3I1zX1oNey3g7m0/view'),
(24, 'কৃষি শিক্ষা অষ্টম শ্রেণী', 'krishi shikkha class 8', 'dhaka board', '', 'ks8.jpg', 'https://drive.google.com/file/d/10N0QCM52NyOZhXR8t_qrRcjufgvsPhQw/view'),
(28, 'asd', 'asdasd', 'a', '', 'abc.jpg', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_id`, `image`, `name`, `price`, `quantity`) VALUES
(5, 'rotno.jpg', 'Rotno Fertilizer', 1000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `details` varchar(500) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `Comment_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `usersphone_num` varchar(30) DEFAULT NULL,
  `farm_specialistphone_num` varchar(30) DEFAULT NULL,
  `PostPost_id` int(10) NOT NULL,
  `Adminphone_num` varchar(50) NOT NULL,
  `usersid` int(10) DEFAULT NULL,
  `farm_specialistid` int(10) DEFAULT NULL,
  `Adminid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`details`, `Comment_id`, `name`, `date`, `usersphone_num`, `farm_specialistphone_num`, `PostPost_id`, `Adminphone_num`, `usersid`, `farm_specialistid`, `Adminid`) VALUES
('hello', 29, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 31, '', NULL, NULL, NULL),
('okay', 30, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 31, '', NULL, NULL, NULL),
('okay\r\n', 31, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 31, '', NULL, NULL, NULL),
('nice', 32, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 31, '', NULL, NULL, NULL),
('HELLO', 33, 'joy', '2019-12-06', '01726297111', NULL, 25, '', NULL, NULL, NULL),
('HI', 34, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 25, '', NULL, NULL, NULL),
('HI', 35, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 25, '', NULL, NULL, NULL),
('hi', 36, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 22, '', NULL, NULL, NULL),
('hi', 37, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 22, '', NULL, NULL, NULL),
('hello', 38, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 22, '', NULL, NULL, NULL),
('HI', 39, 'Expert Rabbi', '2019-12-06', NULL, '01526297123', 0, '', NULL, NULL, NULL),
('ধান হবে টেনশন নিও না\r\n', 43, 'joy', '2019-12-07', '01726297111', NULL, 41, '', NULL, NULL, NULL),
('gu', 44, 'joy', '2019-12-08', '01726297111', NULL, 35, '', NULL, NULL, NULL),
('ok', 45, 'joy', '2019-12-08', '01726297111', NULL, 43, '', NULL, NULL, NULL),
('ফুল কপি চাষ লাভ জনক', 46, 'Expert Rabbi', '2019-12-08', NULL, '01526297123', 50, '', NULL, NULL, NULL),
('আগে দিতে হবে অবশ্যই', 47, 'Expert Rabbi', '2019-12-08', NULL, '01526297123', 49, '', NULL, NULL, NULL),
('আমন ও বোরো ধান', 48, 'Expert Rabbi', '2019-12-08', NULL, '01526297123', 48, '', NULL, NULL, NULL),
('ইউরিয়া আগে দিতে হয়', 49, 'joy', '2019-12-08', '01726297111', NULL, 49, '', NULL, NULL, NULL),
('আমি আমন চাষ করে বেশ লাভ পেয়েছি', 50, 'joy', '2019-12-08', '01726297111', NULL, 48, '', NULL, NULL, NULL),
('to ki hoise\r\n', 51, 'joy', '2019-12-09', '01726297111', NULL, 52, '', NULL, NULL, NULL),
('ok', 53, 'Expert Rabbi', '2019-12-14', NULL, '01526297123', 55, '', NULL, NULL, NULL),
('valo', 54, 'joy', '2021-01-07', '01726297111', NULL, 72, '', NULL, NULL, NULL),
('valo', 55, 'joy', '2021-01-07', '01726297111', NULL, 72, '', NULL, NULL, NULL),
('amio janina kisu', 56, 'joy', '2021-01-08', '01726297111', NULL, 78, '', NULL, NULL, NULL),
('ফলিডল ভালো ভাবে পানির সাথে মিশিয়ে পাতায় স্প্রে করুন', 57, 'Expert kalam', '2021-01-08', NULL, '01726296111', 89, '', NULL, NULL, NULL),
('ok', 58, 'joy', '2021-01-09', '01726297111', NULL, 89, '', NULL, NULL, NULL),
('ভাল', 59, 'joy', '2021-01-19', '01726297111', NULL, 51, '', NULL, NULL, NULL),
('ami kmne janbo vai??\r\n', 60, 'nuha', '2021-03-05', '01789448844', NULL, 93, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ex`
--

CREATE TABLE `ex` (
  `trid` char(30) DEFAULT NULL,
  `name` varchar(35) NOT NULL,
  `phone` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex`
--

INSERT INTO `ex` (`trid`, `name`, `phone`) VALUES
('SSLCZ_TEST_6087b2777d4ec', '', ''),
('SSLCZ_TEST_6087b27cf1099', '', ''),
('', '', ''),
('SSLCZ_TEST_6087bbd30a4b7', '', ''),
(NULL, 'Hasan Al Mamun', ''),
('SSLCZ_TEST_6087c1225bb49', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6087c54c36879', '', ''),
('SSLCZ_TEST_6087d38e12c5a', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6087d5e1aca6e', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6087db46edd3d', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6087dfcd6f9c1', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6087e07fcfd7a', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6087e50a86bb7', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6087e82924f6d', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_60882bb8261af', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_60882f912ba5f', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6088377804255', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_60883faa616a6', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6088421837ab4', 'Bodda', '01794747890'),
('SSLCZ_TEST_6088442cc5947', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_608844beb67d3', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_6088468b6d7bc', 'Bodda', '01794747890'),
('SSLCZ_TEST_6088497223dd3', 'Hasan Al Mamun', '01794747894'),
('SSLCZ_TEST_60884bd5378a2', 'Hossainnna', '01794747897'),
('SSLCZ_TEST_60884dcc9c080', 'Bodda', '01794747890'),
('SSLCZ_TEST_60884ea72f52a', 'ElectricMistri', '01794747891'),
('SSLCZ_TEST_60884f562eca8', 'ElectricMistri', '01794747891'),
('SSLCZ_TEST_6088523f57645', 'Hossainnna', '01794747897'),
('SSLCZ_TEST_608853d187e7f', 'Bodda', '01794747890'),
('SSLCZ_TEST_608855b090f02', 'Bodda', '01794747890'),
('SSLCZ_TEST_60892edf25615', '?????-?????', '01794747892'),
('SSLCZ_TEST_608931e996112', 'Hossainnna', '01794747897'),
('SSLCZ_TEST_6089333915f54', 'Bodda', '01794747890');

-- --------------------------------------------------------

--
-- Table structure for table `farm_specialist`
--

CREATE TABLE `farm_specialist` (
  `name` varchar(50) NOT NULL,
  `phone_num` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `district` varchar(30) NOT NULL,
  `subdistrict` varchar(30) NOT NULL,
  `id` int(10) NOT NULL,
  `Adminphone_num` varchar(50) NOT NULL,
  `Adminid` int(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farm_specialist`
--

INSERT INTO `farm_specialist` (`name`, `phone_num`, `password`, `district`, `subdistrict`, `id`, `Adminphone_num`, `Adminid`, `email`) VALUES
('Expert joy', '01526297123', '123', 'dhaka', 'azimpur', 4, '', NULL, 'joy@gmail.com'),
('Expert Akib', '01726254512', '123', 'Comilla', 'Nurpur', 1, '', NULL, 'akib2@gmail.com'),
('Expert Shimul', '01726287211', '123', 'Gazipur', 'Gazipur', 9, '', NULL, 'shimul@gmail.com'),
('Expert kalam', '01726296111', '123456', 'khulna', 'boyra', 3, '', NULL, 'kal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(10) NOT NULL,
  `post_name` varchar(500) CHARACTER SET utf8 NOT NULL,
  `details` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `Adminphone_num` varchar(50) NOT NULL,
  `Adminid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `post_name`, `details`, `link`, `Adminphone_num`, `Adminid`) VALUES
(1, '', 'নতুন খবর ', 'https://www.youtube.com/embed/RDTKFtwNq1M', '', 0),
(2, 'হাস চাষ', 'চীনে পানি বিহীন হাসের খামার', 'https://www.youtube.com/embed/tfv59kHEAmA', '01795772575', 1),
(3, 'আধুনিক চাষাবাদ', 'চাষের নতুন যন্ত্র', 'https://www.youtube.com/embed/d5PTKHRw2FQ', '01795772575', 0),
(11, 'আম চাষ ', '২১০ বিঘায় ভরপুর আমের চাষ', 'https://www.youtube.com/embed/hEfQ_icTF_w', '01795772575', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `usersid` int(10) NOT NULL,
  `Order_by` varchar(50) NOT NULL,
  `order_details` varchar(255) NOT NULL,
  `Order_id` int(10) NOT NULL,
  `usersphone_num` varchar(30) NOT NULL,
  `Order_dateTime` datetime NOT NULL,
  `delivery_within` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`usersid`, `Order_by`, `order_details`, `Order_id`, `usersphone_num`, `Order_dateTime`, `delivery_within`) VALUES
(0, '', ' 1 * ACI BIOFERTY -', 42, '21321321', '2019-12-06 07:01:54', '2019-12-09'),
(0, '', ' 3 * bampar joibo shar -', 43, '23123', '2019-12-06 07:58:08', '2019-12-09'),
(0, '', ' 3 * সার -', 44, '123121', '2019-12-07 09:45:54', '2019-12-10'),
(0, '', ' 1 * ACI BIOFERTY - 2 * bampar joibo shar -', 45, '1312', '2019-12-08 08:54:13', '2019-12-11'),
(0, '', ' 1 * ACI BIOFERTY - 1 * bampar joibo shar -', 46, 'afafaf', '2019-12-08 11:11:18', '2019-12-11'),
(8, 'joynal', ' 2 * ACI BIOFERTY -', 47, '01726297456', '2019-12-08 11:25:22', '2019-12-11'),
(8, 'joynal', ' 2 * bampar joibo shar -', 48, '3', '2019-12-08 11:27:22', '2019-12-11'),
(1, 'Joy', ' 2 * Bioferti 100ml -', 56, '322545', '2021-01-19 10:23:37', '2021-01-22'),
(1, 'joy', ' 2 * Bioferti 100ml -', 57, '0172629111', '2021-01-19 11:53:38', '2021-01-22'),
(18, 'Hasan Al Mamun', ' 1 * Organic Fertilizer (25 kg) -', 58, '01794747894', '2021-04-27 02:05:19', '2021-04-29'),
(18, 'Hasan Al Mamun', ' 1 * Bioferti 100ml -', 59, '01794747894', '2021-04-27 02:42:51', '2021-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `OrderOrder_id` int(10) NOT NULL,
  `Productproduct_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_id` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `tx_id` varchar(100) NOT NULL,
  `usersphone_num` varchar(30) NOT NULL,
  `usersid` int(10) NOT NULL,
  `delivery_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_id`, `Total`, `tx_id`, `usersphone_num`, `usersid`, `delivery_address`) VALUES
(40, 3750, '213213', '2131232', 0, 'wdsadsa'),
(41, 3750, '2324324sfsdfsdasdas', '21212113', 0, 'sadsadsa'),
(43, 3950, '1211413', '122131141', 0, 'afdsfaeraw'),
(44, 2850, '1323213', '123123213', 0, 'asdasdwas12'),
(45, 120, '21323', '21321321', 0, 'twjghkgkut121'),
(47, 360, '131', '23123', 0, 'wqdass'),
(48, 750, '123123', '123121', 0, 'asdw1212'),
(49, 360, '122', '1312', 0, 'dasdas'),
(50, 240, 'sad', 'afafaf', 0, 'asfaf'),
(51, 240, '12sdadf', '01726297456', 240, 'cumilla'),
(52, 240, 'asd', '3', 8, 'asdasd'),
(53, 240, '23232', '21312312', 240, 'dasdaskdjklas'),
(54, 1470, '2132312', '12345678912', 1470, 'dhaka'),
(55, 1350, '3232', '3232', 1350, 'dsds'),
(56, 1190, '1', '1', 1190, '1'),
(57, 360, '12345', '1232456789', 360, 'Dhaka'),
(60, 240, 'asdasd', '322545', 240, 'dhaka'),
(61, 240, 'asdkjkjkasdjk', '0172629111', 240, 'dhaka'),
(62, 410, '9', '01794747894', 410, 'add'),
(63, 120, 'gkjhy', '01794747894', 120, ',bjk');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `details` varchar(500) CHARACTER SET utf8 NOT NULL,
  `date` date DEFAULT NULL,
  `usersphone_num` varchar(30) DEFAULT NULL,
  `farm_specialistphone_num` varchar(30) DEFAULT NULL,
  `Likes` int(10) DEFAULT NULL,
  `Post_id` int(10) NOT NULL,
  `Adminphone_num` varchar(50) DEFAULT NULL,
  `usersid` int(10) DEFAULT NULL,
  `farm_specialistid` int(10) DEFAULT NULL,
  `Adminid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`title`, `images`, `details`, `date`, `usersphone_num`, `farm_specialistphone_num`, `Likes`, `Post_id`, `Adminphone_num`, `usersid`, `farm_specialistid`, `Adminid`) VALUES
('সার প্রদান', NULL, 'ইউরিয়া কি জিপসামের আগে দিব না পরে?', '2021-01-06', '017262512', NULL, NULL, 49, NULL, 6, NULL, NULL),
('শীত কালিন সবজি চাষ', NULL, 'শীত কালে কোন সবজি চাষ করলে সুফল পাওয়া যাবে?', '2021-01-07', '01726297456', NULL, NULL, 50, NULL, 8, NULL, NULL),
('মাছ চাষ', NULL, 'মাগুর মাছের সাথে কোন মাছ চাষ করা যাবে?', '2021-01-07', '01726297111', NULL, NULL, 51, NULL, 1, NULL, NULL),
('ফুলকপি চাষ', 'fulkopi.jpg', 'ফুলকপি চাষ করতে কেমন মাটি উপযুক্ত?', '2021-01-19', '01726297111', NULL, NULL, 93, NULL, 1, NULL, NULL),
('asd', '', 'asdaf', '2021-03-19', '01726297111', NULL, NULL, 95, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `details` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `image`, `category`, `details`, `name`, `Price`, `Quantity`) VALUES
(1, 'aci biofirty.jpg', 'Bioferti', 'এতে রয়েছে জৈব হিউমাস, এমাইনো এসিড,হরমোন ও পুষ্টী উপাদান যা দ্রুত ফলনের জন্য এক উপযোগী সার। এটি আপনার ফসলকে দ্রুত বেরে তুলবয়ে এবং আপনার ফসল হবে তাজা, পুষ্টি সমৃদ্ধ। ', 'Bioferti 100ml', 120, 100),
(2, 'bampar joibo shar.jpg', 'Fertilizer', 'বাম্পার জৈব সার। যা ফসলের জন্য অতি উপকারক। আপনি চাচ্ছেন আপনার ফসল হয়ে উঠুক সুন্দর তাহলে আপনার জন্য এর কোন বিকল্প নেই।', 'Organic Fertilizer (25 kg)', 410, 100),
(3, 'bamper boron.jpg', 'Boron', 'বাম্পার বোরণ যা আপনার জমিতে বোরণ এর চাহিদা পুরণ করবে।', 'Bumper Boron', 250, 100),
(4, 'jipsam.jpg', 'Fertilizer', 'জিপসার যা এক ধরনের জিপসাম। ', 'Zipshar', 300, 100),
(5, 'rotno.jpg', 'Fertilizer', 'রত্ন সুষম সার- বাম্পার ফলনের জন্য অপরিহার্য। ', 'Rotno Fertilizer', 500, 100),
(7, 'bumper_folon.jpg', 'fertilizer', 'বাম্পার ফলন দ্রুত ফলনের জন্য এক উপযোগী সার। এটি আপনার ফসলকে দ্রুত বেরে তুলবয়ে এবং আপনার ফসল হবে তাজা, পুষ্টি সমৃদ্ধ। ', 'Bumper Folon (500ml)', 485, 100),
(8, 'green_panda.jpg', 'fertilizer', 'দ্রুত ফলনের জন্য এক উপযোগী সার। এটি আপনার ফসলকে দ্রুত বেরে তুলবয়ে এবং আপনার ফসল হবে তাজা, পুষ্টি সমৃদ্ধ। ', 'Harer Gura ', 200, 100),
(9, 'mag_shar.jpg', 'fertilizer', 'দ্রুত ফলনের জন্য এক উপযোগী সার। এটি আপনার ফসলকে দ্রুত বেরে তুলবয়ে এবং আপনার ফসল হবে তাজা, পুষ্টি সমৃদ্ধ। ', 'Mag Fertilizer', 200, 100),
(10, 'nim_khoil.jpg', 'khoil', 'দ্রুত ফলনের জন্য এক উপযোগী সার। এটি আপনার ফসলকে দ্রুত বেরে তুলবয়ে এবং আপনার ফসল হবে তাজা, পুষ্টি সমৃদ্ধ। ', 'Neem Khoil', 120, 100),
(12, 'onnopurna.jpg', 'seed', 'abcd', 'onni', 120, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `Adminphone_num` varchar(50) NOT NULL,
  `Productproduct_id` int(10) NOT NULL,
  `Adminid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `success`
--

CREATE TABLE `success` (
  `name` varchar(15) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `tranx_id` varchar(35) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date` varchar(15) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `cardtype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `success`
--

INSERT INTO `success` (`name`, `phone`, `tranx_id`, `status`, `date`, `amount`, `cardtype`) VALUES
('Hasan Al Mamun', '01794747894', 'SSLCZ_TEST_60883faa616a6', 'VALID', '2021-04-27 22:5', '910.00', 'BKASH-BKash'),
('Bodda', '01794747890', 'SSLCZ_TEST_6088421837ab4', 'VALID', '2021-04-27 23:0', '910.00', 'BKASH-BKash'),
('Bodda', '01794747890', 'SSLCZ_TEST_6088421837ab4', 'VALIDATED', '2021-04-27 23:0', '910.00', 'BKASH-BKash'),
('Hasan Al Mamun', '01794747894', 'SSLCZ_TEST_608844beb67d3', 'VALID', '2021-04-27 23:1', '820.00', 'BKASH-BKash'),
('Bodda', '01794747890', 'SSLCZ_TEST_6088468b6d7bc', 'VALID', '2021-04-27 23:2', '1500.00', 'BKASH-BKash'),
('Hasan Al Mamun', '01794747894', 'SSLCZ_TEST_6088497223dd3', 'VALID', '2021-04-27 23:3', '120.00', 'BKASH-BKash'),
('Hossainnna', '01794747897', 'SSLCZ_TEST_60884bd5378a2', 'VALID', '2021-04-27 23:4', '485.00', 'BKASH-BKash'),
('Bodda', '01794747890', 'SSLCZ_TEST_60884dcc9c080', 'VALID', '2021-04-27 23:5', '1305.00', 'BKASH-BKash'),
('ElectricMistri', '01794747891', 'SSLCZ_TEST_60884ea72f52a', 'VALID', '2021-04-27 23:5', '1555.00', 'BKASH-BKash'),
('ElectricMistri', '01794747891', 'SSLCZ_TEST_60884f562eca8', 'VALID', '2021-04-27 23:5', '2185.00', 'BKASH-BKash'),
('Hossainnna', '01794747897', 'SSLCZ_TEST_6088523f57645', 'VALID', '2021-04-28 00:1', '2595.00', 'DBBLMOBILEB-Dbbl Mob'),
('Bodda', '01794747890', 'SSLCZ_TEST_608853d187e7f', 'VALID', '2021-04-28 00:1', '485.00', 'DBBLMOBILEB-Dbbl Mob'),
('Bodda', '01794747890', 'SSLCZ_TEST_608855b090f02', 'VALID', '2021-04-28 00:2', '895.00', 'DBBLMOBILEB-Dbbl Mob'),
('?????-?????', '01794747892', 'SSLCZ_TEST_60892edf25615', 'VALID', '2021-04-28 15:5', '1895.00', 'BKASH-BKash'),
('Hossainnna', '01794747897', 'SSLCZ_TEST_608931e996112', 'VALID', '2021-04-28 16:0', '1485.00', 'DBBLMOBILEB-Dbbl Mob'),
('Bodda', '01794747890', 'SSLCZ_TEST_6089333915f54', 'VALID', '2021-04-28 16:1', '1000.00', 'BKASH-BKash');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(50) NOT NULL,
  `phone_num` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `subdistrict` varchar(30) NOT NULL,
  `village` varchar(30) DEFAULT NULL,
  `id` int(10) NOT NULL,
  `post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `phone_num`, `password`, `email`, `district`, `subdistrict`, `village`, `id`, `post`) VALUES
('akkel', '017262512', '1234', 'akkel@gmail.com', 'satkhira', 'patkelghata', '', 6, 0),
('joy', '01726297111', '123', 'md.ashifmahmudjoy@ymail.com', 'satkhira', 'patkelghata', 'Avaytola', 1, 8804),
('Ashif', '01726297112', '123', 'ashif@gmail.com', 'khulna', 'tala', 'Avaytola', 11, 1207),
('alal', '01726297113', '123', 'ala@gmail.com', 'satkhira', 'patkelghata', '', 2, 0),
('alal', '0172629714', '123', 'alalu@gmail.com', 'satkhira', 'patkelghata', '', 5, 0),
('Rafi', '01726297145', '123456', 'rafi@gmail.com', 'kushtia', 'meherpur', 'alonogor', 9, 1278),
('Karim', '01726297451', '123456', 'karim@gmail.com', 'Dhaka', 'Dhaka', 'Azimpur', 14, 1207),
('joynal', '01726297456', '123', 'joynal@gmail.com', 'satkhira', 'tala', 'Avaytola', 8, 4565),
('nuha', '01789448844', '1111', 'ruaida@gmail.com', 'alamin road', 'janina', 'janina', 17, 1205),
('Bodda', '01794747890', '1234', 'halmamun27@gmail.com', 'Sherpur', 'Sherpur Sadar', 'Kasba Mollapara', 19, 2100),
('ElectricMistri', '01794747891', '1234', 'halmamun27@gmail.com', 'Sherpur', 'Sherpur Sadar', 'Khorompur', 21, 2100),
('à¦¹à§‹à¦¸à§‡à¦¨-à¦‡à¦¨à§à¦¨à¦¾', '01794747892', '1234', 'halmamun27@gmail.com', 'Sherpur', 'Sherpur Sadar', 'Kasba MogholPara', 22, 2100),
('Hasan Al Mamun', '01794747894', '1234', 'halmamun27@gmail.com', 'Sherpur', 'Sherpur Sadar', 'Kasba Kathgar', 18, 2100),
('Hossainnna', '01794747897', '1234', 'halmamun27@gmail.com', 'Sherpur', 'Sherpur Sadar', 'Chapatoli', 20, 2100),
('A', '12345678', '1234', 'abc@gmail.com', '123', 'Nai', 'Nai', 16, 123),
('à¦†à¦œà§€à¦œ', 'à§¦à§§à§­à§¨à§¬à§¨à§¯à§­à§§à§ª', '123456', 'ajij@gmail.com', 'à¦–à§à¦²à¦¨à¦¾', 'à¦¦à§Œà¦²à¦¦à¦¿à§Ÿà¦¾', 'à¦¬à¦²à¦¿à§Ÿà¦¾à¦ªà§à¦°', 10, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`phone_num`,`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Comment_id`);

--
-- Indexes for table `farm_specialist`
--
ALTER TABLE `farm_specialist`
  ADD PRIMARY KEY (`phone_num`,`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `phone_num` (`phone_num`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`OrderOrder_id`,`Productproduct_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_id`),
  ADD UNIQUE KEY `tx_id` (`tx_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`Post_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`Adminphone_num`,`Productproduct_id`,`Adminid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`phone_num`,`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `phone_num` (`phone_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `Comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `farm_specialist`
--
ALTER TABLE `farm_specialist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `Order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `Post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
