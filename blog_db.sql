-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2019 at 04:18 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `category_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`) VALUES
(1, 'Movie', 'movie'),
(2, 'BD', 'bd'),
(3, 'TV', 'tv');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_name` varchar(60) DEFAULT NULL,
  `comment_email` varchar(90) DEFAULT NULL,
  `comment_message` text,
  `comment_status` int(11) DEFAULT '0',
  `comment_parent` int(11) DEFAULT '0',
  `comment_post_id` int(11) DEFAULT NULL,
  `comment_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `comment_date`, `comment_name`, `comment_email`, `comment_message`, `comment_status`, `comment_parent`, `comment_post_id`, `comment_image`) VALUES
(1, '2019-04-07 03:15:05', 'Joko', 'joko@gmail.com', 'Nice Post, thanks', 1, 0, 6, 'user_blank.png'),
(2, '2019-06-21 07:43:42', 'tretan muslim', '9x10b8oc3vn@claimab.com', 'animenya sadis dah ', 1, 0, 11, 'user_blank.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_name` varchar(50) DEFAULT NULL,
  `inbox_email` varchar(80) DEFAULT NULL,
  `inbox_subject` varchar(200) DEFAULT NULL,
  `inbox_message` text,
  `inbox_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` varchar(2) DEFAULT '0' COMMENT '0=Unread, 1=Read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_name`, `inbox_email`, `inbox_subject`, `inbox_message`, `inbox_created_at`, `inbox_status`) VALUES
(1, 'Fikri', 'fikrifiver97@gmail.com', 'Request Artikel', 'Saya mau request artikel tentang mindset.', '2019-04-11 03:46:56', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(250) DEFAULT NULL,
  `post_description` text,
  `post_contents` longtext,
  `post_image` varchar(40) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `post_last_update` datetime DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_tags` varchar(225) DEFAULT NULL,
  `post_slug` varchar(250) DEFAULT NULL,
  `post_link_1` varchar(1000) DEFAULT NULL,
  `post_link_2` varchar(1000) DEFAULT NULL,
  `post_status` int(11) DEFAULT NULL COMMENT '1=Publish, 0=Unpublish',
  `post_views` int(11) DEFAULT '0',
  `post_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_contents`, `post_image`, `post_date`, `post_last_update`, `post_category_id`, `post_tags`, `post_slug`, `post_link_1`, `post_link_2`, `post_status`, `post_views`, `post_user_id`) VALUES
(8, 'Non Non Biyori Movie: Vacation BD Subtitle Indonesia', '', '<h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; line-height: 1.4; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><span style=\"font-size: 14px; font-weight: 400;\">Film pertama Non Non Biyori yang tayang pada musim panas 2018.</span><br></h2><p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(100,=\"\" 100,=\"\" 100);\"=\"\">Non Non Biyori bercerita tentang sebuah kehidupan di desa kecil yang bernama Asahigaoka dan berpusat cerita kehidupan Renge Miyauchi, Hotaru Ichijo, Natsumi Koshigaya, Komari Koshigaya dan, Suguru Koshigaya.</p><h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; line-height: 1.4; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">Informasi</h2><p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(100,=\"\" 100,=\"\" 100);\"=\"\">Type: Movie<br>Episodes: 1<br>Status: Finished Airing<br>Start: Aug 25, 2018<br>Studios: Silver Link.<br>Producers: Lantis<br>Source: Manga<br>Duration: 1 Jam 11 Menit<br>Genres: Comedy, Slice of Life, Seinen<br>Romaji: Non Non Biyori Movie: Vacation</p>', '8c6535a0374b253b875cc45f8b9c3d79.jpg', '2019-06-20 17:22:50', '2019-06-21 13:09:16', 1, 'Comedy,Slice of Life', 'non-non-biyori-movie-vacation-bd-subtitle-indonesia', '', '', 1, 2, 2),
(9, 'Golden Time BD Subtitle Indonesia Batch', '', '<h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; line-height: 1.4; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><span style=\"font-size: 14px; font-weight: 400; color: inherit; font-family: inherit;\">Tada Banri mendaftar ke salah satu kampus jurusan hukum swasta di Kota Tokyo. Setelah upacara pembukaan masuk kampus barunya dan menuju ke lokasi MOS untuk mengikuti orientasi mahasiswa baru. Pada saat itu ia tersesat, dan ia bertemu dengan sesama siswa baru yang bernama Yanagisawa Mitsuo (Ishikawa Kaito), dan mencari jalan bersama-sama. Saat sudah sampai, mereka disambut oleh seorang gadis cantik yang bernama Kaga Kouko (Horie Yui), yang ternyata adalah tunangan sekaligus teman sejak kecil dari Mitsuo, yang selalu mengikutinya (meskipun dia sampai kabur ke Tokyo untuk menghindarinya), dan masuk ke sekolah yang sama dengannya.</span><br></h2><h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; line-height: 1.4; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">Sinopsis</h2><p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(100,=\"\" 100,=\"\" 100);\"=\"\">Type: BD<br>Episodes: 24<br>Status: Finished Airing<br>Start: Oct 4, 2013<br>End: Mar 28, 2014<br>Season: Fall 2013<br>Studios: J.C.Staff<br>Producers: Genco, Starchild Records<br>Source: Light novel<br>Duration: 24 Menit<br>Genres: Comedy, Romance, Seinen<br>Romaji: Golden Time<br>English: Golden Time<br></p>', '7e28753e8894058875bd408b417b1039.jpg', '2019-06-20 17:24:41', '2019-06-22 20:51:53', 2, 'Comedy,Romance', 'golden-time-bd-subtitle-indonesia-batch', 'https://sedot.in/download/fcTIgXW7', 'sedot.in/download/fcTIgXW7', 1, 2, 2),
(10, 'Watashi ni Tenshi ga Maiorita! Subtitle Indonesia Batch', '', '<h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; line-height: 1.4; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" text-align:=\"\" center;\"=\"\"><span style=\"font-size: 14px; font-weight: 400;\">Suatu hari, murid kelas 5 SD bernama Hinata Hoshino, membawa temannya yang bernama Hana Shirosaki ke rumahnya. Dan kakak perempuannya yaitu Miyako Hoshino, seorang mahasiswi pemalu dan seorang otaku yang suka membuat pakaian cosplay, tertarik pada Hana pada pandangan pertama. Miyako berencana untuk mengakrabkan dirinya dengan Hana, namun karena sifatnya yang pemalu dan canggung, selalu membuat Hana waspada. Meskipun begitu, Hana perlahan – lahan membuka dirinya untuk ingin lebih dekat kepada Miyako.</span><br></h2><h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; line-height: 1.4; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">Informasi</h2><p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: \" noto=\"\" sans\",=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(100,=\"\" 100,=\"\" 100);\"=\"\">Type: TV<br>Episodes: 12<br>Status: Finished Airing<br>Start: Jan 8, 2019<br>End: Mar 26, 2019<br>Season: Winter 2019<br>Studios: Doga Kobo<br>Producers:<br>Source: 4-koma manga<br>Duration: 23 Menit<br>Genres: Slice of Life, Comedy<br>Romaji: Watashi ni Tenshi ga Maiorita!<br>English: Wataten! An Angel Flew Down to Me</p>', '75aff7e12ab20c0fb7e8d7299234fdd9.jpg', '2019-06-20 17:26:26', '2019-06-21 13:10:34', 3, 'Comedy,Slice of Life', 'watashi-ni-tenshi-ga-maiorita-subtitle-indonesia-batch', '', '', 1, 1, 2),
(11, 'Circlet Princess Subtitle Indonesia Batch', '', '<p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Noto Sans&quot;, sans-serif; vertical-align: baseline; color: rgb(100, 100, 100);\">Kehidupan manusia telah berubah karena VR dan AR, dan olahraga baru telah lahir dari teknologi ini yang disebut CB (Circlet Bout). CB dapat dipertandingkan antara dua sekolah dan menjadi olahraga yang menentukan kekayaan sekolah. Ini juga menjadi kemampuan nyata sekolah, yang tergantung pada tidak hanya keterampilan akademik.</p><h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; line-height: 1.4; font-family: &quot;Noto Sans&quot;, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">Informasi</h2><p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Noto Sans&quot;, sans-serif; vertical-align: baseline; color: rgb(100, 100, 100);\">Type: TV<br>Episodes: 12<br>Status: Finished Airing<br>Start: Jan 8, 2019<br>End: Mar 26, 2019<br>Season: Winter 2019<br>Studios: Silver Link.<br>Producers: Lantis<br>Source: Game<br>Duration: 24 Menit<br>Genres: Action, Sci-Fi, Sports, School<br>Romaji: Circlet Princess</p>', 'f9de1251d77caebf71eee378fef0d0c4.jpg', '2019-06-21 06:24:23', NULL, 3, 'Action,Sci-Fi', 'circlet-princess-subtitle-indonesia-batch', '', '', 1, 2, 2),
(12, 'Kingdom Subtitle Indonesia Batch', '', '<p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Noto Sans&quot;, sans-serif; vertical-align: baseline; color: rgb(100, 100, 100);\">Dalam Periode Negara Perang Cina kuno (475-221 SM), Xin dan Piao adalah anak yatim korban perang di kerajaan Qin. Mereka bermimpi suatu hari membuktikan diri di medan perang. Suatu hari, entah bagaimana, Piao akan dibawa ke istana oleh seorang menteri. Pembubaran di pihak yang kalah dari kekuatan-perjuangan, Piao berhasil kembali ke desa, dalam keadaan sekarat. Xin kemudian bertemu dengan seorang anak laki-laki yang mirip Piao, Ying Zhen. Untuk saat ini ia adalah raja Qin; kemudian ia akan menjadi kaisar Shi Huang.</p><h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; line-height: 1.4; font-family: &quot;Noto Sans&quot;, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">Informasi</h2><p style=\"margin-bottom: 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Noto Sans&quot;, sans-serif; vertical-align: baseline; color: rgb(100, 100, 100);\">Type: TV<br>Episodes: 38<br>Status: Finished Airing<br>Start: Jun 4, 2012<br>End: Feb 25, 2013<br>Season: Summer 2012<br>Studios: Studio Pierrot<br>Producers: NHK<br>Source: Manga<br>Duration: 25 Menit<br>Genres: Action, Historical, Military, Seinen<br>Romaji: Kingdom<br>English: Kingdom</p>', '62cd0df4888832bfc4e65b4f63b84611.jpg', '2019-06-21 06:25:55', NULL, 3, 'Action', 'kingdom-subtitle-indonesia-batch', '', '', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `view_id` int(11) NOT NULL,
  `view_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `view_ip` varchar(50) DEFAULT NULL,
  `view_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`view_id`, `view_date`, `view_ip`, `view_post_id`) VALUES
(1, '2019-04-06 13:33:39', '::1', 6),
(2, '2019-04-06 23:04:18', '::1', 6),
(3, '2019-04-07 03:32:54', '::1', 5),
(4, '2019-04-07 03:33:14', '::1', 4),
(5, '2019-04-07 04:03:50', '::1', 3),
(6, '2019-04-09 12:19:36', '::1', 6),
(7, '2019-04-09 13:28:30', '::1', 4),
(8, '2019-04-10 01:33:10', '::1', 5),
(9, '2019-04-10 10:00:27', '::1', 2),
(10, '2019-04-10 10:58:17', '::1', 1),
(11, '2019-04-10 13:20:32', '::1', 3),
(12, '2019-04-10 13:20:46', '::1', 6),
(13, '2019-04-11 03:32:18', '::1', 6),
(14, '2019-04-11 04:24:22', '::1', 4),
(15, '2019-04-11 07:58:35', '::1', 2),
(16, '2019-04-12 04:23:04', '::1', 6),
(17, '2019-04-12 10:09:30', '::1', 5),
(18, '2019-04-13 01:42:27', '::1', 6),
(19, '2019-04-13 02:01:01', '::1', 5),
(20, '2019-04-13 02:01:18', '::1', 3),
(21, '2019-04-13 03:23:34', '::1', 4),
(22, '2019-04-14 01:39:17', '::1', 1),
(23, '2019-04-14 03:24:24', '::1', 3),
(24, '2019-04-14 04:08:24', '::1', 2),
(25, '2019-04-15 03:44:42', '::1', 6),
(26, '2019-06-19 15:35:53', '::1', 6),
(27, '2019-06-19 15:36:40', '::1', 2),
(28, '2019-06-19 16:08:44', '::1', 7),
(29, '2019-06-19 16:09:05', '::1', 3),
(30, '2019-06-20 06:33:49', '::1', 7),
(31, '2019-06-20 17:07:10', '::1', 7),
(32, '2019-06-20 17:27:39', '::1', 8),
(33, '2019-06-21 04:43:54', '::1', 9),
(34, '2019-06-21 06:08:18', '::1', 10),
(35, '2019-06-21 07:25:31', '::1', 11),
(36, '2019-06-21 08:29:23', '::1', 13),
(37, '2019-06-21 08:33:45', '::1', 12),
(38, '2019-06-22 13:01:58', '::1', 9),
(39, '2019-06-22 13:33:27', '::1', 11),
(40, '2019-06-22 13:50:55', '::1', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site`
--

CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(100) DEFAULT NULL,
  `site_title` varchar(200) DEFAULT NULL,
  `site_description` text,
  `site_logo_header` varchar(50) DEFAULT NULL,
  `site_logo_footer` varchar(50) DEFAULT NULL,
  `site_facebook` varchar(150) DEFAULT NULL,
  `site_twitter` varchar(150) DEFAULT NULL,
  `site_instagram` varchar(150) DEFAULT NULL,
  `site_pinterest` varchar(150) DEFAULT NULL,
  `site_linkedin` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_title`, `site_description`, `site_logo_header`, `site_logo_footer`, `site_facebook`, `site_twitter`, `site_instagram`, `site_pinterest`, `site_linkedin`) VALUES
(1, 'LAILBLOG', 'LAILBLOG', 'Enjoy reading find inspiration in here and make it fun.', 'All_the_Anime_logo.png', 'All_the_Anime_logo1.png', 'https://www.facebook.com/faris.r.lail', '', 'https://www.instagram.com/faris_rizqilail/', 'https://id.pinterest.com/farisriskilail/', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribe`
--

CREATE TABLE `tbl_subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `subscribe_email` varchar(100) DEFAULT NULL,
  `subscribe_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `subscribe_status` int(11) DEFAULT '0',
  `subscribe_rating` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tags`
--

CREATE TABLE `tbl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tags`
--

INSERT INTO `tbl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Harem'),
(5, 'Slice of Life'),
(6, 'Romance'),
(7, 'Horor'),
(8, 'psyhcological'),
(9, 'Sci-Fi'),
(10, 'Shounen');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_level` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT '1',
  `user_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_level`, `user_status`, `user_photo`) VALUES
(2, 'Faris', 'faris.riskilail@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '4bf1ec6ce124b9b4a0fc7c4fe1b902df.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitors`
--

CREATE TABLE `tbl_visitors` (
  `visit_id` int(11) NOT NULL,
  `visit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visit_ip` varchar(50) DEFAULT NULL,
  `visit_platform` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`visit_id`, `visit_date`, `visit_ip`, `visit_platform`) VALUES
(541327, '2019-03-18 14:07:36', '::1', 'Firefox'),
(541328, '2019-03-19 03:33:51', '::1', 'Chrome'),
(541329, '2019-03-20 01:00:19', '::1', 'Chrome'),
(541330, '2019-04-05 01:53:28', '::1', 'Firefox'),
(541331, '2019-04-06 01:37:35', '::1', 'Chrome'),
(541332, '2019-04-06 23:04:12', '::1', 'Chrome'),
(541333, '2019-04-09 12:19:32', '::1', 'Chrome'),
(541334, '2019-04-10 01:33:03', '::1', 'Chrome'),
(541335, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541336, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541337, '2019-04-12 03:51:42', '::1', 'Chrome'),
(541338, '2019-04-12 21:55:51', '::1', 'Chrome'),
(541339, '2019-04-14 01:30:40', '::1', 'Chrome'),
(541340, '2019-04-15 01:42:53', '::1', 'Chrome'),
(541341, '2019-06-19 15:35:07', '::1', 'Chrome'),
(541342, '2019-06-20 04:51:00', '::1', 'Chrome'),
(541343, '2019-06-20 17:07:10', '::1', 'Chrome'),
(541344, '2019-06-22 07:39:41', '::1', 'Chrome');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`view_id`);

--
-- Indexes for table `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `tbl_tags`
--
ALTER TABLE `tbl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tags`
--
ALTER TABLE `tbl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541345;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
