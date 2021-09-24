-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 09:33 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhirdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'accusamus sit', 'accusamus-sit', '2021-04-26 09:14:18', '2021-04-26 09:14:18'),
(2, 'corrupti eveniet', 'corrupti-eveniet', '2021-04-26 09:14:18', '2021-04-26 09:14:18'),
(3, 'modi unde', 'modi-unde', '2021-04-26 09:14:18', '2021-04-26 09:14:18'),
(4, 'itaque non', 'itaque-non', '2021-04-26 09:14:18', '2021-04-26 09:14:18'),
(5, 'illo explicabo', 'illo-explicabo', '2021-04-26 09:14:18', '2021-04-26 09:14:18'),
(6, 'natus commodi', 'natus-commodi', '2021-04-26 09:14:18', '2021-04-26 09:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'ali', 'demo@gmail.com', '02933482342', 'bagus', '2021-07-17 06:53:22', '2021-07-17 06:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,3) NOT NULL,
  `cart_value` decimal(8,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(4, 'CUT100', 'fixed', '100.000', '500.000', '2021-06-06 08:46:09', '2021-06-07 09:01:16', '2021-06-06'),
(5, 'KUY200', 'fixed', '200.000', '1000.000', '2021-06-06 09:17:39', '2021-06-06 09:17:39', '2021-06-07'),
(6, 'KUY30', 'fixed', '30.000', '50.000', '2021-06-07 08:46:39', '2021-06-07 08:56:25', '2021-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1.2.3.4.32', 3, '2021-05-03 18:47:45', '2021-05-07 10:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'first title', 'first sub', '120', 'http://127.0.0.1:8000/shop', '1620059921.jpg', 1, '2021-05-03 09:14:59', '2021-06-26 08:02:36'),
(4, 'Murah Tanpa Cicil', 'Murah Tanpa Cicil sub', '900', 'http://127.0.0.1:8000/shop', '1620060264.jpg', 1, '2021-05-03 09:44:24', '2021-05-03 09:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_04_25_154203_create_sessions_table', 1),
(7, '2021_04_26_144828_create_categories_table', 2),
(8, '2021_04_26_150008_create_products_table', 2),
(9, '2021_05_03_113350_create_home_sliders_table', 3),
(10, '2021_05_03_134316_create_home_sliders_table', 4),
(11, '2021_05_03_183948_create_home_categories_table', 5),
(12, '2021_05_08_143929_create_sales_table', 6),
(13, '2021_05_11_191341_create_coupons_table', 7),
(14, '2021_06_07_142918_add_expiry_date_to_coupons_table', 8),
(15, '2021_06_08_144927_create_orders_table', 9),
(16, '2021_06_08_145142_create_order_items_table', 9),
(17, '2021_06_08_145336_create_shippings_table', 9),
(18, '2021_06_08_145419_create_transactions_table', 9),
(19, '2021_07_13_153231_add_delivered_canceled_date_to_orders_table', 10),
(20, '2021_07_15_070820_create_reviews_table', 11),
(21, '2021_07_15_072231_add_rstatus_to_order_items_table', 11),
(22, '2021_07_16_153255_create_contacts_table', 12),
(23, '2021_07_17_142313_create_settings_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,3) NOT NULL,
  `discount` decimal(8,3) NOT NULL DEFAULT 0.000,
  `tax` decimal(8,3) NOT NULL,
  `total` decimal(8,3) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(19, 1, '23.000', '0.000', '0.000', '23.331', 'adi', 'ali', '0832474356', 'demo@gmail.com', 'tesline1', 'tesline11324', 'Semarang', 'Jawa Tengah', 'Indonesia', '54632', 'ordered', 1, '2021-07-11 10:25:07', '2021-07-11 10:25:07', NULL, NULL),
(20, 1, '23.000', '0.000', '0.000', '23.870', 'muhammad', 'budi', '12134255', 'demo@gmail.com', 'tesline1', 'tesline113', 'Semarang', 'Jawa Tengah', 'Indonesia', '13245', 'ordered', 1, '2021-07-11 10:47:21', '2021-07-11 10:47:21', NULL, NULL),
(21, 2, '23.000', '0.000', '0.000', '23.213', 'muhammad', 'ali', '0293828478', 'user@gmail.com', 'tesline1', 'tesline1213', 'Semarang', 'Jawa Tengah', 'Indonesia', '1234', 'canceled', 0, '2021-07-13 08:25:24', '2021-07-13 09:23:49', NULL, '2021-07-13'),
(22, 2, '23.000', '0.000', '0.000', '23.633', 'adi', 'ad', '03948234', 'user@gmail.com', 'tesline1', 'tesline12', 'Semarang', 'Jawa Tengah', 'Indonesia', '13245', 'delivered', 1, '2021-07-13 08:27:50', '2021-07-13 08:58:59', '2021-07-13', '2021-07-13'),
(23, 2, '326.000', '0.000', '0.000', '326.917', 'muhammad', 'ali', '231256785', 'demo@gmail.com', 'tesline1', 'tesline1', 'Tuban', 'Jawa Timur', 'Indonesia', '245678', 'canceled', 0, '2021-07-13 09:46:59', '2021-07-13 09:47:33', NULL, '2021-07-13'),
(24, 4, '349.000', '0.000', '0.000', '349.288', 'Ikhsan', 'Achmad', '028286375341', 'ikhsanahmad009@gmail.com', 'tesline1', 'tesline2', 'Semarang', 'Jawa Tengah', 'Indonesia', '50218', 'ordered', 0, '2021-08-02 01:49:49', '2021-08-02 01:49:49', NULL, NULL),
(25, 4, '441.000', '0.000', '0.000', '441.963', 'Ikhsan', 'Achmad', '0839237213', 'ikhsanachmad12@gmail.com', 'tesline1', 'tesline1', 'Semarang', 'Jawa Tengah', 'Indonesia', '38430', 'ordered', 0, '2021-08-02 03:31:09', '2021-08-02 03:31:09', NULL, NULL),
(26, 4, '349.000', '0.000', '0.000', '349.652', 'muhammad', 'ali', '02933482342', 'ikhsanachmad12@gmail.com', 'tesline1', 'tesline1', 'Semarang', 'Jawa Tengah', 'Indonesia', '82121', 'ordered', 0, '2021-08-02 03:32:55', '2021-08-02 03:32:55', NULL, NULL),
(27, 2, '349.000', '0.000', '0.000', '349.984', 'muhammad', 'budi', '02933482342', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Tuban', 'Jawa Timur', 'Indonesia', '02831', 'ordered', 0, '2021-08-02 07:27:16', '2021-08-02 07:27:16', NULL, NULL),
(28, 2, '326.000', '0.000', '0.000', '326.717', 'adi', 'ali', '082167314', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Tuban', 'Jawa Timur', 'Indonesia', '92348', 'ordered', 0, '2021-08-02 07:30:24', '2021-08-02 07:30:24', NULL, NULL),
(29, 2, '23.000', '0.000', '0.000', '23.125', 'muhammad', 'ali', '02933482342', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Semarang', 'Jawa Tengah', 'Indonesia', '92381', 'ordered', 0, '2021-08-02 07:33:05', '2021-08-02 07:33:05', NULL, NULL),
(30, 5, '326.000', '0.000', '0.000', '326.482', 'muhammad', 'budi', '0869595312', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Semarang', 'Jawa Tengah', 'Indonesia', '83491', 'ordered', 0, '2021-08-02 07:43:42', '2021-08-02 07:43:42', NULL, NULL),
(31, 5, '23.000', '0.000', '0.000', '23.892', 'muhammad', 'ali', '02933482342', 'ikhsanachmad12@gmail.com', 'tesline1', 'tesline1', 'Semarang', 'Jawa Tengah', 'Indonesia', '324235', 'ordered', 0, '2021-08-02 08:20:12', '2021-08-02 08:20:12', NULL, NULL),
(32, 5, '23.000', '0.000', '0.000', '23.979', 'muhammad', 'budi', '082372641', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Tuban', 'Jawa Timur', 'Indonesia', '213423', 'ordered', 0, '2021-08-02 09:07:37', '2021-08-02 09:07:37', NULL, NULL),
(33, 5, '418.000', '0.000', '0.000', '418.844', 'adi', 'ali', '0826172912', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Semarang', 'Jawa Tengah', 'Indonesia', '23231', 'ordered', 0, '2021-08-02 09:15:52', '2021-08-02 09:15:52', NULL, NULL),
(34, 5, '326.000', '0.000', '0.000', '326.988', 'muhammad', 'budi', '02933482342', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Semarang', 'Jawa Tengah', 'Indonesia', '12345', 'ordered', 0, '2021-08-02 09:48:48', '2021-08-02 09:48:48', NULL, NULL),
(35, 5, '326.000', '0.000', '0.000', '326.522', 'muhammad', 'budi', '02933482342', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Semarang', 'Jawa Tengah', 'Indonesia', '23214', 'ordered', 0, '2021-08-02 10:05:58', '2021-08-02 10:05:58', NULL, NULL),
(36, 5, '326.000', '0.000', '0.000', '326.522', 'muhammad', 'budi', '02933482342', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Tuban', 'Jawa Timur', 'Indonesia', '12354', 'ordered', 0, '2021-08-02 10:07:35', '2021-08-02 10:07:35', NULL, NULL),
(37, 5, '326.000', '0.000', '0.000', '326.522', 'muhammad', 'budi', '02933482342', 'sarjanakuntan@gmail.com', 'tesline1', 'tesline1', 'Semarang', 'Jawa Tengah', 'Indonesia', '02942', 'ordered', 0, '2021-08-02 10:09:31', '2021-08-02 10:09:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(19, 1, 19, '23.000', 1, '2021-07-11 10:25:07', '2021-07-11 10:25:07', 0),
(20, 1, 20, '23.000', 1, '2021-07-11 10:47:21', '2021-07-11 10:47:21', 0),
(21, 1, 21, '23.000', 1, '2021-07-13 08:25:24', '2021-07-13 08:25:24', 0),
(22, 1, 22, '23.000', 1, '2021-07-13 08:27:50', '2021-07-15 01:51:05', 1),
(23, 2, 23, '326.000', 1, '2021-07-13 09:46:59', '2021-07-13 09:46:59', 0),
(24, 1, 24, '23.000', 1, '2021-08-02 01:49:49', '2021-08-02 01:49:49', 0),
(25, 2, 24, '326.000', 1, '2021-08-02 01:49:49', '2021-08-02 01:49:49', 0),
(26, 1, 25, '23.000', 1, '2021-08-02 03:31:09', '2021-08-02 03:31:09', 0),
(27, 2, 25, '326.000', 1, '2021-08-02 03:31:09', '2021-08-02 03:31:09', 0),
(28, 3, 25, '92.000', 1, '2021-08-02 03:31:09', '2021-08-02 03:31:09', 0),
(29, 1, 26, '23.000', 1, '2021-08-02 03:32:55', '2021-08-02 03:32:55', 0),
(30, 2, 26, '326.000', 1, '2021-08-02 03:32:55', '2021-08-02 03:32:55', 0),
(31, 2, 27, '326.000', 1, '2021-08-02 07:27:16', '2021-08-02 07:27:16', 0),
(32, 1, 27, '23.000', 1, '2021-08-02 07:27:16', '2021-08-02 07:27:16', 0),
(33, 2, 28, '326.000', 1, '2021-08-02 07:30:24', '2021-08-02 07:30:24', 0),
(34, 1, 29, '23.000', 1, '2021-08-02 07:33:05', '2021-08-02 07:33:05', 0),
(35, 2, 30, '326.000', 1, '2021-08-02 07:43:42', '2021-08-02 07:43:42', 0),
(36, 1, 31, '23.000', 1, '2021-08-02 08:20:12', '2021-08-02 08:20:12', 0),
(37, 1, 32, '23.000', 1, '2021-08-02 09:07:37', '2021-08-02 09:07:37', 0),
(38, 2, 33, '326.000', 1, '2021-08-02 09:15:52', '2021-08-02 09:15:52', 0),
(39, 3, 33, '92.000', 1, '2021-08-02 09:15:52', '2021-08-02 09:15:52', 0),
(40, 2, 34, '326.000', 1, '2021-08-02 09:48:48', '2021-08-02 09:48:48', 0),
(41, 2, 35, '326.000', 1, '2021-08-02 10:05:58', '2021-08-02 10:05:58', 0),
(42, 2, 36, '326.000', 1, '2021-08-02 10:07:35', '2021-08-02 10:07:35', 0),
(43, 2, 37, '326.000', 1, '2021-08-02 10:09:31', '2021-08-02 10:09:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(15,3) NOT NULL,
  `sale_price` decimal(8,3) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'iure porro', 'iure-porro', 'Quis ducimus et aliquam est. Est provident nihil aut qui aliquid. Maiores adipisci rem voluptatum et.', 'Laborum facilis labore praesentium possimus ut. Neque vero voluptatem voluptas mollitia sunt. Amet cupiditate voluptatem qui est. Consequuntur voluptas tempora nam ratione. Qui iure velit ipsa. Est rem sed veritatis quia omnis aspernatur laborum in. Quae velit iure aut deserunt sed. Temporibus et laudantium est doloribus quae enim. Ad placeat atque temporibus temporibus quis. Est velit vitae ut excepturi consequatur. Facere ea quo amet doloremque consequuntur in non eligendi.', '23.000', '12.000', 'FASH107', 'instock', 0, 138, 'fashion_6.jpg', NULL, 1, '2021-04-26 09:17:49', '2021-05-07 10:54:54'),
(2, 'qui dolores', 'qui-dolores', 'Quo tenetur tempore voluptatem ad qui quibusdam id. Voluptas cumque nam ut dolor amet. Blanditiis hic accusamus et blanditiis voluptas quibusdam explicabo.', 'Eligendi dolores eum rerum aut omnis. Et minima sint libero culpa. Recusandae libero dolorum debitis velit doloremque ex. Excepturi officia beatae asperiores omnis autem ea nulla ut. Repudiandae ut aspernatur minima ex aut. Rerum nostrum placeat voluptatem in qui. Ipsum et quidem et dolores inventore veniam aut aut. Neque assumenda nihil vel ex facere distinctio. Quia tempora totam sed iste illum. Culpa autem pariatur vel odit. Autem repellat dolores dolorum nesciunt.', '326.000', '150.000', 'FASH338', 'instock', 0, 157, 'fashion_3.jpg', NULL, 1, '2021-04-26 09:17:49', '2021-05-07 10:56:00'),
(3, 'blanditiis eos', 'blanditiis-eos', 'Ullam possimus magnam numquam ducimus molestiae at quasi. Exercitationem esse explicabo sint illo omnis facilis aut. Esse eum officia odit.', 'Animi sunt aut consectetur blanditiis. Eaque est occaecati eum in. Veritatis veritatis rerum ut cum doloremque. Excepturi tempora ut aut assumenda unde ut. A quo expedita voluptatem odio. Natus illo delectus quae ipsum ratione sunt voluptatem. Est eos dolorem autem autem. Ut aliquam necessitatibus consequatur qui.', '92.000', '45.000', 'FASH492', 'instock', 0, 119, 'fashion_9.jpg', NULL, 2, '2021-04-26 09:17:49', '2021-05-07 10:56:15'),
(4, 'recusandae qui', 'recusandae-qui', 'Aut sit quos nulla. Laudantium dolorem vel est vitae quidem nam dicta. Mollitia quas neque fugit.', 'Odio ut officiis aut dolor et aut. Id placeat suscipit at in ullam odio. Tempora occaecati itaque laboriosam qui voluptatem est inventore. Culpa commodi natus et repellendus temporibus amet. Rerum at illo omnis fuga. Sit distinctio ut et aliquam. Aut voluptates laboriosam et et recusandae et. Fugit provident ut temporibus beatae facere. Eum ad debitis nesciunt non dolorem cum. Et eaque quas et inventore tempore.', '486.000', '432.000', 'FASH367', 'instock', 0, 130, 'fashion_2.jpg', NULL, 4, '2021-04-26 09:17:49', '2021-05-07 10:56:31'),
(5, 'est eaque', 'est-eaque', 'Iste nihil corporis magnam sit mollitia perferendis. Quod quia architecto ab eum aliquam. Amet nesciunt in quis sit. Repellendus rerum commodi ut nemo sit.', 'Vel molestias aut maiores nisi. Enim eos consectetur dolorem fugiat inventore et aut. Exercitationem explicabo facere placeat odit vel et aspernatur quas. Reiciendis dolor aperiam et consequuntur sed. Et vitae animi ut cupiditate. Debitis accusamus eius delectus sint consequatur accusamus. Error sit dolore dolore est. Vel sed quia cum.', '313.000', '212.000', 'FASH134', 'instock', 0, 197, 'fashion_7.jpg', NULL, 1, '2021-04-26 09:17:49', '2021-05-08 09:48:12'),
(6, 'quo explicabo', 'quo-explicabo', 'Harum dolorum ea autem vero voluptatem totam eaque. Voluptatem officia ut et dolore omnis ut.', 'Modi et ipsa et quos laudantium. Quod enim laudantium sint voluptatem autem omnis cum. Nihil quas aperiam dolorum. Dolorem aperiam optio aut velit consequatur modi in. Architecto quia sit tenetur fuga sequi autem dolore qui. Odit et illo consequuntur ab voluptas ut. Consequatur minima aut voluptatem distinctio eaque. Eveniet explicabo quos sit. Ut est eos tempora accusamus rerum officia. Maiores odit voluptatem cupiditate sed ad fugiat architecto. Fugiat et dolorum provident temporibus.', '458.000', '342.000', 'FASH236', 'instock', 0, 105, 'fashion_10.jpg', NULL, 1, '2021-04-26 09:17:49', '2021-05-08 09:48:29'),
(7, 'qui nulla', 'qui-nulla', 'Voluptatem et sint quasi omnis. Ut cupiditate id optio laborum. Nisi ab enim itaque similique. Delectus itaque illum aut consequatur sit nihil totam.', 'Molestias doloribus magni illum animi deleniti. Est unde qui fugiat excepturi. Perferendis ratione odit qui dolores non ea molestiae earum. Recusandae commodi nesciunt voluptas libero fugiat. Et similique tempore sed tempore voluptatem repellat maiores consequuntur. Adipisci odio dolores ea sint ea. Dignissimos inventore aut aliquid ratione. Sunt dolor numquam sed magnam ab pariatur dignissimos.', '368.000', NULL, 'FASH100', 'instock', 0, 122, 'fashion_5.jpg', NULL, 3, '2021-04-26 09:17:49', '2021-04-26 09:17:49'),
(8, 'ratione velit', 'ratione-velit', 'Dolores minima porro perspiciatis tempore est consequatur deserunt. Eos quasi at ipsum quidem voluptas odit.', 'Aliquam qui eligendi corrupti explicabo. Qui dolor dolor eligendi voluptatem soluta aliquam. Deleniti consequuntur quia recusandae. Officia eveniet iure culpa adipisci distinctio facilis sapiente. Maiores ut qui facilis. Et voluptas mollitia aut dolorum corrupti eius. Et ut ab nemo et dolorem. Quo laudantium voluptate quis tempore voluptatem nesciunt provident. Saepe in excepturi in ea minima qui. Quasi nam ratione consequatur ipsum ab molestiae.', '221.000', NULL, 'FASH387', 'instock', 0, 146, 'fashion_1.jpg', NULL, 4, '2021-04-26 09:17:49', '2021-04-26 09:17:49'),
(9, 'eaque et', 'eaque-et', 'Commodi maiores ipsam molestiae quidem dolorum incidunt. Et quia itaque ad ut aut nulla. Sunt asperiores sapiente sed.', 'Iure tempore unde mollitia quibusdam nobis provident harum. Laudantium cum totam quia ut sed sequi aut. Atque ipsa explicabo unde velit. Et aliquid mollitia eius modi a. Eos alias recusandae at id. Corporis aut sint vero qui excepturi ea possimus. Voluptatem ut tempora ratione. Quasi quas dolores cupiditate ipsam facere quas ut.', '96.000', NULL, 'FASH406', 'instock', 0, 174, 'fashion_4.jpg', NULL, 4, '2021-04-26 09:17:49', '2021-04-26 09:17:49'),
(10, 'sit nostrum', 'sit-nostrum', 'Quis qui aliquid excepturi voluptas quo veniam voluptatum tenetur. Hic praesentium natus quod quia ipsa dicta. Vero voluptatem consequuntur quo libero. Incidunt dolor fugiat ratione sequi.', 'Amet sunt unde aut sequi quis labore. Doloremque harum alias modi id fugiat quisquam. Neque quis fuga voluptas quas voluptates. Molestiae sed ut omnis recusandae cupiditate est. Dolores provident aut hic vel enim. Illo aut enim sit veritatis atque iusto est consectetur. Molestiae odit adipisci vel autem nam eaque corrupti. In aut consequatur voluptate impedit rerum qui odio. Blanditiis voluptatem et dolorem id. Sit modi dicta architecto. Nemo aliquam quidem eos temporibus perspiciatis natus.', '133.000', NULL, 'FASH214', 'instock', 0, 159, 'fashion_8.jpg', NULL, 2, '2021-04-26 09:17:49', '2021-04-26 09:17:49'),
(60, 'Kaos Gucci', 'kaos-gucci', '<p><strong>Color </strong>: white</p>\n<p><strong>Metrials </strong>: Catton</p>', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">Bahan ➡️ Cotton Combed 30s </span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">Design ➡️ Full Print</span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">Ukuran ➡️ M - L - XL HALUS - LEMBUT - ADEM </span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">MENYERAP KERINGAT &amp; TIDAK MUDAH BERBAU </span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">➖➖➖➖➖➖➖➖➖➖➖ </span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">ADEM &amp; NYAMAN DIPAKAI: </span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">➡️Untuk Tidur</span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">➡️Untuk Daleman </span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">➡️Untuk Santai </span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">➡️Untuk Jalan 2x </span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">➡️Untuk Kuliah / Kerja </span></p>\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space: pre-wrap; background-color: #ffffff;\">➡️Untuk Aktifitas Sehari 2x</span></p>', '32.000', '0.000', 'FASH283', 'instock', 0, 12, '1624719030.jpg', ',16267933370.jpg,16267933371.jpg', 1, '2021-05-09 02:54:55', '2021-07-20 08:02:17'),
(62, 'Kaos Balenciaga', 'kaos-balenciaga', '<p>kaos balenciaga KW&nbsp;</p>', '<p>Murah tapi bukan asli</p>', '30.000', '10.000', 'FASH124', 'instock', 0, 50, '1626590707.jpg', ',16265907070.jpg,16265907071.jpg,16265907072.jpg', 1, '2021-07-17 23:45:07', '2021-07-17 23:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'bagus', 22, '2021-07-15 01:50:46', '2021-07-15 01:50:46'),
(2, 4, 'bagus', 22, '2021-07-15 01:51:05', '2021-07-15 01:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2021-07-25 12:00:00', 0, NULL, '2021-07-25 04:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('rurm96CUGvqoJIF3Iy6V4E53ktsIWjFarUci3o1f', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiNk1jMmJlbERZeTBSRTY5RHhWODk0WWxMUlB2bWdrblVGU3B3aTdDMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcml2YWN5LXBvbGljeSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czo1OiJ1dHlwZSI7czozOiJVU1IiO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRzVYRVkvQWpaRlJucWZPVEM2d0JBZVJLVjNWNUZxdVllQlVLMnJiTk5GMGxNd2Q1ck1ETnUiO3M6NDoiY2FydCI7YToxOntzOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6ImYzYzIzZWM3NWI3NzgwNTc3MDViNmY2OTQ5ZjhmZDcwIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiZjNjMjNlYzc1Yjc3ODA1NzcwNWI2ZjY5NDlmOGZkNzAiO3M6MjoiaWQiO2k6NjA7czozOiJxdHkiO2k6MztzOjQ6Im5hbWUiO3M6MTA6Ikthb3MgR3VjY2kiO3M6NToicHJpY2UiO2Q6MzI7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjA7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fX19czo4OiJjaGVja291dCI7YTo1OntzOjg6ImRpc2NvdW50IjtpOjA7czo4OiJzdWJ0b3RhbCI7czo2OiI5Ni4wMDAiO3M6MzoidGF4IjtzOjU6IjAuMDAwIjtzOjU6InRvdGFsIjtzOjY6Ijk2LjkwMyI7czo4OiJrb2RldW5payI7aTo5MDM7fXM6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEc1WEVZL0FqWkZSbnFmT1RDNndCQWVSS1YzVjVGcXVZZUJVSzJyYk5ORjBsTXdkNXJNRE51Ijt9', 1628001728),
('Ut43M9b7qPQs6GypeSczFW6KjikGYanWGYhtA8su', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicmhGTGFvenpGMTNDdm5wTmJiRTlyNnJOV2VHRnZ6Y3dNUGxmMW9iVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkR3Ntdlo4dGVVdVhPVk9pREExdUJRTzlXUDVxUjNnb2VvaGZ0amVRLlE2WHY5bnBnWjBYNFciO30=', 1628062119);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'clambee@gmail.com', '08238267319', '08238267319', 'Tuban, Jawa Timur, Indonesia', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31687.81233023233!2d112.02535732517673!3d-6.8934092256864865!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e77a2c48649d9c1%3A0x14db680216ccc11d!2sTuban%2C%20Tuban%20Sub-District%2C%20Tuban%20Regency%2C%20East%20Java!5e0!3m2!1sen!2sid!4v1626543244613!5m2!1sen!2sid', '#', '#', '#', '#', '#', '2021-07-17 10:05:18', '2021-07-17 10:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 19, 'muhammad', 'ali', '2423525678', 'demo@gmail.com', 'tesline1', 'tesline1234', 'Tuban', 'Jawa Timur', 'Indonesia', '24235', '2021-07-11 10:25:07', '2021-07-11 10:25:07'),
(2, 20, 'adi', 'ali', '1234245', 'user@gmail.com', 'tesline1', 'tesline113', 'Tuban', 'Jawa Timur', 'Indonesia', '353523', '2021-07-11 10:47:21', '2021-07-11 10:47:21'),
(3, 22, 'muhammad', 'budi', '0293824812', 'demo@gmail.com', 'tesline1', 'tesline1521', 'Tuban', 'Jawa Timur', 'Indonesia', '23432', '2021-07-13 08:27:50', '2021-07-13 08:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 19, 'cod', 'pending', '2021-07-11 10:25:07', '2021-07-11 10:25:07'),
(7, 1, 20, 'card', 'pending', '2021-07-11 10:47:21', '2021-07-11 10:47:21'),
(8, 2, 21, 'cod', 'pending', '2021-07-13 08:25:24', '2021-07-13 08:25:24'),
(9, 2, 22, 'card', 'pending', '2021-07-13 08:27:50', '2021-07-13 08:27:50'),
(10, 2, 23, 'card', 'pending', '2021-07-13 09:46:59', '2021-07-13 09:46:59'),
(11, 4, 24, 'cod', 'pending', '2021-08-02 01:49:49', '2021-08-02 01:49:49'),
(12, 4, 25, 'cod', 'pending', '2021-08-02 03:31:09', '2021-08-02 03:31:09'),
(13, 4, 26, 'cod', 'pending', '2021-08-02 03:32:55', '2021-08-02 03:32:55'),
(14, 2, 27, 'cod', 'pending', '2021-08-02 07:27:16', '2021-08-02 07:27:16'),
(15, 2, 28, 'cod', 'pending', '2021-08-02 07:30:24', '2021-08-02 07:30:24'),
(16, 2, 29, 'cod', 'pending', '2021-08-02 07:33:05', '2021-08-02 07:33:05'),
(17, 5, 30, 'cod', 'pending', '2021-08-02 07:43:42', '2021-08-02 07:43:42'),
(18, 5, 31, 'cod', 'pending', '2021-08-02 08:20:12', '2021-08-02 08:20:12'),
(19, 5, 32, 'cod', 'pending', '2021-08-02 09:07:37', '2021-08-02 09:07:37'),
(20, 5, 33, 'cod', 'pending', '2021-08-02 09:15:52', '2021-08-02 09:15:52'),
(21, 5, 34, 'cod', 'pending', '2021-08-02 09:48:48', '2021-08-02 09:48:48'),
(22, 5, 35, 'cod', 'pending', '2021-08-02 10:05:58', '2021-08-02 10:05:58'),
(23, 5, 36, 'cod', 'pending', '2021-08-02 10:07:35', '2021-08-02 10:07:35'),
(24, 5, 37, 'cod', 'pending', '2021-08-02 10:09:31', '2021-08-02 10:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$GsmvZ8teUuXOVOiDA1uBQO9WP5qR3goeohftjeQ.Q6Xv9npgZ0X4W', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-04-25 09:31:39', '2021-04-25 09:31:39'),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$G5XEY/AjZFRnqfOTC6wBAeRKV3V5FquYeBUK2rbNNF0lMwd5rMDNu', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-04-25 09:33:20', '2021-07-28 07:43:29'),
(3, 'User2', 'user2@user.com', NULL, '$2y$10$ChGuYKwXhFjhYvOVI3iVce8nOgZqF96LoXU9RARt7/00ghyRsMbFS', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-04-25 12:01:20', '2021-04-25 12:01:20'),
(4, 'ikhsan', 'ikhsanachmad12@gmail.com', NULL, '$2y$10$iPbS0qwdsiyUGiVcmkHXP.mqBdok41DWmzCZOW9jsavEmMFpoqTG6', NULL, NULL, '673yl77bzOD9HLAw2KiDnxoz9ZCbPQSHXnjpTQa6LbXjaIIWzxmWGmR9M9ks', NULL, NULL, 'USR', '2021-07-18 00:10:31', '2021-07-18 01:10:12'),
(5, 'sarjana', 'sarjanakuntan@gmail.com', NULL, '$2y$10$MbvKkjR2tiZRUX02Rmlh1OMVuxHbN4d.CagtcYIpKGv7P4AokKiQW', NULL, NULL, 'I7sDjhc6oFTgMoj2ro4PRyeuQnUJJI1r1DJMCO0smG5baPYuq9O1bhsHQeyY', NULL, NULL, 'USR', '2021-08-02 07:42:01', '2021-08-02 08:18:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
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
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
