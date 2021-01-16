-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 03:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-01-14 03:14:37', '2021-01-14 03:14:37'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-01-14 03:14:37', '2021-01-14 03:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'order_number', 'text', 'Order Number', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 7, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"pending\":\"Pending\",\"processing\":\"Processing\",\"completed\":\"Completed\",\"decline\":\"Decline\"}}', 4),
(60, 7, 'grand_total', 'text', 'Grand Total', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'item_count', 'text', 'Item Count', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'is_paid', 'checkbox', 'Is Paid', 1, 1, 1, 1, 1, 1, '{\"on\":\"Paid\",\"off\":\"Not Paid\",\"checked\":true}', 7),
(63, 7, 'payment_method', 'select_dropdown', 'Payment Method', 1, 1, 1, 1, 1, 1, '{\"options\":{\"cash_on_delivery\":\"Cash on Delivery\",\"paypal\":\"Paypal\",\"stripe\":\"Stripe\",\"card\":\"Card\"}}', 8),
(64, 7, 'shipping_fullname', 'text', 'Shipping Fullname', 1, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'shipping_address', 'text', 'Shipping Address', 1, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'shipping_city', 'text', 'Shipping City', 1, 0, 1, 1, 1, 1, '{}', 11),
(67, 7, 'shipping_state', 'text', 'Shipping State', 1, 0, 1, 1, 1, 1, '{}', 12),
(68, 7, 'shipping_zipcode', 'text', 'Shipping Zipcode', 1, 0, 1, 1, 1, 1, '{}', 13),
(69, 7, 'shipping_phone', 'text', 'Shipping Phone', 1, 0, 1, 1, 1, 1, '{}', 14),
(70, 7, 'notes', 'text_area', 'Notes', 0, 0, 1, 1, 1, 1, '{}', 15),
(71, 7, 'billing_fullname', 'text', 'Billing Fullname', 1, 0, 1, 1, 1, 1, '{}', 16),
(72, 7, 'billing_address', 'text', 'Billing Address', 1, 0, 1, 1, 1, 1, '{}', 17),
(73, 7, 'billing_city', 'text', 'Billing City', 1, 0, 1, 1, 1, 1, '{}', 18),
(74, 7, 'billing_state', 'text', 'Billing State', 1, 0, 1, 1, 1, 1, '{}', 19),
(75, 7, 'billing_zipcode', 'text', 'Billing Zipcode', 1, 0, 1, 1, 1, 1, '{}', 20),
(76, 7, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 1, '{}', 21),
(77, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 22),
(78, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(79, 7, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24),
(80, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(82, 8, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 8, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Active\",\"off\":\"Inactive\",\"checked\":true}', 4),
(84, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 8, 'rating', 'text', 'Rating', 0, 1, 1, 1, 1, 1, '{}', 6),
(86, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(87, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(88, 8, 'shop_hasone_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(89, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(91, 9, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(92, 9, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(93, 9, 'cover_img', 'image', 'Cover Img', 0, 1, 1, 1, 1, 1, '{}', 5),
(94, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(95, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-01-14 03:14:13', '2021-01-14 03:14:13'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-01-14 03:14:13', '2021-01-14 03:14:13'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-01-14 03:14:13', '2021-01-14 03:14:13'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-01-14 03:14:35', '2021-01-14 03:14:35'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-01-14 03:14:38', '2021-01-14 03:14:38'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-01-14 03:14:41', '2021-01-14 03:14:41'),
(7, 'orders', 'orders', 'Order', 'Orders', 'voyager-buy', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-14 03:27:17', '2021-01-14 22:29:47'),
(8, 'shops', 'shops', 'Shop', 'Shops', 'voyager-shop', 'App\\Shop', '\\App\\Policies\\ShopPolicy', 'App\\Http\\Controllers\\Admin\\ShopController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-15 01:06:08', '2021-01-16 02:19:21'),
(9, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-16 05:42:49', '2021-01-16 05:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-01-14 03:14:15', '2021-01-14 03:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-01-14 03:14:15', '2021-01-14 03:14:15', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-01-14 03:14:15', '2021-01-14 03:14:15', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-01-14 03:14:15', '2021-01-14 03:14:15', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-01-14 03:14:15', '2021-01-14 03:14:15', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-01-14 03:14:15', '2021-01-14 03:14:15', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-01-14 03:14:15', '2021-01-14 03:14:15', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-01-14 03:14:16', '2021-01-14 03:14:16', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-01-14 03:14:16', '2021-01-14 03:14:16', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-01-14 03:14:16', '2021-01-14 03:14:16', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-01-14 03:14:16', '2021-01-14 03:14:16', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2021-01-14 03:14:36', '2021-01-14 03:14:36', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2021-01-14 03:14:40', '2021-01-14 03:14:40', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2021-01-14 03:14:43', '2021-01-14 03:14:43', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-01-14 03:14:49', '2021-01-14 03:14:49', 'voyager.hooks', NULL),
(15, 1, 'Orders', '', '_self', 'voyager-buy', NULL, NULL, 15, '2021-01-14 03:27:17', '2021-01-14 03:27:17', 'voyager.orders.index', NULL),
(16, 1, 'Shops', '', '_self', NULL, NULL, NULL, 16, '2021-01-15 01:06:08', '2021-01-15 01:06:08', 'voyager.shops.index', NULL),
(17, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 17, '2021-01-16 05:42:49', '2021-01-16 05:42:49', 'voyager.products.index', NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_14_063948_create_products_table', 1),
(5, '2021_01_14_103605_create_orders_table', 2),
(6, '2021_01_14_104616_create_order_items_table', 3),
(7, '2016_01_01_000000_add_voyager_user_fields', 4),
(8, '2016_01_01_000000_create_data_types_table', 4),
(9, '2016_05_19_173453_create_menu_table', 4),
(10, '2016_10_21_190000_create_roles_table', 4),
(11, '2016_10_21_190000_create_settings_table', 4),
(12, '2016_11_30_135954_create_permission_table', 4),
(13, '2016_11_30_141208_create_permission_role_table', 4),
(14, '2016_12_26_201236_data_types__add__server_side', 4),
(15, '2017_01_13_000000_add_route_to_menu_items_table', 4),
(16, '2017_01_14_005015_create_translations_table', 4),
(17, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 4),
(18, '2017_03_06_000000_add_controller_to_data_types_table', 4),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 4),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 4),
(21, '2017_08_05_000000_add_group_to_settings_table', 4),
(22, '2017_11_26_013050_add_user_role_relationship', 4),
(23, '2017_11_26_015000_create_user_roles_table', 4),
(24, '2018_03_11_000000_add_user_settings', 4),
(25, '2018_03_14_000000_add_details_to_data_types_table', 4),
(26, '2018_03_16_000000_make_settings_value_nullable', 4),
(27, '2016_01_01_000000_create_pages_table', 5),
(28, '2016_01_01_000000_create_posts_table', 5),
(29, '2016_02_15_204651_create_categories_table', 5),
(30, '2017_04_11_000000_alter_post_nullable_fields_table', 5),
(31, '2021_01_15_070838_create_shops_table', 6),
(32, '2021_01_16_134837_add_shop_id_to_products_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery','paypal','stripe','card') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `shipping_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `status`, `grand_total`, `item_count`, `is_paid`, `payment_method`, `shipping_fullname`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zipcode`, `shipping_phone`, `notes`, `billing_fullname`, `billing_address`, `billing_city`, `billing_state`, `billing_zipcode`, `billing_phone`, `created_at`, `updated_at`) VALUES
(1, 'OrderNumber-60001fc4d26c7', 1, 'pending', 4450.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-14 02:41:08', '2021-01-14 02:41:08'),
(2, 'OrderNumber-6000215f42367', 1, 'pending', 4450.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-14 02:47:59', '2021-01-14 02:47:59'),
(3, 'OrderNumber-6000218a1f210', 1, 'pending', 4450.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-14 02:48:42', '2021-01-14 02:48:42'),
(4, 'OrderNumber-600021900fef9', 1, 'pending', 4450.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-14 02:48:48', '2021-01-14 02:48:48'),
(5, 'OrderNumber-600021be5258e', 1, 'pending', 4450.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-14 02:49:34', '2021-01-14 02:49:34'),
(6, 'OrderNumber-600021ea6ffb5', 1, 'pending', 0.00, 0, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-14 02:50:18', '2021-01-14 02:50:18'),
(7, 'OrderNumber-60002274a6a2e', 1, 'completed', 4450.00, 1, 1, 'paypal', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-14 02:52:00', '2021-01-14 03:42:17'),
(8, 'OrderNumber-600066fd27508', 1, 'pending', 4450.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-14 07:45:01', '2021-01-14 07:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 4450.00, 1, NULL, NULL),
(2, 7, 1, 4450.00, 1, NULL, NULL),
(3, 8, 1, 4450.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-01-14 03:14:43', '2021-01-14 03:14:43');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-01-14 03:14:16', '2021-01-14 03:14:16'),
(2, 'browse_bread', NULL, '2021-01-14 03:14:16', '2021-01-14 03:14:16'),
(3, 'browse_database', NULL, '2021-01-14 03:14:16', '2021-01-14 03:14:16'),
(4, 'browse_media', NULL, '2021-01-14 03:14:17', '2021-01-14 03:14:17'),
(5, 'browse_compass', NULL, '2021-01-14 03:14:17', '2021-01-14 03:14:17'),
(6, 'browse_menus', 'menus', '2021-01-14 03:14:17', '2021-01-14 03:14:17'),
(7, 'read_menus', 'menus', '2021-01-14 03:14:17', '2021-01-14 03:14:17'),
(8, 'edit_menus', 'menus', '2021-01-14 03:14:17', '2021-01-14 03:14:17'),
(9, 'add_menus', 'menus', '2021-01-14 03:14:17', '2021-01-14 03:14:17'),
(10, 'delete_menus', 'menus', '2021-01-14 03:14:17', '2021-01-14 03:14:17'),
(11, 'browse_roles', 'roles', '2021-01-14 03:14:17', '2021-01-14 03:14:17'),
(12, 'read_roles', 'roles', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(13, 'edit_roles', 'roles', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(14, 'add_roles', 'roles', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(15, 'delete_roles', 'roles', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(16, 'browse_users', 'users', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(17, 'read_users', 'users', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(18, 'edit_users', 'users', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(19, 'add_users', 'users', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(20, 'delete_users', 'users', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(21, 'browse_settings', 'settings', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(22, 'read_settings', 'settings', '2021-01-14 03:14:18', '2021-01-14 03:14:18'),
(23, 'edit_settings', 'settings', '2021-01-14 03:14:19', '2021-01-14 03:14:19'),
(24, 'add_settings', 'settings', '2021-01-14 03:14:19', '2021-01-14 03:14:19'),
(25, 'delete_settings', 'settings', '2021-01-14 03:14:19', '2021-01-14 03:14:19'),
(26, 'browse_categories', 'categories', '2021-01-14 03:14:36', '2021-01-14 03:14:36'),
(27, 'read_categories', 'categories', '2021-01-14 03:14:36', '2021-01-14 03:14:36'),
(28, 'edit_categories', 'categories', '2021-01-14 03:14:36', '2021-01-14 03:14:36'),
(29, 'add_categories', 'categories', '2021-01-14 03:14:36', '2021-01-14 03:14:36'),
(30, 'delete_categories', 'categories', '2021-01-14 03:14:36', '2021-01-14 03:14:36'),
(31, 'browse_posts', 'posts', '2021-01-14 03:14:40', '2021-01-14 03:14:40'),
(32, 'read_posts', 'posts', '2021-01-14 03:14:40', '2021-01-14 03:14:40'),
(33, 'edit_posts', 'posts', '2021-01-14 03:14:40', '2021-01-14 03:14:40'),
(34, 'add_posts', 'posts', '2021-01-14 03:14:40', '2021-01-14 03:14:40'),
(35, 'delete_posts', 'posts', '2021-01-14 03:14:40', '2021-01-14 03:14:40'),
(36, 'browse_pages', 'pages', '2021-01-14 03:14:43', '2021-01-14 03:14:43'),
(37, 'read_pages', 'pages', '2021-01-14 03:14:43', '2021-01-14 03:14:43'),
(38, 'edit_pages', 'pages', '2021-01-14 03:14:43', '2021-01-14 03:14:43'),
(39, 'add_pages', 'pages', '2021-01-14 03:14:43', '2021-01-14 03:14:43'),
(40, 'delete_pages', 'pages', '2021-01-14 03:14:43', '2021-01-14 03:14:43'),
(41, 'browse_hooks', NULL, '2021-01-14 03:14:49', '2021-01-14 03:14:49'),
(42, 'browse_orders', 'orders', '2021-01-14 03:27:17', '2021-01-14 03:27:17'),
(43, 'read_orders', 'orders', '2021-01-14 03:27:17', '2021-01-14 03:27:17'),
(44, 'edit_orders', 'orders', '2021-01-14 03:27:17', '2021-01-14 03:27:17'),
(45, 'add_orders', 'orders', '2021-01-14 03:27:17', '2021-01-14 03:27:17'),
(46, 'delete_orders', 'orders', '2021-01-14 03:27:17', '2021-01-14 03:27:17'),
(47, 'browse_shops', 'shops', '2021-01-15 01:06:08', '2021-01-15 01:06:08'),
(48, 'read_shops', 'shops', '2021-01-15 01:06:08', '2021-01-15 01:06:08'),
(49, 'edit_shops', 'shops', '2021-01-15 01:06:08', '2021-01-15 01:06:08'),
(50, 'add_shops', 'shops', '2021-01-15 01:06:08', '2021-01-15 01:06:08'),
(51, 'delete_shops', 'shops', '2021-01-15 01:06:08', '2021-01-15 01:06:08'),
(52, 'browse_products', 'products', '2021-01-16 05:42:49', '2021-01-16 05:42:49'),
(53, 'read_products', 'products', '2021-01-16 05:42:49', '2021-01-16 05:42:49'),
(54, 'edit_products', 'products', '2021-01-16 05:42:49', '2021-01-16 05:42:49'),
(55, 'add_products', 'products', '2021-01-16 05:42:49', '2021-01-16 05:42:49'),
(56, 'delete_products', 'products', '2021-01-16 05:42:49', '2021-01-16 05:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-01-14 03:14:41', '2021-01-14 03:14:41'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-01-14 03:14:41', '2021-01-14 03:14:41'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-01-14 03:14:41', '2021-01-14 03:14:41'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-01-14 03:14:41', '2021-01-14 03:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `cover_img`, `created_at`, `updated_at`) VALUES
(1, 'Deserunt enim.', 'Ut distinctio rem deserunt ullam sint voluptatum dolorem nam vero voluptas debitis rerum non eius esse nemo dolorem recusandae voluptate et qui corporis voluptatum.', 4450.00, NULL, '2021-01-14 02:26:47', '2021-01-14 02:26:47'),
(2, 'Quisquam labore.', 'Laudantium ad officiis sint non sed et veritatis officia laborum expedita veritatis nulla dolor dolore beatae officia voluptates minima dolore sit et consequatur voluptatem odio sed sunt.', 642.00, NULL, '2021-01-14 02:26:47', '2021-01-14 02:26:47'),
(3, 'Qui atque ipsum.', 'Atque exercitationem possimus et perspiciatis ut voluptatum labore iusto facere explicabo ullam et aut ut non enim quos magni.', 4833.00, NULL, '2021-01-14 02:26:47', '2021-01-14 02:26:47'),
(4, 'Corporis voluptate.', 'Dicta quis alias et ut voluptatibus sit qui incidunt ex ut id facilis eos ea exercitationem ut in ut.', 4420.00, NULL, '2021-01-14 02:26:47', '2021-01-14 02:26:47'),
(5, 'Necessitatibus dolores.', 'Qui ipsa porro sed enim sint at quasi adipisci illo ut et sit ex soluta.', 778.00, NULL, '2021-01-14 02:26:47', '2021-01-14 02:26:47'),
(6, 'Deleniti quae sequi.', 'Et ducimus facere dolorem quo perspiciatis impedit nobis suscipit sit molestiae tenetur occaecati molestiae ut voluptas odio mollitia molestiae quaerat qui commodi et doloribus dolorem fugiat nostrum.', 4760.00, NULL, '2021-01-14 02:26:47', '2021-01-14 02:26:47'),
(7, 'Aliquid commodi fugit.', 'Voluptatibus et nemo voluptates vel velit ut quam quaerat libero eos vel ratione sit voluptatem natus.', 3480.00, NULL, '2021-01-14 02:26:47', '2021-01-14 02:26:47'),
(8, 'Possimus ratione labore.', 'Non molestiae aperiam cupiditate est voluptatibus optio et atque dolores eveniet esse neque aliquam vero.', 3999.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(9, 'Harum incidunt corporis.', 'Necessitatibus velit quia dolore eius qui ab maxime praesentium rerum quae sed ipsam praesentium veritatis veniam laborum.', 4410.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(10, 'Sed est est.', 'Aut aliquam aspernatur totam et deserunt maiores ut consequatur aliquam neque molestias et voluptatem eos ab et voluptas vero non esse.', 1899.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(11, 'Nihil earum.', 'Tempore et veniam necessitatibus excepturi voluptate libero eum ipsa tempora non cupiditate et dolores facilis.', 278.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(12, 'Rem eum corporis.', 'Quis cum magni saepe error quas est voluptatem dolor minus sed quo molestiae quis earum maiores et qui rerum aut non natus.', 1805.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(13, 'Ipsum qui vitae.', 'Animi dolore nostrum qui voluptatum molestias doloribus repellendus odio quo eos aut quia placeat nihil accusantium ea voluptas tempora omnis maxime.', 2895.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(14, 'Maiores aut.', 'Porro exercitationem voluptates saepe a ut odit quae placeat natus inventore totam et sunt fugit aut.', 1913.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(15, 'Excepturi omnis.', 'Aperiam qui fugit non qui corrupti inventore aut nihil atque consectetur et molestias omnis sunt ut repellendus impedit ut rem perferendis et dolores.', 4857.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(16, 'Recusandae voluptatem iure.', 'Voluptas et culpa qui quis earum occaecati ipsum ratione est qui est doloremque eos expedita accusantium repudiandae eum doloremque ut nulla.', 3542.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(17, 'Expedita iste quasi.', 'Qui rerum amet et quia repellendus perferendis architecto asperiores molestiae magnam at quae eum tenetur esse exercitationem hic quia cum id rerum sunt enim.', 2331.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(18, 'Commodi fugiat non.', 'Et aut totam maxime accusantium amet temporibus rerum eius ipsa dicta illum soluta et a quo quidem vitae aut doloremque cupiditate voluptates fugit.', 4871.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(19, 'Et neque.', 'Dolorem similique voluptatem magni iusto et tempora ea ut optio ut aspernatur quisquam est placeat sapiente molestias nesciunt qui quod iure et id.', 2959.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(20, 'Et molestiae.', 'Laudantium mollitia veritatis sit fugiat quas omnis et tenetur vitae voluptas dolorem explicabo in qui soluta dolores veritatis quo quia harum aut aut.', 3658.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(21, 'Nam velit.', 'Voluptas porro nesciunt quaerat tempora quaerat vero itaque dolorem odit accusantium qui cum iusto quam qui blanditiis quos velit voluptatem aut adipisci placeat et qui.', 3217.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(22, 'Reprehenderit aut.', 'Architecto qui quisquam excepturi atque nihil adipisci porro aut ex reprehenderit doloremque tempora inventore cupiditate consequuntur.', 860.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(23, 'Cum amet et.', 'Tempore praesentium voluptas saepe assumenda beatae labore facere unde voluptate praesentium ex dicta hic corrupti et labore voluptatem sint quaerat architecto omnis velit officia.', 2066.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(24, 'Voluptas qui mollitia.', 'Commodi culpa consequuntur occaecati dolorem et tempora neque fugiat earum ratione dolor tempore.', 1298.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(25, 'Est quae atque.', 'Labore officia delectus porro ut pariatur amet consequatur optio consequatur ullam dolores magni aut atque est quia id ea non asperiores alias velit praesentium quod qui hic.', 842.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(26, 'Labore laboriosam vero.', 'Optio molestiae eveniet atque maiores quis perferendis vero laboriosam voluptatum dolor impedit officiis nihil et qui quibusdam quia quasi consequatur tempore atque quae non architecto.', 3971.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(27, 'Voluptate voluptates assumenda.', 'Commodi perspiciatis soluta qui iure pariatur sapiente sit doloribus facilis voluptatem ipsam sit recusandae vel hic officia qui eum sint fuga dolorem vel sit in neque rerum quam.', 509.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(28, 'Natus nesciunt.', 'Esse nihil quos labore suscipit est tempore consequatur odio non ea sit laborum iste.', 250.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(29, 'Sint tenetur.', 'Adipisci dolore similique doloremque voluptatem autem quia quisquam inventore aspernatur eos quis neque ut eveniet esse ipsam.', 1157.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(30, 'Voluptatem id.', 'Velit nobis illo sunt quidem quam dolorem sit sequi dicta in eos non nesciunt et id vel voluptas aliquid mollitia repellendus dignissimos.', 4585.00, NULL, '2021-01-14 02:26:48', '2021-01-14 02:26:48'),
(31, 'updated Quo eum.', '<p>Quae aut enim voluptas et expedita quibusdam aut eveniet dolor quaerat et minima eum porro quam vero a est quia error laborum omnis deserunt.</p>', 5000.00, 'products\\January2021\\BUNLnctyB7W3l8HzZSs7.jpg', '2021-01-14 02:26:00', '2021-01-16 05:45:32'),
(32, 'Dolorem ipsa numquam.', 'Repudiandae molestiae impedit voluptates quia occaecati voluptatem maxime harum reprehenderit sit illum nemo aperiam et.', 1688.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(33, 'Ducimus repellat expedita.', 'Provident temporibus repudiandae quo itaque est omnis voluptate quia delectus vero qui vel unde quo.', 478.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(34, 'Voluptas quis ducimus.', 'Deserunt blanditiis qui consequuntur porro explicabo voluptatem suscipit debitis nisi eum recusandae veniam cumque blanditiis molestias.', 1503.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(35, 'Perferendis est ipsum.', 'Incidunt sed officia sed veritatis aut asperiores ex quia ut unde facilis voluptas qui atque occaecati error pariatur voluptatem rerum consequatur optio eos et.', 2635.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(36, 'Incidunt aliquid.', 'Voluptatibus quia deserunt necessitatibus ut ut nihil sed accusamus aperiam aliquid explicabo ipsa omnis.', 2823.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(37, 'Ex consequatur.', 'Nemo accusantium voluptatibus voluptatem porro illo consequatur suscipit autem velit reiciendis eligendi exercitationem iure corporis.', 3450.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(38, 'Tenetur eius.', 'Blanditiis odit enim id molestiae rerum explicabo unde quae eius consequatur quibusdam modi ipsum quis possimus ratione aspernatur eos accusantium.', 2660.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(39, 'Deleniti qui qui.', 'Ab enim sint consequatur et animi repudiandae omnis voluptatum et commodi et eum et accusamus dolor aut corrupti labore.', 3163.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(40, 'Eum rerum consequuntur.', 'Est earum officia sit quia dolorem sequi est praesentium delectus perspiciatis iusto commodi.', 2567.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(41, 'Culpa natus.', 'Et illum ex unde assumenda at voluptates voluptas inventore dolor voluptate nostrum et dolore nemo quia illo consequuntur ea vero et deserunt.', 4322.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(42, 'Velit deserunt.', 'Repellendus at beatae nihil ut sed qui aut excepturi quis et amet quis ea et vero velit saepe reiciendis sint id iste maiores.', 2787.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(43, 'Praesentium sed aperiam.', 'Sed minus id explicabo neque deserunt cum itaque et recusandae quam error quia asperiores voluptatibus occaecati quisquam nisi.', 2608.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(44, 'Est qui.', 'Qui explicabo non impedit voluptas blanditiis id enim et dolorum iste velit sed assumenda sunt et soluta itaque sapiente in nemo repellat mollitia.', 3957.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(45, 'Saepe vero.', 'Nostrum laudantium rerum numquam odio reiciendis ea perferendis vel illum similique consequatur accusamus modi harum dignissimos expedita sint voluptatibus consequatur saepe ullam aliquid quis et sed.', 3168.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(46, 'Ut necessitatibus.', 'Nihil laudantium debitis enim doloribus saepe nesciunt quia ut quidem consequatur eos rerum alias distinctio quo explicabo deserunt consequuntur beatae voluptas.', 1207.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(47, 'Consequatur beatae.', 'Officia porro aut dolore hic aliquid similique aliquid quaerat et qui maiores laboriosam aspernatur possimus.', 4111.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(48, 'Sint dignissimos repellendus.', 'Molestiae id vel eius error in libero impedit accusamus quod veritatis soluta molestiae.', 4474.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(49, 'Id est.', 'Incidunt doloribus cupiditate cupiditate deserunt qui tempora et vitae eos aut nihil nulla dignissimos.', 841.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49'),
(50, 'Necessitatibus aut quo.', 'Deserunt neque consectetur dolorum totam corrupti qui commodi quaerat blanditiis tempora a ut aut aut voluptatem.', 4873.00, NULL, '2021-01-14 02:26:49', '2021-01-14 02:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-01-14 03:14:16', '2021-01-14 03:14:16'),
(2, 'user', 'Normal User', '2021-01-14 03:14:16', '2021-01-14 03:14:16'),
(3, 'seller', 'seller', '2021-01-15 02:23:38', '2021-01-15 02:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `user_id`, `is_active`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(8, 'customer electro shop', 2, 1, 'this is testing', NULL, '2021-01-15 02:29:00', '2021-01-15 02:36:17'),
(10, 'another shop', 3, 1, 'damacai', NULL, '2021-01-16 01:53:00', '2021-01-16 01:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-01-14 03:14:43', '2021-01-14 03:14:43'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-01-14 03:14:43', '2021-01-14 03:14:43'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-01-14 03:14:43', '2021-01-14 03:14:43'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-01-14 03:14:44', '2021-01-14 03:14:44'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-01-14 03:14:44', '2021-01-14 03:14:44'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-01-14 03:14:44', '2021-01-14 03:14:44'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-01-14 03:14:44', '2021-01-14 03:14:44'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-01-14 03:14:44', '2021-01-14 03:14:44'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-01-14 03:14:44', '2021-01-14 03:14:44'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-01-14 03:14:44', '2021-01-14 03:14:44'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-01-14 03:14:45', '2021-01-14 03:14:45'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-01-14 03:14:45', '2021-01-14 03:14:45'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-01-14 03:14:45', '2021-01-14 03:14:45'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-01-14 03:14:45', '2021-01-14 03:14:45'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-01-14 03:14:45', '2021-01-14 03:14:45'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-01-14 03:14:45', '2021-01-14 03:14:45'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-01-14 03:14:45', '2021-01-14 03:14:45'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-01-14 03:14:45', '2021-01-14 03:14:45'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-01-14 03:14:46', '2021-01-14 03:14:46'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-01-14 03:14:46', '2021-01-14 03:14:46'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-01-14 03:14:46', '2021-01-14 03:14:46'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-01-14 03:14:46', '2021-01-14 03:14:46'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-01-14 03:14:46', '2021-01-14 03:14:46'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-01-14 03:14:46', '2021-01-14 03:14:46'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-01-14 03:14:46', '2021-01-14 03:14:46'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-01-14 03:14:46', '2021-01-14 03:14:46'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-01-14 03:14:47', '2021-01-14 03:14:47'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-01-14 03:14:47', '2021-01-14 03:14:47'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-01-14 03:14:47', '2021-01-14 03:14:47'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-01-14 03:14:47', '2021-01-14 03:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'shatiswaran94@gmail.com', 'users/default.png', NULL, '$2y$10$zwxkm2UkFjv8Sy6IpSdxoOire199wfCAlNUMiWXAXqqF9Sxy1UxXC', NULL, NULL, '2021-01-14 02:27:20', '2021-01-16 01:41:51'),
(2, 3, 'customer', 'customer@gmail.com', 'users/default.png', NULL, '$2y$10$HFTCwc85DEumh/IZB7i2QO1fDYr3DCa4EJXiTcjH8mXJYROn9wWuK', NULL, '{\"locale\":\"en\"}', '2021-01-15 00:52:06', '2021-01-15 02:35:24'),
(3, 3, 'seller', 'seller@gmail.com', 'users/default.png', NULL, '$2y$10$AVOllaKMGZfuU7KmfYWQ7eZSfFRVc0ZDP.6eO0S77No5HGmtr3Gva', NULL, NULL, '2021-01-16 01:38:58', '2021-01-16 01:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
