-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 09:37 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `divarkotlin`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `image` int(11) DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `catid` int(11) DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `price` int(11) NOT NULL,
  `option` varchar(50) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `description`, `image`, `city`, `date`, `catid`, `phone`, `price`, `option`) VALUES
(1, 'خانه 250 متری', 'خانه ویلایی\r\nنوساز\r\nحاشیه خیابان\r\nطراحی عالی\r\n', 1, 'تهران', 'امروز', 2, '09122563030', 650000000, 'نردبان'),
(2, 'ماشین bmv ', 'فقط تحویل درب نمایندگی', 2, 'تهران', 'لحظاتی پیش', 1, '09121514565', 1300000000, 'فوری'),
(3, 'ساعت هوشمند', 'انواع ساعت هوشمند با گازانتی قابل تعویض', 3, 'تهران', 'دیروز', 3, '09124585666', 400000, 'توافقی'),
(4, 'انواع موبایل هوشمند', 'گوشی تلفن سری ۵ از ۲۰۰۵ تا ۲۰۱۰\r\n۵۲۰\r\n۵۲۵\r\n۵۳۰\r\n۵۴۰\r\nگوشی اک و‌بدون استفاده میباشد', 4, 'تهران', 'امروز', 5, '09132569899', 1000000, 'فوری'),
(5, 'پراید مدل 99', 'پراید سال 99 تمیز و کارکرده بدون تصادفی', 5, 'بابل', 'امروز', 1, '09033539345', 140000000, 'فوری'),
(6, 'سمند سفید', 'سمند سیفد تمیزه تمیزه', 6, 'بابلسر', 'لحظاتی پیش', 1, '0903539345', 300000000, 'لحظه اخری'),
(12, 'سمند ۹۹', 'سمند صفر', 0, 'بابل', 'امروز', NULL, '۰۹۰۳۳۵۳۹۳۴۵', 0, ''),
(13, 'سمند ۹۹', 'سمند صفر', 0, 'بابل', 'امروز', NULL, '۰۹۰۳۳۵۳۹۳۴۵', 0, ''),
(14, '', 'سمند صفر', 0, 'بابل', 'امروز', NULL, '۰۹۰۳۳۵۳۹۳۴۵', 0, ''),
(15, '', '', 0, '', 'امروز', NULL, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `cattitle` varchar(100) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `cattitle`) VALUES
(1, 'وسایل نقلیه'),
(2, 'املاک'),
(3, 'وسایل شخصی'),
(5, 'لوازم الکتریکی'),
(6, 'سرگرمی');

-- --------------------------------------------------------

--
-- Table structure for table `imageurl`
--

CREATE TABLE `imageurl` (
  `id` int(11) NOT NULL,
  `adsid` int(11) NOT NULL,
  `url` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `imageurl`
--

INSERT INTO `imageurl` (`id`, `adsid`, `url`) VALUES
(1, 1, 'https://images.dwell.com/photos-6063391372700811264/6607785788940918784-small/niko-architect-and-landscape-firm-ecopochva-designed-a-moscow-home-that-doesnt-play-by-the-rectilinear-rules-of-conventional-architecture-vegetation-blankets-the-homes-concrete-form-and-its-walls-sweep-upward-and-outward-to-become-roofs-molded-floor-to-ce.jpg'),
(2, 1, 'https://homezonline.in/wp-content/uploads/2020/03/Most-beautiful-70-home-designs-with-ravishing-exterior.jpg'),
(3, 1, 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2019%2F06%2F12170406%2Fmodern-home-exterior-gray-scheme-792ab713.jpg'),
(4, 2, 'https://imgd.aeplcdn.com/0x0/cw/ec/32888/BMW-X3-Exterior-125761.jpg?wm=0'),
(5, 2, 'https://i.pinimg.com/originals/42/2b/15/422b15d47b9a0d7eb271011b95498bf2.jpg'),
(7, 2, 'https://pictures.topspeed.com/IMG/crop/201811/bmw-x7-pickup-could--2_1600x0w.jpg'),
(8, 3, 'https://images-na.ssl-images-amazon.com/images/I/519strzayNL._AC_SX466_.jpg'),
(11, 3, 'https://gloimg.gbtcdn.com/images/pdm-product-pic/Electronic/2019/11/12/source-img/20191112100832_56551.jpg_500x500.jpg'),
(12, 4, 'https://media.4rgos.it/i/Argos/8816155_R_Z001A?w=750&h=440&qlt=70'),
(13, 4, 'https://cdn.vox-cdn.com/thumbor/SJcmPEheS_cbdujd4zbIPTpuXfg=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/13315959/akrales_181019_3014_0770.jpg'),
(14, 4, 'https://cnet4.cbsistatic.com/img/iJxo9AIxiXHqVoqm6nGISKtKwPI=/2020/08/18/b7168aea-9f7e-47bb-9f31-4cb8ad92fbc7/lg-note-20-ultra-5g-iphone-11-se-google-pixel-4a-lg-velvet-6133.jpg'),
(16, 5, 'https://behdasht.news/images/upfiles/20180526/2018-05-26%20107.jpg'),
(17, 5, 'https://static3.khodrotak.com/thumbnail/UgCDEnA06SJA/WIzg1xZZeT-b8Sg9mpmj2-J6Yw66Mw3HTCuQXJRv31vOsAz5QyhmNKnLmc0N99Gx/%D9%BE%D8%B1%D8%A7%DB%8C%D8%AF+131.jpg'),
(19, 6, 'https://www.pardiskhodro.com/root/upload/up_car/1498297867554.jpg'),
(20, 6, 'https://kamapress.com/wp-content/uploads/2020/09/iran-khodro-samand-soren637050288542979906.jpg'),
(21, 6, 'https://carap.ir/mag/Portals/0/EasyDNNnews/1218/img-samand-se.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `pass`) VALUES
(1, 'mehrab bozorgi', '123456'),
(2, 'mehrab bozorgi 2', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imageurl`
--
ALTER TABLE `imageurl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `imageurl`
--
ALTER TABLE `imageurl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
