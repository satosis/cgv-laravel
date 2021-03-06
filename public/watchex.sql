-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 05:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watchex`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Adminstrator', 'admin@gmail.com', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', '2020-08-04 23:42:53', '2020-08-04 23:42:53'),
(2, 'CTV', 'ctv@gmail.com', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', '2020-08-04 23:42:53', '2020-08-04 23:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_hot` int(11) NOT NULL DEFAULT 0,
  `a_active` int(11) NOT NULL DEFAULT 1,
  `a_menu_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_wysihtml5_mode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `_wysihtml5_mode`, `created_at`, `updated_at`) VALUES
(5, 'Ho??i Th????ng', 'hoai-thuong', 0, 1, 'EVENT', 0, 'Ho??i Th????ng xinh g??i', '2020-08-05__be-giang-1.png', 'Tuy???t v???i', 1, '2020-08-04 21:44:36', '2020-08-04 21:47:21'),
(6, 'T???i sao ?????ng h??? Th???y S??? l???i c?? s???c h??t l???n ?????n v???y', 'tai-sao-dong-ho-thuy-sy-lai-co-suc-hut-lon-den-vay', 0, 1, 'EVENT', 0, 'Khi nh???c ?????n ?????ng h??? ng?????i ta s??? ngh?? ngay ?????n ?????ng h??? Th???y S??? n???i ti???ng th??? gi???i. C??c qu?? ??ng th?????ng r??? tai nhau r???ng ????????n ?????c mua ?? t??, t???i Th???y S??? mua ?????ng h??????. B???i v???y, ?????i v???i c??c ?????ng m??y r??u ???????c s??? h???u m???t chi???c ?????ng h??? Th???y S??? d?????ng nh?? l?? m???t ni???m ao ?????c v?? th?????c ??o kinh t???, ?????ng c???p c???a m???t ng?????i. V?? d?? l?? ?????ng h??? c?? gi?? b???c t??? hay b??nh d??n th?? ch??ng v???n c?? gi?? cao h??n r???t nhi???u so v???i c??c th????ng hi???u ?????ng h??? ?????n t??? c??c n?????c kh??c tr??n th??? gi???i.', NULL, '<p><em>Khi nh???c ?????n ?????ng h??? ng?????i ta s??? ngh?? ngay ?????n ?????ng h??? Th???y S??? n???i ti???ng th??? gi???i. C&aacute;c qu&yacute; &ocirc;ng th?????ng r??? tai nhau r???ng &ldquo;?????n ?????c mua &ocirc; t&ocirc;, t???i Th???y S??? mua ?????ng h???&rdquo;. B???i v???y, ?????i v???i c&aacute;c ?????ng m&agrave;y r&acirc;u ???????c s??? h???u m???t chi???c ?????ng h??? Th???y S??? d?????ng nh?? l&agrave; m???t ni???m ao ?????c v&agrave; th?????c ??o kinh t???, ?????ng c???p c???a m???t ng?????i. V&igrave; d&ugrave; l&agrave; ?????ng h??? c&oacute; gi&aacute; b???c t??? hay b&igrave;nh d&acirc;n th&igrave; ch&uacute;ng v???n c&oacute; gi&aacute; cao h??n r???t nhi???u so v???i c&aacute;c th????ng hi???u ?????ng h??? ?????n t??? c&aacute;c n?????c kh&aacute;c tr&ecirc;n th??? gi???i.</em></p>\r\n\r\n<p><strong>Th???y S??? - N??i ????a n???n s???n xu???t ?????ng h??? th??? gi???i l&ecirc;n t???m cao m???i</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/11.jpg\" style=\"height:600px; width:898px\" /></strong></p>\r\n\r\n<p>V&agrave;o kho???ng th??? k??? 16, nh&agrave; c???i c&aacute;ch t&ocirc;n gi&aacute;o Jean Calvin t???ng k&ecirc;u g???i d&acirc;n ch&uacute;ng t??? b??? th&oacute;i quen ??eo trang s???c v&agrave; &ocirc;ng ??&atilde; ngh?? ra c&aacute;ch v???n ?????ng gi???i kim ho&agrave;n ch??? t???o trang s???c chuy???n sang s???n xu???t ?????ng h???. Sau s??? ki???n n&agrave;y, s??? l?????ng ngh??? nh&acirc;n ch??? t&aacute;c ?????ng h??? t??ng v???t v&agrave; bi???n th&agrave;nh ph??? Geneva tr??? th&agrave;nh n??i s???n xu???t ?????ng h??? n???i ti???ng. Tuy nhi&ecirc;n, s??? thay ?????i n&agrave;y ??&atilde; ??em l???i h??? qu??? l&agrave; ch??? sau v&agrave;i th??? k??? s??? l?????ng ng?????i l&agrave;m ?????ng h??? t??ng v???t, nhi???u t???i m???c h??? ph???i di c?? ?????n nh???ng v&ugrave;ng ?????t kh&aacute;c ????? m??u sinh. ????? tr??? th&agrave;nh th??? ?????ng h??? l&agrave;nh ngh??? ??&uacute;ng ngh??a, m???t ng?????i sau khi h???c vi???c 5 n??m ph???i l&agrave;m ???????c m???t chi???c ?????ng h??? nh??? c&oacute; chu&ocirc;ng b&aacute;o th???c ??eo tr&ecirc;n c??? v&agrave; m???t chi???c ?????ng h??? ?????t b&agrave;n v???i k&iacute;ch th?????c kh&aacute;c bi???t.</p>\r\n\r\n<p>Tuy nhi&ecirc;n ph???i cho ?????n khi c&aacute;c ngh??? nh&acirc;n ch??? t&aacute;c nh?? Fr&eacute;d&eacute;ric Ingold&nbsp; v&agrave; Georges Leschot c&oacute; nh???ng ph&aacute;t minh v?? ?????i n&acirc;ng t???m ????? ch&iacute;nh x&aacute;c v&agrave; ch???t l?????ng c&aacute;c m???u ?????ng h??? Th???y S??? l&ecirc;n th&igrave; ch&uacute;ng m???i th???c s??? ???????c th??? gi???i bi???t ?????n nhi???u h??n. Ti???p sau ??&oacute; l&agrave; t&ecirc;n tu???i c&aacute;c h&atilde;ng ?????ng h??? Th???y S??? n???i ti???ng l???n l?????t xu???t hi???n tr&ecirc;n th??? tr?????ng ?????ng h???.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong%20ho%20thuy%20sy%20atlantic%20(5)(4).jpg\" style=\"height:263px; width:397px\" /></p>\r\n\r\n<p>Theo th???ng k??? v&agrave;o nh???ng n??m 1845, nh??? s??? ti???n b??? c???a k??? thu???t, n???n s???n xu???t ?????ng h??? g???p nhi???u thu???n l???i ??&atilde; ????a s???n l?????ng&nbsp;?????ng h??? Th???y S??? chi???m 40% t???ng s???n l?????ng ?????ng h??? ??eo tay tr&ecirc;n to&agrave;n th??? gi???i. Theo ??&oacute;, c??? 10 ?????ng h??? xu???t kh???u tr&ecirc;n th??? gi???i th&igrave; c&oacute; t???i 7 chi???c c&oacute; ngu???n g???c Th???y S???. ?????n n???a ?????u th??? k??? 20,&nbsp;?????ng h??? Th???y S??? h???u nh?? chi???m h???t th??? tr?????ng th??? gi???i. Tuy t???ng c&oacute; th???i gian r??i v&agrave;o kh???ng ho???ng khi???n s??? l?????ng ti&ecirc;u th??? t???t gi???m, th??? nh??ng ?????ng h??? v???n l&agrave; m???t h&agrave;ng xu???t kh???u ?????ng th??? 3 sau T&acirc;n d?????c v&agrave; ??i???n t??? ??? ?????t n?????c n&agrave;y. V??? s???n l?????ng, ?????ng h??? ??eo tay Th???y S??? ?????t 33.000.000 chi???c/ n??m, chi???m1/10 s???n l?????ng ?????ng h??? c???a th??? gi???i.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/64550_1.jpg\" style=\"height:205px; width:307px\" /></p>\r\n\r\n<p>T??? nh???ng tinh hoa ???????c kh??i d???y trong h&agrave;ng tr??m n??m ph&aacute;t tri???n nh???ng chi???c ?????ng h??? ?????n t??? c&aacute;c th????ng hi???u Th???y S??? nh?? Omega, Rolex, Breitling, IWC, Audemars Piguet, Baume &amp; Mercier, Zenith, TAG Heuer... ???????c tung ra th??? tr?????ng v???i gi&aacute; th&agrave;nh cao ng???t ng?????ng ??&atilde; kh???ng ?????nh ???????c ch???t l?????ng, gi&aacute; tr??? ?????ng c???p c???a ch&uacute;ng. Ngay c??? v???i nh???ng t&ecirc;n tu???i l???n nh?? Lacoste hay Armani Exchange c??ng ??&atilde; b??? ?????ng h??? Th???y S?? v?????t xa c??? gi&aacute; c??? l???n ch???t l?????ng.</p>\r\n\r\n<p>T??? n??m 1919, Th???y S??? ??&atilde; l&agrave;m nhi???u lo???i ?????ng h??? m???ng, ?????p, th???i th?????ng. V&agrave; kh&ocirc;ng ch??? d???ng l???i ??? nh???ng m???u ?????ng h??? ??eo tay xem th???i gian th&ocirc;ng th?????ng, Th???y S??? c&ograve;n n??i n??i ph&aacute;t minh ra nhi???u lo???i ?????ng h??? ph???c v??? cho l??nh v???c khoa h???c k??? thu???t nh??: ?????ng h??? theo d&otilde;i b???nh nh&acirc;n; ?????ng h??? ??o nh???p tim; hay ?????ng h??? ch???ng n???ng&hellip;</p>', NULL, '2020-08-04 23:42:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_cate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `c_name`, `c_slug`, `c_cate`, `created_at`, `updated_at`) VALUES
(1, '?????ng h??? Philippe Auguste', 'dong-ho-philippe-auguste', 'watch', '2020-07-04 09:07:39', NULL),
(2, '?????ng h??? Epos Swiss', 'dong-ho-epos-swiss', 'watch', '2020-07-04 09:09:19', NULL),
(3, '?????ng h??? Atlantic Swiss', 'dong-ho-atlantic-swiss', 'watch', '2020-07-04 09:09:34', NULL),
(4, '?????ng h??? Diamond D', 'dong-ho-diamond-d', 'watch', '2020-07-04 09:09:42', NULL),
(5, '?????ng h??? Aries Gold', 'dong-ho-aries-gold', 'watch', '2020-07-04 09:09:50', NULL),
(6, '?????ng h??? Jacques Lemans', 'dong-ho-jacques-lemans', 'watch', '2020-07-04 09:09:55', NULL),
(7, '?????ng h??? Q&Q', 'dong-ho-qq', 'watch', '2020-07-04 09:10:04', NULL),
(8, 'Bruno Sohnle Glashutte', 'bruno-sohnle-glashutte', 'watch', '2020-07-04 09:10:10', NULL),
(9, '?????ng h??? Citizen', 'dong-ho-citizen', 'watch', '2020-07-04 09:10:16', NULL),
(10, 'Stuhrling Original Swiss', 'stuhrling-original-swiss', 'watch', '2020-07-04 09:10:16', NULL),
(11, 'K??nh m??t Diamond D', 'kinh-mat-diamond-d', 'glass', '2020-07-04 09:10:59', NULL),
(12, 'K??nh m??t Philippe Auguste', 'kinh-mat-philippe-auguste', 'glass', '2020-07-04 09:11:05', NULL),
(13, 'K??nh m??t Burberry', 'kinh-mat-burberry', 'glass', '2020-07-04 09:11:10', NULL),
(14, 'K??nh m??t Ray Ban', 'kinh-mat-ray-ban', 'glass', '2020-07-04 09:11:15', NULL),
(15, 'K??nh m??t Prada', 'kinh-mat-prada', 'glass', '2020-07-04 09:11:21', NULL),
(16, 'K??nh m??t Coach', 'kinh-mat-coach', 'glass', '2020-07-04 09:11:25', NULL),
(17, 'K??nh m??t Armani Exchange', 'kinh-mat-armani-exchange', 'glass', '2020-07-04 09:11:38', NULL),
(18, 'K??nh m??t Michael Kors', 'kinh-mat-michael-kors', 'glass', '2020-07-04 09:11:46', NULL),
(19, 'K??nh m??t Vogue', 'kinh-mat-vogue', 'glass', '2020-07-04 09:11:54', NULL),
(20, 'K??nh V-IDOL', 'kinh-v-idol', 'glass', '2020-07-04 09:12:00', NULL),
(21, 'G???ng k??nh Diamond D', 'gong-kinh-diamond-d', 'glass', '2020-07-04 09:12:06', NULL),
(22, 'G???ng k??nh Philippe Auguste', 'gong-kinh-philippe-auguste', 'glass', '2020-07-04 09:12:06', NULL),
(23, 'H???p ?????ng ?????ng h???', 'hop-dung-dong-ho', 'accessories', '2020-07-04 09:12:48', NULL),
(24, 'D??y ?????ng h??? Diamond D', 'day-dong-ho-diamond-d', 'accessories', '2020-07-04 09:13:05', NULL),
(25, 'D??y da ????ng Quang', 'day-da-dang-quang', 'accessories', '2020-07-04 09:13:13', NULL),
(26, 'D??y da Jacques Lemans', 'day-da-jacques-lemans', 'accessories', '2020-07-04 09:13:19', NULL),
(27, 'D??y ?????ng h??? Atlantic', 'day-dong-ho-atlantic', 'accessories', '2020-07-04 09:13:28', NULL),
(28, 'D??y ?????ng h??? Bruno', 'day-dong-ho-bruno', 'accessories', '2020-07-04 09:13:34', NULL),
(29, 'D??y ?????ng h??? Epos', 'day-dong-ho-epos', 'accessories', '2020-07-04 09:13:42', NULL),
(57, 'S???n ph???m m???i 1', 'san-pham-moi-1', 'watch', '2020-09-19 13:59:48', NULL),
(58, 'S???n ph???m m???i 2', 'san-pham-moi-2', 'glass', '2020-09-19 13:59:55', NULL),
(60, 'S???n ph???m m???i 3', 'san-pham-moi-3', 'watch', '2020-09-19 14:14:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keyword`
--

CREATE TABLE `keyword` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` int(11) NOT NULL DEFAULT 0,
  `k_active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keyword`
--

INSERT INTO `keyword` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `k_active`, `created_at`, `updated_at`) VALUES
(1, 'Hot', 'hot', 'H??ng b??n ch???y', 0, 0, '2020-07-21 23:24:28', NULL),
(2, 'Si??u gi???m gi??', 'sieu-giam-gia', 'Gi???m gi?? l??n t???i 20%', 0, 0, '2020-07-21 23:24:53', NULL),
(3, 'Limited', 'limited', 'H??ng hi???m', 0, 0, '2020-09-23 19:23:37', NULL),
(4, 'Hot sale', 'hot-sale', 'H??ng b??n ch???y nh???t', 0, 0, '2020-09-23 19:23:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_03_205336_create_admins_table', 1),
(2, '2021_03_03_205356_create_articles_table', 1),
(3, '2021_03_03_205807_create_category_table', 1),
(4, '2021_03_03_205921_create_keyword_table', 1),
(5, '2021_03_03_210226_create_product_table', 1),
(6, '2021_03_03_210736_create_product_images_table', 1),
(7, '2021_03_03_210838_create_product_keywords_table', 1),
(8, '2021_03_03_211338_create_users_table', 1),
(9, '2021_03_03_211515_create_user_favourite_table', 1),
(10, '2022_04_02_094736_create_transaction_table', 1),
(11, '2022_04_02_094835_create_orders_table', 1),
(12, '2022_04_02_100515_create_rating_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `od_product_id` bigint(20) UNSIGNED NOT NULL,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` int(11) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_amount` int(11) NOT NULL DEFAULT 100,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_favourite` int(11) NOT NULL DEFAULT 0,
  `pro_hot` int(11) NOT NULL DEFAULT 0,
  `pro_active` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `keywordseo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_star` int(11) NOT NULL DEFAULT 5,
  `_wysihtml5_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pro_name`, `pro_amount`, `pro_view`, `pro_slug`, `pro_price`, `pro_sale`, `pro_category`, `pro_avatar`, `pro_favourite`, `pro_hot`, `pro_active`, `pro_admin_id`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `keywordseo`, `pro_review_star`, `_wysihtml5_mode`, `created_at`, `updated_at`) VALUES
(6, '?????ng h??? Philippe Auguste PA5001A', 100, 11, 'dong-ho-philippe-auguste-pa5001a', 1500000, 0, '1', '2020-07-06__784610833-dong-ho-nhap-khau.jpg', 0, 1, 1, 1, 0, 'TH??NG S??? K??? THU???T<br> ???????ng k??nh m???t:40 mm<br> Ch???ng n?????c:5 ATM<br> Ch???t li???u m???t:Sapphire<br> N??ng l?????ng s??? d???ng:Automatic <br> Size d??y<br> Ch???t li???u d??y:D??y da ch??nh h??ng<br> Ch???t li???u v???:Stainless Steel<br> Ki???u d??ng:Nam<br> Xu???t x???:??o<br> Ch??? ????? b???o h??nh:B???o h??nh qu???c t??? 02 n??m<br>', '<p> </p><div>Content</div><p></p>', 0, '', 5, '1', '2020-07-04 23:15:35', '2020-07-11 21:47:02'),
(7, '?????ng h??? Philippe Auguste PA5001B', 100, 30, 'dong-ho-philippe-auguste-pa5001b', 150000000, 0, '1', '2020-07-06__202451360-dong-ho-nhap-khau2.jpg', 0, 1, 1, 1, 11, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:17:21', '2020-09-18 08:39:05'),
(8, '?????ng h??? Philippe Auguste PA5001C', 100, 4, 'dong-ho-philippe-auguste-pa5001c', 120000000, 0, '1', '2020-07-06__1494321812-dong-ho-nhap-khau3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:17:56', NULL),
(9, '?????ng h??? Philippe Auguste PA5001D', 100, 2, 'dong-ho-philippe-auguste-pa5001d', 50000, 0, '1', '2020-07-06__67724650-dong-ho-nhap-khau4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:18:24', NULL),
(10, '?????ng h??? Philippe Auguste PA5001E', 100, 34, 'dong-ho-philippe-auguste-pa5001e', 7500000, 10, '1', '2020-07-06__2132524758-dong-ho-nhap-khau5.jpg', 0, 1, 1, 1, 35, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:19:03', '2020-09-23 01:44:33'),
(11, '?????ng h??? Philippe Auguste PA5001F', 100, 46, 'dong-ho-philippe-auguste-pa5001f', 4500000, 0, '1', '2020-07-06__2078177429-dong-ho-nhap-khau6.jpg', 0, 0, 1, 1, 2, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:19:35', '2020-09-18 20:36:56'),
(12, '?????ng h??? Philippe Auguste PA5002A', 100, 5, 'dong-ho-philippe-auguste-pa5002a', 500000000, 0, '1', '2020-07-06__828322507-dong-ho-nhap-khau7.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:20:12', NULL),
(13, '?????ng h??? Philippe Auguste PA5002B', 100, 9, 'dong-ho-philippe-auguste-pa5002b', 90000, 0, '1', '2020-07-06__777381163-dong-ho-nhap-khau8.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:20:44', NULL),
(14, '?????ng h??? Philippe Auguste PA5002C', 100, 24, 'dong-ho-philippe-auguste-pa5002c', 11359000, 0, '1', '2020-07-06__1432153761-dong-ho-nhap-khau9.jpg', 0, 1, 1, 1, 9, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:21:09', '2020-09-19 19:39:23'),
(15, '?????ng h??? Philippe Auguste PA5002D', 100, 24, 'dong-ho-philippe-auguste-pa5002d', 24000000, 0, '1', '2020-07-06__1334477955-dong-ho-nhap-khau10.jpg', 0, 1, 1, 1, 9, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:21:36', '2020-07-11 21:47:38'),
(16, '?????ng h??? Philippe Auguste PA5002E', 100, 0, 'dong-ho-philippe-auguste-pa5002e', 3400000, 0, '1', '2020-07-06__282562145-dong-ho-nhap-khau11.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:22:08', NULL),
(17, '?????ng h??? Philippe Auguste PA5002F', 100, 0, 'dong-ho-philippe-auguste-pa5002f', 9000000, 0, '1', '2020-07-06__1284625766-dong-ho-nhap-khau12.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:22:32', NULL),
(18, '?????ng h??? Philippe Auguste PA5003A', 100, 0, 'dong-ho-philippe-auguste-pa5003a', 11007000, 0, '1', '2020-07-06__572581815-dong-ho-nhap-khau13.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:22:53', NULL),
(19, '?????ng h??? Philippe Auguste PA5003B', 100, 0, 'dong-ho-philippe-auguste-pa5003b', 11007000, 0, '1', '2020-07-06__2082318285-dong-ho-nhap-khau14.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:23:16', NULL),
(20, '?????ng h??? Philippe Auguste PA5003C', 100, 0, 'dong-ho-philippe-auguste-pa5003c', 11007000, 0, '1', '2020-07-06__1330665752-dong-ho-nhap-khau15.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:23:39', NULL),
(21, '?????ng h??? Philippe Auguste PA5003D', 100, 0, 'dong-ho-philippe-auguste-pa5003d', 12672000, 0, '1', '2020-07-06__99499183-dong-ho-nhap-khau16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:25:02', NULL),
(22, '?????ng h??? Philippe Auguste PA5003E', 100, 0, 'dong-ho-philippe-auguste-pa5003e', 12672000, 0, '1', '2020-07-06__1932436227-dong-ho-nhap-khau18.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:25:31', NULL),
(23, '?????ng h??? Philippe Auguste PA5003G', 100, 15, 'dong-ho-philippe-auguste-pa5003g', 12672000, 0, '1', '2020-07-06__176722357-dong-ho-chinh-hang-19.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:26:20', '2020-09-23 02:52:03'),
(24, '?????ng h??? Philippe Auguste PA5004A', 100, 18, 'dong-ho-philippe-auguste-pa5004a', 11007000, 0, '1', '2020-07-06__305117350-dong-ho-nhap-khau20.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:26:52', NULL),
(25, '?????ng h??? Epos Swiss E-7000.701.20.98.25', 100, 0, 'dong-ho-epos-swiss-e-7000701209825', 13000000, 0, '2', '2020-07-06__1367739457-dong-ho-chinh-hang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:29:06', NULL),
(26, '?????ng h??? Epos Swiss E-8000.700.22.68.32', 100, 0, 'dong-ho-epos-swiss-e-8000700226832', 19900000, 0, '2', '2020-07-06__186594578-dong-ho-chinh-hang-62.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:29:32', NULL),
(27, '?????ng h??? Epos Swiss E-7000.701.20.95.25', 100, 0, 'dong-ho-epos-swiss-e-7000701209525', 13000000, 0, '2', '2020-07-06__1779327189-dong-ho-chinh-hang-65.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:29:57', NULL),
(28, '?????ng h??? Epos Swiss E-7000.701.22.16.26', 100, 0, 'dong-ho-epos-swiss-e-7000701221626', 14000000, 0, '2', '2020-07-06__928364280-1702384644-e-7000701221626.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-04 23:41:30', NULL),
(29, '?????ng h??? Epos Swiss E-7000.701.22.15.25', 100, 0, 'dong-ho-epos-swiss-e-7000701221525', 14000000, 0, '2', '2020-07-06__460677088-e-7000701221525.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:40:07', NULL),
(30, '?????ng h??? Epos Swiss E-8000.700.22.68.15', 100, 17, 'dong-ho-epos-swiss-e-8000700226815', 15100000, 0, '1', '2020-07-06__110702752-dong-ho-chinh-hang-82.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:41:54', NULL),
(31, '?????ng h??? Epos Swiss E-7000.701.20.96.26', 100, 0, 'dong-ho-epos-swiss-e-7000701209626', 13000000, 0, '2', '2020-07-06__1125243076-dong-ho-chinh-hang-66.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:42:38', NULL),
(32, '?????ng h??? Epos Swiss E-8000.700.22.88.32', 100, 0, 'dong-ho-epos-swiss-e-8000700228832', 22800000, 0, '2', '2020-07-06__1328554038-dong-ho-chinh-hang-67.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:43:20', NULL),
(33, '?????ng h??? Epos Swiss E-3420.152.22.16.15', 100, 0, 'dong-ho-epos-swiss-e-3420152221615', 32100000, 0, '2', '2020-07-06__2144894182-e-3420152221615.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:43:46', NULL),
(34, '?????ng h??? Epos Swiss E-3390.156.22.20.32', 100, 0, 'dong-ho-epos-swiss-e-3390156222032', 56400000, 0, '2', '2020-07-06__373860224-untitled-14.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:44:37', NULL),
(35, '?????ng h??? Epos Swiss E-8000.700.22.65.15', 100, 0, 'dong-ho-epos-swiss-e-8000700226515', 15100000, 0, '2', '2020-07-06__2015096233-dong-ho-chinh-hang-8.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:46:01', NULL),
(36, '?????ng h??? Epos Swiss E-3387.152.22.28.32', 100, 0, 'dong-ho-epos-swiss-e-3387152222832', 36000000, 0, '2', '2020-07-06__364723213-untitled-56.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:46:35', NULL),
(37, '?????ng h??? Epos Swiss E-3387.152.22.16.32', 100, 0, 'dong-ho-epos-swiss-e-3387152221632', 36000000, 0, '2', '2020-07-06__2065350889-untitled-33.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:47:04', NULL),
(38, '?????ng h??? Epos Swiss E-3401.132.22.58.25', 100, 0, 'dong-ho-epos-swiss-e-3401132225825', 32100000, 0, '2', '2020-07-06__581788969-e-3401132225825.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:47:26', NULL),
(39, '?????ng h??? Epos Swiss E-3420.152.22.16.32', 100, 0, 'dong-ho-epos-swiss-e-3420152221632', 39600000, 0, '2', '2020-07-06__416029194-e-3420152221632.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:48:07', NULL),
(40, '?????ng h??? Epos Swiss E-7000.701.22.18.25', 100, 0, 'dong-ho-epos-swiss-e-7000701221825', 14000000, 0, '2', '2020-07-06__1560014040-anh-test5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:48:36', NULL),
(41, '?????ng h??? Epos Swiss E-3420.152.22.18.15', 100, 0, 'dong-ho-epos-swiss-e-3420152221815', 32100000, 0, '2', '2020-07-06__1713156451-e-3420152221815.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:49:01', NULL),
(42, '?????ng h??? Epos Swiss E-3420.156.22.20.15', 100, 0, 'dong-ho-epos-swiss-e-3420156222015', 54500000, 0, '2', '2020-07-06__1244120338-e-3420156222015.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:49:29', NULL),
(43, '?????ng h??? Epos Swiss E-3390.152.22.10.32', 100, 0, 'dong-ho-epos-swiss-e-3390152221032', 36000000, 0, '2', '2020-07-06__1703889192-untitled-73.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:49:54', NULL),
(44, '?????ng h??? Epos Swiss E-3387.152.22.28.15', 100, 0, 'dong-ho-epos-swiss-e-3387152222815', 31600000, 0, '2', '2020-07-06__677822869-untitled-57.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:50:18', NULL),
(45, '?????ng h??? Atlantic Swiss AT-29037.45.21L', 100, 2, 'dong-ho-atlantic-swiss-at-290374521l', 8580000, 0, '3', '2020-07-06__1867397475-dong-ho-chinh-hang-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:51:50', NULL),
(46, '?????ng H??? Atlantic AT-61352.45.21', 100, 0, 'dong-ho-atlantic-at-613524521', 9980000, 0, '3', '2020-07-06__2007657172-dong-ho-nu-thoi-trang-3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:52:33', NULL),
(47, '?????ng h??? Atlantic Swiss AT-60347.45.21', 100, 3, 'dong-ho-atlantic-swiss-at-603474521', 9180000, 0, '3', '2020-07-06__824256149-untitled-17.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:52:56', NULL),
(48, '?????ng h??? Atlantic Swiss AT-29035.41.21', 100, 0, 'dong-ho-atlantic-swiss-at-290354121', 7620000, 0, '3', '2020-07-06__1900541705-dong-ho-chinh-hang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:53:22', NULL),
(49, '?????ng h??? Atlantic Swiss AT-60347.43.31', 100, 3, 'dong-ho-atlantic-swiss-at-603474331', 8980000, 0, '3', '2020-07-06__2013794039-untitled-75.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:53:55', NULL),
(50, '?????ng h??? Atlantic Swiss AT-62341.45.61', 100, 0, 'dong-ho-atlantic-swiss-at-623414561', 7990000, 0, '3', '2020-07-06__854920604-untitled-44.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:54:32', NULL),
(51, '?????ng h??? Atlantic Swiss AT-60342.45.11', 100, 0, 'dong-ho-atlantic-swiss-at-603424511', 8390000, 0, '3', '2020-07-06__347591995-untitled-29.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:54:55', NULL),
(52, '?????ng h??? Atlantic Swiss AT-62346.45.21', 100, 0, 'dong-ho-atlantic-swiss-at-623464521', 9180000, 0, '3', '2020-07-06__1705990443-dong-ho-atlantic-623464521.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:55:23', NULL),
(53, '?????ng h??? Atlantic Swiss AT-62455.45.21', 100, 0, 'dong-ho-atlantic-swiss-at-624554521', 13980000, 0, '3', '2020-07-06__1583539626-untitled-22.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:55:47', NULL),
(54, '?????ng h??? Atlantic Swiss AT-60342.45.31', 100, 0, 'dong-ho-atlantic-swiss-at-603424531', 8390000, 0, '3', '2020-07-06__534263268-atsua2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:56:08', NULL),
(55, '344942409_6305b5.jpg', 100, 0, '344942409-6305b5jpg', 3850000, 0, '4', '2020-07-06__344942409-6305b5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:56:58', NULL),
(56, '?????ng h??? Diamond D DM5308B5', 100, 0, 'dong-ho-diamond-d-dm5308b5', 4545000, 0, '4', '2020-07-06__344942409-6305b5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:57:34', NULL),
(57, '?????ng h??? Diamond D DM38445', 100, 0, 'dong-ho-diamond-d-dm38445', 2890000, 0, '4', '2020-07-06__2062512311-dm38445.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:57:59', NULL),
(58, '?????ng h??? Diamond D DM36505IG', 100, 0, 'dong-ho-diamond-d-dm36505ig', 3575000, 0, '4', '2020-07-06__305867309-dong-ho-diamond-d-dm36505ig.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:58:35', NULL),
(59, '?????ng h??? Diamond D DM5308B5IG', 100, 3, 'dong-ho-diamond-d-dm5308b5ig', 5000000, 0, '4', '2020-07-06__2127487811-dong-ho-diamond-d-dm5308b5ig.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:59:15', NULL),
(60, '?????ng h??? Diamond D DM36505', 100, 3, 'dong-ho-diamond-d-dm36505', 2890000, 0, '4', '2020-07-06__2081582639-dong-ho-diamond-d-dm36505.jpg', 0, 0, 1, 1, 1, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 00:59:40', NULL),
(61, '?????ng h??? Diamond D DM63055', 100, 0, 'dong-ho-diamond-d-dm63055', 2890000, 0, '4', '2020-07-06__1874911582-dong-ho-diamond-d-dm63055.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:00:02', NULL),
(62, '?????ng h??? Diamond D DM3645B5IG-R', 100, 0, 'dong-ho-diamond-d-dm3645b5ig-r', 4080000, 0, '4', '2020-07-06__1077384062-dong-ho-chinh-hang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:00:28', NULL),
(63, '?????ng h??? Diamond D DM38445IG', 100, 0, 'dong-ho-diamond-d-dm38445ig', 3575000, 0, '4', '2020-07-06__1456012083-dong-ho-diamond-d-dm38445ig.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:00:48', NULL),
(64, '?????ng h??? Diamond D DM61195IG', 100, 0, 'dong-ho-diamond-d-dm61195ig', 6000000, 0, '4', '2020-07-06__1390039292-dong-ho-diamond-d-dm61195ig.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:01:15', NULL),
(65, '?????NG H??? ARIES GOLD AG-L5002 G-MOP-L', 100, 0, 'dong-ho-aries-gold-ag-l5002-g-mop-l', 4225000, 0, '5', '2020-07-06__444423868-dong-ho-nu-thoi-trang.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:02:06', NULL),
(66, '?????ng h??? Aries Gold AG-G1013Z 2TG-S', 100, 0, 'dong-ho-aries-gold-ag-g1013z-2tg-s', 2975000, 0, '5', '2020-07-06__1773979405-ng-h-chnh-hng-6.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:02:32', NULL),
(67, '?????ng h??? Aries Gold AG-G1013Z G-S', 100, 0, 'dong-ho-aries-gold-ag-g1013z-g-s', 2975000, 0, '5', '2020-07-06__884588771-ng-h-chnh-hng-7.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:02:56', NULL),
(68, '?????ng h??? Aries Gold AG-G1001 G-BR', 100, 0, 'dong-ho-aries-gold-ag-g1001-g-br', 3700000, 0, '5', '2020-07-06__1183133090-dong-ho-chinh-hang-18.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:03:18', NULL),
(69, '?????ng h??? Aries Gold AG-U7010 Z-BK', 100, 0, 'dong-ho-aries-gold-ag-u7010-z-bk', 1295000, 0, '5', '2020-07-06__119078961-ng-h-chnh-hng23.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:03:49', NULL),
(70, '?????ng h??? Aries Gold AG-L5039Z 2TRG-W', 100, 0, 'dong-ho-aries-gold-ag-l5039z-2trg-w', 5225000, 0, '5', '2020-07-06__2063952782-dong-ho-chinh-hang-71.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:04:14', NULL),
(71, '?????ng h??? Aries Gold AG-G9005G RG-S', 100, 0, 'dong-ho-aries-gold-ag-g9005g-rg-s', 11522500, 0, '5', '2020-07-06__1776967786-donghocochinhhang.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 01:04:37', NULL),
(72, '?????ng h??? Aries Gold AG-G101 G-BU', 100, 0, 'dong-ho-aries-gold-ag-g101-g-bu', 5472500, 0, '5', '2020-07-06__1105091133-ng-h-chnh-hng-9-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:26:34', NULL),
(73, '?????ng h??? Aries Gold AG-L9023 S-BK', 100, 0, 'dong-ho-aries-gold-ag-l9023-s-bk', 6225000, 0, '5', '2020-07-06__664894802-ag-l9023-s-bk.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:27:05', NULL),
(74, '?????ng h??? Jacques Lemans JL-1-1654.2ZD', 100, 0, 'dong-ho-jacques-lemans-jl-1-16542zd', 5190000, 0, '6', '2020-07-06__1237549702-dong-ho-chinh-hang-15.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:27:48', NULL),
(75, '?????ng h??? Jacques Lemans JL-1-1654.2ZH', 100, 0, 'dong-ho-jacques-lemans-jl-1-16542zh', 6640000, 0, '6', '2020-07-06__1227200434-dong-ho-chinh-hang-3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:28:18', NULL),
(76, '?????ng h??? Jacques Lemans JL-40-1D', 100, 2, 'dong-ho-jacques-lemans-jl-40-1d', 2470000, 0, '6', '2020-07-06__764709761-ng-h-chnh-hng-7.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:28:45', NULL),
(77, '?????NG H??? JACQUES LEMANS JL-1-1654.2ZG', 100, 0, 'dong-ho-jacques-lemans-jl-1-16542zg', 5770000, 0, '6', '2020-07-06__1211669676-dong-ho-chinh-hang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:29:06', NULL),
(78, '?????ng h??? Jacques Lemans JL-1-1654ZD', 100, 0, 'dong-ho-jacques-lemans-jl-1-1654zd', 5190000, 0, '6', '2020-07-06__1629170767-dong-ho-chinh-hang-17.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:29:28', NULL),
(79, '?????ng h??? Jacques Lemans JL-1-1654.2ZK', 100, 0, 'dong-ho-jacques-lemans-jl-1-16542zk', 4320000, 0, '6', '2020-07-06__303830371-dng-h-chnh-hng-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:29:52', NULL),
(80, '?????ng h??? Jacques Lemans JL-42-6H', 100, 0, 'dong-ho-jacques-lemans-jl-42-6h', 8670000, 0, '6', '2020-07-06__628628426-dong-ho-chinh-hang-16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:30:19', NULL),
(81, '?????ng h??? Jacques Lemans JL-1-1654.2ZB', 100, 0, 'dong-ho-jacques-lemans-jl-1-16542zb', 4320000, 0, '6', '2020-07-06__154172738-ng-h-chnh-hng-22.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:30:44', NULL),
(82, '?????ng h??? Jacques Lemans JL-42-6G', 100, 0, 'dong-ho-jacques-lemans-jl-42-6g', 7220000, 0, '6', '2020-07-06__1602688128-ng-h-chnh-hng-25.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:31:09', NULL),
(83, '?????ng h??? Jacques Lemans JL-42-5F', 100, 0, 'dong-ho-jacques-lemans-jl-42-5f', 7220000, 0, '6', '2020-07-06__1708797910-ng-h-chnh-hng-24.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:31:28', NULL),
(84, '?????ng h??? Q&Q QQ-S280J102Y', 100, 0, 'dong-ho-qq-qq-s280j102y', 1564000, 0, '7', '2020-07-06__938885842-qq-s280j102y.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:32:05', NULL),
(85, '?????ng h??? Q&Q QQ-S297J201Y', 100, 0, 'dong-ho-qq-qq-s297j201y', 1714000, 0, '7', '2020-07-06__1515923572-dong-ho-chinh-hang-40.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:32:26', NULL),
(86, '?????ng h??? Q&Q QQ-S297J212Y', 100, 0, 'dong-ho-qq-qq-s297j212y', 1714000, 0, '7', '2020-07-06__1593600037-qq-s297j212y.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:32:50', NULL),
(87, '?????ng h??? Q&Q QQ-S278J102Y', 100, 0, 'dong-ho-qq-qq-s278j102y', 1564000, 0, '7', '2020-07-06__790154414-qq-s278j102y.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:33:14', NULL),
(88, '?????ng h??? Q&Q QQ-S279J102Y', 100, 0, 'dong-ho-qq-qq-s279j102y', 1564000, 0, '7', '2020-07-06__676187452-qq-s279j102y.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:33:35', NULL),
(89, '?????ng h??? Q&Q QQ-S278J302Y', 100, 0, 'dong-ho-qq-qq-s278j302y', 1334000, 0, '7', '2020-07-06__1758918333-qq-s278j302y.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:34:00', NULL),
(90, '?????ng h??? Q&Q QQ-S301J201Y', 100, 0, 'dong-ho-qq-qq-s301j201y', 1668000, 0, '7', '2020-07-06__939792346-qq-s301j201y.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:34:38', NULL),
(91, '?????ng h??? Q&Q QQ-S280J302Y', 100, 0, 'dong-ho-qq-qq-s280j302y', 1334000, 0, '7', '2020-07-06__1884170303-dong-ho-chinh-hang-41.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:34:59', NULL),
(92, '?????ng h??? Q&Q QQ-S281J204Y', 100, 0, 'dong-ho-qq-qq-s281j204y', 1334000, 0, '7', '2020-07-06__640634400-dong-ho-chinh-hang-44.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:35:24', NULL),
(93, '?????ng h??? Q&Q QQ-S306J202Y', 100, 0, 'dong-ho-qq-qq-s306j202y', 1691000, 0, '7', '2020-07-06__1051789348-untitled-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:35:45', NULL),
(94, '?????ng h??? Bruno Sohnle Glashutte BS-17-13185-950', 100, 0, 'dong-ho-bruno-sohnle-glashutte-bs-17-13185-950', 11200000, 0, '8', '2020-07-06__2112857441-untitled-29.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:36:19', NULL),
(95, '?????ng h??? Bruno Sohnle BS-17-63162-244', 100, 0, 'dong-ho-bruno-sohnle-bs-17-63162-244', 14880000, 0, '8', '2020-07-06__116553004-bs-17-63162-244.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:36:39', NULL),
(96, '?????ng h??? Bruno Sohnle BS-17-63185-950', 100, 0, 'dong-ho-bruno-sohnle-bs-17-63185-950', 12780000, 0, '8', '2020-07-06__1983096435-bs-17-63185-950.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:37:25', NULL),
(97, '?????ng h??? Bruno sohnle BS-17-33185-950', 100, 0, 'dong-ho-bruno-sohnle-bs-17-33185-950', 12830000, 0, '8', '2020-07-06__1824361845-dong-ho-nhap-khau2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:37:48', NULL),
(98, '?????ng h??? Bruno Sohnle BS-17-23185-950', 100, 0, 'dong-ho-bruno-sohnle-bs-17-23185-950', 12780000, 0, '8', '2020-07-06__370231196-bs-17-23185-950.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:38:08', NULL),
(99, '?????ng h??? Bruno Sohnle BS-17-23189-292', 100, 0, 'dong-ho-bruno-sohnle-bs-17-23189-292', 13130000, 30, '8', '2020-07-06__2062397430-bs-17-23189-292.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:38:53', NULL),
(100, '?????ng h??? Bruno sohnle BS-17-63160-921', 100, 0, 'dong-ho-bruno-sohnle-bs-17-63160-921', 11730000, 30, '8', '2020-07-06__439273055-bs-17-63160-921.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:39:25', NULL),
(101, '?????ng h??? Bruno sohnle BS-17-33189-892', 100, 0, 'dong-ho-bruno-sohnle-bs-17-33189-892', 13830000, 0, '8', '2020-07-06__989594572-untitled-27.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:39:48', NULL),
(102, '?????ng h??? Bruno Sohnle BS-17-23157-292', 100, 0, 'dong-ho-bruno-sohnle-bs-17-23157-292', 17330000, 0, '8', '2020-07-06__164754311-untitled-26.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:40:08', NULL),
(103, '?????ng h??? Bruno sohnle BS-17-33192-263', 100, 0, 'dong-ho-bruno-sohnle-bs-17-33192-263', 15750000, 0, '8', '2020-07-06__1261547652-untitled-28.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:40:33', NULL),
(104, '?????ng h??? Citizen CT-NH8350-08A', 100, 0, 'dong-ho-citizen-ct-nh8350-08a', 4990000, 0, '9', '2020-07-06__1278870388-dong-ho-chinh-hang-10.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:41:14', NULL),
(105, '?????ng h??? Citizen CT-NH8350-08E', 100, 0, 'dong-ho-citizen-ct-nh8350-08e', 4990000, 0, '9', '2020-07-06__783274726-dong-ho-chinh-hang-9.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:41:44', NULL),
(106, '?????ng h??? Citizen CT-BF2003-84P', 100, 0, 'dong-ho-citizen-ct-bf2003-84p', 4190000, 0, '9', '2020-07-06__1213115573-ng-h-ng-quang26.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:42:07', NULL),
(107, '?????ng h??? Citizen CT-NH8350-08B', 100, 0, 'dong-ho-citizen-ct-nh8350-08b', 4750000, 0, '9', '2020-07-06__442407611-dng-h-chnh-hng-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:42:31', NULL),
(108, '?????ng h??? Citizen CT-BI1050-56A', 100, 0, 'dong-ho-citizen-ct-bi1050-56a', 2990000, 0, '9', '2020-07-06__221232752-ng-h-nht4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:42:49', NULL),
(109, '?????ng h??? Citizen CT-NH8350-59L', 100, 0, 'dong-ho-citizen-ct-nh8350-59l', 5240000, 0, '9', '2020-07-06__1935471340-dng-h-chnh-hng-16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:43:14', NULL),
(110, '?????ng h??? Citizen CT-NH8360-12H', 100, 0, 'dong-ho-citizen-ct-nh8360-12h', 4750000, 0, '9', '2020-07-06__261968561-dng-h-chnh-hng-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:43:41', NULL),
(111, '?????ng h??? Citizen CT-BF2001-80E', 100, 0, 'dong-ho-citizen-ct-bf2001-80e', 3370000, 0, '9', '2020-07-06__345598352-dng-h-chnh-hng-3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:44:02', NULL),
(112, '?????ng h??? Citizen CT-BI5072-51E', 100, 0, 'dong-ho-citizen-ct-bi5072-51e', 3900000, 0, '9', '2020-07-06__1012898075-dng-h-chnh-hng-7.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:44:33', NULL),
(113, '?????ng h??? Citizen CT-BI5074-56A', 100, 0, 'dong-ho-citizen-ct-bi5074-56a', 3900000, 0, '9', '2020-07-06__2005302146-dng-h-chnh-hng-6.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:44:55', NULL),
(114, 'Stuhrling Original ST-207.03', 100, 0, 'stuhrling-original-st-20703', 7980000, 0, '10', '2020-07-06__36556100-ng-h-chnh-hng-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:45:33', NULL),
(115, 'STUHRLING ORIGINAL ST-700.03', 100, 0, 'stuhrling-original-st-70003', 11960000, 0, '10', '2020-07-06__1651380392-dong-ho-nu-thoi-trang-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:46:07', NULL),
(116, 'STUHRLING ORIGINAL ST-710.02', 100, 0, 'stuhrling-original-st-71002', 13480000, 0, '10', '2020-07-06__2024239784-ng-h-chnh-hng-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:46:25', NULL),
(117, 'STUHRLING ORIGINAL ST-716.02', 100, 0, 'stuhrling-original-st-71602', 9210000, 0, '10', '2020-07-06__1549374713-dong-ho-chinh-hang-46.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:46:48', NULL),
(118, 'STUHRLING ORIGINAL ST-716.03', 100, 0, 'stuhrling-original-st-71603', 9350000, 0, '10', '2020-07-06__2035845115-dong-ho-nu-thoi-trang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:47:07', NULL),
(119, 'Stuhrling Original ST-207.01', 100, 0, 'stuhrling-original-st-20701', 7150000, 0, '10', '2020-07-06__770678537-dong-ho-chinh-hang-47.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:47:33', NULL),
(120, 'STUHRLING ORIGINAL ST-733.03', 100, 0, 'stuhrling-original-st-73303', 7150000, 0, '10', '2020-07-06__1957332017-dong-ho-chinh-hang-48.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:47:56', NULL),
(121, 'Stuhrling Original ST-207.04', 100, 0, 'stuhrling-original-st-20704', 8110000, 0, '10', '2020-07-06__506418218-untitled-69.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:48:17', NULL),
(122, 'STUHRLING ORIGINAL ST-734LM.05', 100, 0, 'stuhrling-original-st-734lm05', 6810000, 0, '10', '2020-07-06__21559474-dong-ho-chinh-hang-49.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:48:51', NULL),
(123, 'STUHRLING ORIGINAL ST-740.03', 100, 0, 'stuhrling-original-st-74003', 19800000, 0, '10', '2020-07-06__1410657971-dong-ho-chinh-hang-50.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:49:16', NULL),
(124, 'T??? PHILIPPE AUGUSTE 6 NG??N XOAY 7 NG??N B??Y WW6-7/C', 100, 0, 'tu-philippe-auguste-6-ngan-xoay-7-ngan-bay-ww6-7c', 6100000, 0, '23', '2020-07-06__990289388-hopdonghoco42.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:53:22', NULL),
(125, 'H???P PHILIPPE AUGUSTE 4 NG??N XOAY WW4-0/C', 100, 0, 'hop-philippe-auguste-4-ngan-xoay-ww4-0c', 3600000, 0, '23', '2020-07-06__498535141-hopdonghoco39.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:53:49', NULL),
(126, 'H???P PHILIPPE AUGUSTE 2 NG??N XOAY WW2-0/D', 100, 0, 'hop-philippe-auguste-2-ngan-xoay-ww2-0d', 2200000, 0, '23', '2020-07-06__193525268-hopdonghoco18.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:54:17', NULL),
(127, 'H???P PHILIPPE AUGUSTE 1 NG??N XOAY WW1-0/A', 100, 12, 'hop-philippe-auguste-1-ngan-xoay-ww1-0a', 1600000, 0, '23', '2020-07-06__1413898215-hopdonghoco20.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:54:40', NULL),
(128, 'H???P PHILIPPE AUGUSTE 2 NG??N XOAY WW2-0/B', 100, 2, 'hop-philippe-auguste-2-ngan-xoay-ww2-0b', 2100000, 0, '23', '2020-07-06__1143756016-hopdonghoco23.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:55:10', NULL),
(129, 'H???P PHILIPPE AUGUSTE 2 NG??N XOAY WW2-0/E', 100, 0, 'hop-philippe-auguste-2-ngan-xoay-ww2-0e', 2200000, 0, '23', '2020-07-06__417694880-hopdonghoco16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:55:43', NULL),
(130, 'H???P PHILIPPE AUGUSTE 2 ng??n xoay WW2-0/F', 100, 0, 'hop-philippe-auguste-2-ngan-xoay-ww2-0f', 2100000, 0, '23', '2020-07-06__1412453866-hopdonghoco21.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:56:13', NULL),
(131, 'H???P PHILIPPE AUGUSTE 2 NG??N XOAY WW2-0/C', 100, 9, 'hop-philippe-auguste-2-ngan-xoay-ww2-0c', 2100000, 0, '23', '2020-07-06__221869409-hopdonghoco27.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:56:41', NULL),
(132, 'H???P PHILIPPE AUGUSTE 2 NG??N XOAY WW2-0/A', 100, 5, 'hop-philippe-auguste-2-ngan-xoay-ww2-0a', 2200000, 0, '23', '2020-07-06__1140257724-hopdonghoco35.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:57:10', NULL),
(133, 'H???P PHILIPPE AUGUSTE 1 NG??N XOAY WW1-0/B', 100, 2, 'hop-philippe-auguste-1-ngan-xoay-ww1-0b', 1600000, 0, '23', '2020-07-06__1644487027-hopdonghonghoco10.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:57:39', NULL),
(134, 'D??y da Diamond D D DM W 12', 100, 0, 'day-da-diamond-d-d-dm-w-12', 300000, 0, '24', '2020-07-06__1905887238-d-dm-w-12.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:58:18', NULL),
(135, 'D??y D DM W 14', 100, 0, 'day-d-dm-w-14', 300000, 0, '24', '2020-07-06__205348583-1546412289-d-dm-w-14.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:58:44', NULL),
(136, 'D??y da Diamond D D DM R 12', 100, 0, 'day-da-diamond-d-d-dm-r-12', 300000, 0, '24', '2020-07-06__1752070534-d-dm-r-12.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:59:05', '2020-09-18 10:02:29'),
(137, 'D??y da Diamond D D DM B 12', 100, 0, 'day-da-diamond-d-d-dm-b-12', 300000, 0, '24', '2020-07-06__1876477849-d-dm-b-12.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 03:59:30', NULL),
(138, 'D??y da Diamond D D DM W 16', 100, 0, 'day-da-diamond-d-d-dm-w-16', 300000, 0, '24', '2020-07-06__816219224-d-dm-w-16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:00:04', NULL),
(139, 'D??y da Diamond D D DM R 16', 100, 0, 'day-da-diamond-d-d-dm-r-16', 300000, 0, '24', '2020-07-06__1612172678-d-dm-r-16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:00:28', NULL),
(140, 'D??y da Diamond D D DM B 16', 100, 0, 'day-da-diamond-d-d-dm-b-16', 300000, 0, '24', '2020-07-06__5622158-d-dm-b-16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:01:36', NULL),
(141, 'D??y D DM W-IG14', 100, 0, 'day-d-dm-w-ig14', 300000, 0, '24', '2020-07-06__84635991-711696425-d-dm-w-ig14.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:02:06', NULL),
(142, 'D??y da Diamond D D DM R-RG12', 100, 0, 'day-da-diamond-d-d-dm-r-rg12', 300000, 0, '24', '2020-07-06__928420528-d-dm-r-rg12.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:02:30', NULL),
(143, 'D??y da ????ng Quang D-A-2301PKS.4P.BR-18', 100, 0, 'day-da-dang-quang-d-a-2301pks4pbr-18', 350000, 0, '25', '2020-07-06__671677166-ddweb5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:03:07', NULL),
(144, 'D??y da ????ng Quang D-71S-816-01/22', 100, 0, 'day-da-dang-quang-d-71s-816-0122', 350000, 0, '25', '2020-07-06__128844916-d-71s-816-0122.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:03:30', '2020-09-19 20:38:27'),
(145, 'D??y da ????ng Quang D-A-6057PKS.4P-24', 100, 0, 'day-da-dang-quang-d-a-6057pks4p-24', 400000, 0, '25', '2020-07-06__1847910649-1802858111-ddweb23.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:04:19', NULL),
(146, 'D??y da ????ng Quang D-71C-443-04/20G', 100, 0, 'day-da-dang-quang-d-71c-443-0420g', 400000, 0, '25', '2020-07-06__2076252870-ddweb2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:04:46', NULL),
(147, 'D??y da ????ng Quang D-01A-443-02/24', 100, 0, 'day-da-dang-quang-d-01a-443-0224', 400000, 0, '25', '2020-07-06__141172415-1374829367-testweb.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:05:10', NULL),
(148, 'D??y da ????ng Quang D-A-2301PKS.4P.BR-22', 100, 0, 'day-da-dang-quang-d-a-2301pks4pbr-22', 500000, 0, '25', '2020-07-06__422147414-671677166-ddweb5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:05:33', NULL),
(149, 'D??y da ????ng Quang D-71C-443-46A/20G', 100, 0, 'day-da-dang-quang-d-71c-443-46a20g', 400000, 0, '25', '2020-07-06__906071792-ddweb3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:05:54', NULL),
(150, 'D??y da ????ng Quang D-71C-443-04/20', 100, 0, 'day-da-dang-quang-d-71c-443-0420', 350000, 0, '25', '2020-07-06__115319853-ddweb19.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:06:19', NULL),
(151, 'D??Y DA ????NG QUANG D-71S-254-09/22', 100, 0, 'day-da-dang-quang-d-71s-254-0922', 350000, 0, '25', '2020-07-06__2075725556-550772250-d-71s-254-09-22.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:06:41', NULL),
(152, 'D??y da ????ng Quang D-C-260APLS.SW-22', 100, 0, 'day-da-dang-quang-d-c-260aplssw-22', 500000, 0, '25', '2020-07-06__234579733-ddweb22.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:07:29', NULL),
(153, 'D??y da Jacques D JL-1-1769E', 100, 0, 'day-da-jacques-d-jl-1-1769e', 650000, 0, '26', '2020-07-06__1166455242-dy-jl16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:08:12', NULL),
(154, '555712214_d??y-jl11.jpg', 100, 0, '555712214-day-jl11jpg', 650000, 0, '26', '2020-07-06__555712214-dy-jl11.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:08:32', NULL),
(155, 'D??y da Jacques D JL-1-1769D', 100, 0, 'day-da-jacques-d-jl-1-1769d', 650000, 0, '25', '2020-07-06__285983391-dy-jl15.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:09:27', NULL),
(156, 'D??y da Jacques D JL-1-1540H', 100, 0, 'day-da-jacques-d-jl-1-1540h', 650000, 0, '26', '2020-07-06__1368824276-dy-jl14.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:09:54', NULL),
(157, 'D??y da Jacques D JL-1-1845B', 100, 0, 'day-da-jacques-d-jl-1-1845b', 650000, 0, '26', '2020-07-06__294111226-dy-jl1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:10:17', NULL),
(158, 'D??y da Jacques D JL-1-1846A', 100, 0, 'day-da-jacques-d-jl-1-1846a', 650000, 0, '26', '2020-07-06__659021748-dy-jl6.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:10:49', NULL),
(159, 'D??y da Jacques D JL-1-1929H', 100, 0, 'day-da-jacques-d-jl-1-1929h', 650000, 0, '26', '2020-07-06__874011210-dy-jl17.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:11:09', NULL),
(160, 'D??y da Jacques D JL-1-1654G', 100, 0, 'day-da-jacques-d-jl-1-1654g', 650000, 0, '26', '2020-07-06__1450528902-dy-jl7.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:11:42', NULL),
(161, 'D??y da Jacques D JL-1-1929E', 100, 0, 'day-da-jacques-d-jl-1-1929e', 650000, 0, '26', '2020-07-06__2076549646-dy-jl19.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:12:03', NULL),
(162, 'D??y da atlantic D AT-71C-443-01/22', 100, 0, 'day-da-atlantic-d-at-71c-443-0122', 1500000, 0, '27', '2020-07-06__880038240-daydaweb.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:13:03', '2020-09-19 19:21:19'),
(163, 'D??y da atlantic D AT-L418.03.12G', 100, 0, 'day-da-atlantic-d-at-l4180312g', 1500000, 0, '27', '2020-07-06__1252837020-day-da-atlantic-d-at-l4180312g.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:13:32', NULL),
(164, 'D??y da atlantic D AT-L168.01.22G', 100, 0, 'day-da-atlantic-d-at-l1680122g', 1500000, 0, '27', '2020-07-06__1234991810-day-da-atlantic-d-at-l1680122g.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:13:57', NULL),
(165, 'D??y da atlantic D AT-L397.02.24G', 100, 0, 'day-da-atlantic-d-at-l3970224g', 1500000, 0, '27', '2020-07-06__637326163-day-da-atlantic-d-at-l3970224g.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:14:17', NULL),
(166, 'D??y da atlantic D AT-L168.03.22G', 100, 0, 'day-da-atlantic-d-at-l1680322g', 1500000, 0, '27', '2020-07-06__960915062-day-da-atlantic-d-at-l1680322g.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:14:39', NULL),
(167, 'D??y da atlantic D AT-L168.03.22S', 100, 0, 'day-da-atlantic-d-at-l1680322s', 1500000, 0, '27', '2020-07-06__1306247000-day-da-atlantic-d-at-l1680322s.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:15:05', NULL),
(168, 'D??y da Bruno D BS-71C-443-04/20', 100, 0, 'day-da-bruno-d-bs-71c-443-0420', 2500000, 0, '28', '2020-07-06__146707285-ddweb17.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:15:30', NULL),
(169, 'D??y da Bruno D BS D-OL20', 100, 0, 'day-da-bruno-d-bs-d-ol20', 1800000, 0, '28', '2020-07-06__822524996-dy-bru2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:15:48', NULL),
(170, 'D??y da Epos DD E-D 22BK', 100, 0, 'day-da-epos-dd-e-d-22bk', 3500000, 0, '29', '2020-07-06__739787493-dy-da-epos.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:16:50', NULL),
(171, 'D??y da Epos DD E-D 22BR', 100, 0, 'day-da-epos-dd-e-d-22br', 3500000, 0, '29', '2020-07-06__442906468-dy-da-epos2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:17:10', NULL),
(172, 'D??y da Epos DD E-D 20', 100, 0, 'day-da-epos-dd-e-d-20', 3500000, 0, '29', '2020-07-06__1156437885-dy-da-epos.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:17:31', NULL),
(173, 'D??y da Epos DD E-B16', 100, 0, 'day-da-epos-dd-e-b16', 2800000, 0, '29', '2020-07-06__1164561611-dy-da-epos3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:17:49', NULL),
(174, 'K??NH M??T DIAMOND D DM-T-29210-59/C6', 100, 0, 'kinh-mat-diamond-d-dm-t-29210-59c6', 2933000, 0, '11', '2020-07-06__dm226-img-0578.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:27:25', NULL),
(175, 'K??nh m??t Diamond D DM-29366-60/C7', 100, 0, 'kinh-mat-diamond-d-dm-29366-60c7', 3450000, 0, '11', '2020-07-06__1827657616-kinh-mat-thoi-trang-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:27:48', '2020-09-18 12:42:30'),
(176, 'K??nh m??t Diamond D DM-29361-60/C7', 100, 2, 'kinh-mat-diamond-d-dm-29361-60c7', 3450000, 0, '11', '2020-07-06__668773904-kinh-mat-thoi-trang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:28:23', NULL),
(177, 'K??NH M??T DIAMOND D DM-T-29278-64/C6', 100, 2, 'kinh-mat-diamond-d-dm-t-29278-64c6', 2933000, 0, '11', '2020-07-06__dm226-img-0551.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:28:47', NULL),
(178, 'K??NH M??T DIAMOND D DM-T-29227-60/C4', 100, 0, 'kinh-mat-diamond-d-dm-t-29227-60c4', 2933000, 0, '11', '2020-07-06__dm206-img-9827.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:29:07', NULL),
(179, 'K??NH M??T DIAMOND D DM-T-29257-58/C3', 100, 0, 'kinh-mat-diamond-d-dm-t-29257-58c3', 2933000, 0, '11', '2020-07-06__dm226-img-0063.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:29:28', NULL),
(180, 'K??nh m??t Diamond D DM-29382-54/C21', 100, 0, 'kinh-mat-diamond-d-dm-29382-54c21', 3450000, 0, '11', '2020-07-06__782883074-kinh-mat-thoi-trang-3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:29:59', NULL),
(181, 'K??nh m??t Diamond D DM-29330-66/C22', 100, 0, 'kinh-mat-diamond-d-dm-29330-66c22', 3450000, 0, '11', '2020-07-06__1849499674-kinh-thoi-trang-11.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:30:20', NULL),
(182, 'K??nh m??t Diamond D DM-29362-60/C5', 100, 0, 'kinh-mat-diamond-d-dm-29362-60c5', 3450000, 0, '11', '2020-07-06__684180939-kinh-mat-thoi-trang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:30:38', NULL),
(183, 'K??nh m??t Diamond D DM-29386-54/C23', 100, 0, 'kinh-mat-diamond-d-dm-29386-54c23', 3450000, 0, '11', '2020-07-06__1472272725-kinh-mat-thoi-trang-3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:31:21', NULL),
(184, 'Ki??nh ma??t PHILIPPE AUGUSTE PA-19151-60/C2', 100, 0, 'kinh-mat-philippe-auguste-pa-19151-60c2', 3450000, 0, '12', '2020-07-06__pa1707-img-1822.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:32:01', NULL),
(185, 'K??nh m??t PHILIPPE AUGUSTE PA-19107-59/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-19107-59c1', 3450000, 0, '12', '2020-07-06__332065152-kinh-thoi-trang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:32:22', NULL),
(186, 'K??NH M??T PHILIPPE AUGUSTE PA-19107-62/C2', 100, 0, 'kinh-mat-philippe-auguste-pa-19107-62c2', 34500000, 0, '12', '2020-07-06__92130298-knh-mt-chnh-hng11.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:32:45', NULL),
(187, 'Ki??nh ma??t PHILIPPE AUGUSTE PA-8558-52/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-8558-52c1', 3622500, 0, '12', '2020-07-06__1820287822-kinh-thoi-trang-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:33:09', NULL),
(188, 'PA1707-IMG-2081.jpg', 100, 16, 'pa1707-img-2081jpg', 3278000, 0, '12', '2020-07-06__pa1707-img-2081.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:33:35', NULL),
(189, 'K??nh m??t PHILIPPE AUGUSTE PA-S6001-52/C2', 100, 0, 'kinh-mat-philippe-auguste-pa-s6001-52c2', 4485000, 0, '12', '2020-07-06__710522731-kinh-thoi-trang-7.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:34:05', NULL),
(190, 'K??nh m??t Philippe Auguste PA-19108-61/C3', 100, 0, 'kinh-mat-philippe-auguste-pa-19108-61c3', 3278000, 0, '12', '2020-07-06__pa1707-img-2044.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:34:25', NULL),
(191, 'K??nh m??t Philippe Auguste PA-2817-62/BK', 100, 0, 'kinh-mat-philippe-auguste-pa-2817-62bk', 3278000, 0, '12', '2020-07-06__pa1707-img-2087.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:34:49', NULL),
(192, 'Ki??nh ma??t PHILIPPE AUGUSTE PA-10127-57/C11', 100, 0, 'kinh-mat-philippe-auguste-pa-10127-57c11', 3450000, 0, '12', '2020-07-06__2114743757-kinh-thoi-trang-4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:35:44', NULL),
(193, 'K??nh m??t PHILIPPE AUGUSTE PA-19226-60/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-19226-60c1', 5175000, 0, '12', '2020-07-06__463794179-kinh-thoi-trang-9.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:36:04', NULL),
(194, 'Ki??nh ma??t PHILIPPE AUGUSTE PA-19225-63/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-19225-63c1', 3450000, 0, '12', '2020-07-06__712559293-kinh-thoi-trang-12.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:36:24', NULL),
(195, 'K??nh m??t PHILIPPE AUGUSTE PA-8906-54/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-8906-54c1', 3622500, 0, '12', '2020-07-06__868668886-kinh-thoi-trang-10.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:36:48', NULL),
(196, 'K??nh m??t PHILIPPE AUGUSTE PA-3108/C3', 100, 0, 'kinh-mat-philippe-auguste-pa-3108c3', 4485000, 0, '12', '2020-07-06__1598348196-kinh-thoi-trang-3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:37:08', NULL),
(197, 'K??nh m??t Burberry BUR-3092QF-1145/71', 100, 0, 'kinh-mat-burberry-bur-3092qf-11457160it', 5750000, 0, '13', '2020-07-06__1671074968-580046941-knh-b31.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:37:38', NULL),
(198, 'K??NH M??T BURBERRY BUR-3092QF-1003/87', 100, 0, 'kinh-mat-burberry-bur-3092qf-10038760it', 5750000, 0, '13', '2020-07-06__1295242677-kinh-mat5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:38:05', NULL),
(199, 'K??NH BURBERRY BUR-3084-1229/87', 100, 3, 'kinh-burberry-bur-3084-12298760it', 4550000, 0, '13', '2020-07-06__416352419-kinh-mat-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:38:29', NULL),
(200, 'K??nh m??t Burberry BUR-4251Q-3002/13', 100, 0, 'kinh-mat-burberry-bur-4251q-30021353it', 5250000, 0, '13', '2020-07-06__1567180200-227245783-knh-b14.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:38:51', NULL),
(201, 'K??nh m??t Burberry BUR-4250QF-3316/13', 100, 0, 'kinh-mat-burberry-bur-4250qf-33161354it', 4950000, 0, '13', '2020-07-06__185240634-2124339861-knh-b26.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:39:29', NULL),
(202, 'K??nh Burberry BUR-3092QF-1243/7J', 100, 0, 'kinh-burberry-bur-3092qf-12437j60it', 5750000, 0, '13', '2020-07-06__dd126-img-7787.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:39:50', NULL),
(203, 'K??NH M??T BURBERRY BUR-4279-3767/2L', 100, 0, 'kinh-mat-burberry-bur-4279-37672l40it', 5550000, 0, '13', '2020-07-06__256057444-knh-mt-thi-trang-3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:40:12', NULL),
(204, 'K??NH M??T BURBERRY BUR-4235QF-3316/13', 100, 0, 'kinh-mat-burberry-bur-4235qf-33161357it', 4950000, 0, '13', '2020-07-06__138351156-knh-mt-thi-trang-4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:40:32', NULL),
(205, 'K??NH M??T BURBERRY BUR-4250QF-3001/8G', 100, 0, 'kinh-mat-burberry-bur-4250qf-30018g54it', 4950000, 0, '13', '2020-07-06__132198978-kinh-mat6.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:40:52', NULL),
(206, 'K??nh m??t Burberry BUR-3090q-1167/73', 100, 0, 'kinh-mat-burberry-bur-3090q-11677358it', 5750000, 0, '13', '2020-07-06__113373012-1235339-knh-b10.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:41:10', NULL),
(207, 'K??nh m??t Rayban RB-3025-001/3E', 100, 0, 'kinh-mat-rayban-rb-3025-0013e58it', 5450000, 0, '14', '2020-07-06__921170800-knh-rayban169.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:41:45', NULL),
(208, 'K??nh RAYBAN RB-8313-004/N5', 100, 0, 'kinh-rayban-rb-8313-004n561cn', 7650000, 0, '14', '2020-07-06__353429334-knh-rayban317.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:42:08', NULL),
(209, 'K??nh m??t Rayban RB-3025-001/51', 100, 0, 'kinh-mat-rayban-rb-3025-0015158it', 5250000, 0, '14', '2020-07-06__2029224098-knh-mt-ng-quang.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:42:25', '2020-09-18 09:03:56'),
(210, 'K??nh RAYBAN RB-4278-6282/71', 100, 0, 'kinh-rayban-rb-4278-62827151it', 5250000, 0, '14', '2020-07-06__2091709855-knh-rayban308.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:42:40', NULL),
(211, 'K??nh m??t Rayban RB-3362-001', 100, 0, 'kinh-mat-rayban-rb-3362-00159cn', 4750000, 0, '14', '2020-07-06__394971111-knh-rayban168.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:43:02', NULL),
(212, 'K??nh Rayban RB-3025-002/4O', 100, 0, 'kinh-rayban-rb-3025-0024o58it', 5250000, 0, '14', '2020-07-06__516250429-knh-mt-ng-quang205.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:43:22', '2020-09-18 09:41:59'),
(213, 'K??nh RAYBAN RB-8317CH-003/5J', 100, 0, 'kinh-rayban-rb-8317ch-0035j58it', 7950000, 0, '15', '2020-07-06__1680694607-knh-rayban309.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:43:37', NULL),
(214, 'K??nh RAYBAN RB-4195F-601/71', 100, 0, 'kinh-rayban-rb-4195f-6017152it', 7950000, 0, '15', '2020-07-06__1968672020-knh-rayban314.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:43:59', NULL);
INSERT INTO `product` (`id`, `pro_name`, `pro_amount`, `pro_view`, `pro_slug`, `pro_price`, `pro_sale`, `pro_category`, `pro_avatar`, `pro_favourite`, `pro_hot`, `pro_active`, `pro_admin_id`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `keywordseo`, `pro_review_star`, `_wysihtml5_mode`, `created_at`, `updated_at`) VALUES
(215, 'K??nh RAYBAN RB-3025-003/32', 100, 0, 'kinh-rayban-rb-3025-0033258it', 5250000, 0, '14', '2020-07-06__594592928-knh-rayban320.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:44:22', '2020-09-18 09:06:54'),
(216, 'K??nh m??t Rayban RB-3025-181', 100, 0, 'kinh-mat-rayban-rb-3025-18158it', 4950000, 0, '14', '2020-07-06__1435031173-knh-rayban170.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:44:39', NULL),
(217, 'K??nh m??t Prada PR-0PR 08USF-C7O9K1', 100, 3, 'kinh-mat-prada-pr-0pr-08usf-c7o9k154it', 9250000, 0, '15', '2020-07-06__139525441-1372902178-knh-prada33.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:45:21', NULL),
(218, 'K??nh m??t Prada PR-0PS 54TS-5AV5Z1', 100, 0, 'kinh-mat-prada-pr-0ps-54ts-5av5z161it', 8750000, 0, '15', '2020-07-06__1407880152-knh-mt-prada-12.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:45:42', NULL),
(219, 'K??nh m??t Prada PR-0PR 07PSA-1AB0A7', 100, 0, 'kinh-mat-prada-pr-0pr-07psa-1ab0a756it', 7250000, 0, '15', '2020-07-06__782302178-kinh-thoi-trang3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:46:02', NULL),
(220, 'K??nh m??t Prada PR-0PR 04US-1AB5S0', 100, 0, 'kinh-mat-prada-pr-0pr-04us-1ab5s043it', 7250000, 0, '15', '2020-07-06__1418450781-knh-mt-prada-25.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:46:28', NULL),
(221, 'K??nh m??t Prada PR-0PR 67TS-5AV0A7', 100, 0, 'kinh-mat-prada-pr-0pr-67ts-5av0a763it', 8750000, 0, '15', '2020-07-06__44510559-knh-mt-prada-37.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:46:47', NULL),
(222, 'K??nh m??t Prada PR-0PR 68TS-ZVN117', 100, 0, 'kinh-mat-prada-pr-0pr-68ts-zvn11763it', 9250000, 0, '15', '2020-07-06__729488117-knh-mt-prada-49.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:47:04', NULL),
(223, 'K??nh m??t Prada PR-0PR 54VS-2640A7', 100, 0, 'kinh-mat-prada-pr-0pr-54vs-2640a758it', 9250000, 0, '15', '2020-07-06__549743827-knh-mt-prada-16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:47:22', NULL),
(224, 'K??nh m??t Prada PR-0PR 04US-VIQ4O0', 100, 0, 'kinh-mat-prada-pr-0pr-04us-viq4o043it', 9250000, 0, '15', '2020-07-06__648951626-1360503923-knh-prada21.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:47:52', NULL),
(225, 'K??nh m??t Prada PR-0PR 54VS-400409', 100, 3, 'kinh-mat-prada-pr-0pr-54vs-40040958it', 9250000, 0, '15', '2020-07-06__1963327124-1590054689-knh-prada25.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:48:13', NULL),
(226, 'K??nh m??t COACH C-8246F-5417/13', 100, 0, 'kinh-mat-coach-c-8246f-54171355cn', 4550000, 0, '15', '2020-07-06__474569337-kinh-mat5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:48:44', NULL),
(227, 'K??nh m??t COACH C-7104-9005/13', 100, 0, 'kinh-mat-coach-c-7104-90051359cn', 3750000, 0, '16', '2020-07-06__1883974168-knh-mt-chnh-hng.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:49:04', NULL),
(228, 'K??NH M??T COACH C-8179F-5120/13', 100, 0, 'kinh-mat-coach-c-8179f-51201358cn', 4250000, 0, '16', '2020-07-06__504005051-kinh-mat1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:49:24', NULL),
(229, 'K??nh m??t C-8230F-5507/73', 100, 0, 'kinh-mat-c-8230f-55077357cn', 3950000, 0, '16', '2020-07-06__1231926600-knh-mt-chnh-hng2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:49:45', NULL),
(230, 'K??nh m??t C-8261F-5446/87', 100, 0, 'kinh-mat-c-8261f-54468757cn', 3750000, 0, '16', '2020-07-06__475836663-knh-mt-chnh-hng3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:50:06', NULL),
(231, 'K??nh m??t C-7104-9331/13', 100, 0, 'kinh-mat-c-7104-93311359cn', 3750000, 0, '16', '2020-07-06__1416639319-knh-mt-chnh-hng4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:50:28', NULL),
(232, 'K??nh m??t C-7080-9322/13', 100, 0, 'kinh-mat-c-7080-93221355cn', 3750000, 0, '16', '2020-07-06__537260810-knh-mt-chnh-hng5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:50:50', NULL),
(233, 'K??NH M??T COACH C-8266H-5120/74', 100, 0, 'kinh-mat-coach-c-8266h-51207453cn', 4250000, 0, '16', '2020-07-06__728501360-kinh-mat2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:51:10', NULL),
(234, 'K??nh m??t COACH C-8166F-5120/13', 100, 0, 'kinh-mat-coach-c-8166f-51201358cn', 3950000, 0, '16', '2020-07-06__867212566-kinh-mat3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:51:27', NULL),
(235, 'K??nh m??t COACH C-8276-5120/13', 100, 0, 'kinh-mat-coach-c-8276-51201356cn', 3950000, 0, '16', '2020-07-06__519718251-knh-mt-chnh-hng7.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:51:43', NULL),
(236, 'K??nh m??t AR-4041SF-8157/87', 100, 0, 'kinh-mat-ar-4041sf-81578758cn', 2950000, 0, '17', '2020-07-06__1201220291-knh-n16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:52:17', NULL),
(237, 'K??nh m??t AR-2023S-6000/6G', 100, 0, 'kinh-mat-ar-2023s-60006g59cn', 3750000, 0, '17', '2020-07-06__761360828-knh-mt-n18.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:52:37', NULL),
(238, 'K??nh m??t AR-4041SF-8062/5A', 100, 0, 'kinh-mat-ar-4041sf-80625a58cn', 2950000, 0, '17', '2020-07-06__196208069-kinh-thoi-trang-3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:52:59', NULL),
(239, 'K??nh m??t AR-4032F-8158/6G', 100, 0, 'kinh-mat-ar-4032f-81586g56cn', 2950000, 0, '17', '2020-07-06__414458421-knh-mt-n24.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:53:20', NULL),
(240, 'K??nh m??t AR-4081S-8029/L7', 100, 0, 'kinh-mat-ar-4081s-8029l754cn', 3750000, 0, '17', '2020-07-06__22520968-knh-mt-n-25.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:53:38', NULL),
(241, 'K??nh m??t AR-4055SF-8157/87', 100, 0, 'kinh-mat-ar-4055sf-81578758cn', 3750000, 0, '17', '2020-07-06__628629378-kinh-thoi-trang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:54:22', NULL),
(242, 'K??nh m??t Michael Kors MK-2045F-3177/11', 100, 0, 'kinh-mat-michael-kors-mk-2045f-31771155cn', 3250000, 0, '18', '2020-07-06__1266077480-475932211-knh-mk9.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:55:25', NULL),
(243, 'K??NH M??T MICHAEL KORS MK-1021-1116/7J', 100, 0, 'kinh-mat-michael-kors-mk-1021-11167j53cn', 42500000, 0, '18', '2020-07-06__685321096-kinh-mat-nu-thoi-trang.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:56:09', NULL),
(244, 'K??nh m??t Michael Kors MK-1029-1026/R1', 100, 0, 'kinh-mat-michael-kors-mk-1029-1026r152cn', 3750000, 0, '18', '2020-07-06__601909787-1552898204-knh-mk10.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:56:32', NULL),
(245, 'K??nh m??t Michael Kors MK-2056-3270/13', 100, 0, 'kinh-mat-michael-kors-mk-2056-32701350cn', 3750000, 0, '18', '2020-07-06__831442660-940018221-knh-mk11.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:56:53', NULL),
(246, 'K??nh m??t Michael Kors MK-2103-3781/13', 100, 0, 'kinh-mat-michael-kors-mk-2103-37811356cn', 3950000, 0, '18', '2020-07-06__929984254-276019602-knh-mk17.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:57:14', NULL),
(247, 'K??NH M??T MICHAEL KORS MK-1034-3336/13', 100, 0, 'kinh-mat-michael-kors-mk-1034-33361353cn', 3750000, 0, '18', '2020-07-06__667833542-kinh-mat1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:57:37', NULL),
(248, 'K??nh m??t Michael Kors MK-2068-3354/6J', 100, 0, 'kinh-mat-michael-kors-mk-2068-33546j58cn', 3750000, 0, '18', '2020-07-06__891366303-6749772-knh-mk21.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:57:57', NULL),
(249, 'K??NH M??T MICHAEL KORS MK-2068-3352/2C', 100, 0, 'kinh-mat-michael-kors-mk-2068-33522c58cn', 3750000, 0, '18', '2020-07-06__2046519779-kinh-mat2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:58:14', NULL),
(250, 'K??nh m??t Michael Kors MK-1045-1014/11', 100, 0, 'kinh-mat-michael-kors-mk-1045-10141156cn', 3750000, 0, '18', '2020-07-06__187864407-1101457636-knh-mk22.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:58:33', NULL),
(251, 'K??NH M??T MICHAEL KORS MK-1025-1201/7J', 100, 0, 'kinh-mat-michael-kors-mk-1025-12017j52cn', 3650000, 0, '18', '2020-07-06__1255730059-kinh-mat4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:58:49', NULL),
(252, 'K??NH M??T VOGUE VO-5215S-W44/11', 100, 0, 'kinh-mat-vogue-vo-5215s-w441151cn', 2750000, 0, '19', '2020-07-06__1911372573-kinh-mat3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:59:20', NULL),
(253, 'K??NH M??T VOGUE VO-4029SD-848/6G', 100, 0, 'kinh-mat-vogue-vo-4029sd-8486g62cn', 1950000, 0, '19', '2020-07-06__1896543895-kinh-mat1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 04:59:39', NULL),
(254, 'K??NH M??T VOGUE VO-5271SF-W656/73', 100, 0, 'kinh-mat-vogue-vo-5271sf-w6567355cn', 2750000, 0, '19', '2020-07-06__22843679-kinh-mat2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:00:06', NULL),
(255, 'K??NH M??T VOGUE VO-5230S-W44/11', 100, 0, 'kinh-mat-vogue-vo-5230s-w441154cn', 2950000, 0, '19', '2020-07-06__2122002248-kinh-mat4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:00:26', NULL),
(256, 'K??nh m??t VOGUE VO-4080S-323/87', 100, 0, 'kinh-mat-vogue-vo-4080s-3238758cn', 2950000, 0, '19', '2020-07-06__897610600-knh-mt-chnh-hng17.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:00:58', NULL),
(257, 'K??NH M??T VOGUE VO-4029SD-548/87', 100, 0, 'kinh-mat-vogue-vo-4029sd-5488762cn', 1950000, 0, '19', '2020-07-06__290489977-kinh-mat5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:01:29', NULL),
(258, 'K??nh m??t VOGUE VO-5215S-W656/13', 100, 0, 'kinh-mat-vogue-vo-5215s-w6561351cn', 2750000, 0, '19', '2020-07-06__1442249208-knh-mt-n.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:01:54', NULL),
(259, 'K??nh m??t VOGUE VO-5092BF-2478/36', 100, 0, 'kinh-mat-vogue-vo-5092bf-24783655cn', 2750000, 0, '20', '2020-07-06__1925371351-knh-mt-n2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:02:17', NULL),
(260, 'K??nh m??t VOGUE VO-4080S-848/5A', 100, 0, 'kinh-mat-vogue-vo-4080s-8485a58cn', 2950000, 0, '19', '2020-07-06__263924659-knh-mt-n4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:02:38', NULL),
(261, 'K??nh m??t VOGUE VO-4081S-323/7A', 100, 0, 'kinh-mat-vogue-vo-4081s-3237a55cn', 2950000, 0, '19', '2020-07-06__120182993-knh-mt-n5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:02:58', NULL),
(262, 'G???ng k??nh V-IDOL F-IDO V8054-SBK', 100, 0, 'gong-kinh-v-idol-f-ido-v8054-sbk', 340000, 0, '20', '2020-07-06__139260146-knh-mt-chnh-hng1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:03:43', NULL),
(263, 'G???ng k??nh V-IDOL F-IDO 8093-MBK', 100, 0, 'gong-kinh-v-idol-f-ido-8093-mbk', 340000, 0, '20', '2020-07-06__1472290258-knh-mt-chnh-hng2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:04:04', NULL),
(264, 'G???ng k??nh V-IDOL F-IDO 8093-SBK', 100, 0, 'gong-kinh-v-idol-f-ido-8093-sbk', 340000, 0, '20', '2020-07-06__534102870-knh-mt-chnh-hng3.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:04:39', NULL),
(265, 'G???ng k??nh V-IDOL F-IDO 8093-SBG', 100, 0, 'gong-kinh-v-idol-f-ido-8093-sbg', 340000, 0, '20', '2020-07-06__1728317575-knh-mt-chnh-hng4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:04:58', NULL),
(266, 'G???ng k??nh V-IDOL F-IDO V8062-STBK', 100, 0, 'gong-kinh-v-idol-f-ido-v8062-stbk', 340000, 0, '20', '2020-07-06__1733892529-16.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:05:22', NULL),
(267, 'G???ng k??nh V-IDOL F-IDO V8062-SGR', 100, 0, 'gong-kinh-v-idol-f-ido-v8062-sgr', 340000, 0, '20', '2020-07-06__127161004-17.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:05:44', NULL),
(268, 'G???ng k??nh V-IDOL F-IDO V8109-SPU', 100, 0, 'gong-kinh-v-idol-f-ido-v8109-spu', 340000, 0, '20', '2020-07-06__570770966-28.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:06:02', NULL),
(269, 'G???ng k??nh V-IDOL F-IDO V8109-SGR', 100, 0, 'gong-kinh-v-idol-f-ido-v8109-sgr', 340000, 0, '20', '2020-07-06__183689257-29.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:06:26', NULL),
(270, 'G???ng k??nh V-IDOL F-IDO V8054-SGR', 100, 0, 'gong-kinh-v-idol-f-ido-v8054-sgr', 340000, 0, '20', '2020-07-06__212447963-30.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:06:47', NULL),
(271, 'G???ng k??nh Diamond D DD-XS-X8701-50/C1', 100, 0, 'gong-kinh-diamond-d-dd-xs-x8701-50c1', 1350000, 0, '21', '2020-07-06__dd-xs-x8701-50-c1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:07:45', NULL),
(272, 'G???ng k??nh Diamond D DD-XS-X8711-52/C5', 100, 0, 'gong-kinh-diamond-d-dd-xs-x8711-52c5', 1350000, 0, '21', '2020-07-06__dd-xs-x8711-52-c5.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:08:06', NULL),
(273, 'G???ng k??nh Diamond D DD-XS-8603-50/C1', 100, 0, 'gong-kinh-diamond-d-dd-xs-8603-50c1', 1350000, 0, '21', '2020-07-06__dd-xs-8603-50-c1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:08:28', NULL),
(274, 'G???ng k??nh Diamond D DD-XS-X8702-52/C1', 100, 0, 'gong-kinh-diamond-d-dd-xs-x8702-52c1', 1350000, 0, '24', '2020-07-06__dd-xs-x8702-52-c1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:08:51', NULL),
(275, 'G???ng k??nh Diamond D DD-XS-X8702-52/C4', 100, 0, 'gong-kinh-diamond-d-dd-xs-x8702-52c4', 1350000, 120000, '21', '2020-07-06__dd-xs-x8702-52-c4.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:09:13', NULL),
(276, 'G???ng k??nh Diamond D DD-XS-X8702-52/C2', 100, 0, 'gong-kinh-diamond-d-dd-xs-x8702-52c2', 1350000, 0, '21', '2020-07-06__dd-xs-x8702-52-c2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:09:44', NULL),
(277, 'G???NG K??NH PHILIPPE AUGUSTE PA-8562-52/C2', 100, 0, 'gong-kinh-philippe-auguste-pa-8562-52c2', 1955000, 0, '22', '2020-07-06__1939203632-kinh-mat-thoi-trang-1.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:10:28', NULL),
(278, 'G???NG K??NH PHILIPPE AUGUSTE PA-8908-51/C1', 100, 0, 'gong-kinh-philippe-auguste-pa-8908-51c1', 1955000, 0, '22', '2020-07-06__1490411110-kinh-mat-thoi-trang-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:10:56', NULL),
(279, 'G???NG K??NH PHILIPPE AUGUSTE PA-8903-53/C1', 100, 0, 'gong-kinh-philippe-auguste-pa-8903-53c1', 1955000, 120000, '22', '2020-07-06__1891040689-gong-kinh-2.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-07-05 05:11:19', NULL),
(281, 'FEAFA', 100, 0, 'feafa', 13314, 0, '19', '2020-09-24__b-sale.jpg', 0, 0, 1, 1, 0, '??ang c???p nh???t', 'Content', 0, '', 5, '1', '2020-09-23 05:42:44', '2020-09-23 09:36:06'),
(282, 'faefae', 100, 0, 'faefae', 25425, 3, '1', '2021-01-20__apple-watch-s3-gps-42mm-vien-nhom-day-cao-su-denct-600x600.png', 0, 0, 1, 1, 0, '??ang c???p nh???t', '<p>Content</p>', 0, 'trg,srgrsg', 5, NULL, '2021-01-19 09:46:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `al_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `al_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `al_name`, `al_slug`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'address.png', '2020-09-24__addresspng.png', 281, '2020-09-23 19:45:49', NULL),
(2, 'AriesGold.jpg', '2020-09-24__ariesgoldjpg.jpg', 281, '2020-09-23 19:45:49', NULL),
(3, 'b_dayda1.jpg', '2020-09-24__b-dayda1jpg.jpg', 281, '2020-09-23 19:45:49', NULL),
(4, 'b_dhnam.jpg', '2020-09-24__b-dhnamjpg.jpg', 281, '2020-09-23 19:45:49', NULL),
(5, 'b_dayda1.jpg', '2020-09-24__b-dayda1jpg.jpg', 281, '2020-09-23 23:22:10', NULL),
(7, 'b_dhnu.jpg', '2020-09-24__b-dhnujpg.jpg', 281, '2020-09-23 23:22:10', NULL),
(8, 'b_dhnam.jpg', '2020-09-24__b-dhnamjpg.jpg', 281, '2020-09-23 23:35:56', NULL),
(9, 'b_dhnam.jpg', '2020-09-24__b-dhnamjpg.jpg', 281, '2020-09-23 23:36:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_keywords`
--

CREATE TABLE `product_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` bigint(20) UNSIGNED NOT NULL,
  `pk_keyword_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` bigint(20) UNSIGNED NOT NULL,
  `r_product_id` bigint(20) UNSIGNED NOT NULL,
  `r_number` int(11) NOT NULL DEFAULT 0,
  `r_status` int(11) NOT NULL DEFAULT 0,
  `r_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` bigint(20) UNSIGNED NOT NULL,
  `tst_total_money` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` int(11) NOT NULL DEFAULT 1,
  `tst_type` int(11) NOT NULL DEFAULT 1,
  `tst_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `provider`, `provider_id`, `email`, `phone`, `address`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 'Satosis', NULL, NULL, 'user@gmail.com', '0948561668', NULL, '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, NULL, '2020-09-12 13:11:30', NULL),
(14, 'H??ng Nguy???n', 'google', '100195086957714365762', 'hung0913003358@gmail.com', NULL, NULL, NULL, NULL, NULL, '2020-09-14 18:58:37', '2020-09-14 18:58:37'),
(17, 'John Doe', NULL, NULL, 'johndoe@gmail.com', '0948561669', NULL, '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, NULL, '2020-09-17 19:24:42', NULL),
(18, 'Peter', NULL, NULL, 'peter@gmail.com', '12345678', NULL, '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, NULL, '2020-09-25 10:15:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` bigint(20) UNSIGNED NOT NULL,
  `uf_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyword`
--
ALTER TABLE `keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_od_transaction_id_foreign` (`od_transaction_id`),
  ADD KEY `orders_od_product_id_foreign` (`od_product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_keywords`
--
ALTER TABLE `product_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_keywords_pk_product_id_foreign` (`pk_product_id`),
  ADD KEY `product_keywords_pk_keyword_id_foreign` (`pk_keyword_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_r_user_id_foreign` (`r_user_id`),
  ADD KEY `ratings_r_product_id_foreign` (`r_product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_foreign` (`tst_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_favourite_uf_product_id_foreign` (`uf_product_id`),
  ADD KEY `user_favourite_uf_user_id_foreign` (`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `keyword`
--
ALTER TABLE `keyword`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_keywords`
--
ALTER TABLE `product_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_od_product_id_foreign` FOREIGN KEY (`od_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `orders_od_transaction_id_foreign` FOREIGN KEY (`od_transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_keywords`
--
ALTER TABLE `product_keywords`
  ADD CONSTRAINT `product_keywords_pk_keyword_id_foreign` FOREIGN KEY (`pk_keyword_id`) REFERENCES `keyword` (`id`),
  ADD CONSTRAINT `product_keywords_pk_product_id_foreign` FOREIGN KEY (`pk_product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_r_product_id_foreign` FOREIGN KEY (`r_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `ratings_r_user_id_foreign` FOREIGN KEY (`r_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_tst_user_id_foreign` FOREIGN KEY (`tst_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD CONSTRAINT `user_favourite_uf_product_id_foreign` FOREIGN KEY (`uf_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `user_favourite_uf_user_id_foreign` FOREIGN KEY (`uf_user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
