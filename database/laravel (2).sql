-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 08:17 PM
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
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'order_number', 'text', 'Order Number', 1, 1, 1, 1, 1, 1, '{}', 3),
(24, 4, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(25, 4, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"pending\":\"Pending\",\"processing\":\"processing\",\"completed\":\"Completed\",\"decline\":\"Decline\"}}', 4),
(26, 4, 'grand_total', 'text', 'Grand Total', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'item_count', 'text', 'Item Count', 1, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'is_paid', 'checkbox', 'Is Paid', 1, 1, 1, 1, 1, 1, '{\"on\":\"Paid\",\"off\":\"Not Paid\",\"checked\":true}', 7),
(29, 4, 'payment_method', 'select_dropdown', 'Payment Method', 1, 1, 1, 1, 1, 1, '{\"options\":{\"cash_on_delivery\":\"Cash On Delivery\",\"paypal\":\"Paypal\",\"stripe\":\"Stripe\",\"card\":\"Card\"}}', 8),
(30, 4, 'shipping_fullname', 'text', 'Shipping Fullname', 1, 1, 1, 1, 1, 1, '{}', 9),
(31, 4, 'shipping_address', 'text', 'Shipping Address', 1, 1, 1, 1, 1, 1, '{}', 10),
(32, 4, 'shipping_city', 'text', 'Shipping City', 1, 1, 1, 1, 1, 1, '{}', 11),
(33, 4, 'shipping_state', 'text', 'Shipping State', 1, 0, 1, 1, 1, 1, '{}', 12),
(34, 4, 'shipping_zipcode', 'text', 'Shipping Zipcode', 1, 0, 1, 1, 1, 1, '{}', 13),
(35, 4, 'shipping_phone', 'text', 'Shipping Phone', 1, 1, 1, 1, 1, 1, '{}', 14),
(36, 4, 'notes', 'text_area', 'Notes', 0, 0, 1, 1, 1, 1, '{}', 15),
(37, 4, 'billing_fullname', 'text', 'Billing Fullname', 1, 0, 1, 1, 1, 1, '{}', 16),
(38, 4, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 1, '{}', 17),
(39, 4, 'billing_city', 'text', 'Billing City', 1, 0, 1, 1, 1, 1, '{}', 18),
(40, 4, 'billing_state', 'text', 'Billing State', 1, 0, 1, 1, 1, 1, '{}', 19),
(41, 4, 'billing_zipcode', 'text', 'Billing Zipcode', 1, 0, 1, 1, 1, 1, '{}', 20),
(42, 4, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 1, '{}', 21),
(43, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 22),
(44, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(45, 4, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24),
(46, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(47, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(48, 5, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(49, 5, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Active\",\"off\":\"Inactive\",\"checked\":\"true\"}', 4),
(50, 5, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(51, 5, 'rating', 'text_area', 'Rating', 0, 1, 1, 1, 1, 1, '{}', 6),
(52, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(53, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(55, 5, 'shop_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(56, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 6, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(59, 6, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(60, 6, 'cover_img', 'image', 'Cover Img', 0, 1, 1, 1, 1, 1, '{}', 6),
(61, 6, 'shop_id', 'text', 'Shop Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(62, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(63, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-01-16 09:15:34', '2021-01-16 09:15:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-01-16 09:15:34', '2021-01-16 09:15:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-01-16 09:15:34', '2021-01-16 09:15:34'),
(4, 'orders', 'orders', 'Order', 'Orders', 'voyager-buy', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-16 09:23:19', '2021-01-16 09:54:05'),
(5, 'shops', 'shops', 'Shop', 'Shops', 'voyager-shop', 'App\\Shop', '\\App\\Policies\\ShopPolicy', 'App\\Http\\Controllers\\Admin\\ShopController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-16 10:21:41', '2021-01-16 11:03:40'),
(6, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-16 11:11:20', '2021-01-16 11:11:20');

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
(1, 'admin', '2021-01-16 09:15:37', '2021-01-16 09:15:37');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-01-16 09:15:37', '2021-01-16 09:15:37', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-01-16 09:15:37', '2021-01-16 09:15:37', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-01-16 09:15:37', '2021-01-16 09:15:37', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-01-16 09:15:38', '2021-01-16 09:15:38', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-01-16 09:15:38', '2021-01-16 09:15:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-01-16 09:15:38', '2021-01-16 09:15:38', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-01-16 09:15:38', '2021-01-16 09:15:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-01-16 09:15:38', '2021-01-16 09:15:38', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-01-16 09:15:38', '2021-01-16 09:15:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-01-16 09:15:38', '2021-01-16 09:15:38', 'voyager.settings.index', NULL),
(11, 1, 'Orders', '', '_self', 'voyager-buy', NULL, NULL, 15, '2021-01-16 09:23:19', '2021-01-16 09:23:19', 'voyager.orders.index', NULL),
(12, 1, 'Shops', '', '_self', 'voyager-shop', NULL, NULL, 16, '2021-01-16 10:21:41', '2021-01-16 10:21:41', 'voyager.shops.index', NULL),
(13, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 17, '2021-01-16 11:11:20', '2021-01-16 11:11:20', 'voyager.products.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2021_01_13_070838_create_shops_table', 1),
(29, '2021_01_14_063948_create_products_table', 1),
(30, '2021_01_14_103605_create_orders_table', 1),
(31, '2021_01_14_104616_create_order_items_table', 1);

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
(3, 'OrderNumber-60032c672c71f', 5, 'pending', 1033.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-16 10:11:51', '2021-01-16 10:11:51'),
(4, 'OrderNumber-60032c7479b28', 5, 'pending', 4057.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-16 10:12:04', '2021-01-16 10:12:04'),
(5, 'OrderNumber-60032d0d7acc4', 7, 'pending', 1033.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-16 10:14:37', '2021-01-16 10:14:37'),
(6, 'OrderNumber-60032d1872ddc', 7, 'completed', 4057.00, 1, 1, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-16 10:14:00', '2021-01-16 10:17:43'),
(7, 'OrderNumber-60032d7c5bb41', 7, 'pending', 14820.00, 1, 0, 'cash_on_delivery', 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', NULL, 'Home', 'No 3a, Block 20, Jalan Dawai 16/2, Section16', 'Shah Alam', 'Selangor', '40200', '01123552719', '2021-01-16 10:16:28', '2021-01-16 10:16:28');

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
(2, 3, 1, 1033.00, 1, NULL, NULL),
(3, 4, 2, 4057.00, 1, NULL, NULL),
(4, 5, 1, 1033.00, 1, NULL, NULL),
(5, 6, 2, 4057.00, 1, NULL, NULL),
(6, 7, 3, 3705.00, 4, NULL, NULL);

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
(1, 'browse_admin', NULL, '2021-01-16 09:15:39', '2021-01-16 09:15:39'),
(2, 'browse_bread', NULL, '2021-01-16 09:15:39', '2021-01-16 09:15:39'),
(3, 'browse_database', NULL, '2021-01-16 09:15:39', '2021-01-16 09:15:39'),
(4, 'browse_media', NULL, '2021-01-16 09:15:39', '2021-01-16 09:15:39'),
(5, 'browse_compass', NULL, '2021-01-16 09:15:39', '2021-01-16 09:15:39'),
(6, 'browse_menus', 'menus', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(7, 'read_menus', 'menus', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(8, 'edit_menus', 'menus', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(9, 'add_menus', 'menus', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(10, 'delete_menus', 'menus', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(11, 'browse_roles', 'roles', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(12, 'read_roles', 'roles', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(13, 'edit_roles', 'roles', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(14, 'add_roles', 'roles', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(15, 'delete_roles', 'roles', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(16, 'browse_users', 'users', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(17, 'read_users', 'users', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(18, 'edit_users', 'users', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(19, 'add_users', 'users', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(20, 'delete_users', 'users', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(21, 'browse_settings', 'settings', '2021-01-16 09:15:40', '2021-01-16 09:15:40'),
(22, 'read_settings', 'settings', '2021-01-16 09:15:41', '2021-01-16 09:15:41'),
(23, 'edit_settings', 'settings', '2021-01-16 09:15:41', '2021-01-16 09:15:41'),
(24, 'add_settings', 'settings', '2021-01-16 09:15:41', '2021-01-16 09:15:41'),
(25, 'delete_settings', 'settings', '2021-01-16 09:15:41', '2021-01-16 09:15:41'),
(26, 'browse_orders', 'orders', '2021-01-16 09:23:19', '2021-01-16 09:23:19'),
(27, 'read_orders', 'orders', '2021-01-16 09:23:19', '2021-01-16 09:23:19'),
(28, 'edit_orders', 'orders', '2021-01-16 09:23:19', '2021-01-16 09:23:19'),
(29, 'add_orders', 'orders', '2021-01-16 09:23:19', '2021-01-16 09:23:19'),
(30, 'delete_orders', 'orders', '2021-01-16 09:23:19', '2021-01-16 09:23:19'),
(31, 'browse_shops', 'shops', '2021-01-16 10:21:41', '2021-01-16 10:21:41'),
(32, 'read_shops', 'shops', '2021-01-16 10:21:41', '2021-01-16 10:21:41'),
(33, 'edit_shops', 'shops', '2021-01-16 10:21:41', '2021-01-16 10:21:41'),
(34, 'add_shops', 'shops', '2021-01-16 10:21:41', '2021-01-16 10:21:41'),
(35, 'delete_shops', 'shops', '2021-01-16 10:21:41', '2021-01-16 10:21:41'),
(36, 'browse_products', 'products', '2021-01-16 11:11:20', '2021-01-16 11:11:20'),
(37, 'read_products', 'products', '2021-01-16 11:11:20', '2021-01-16 11:11:20'),
(38, 'edit_products', 'products', '2021-01-16 11:11:20', '2021-01-16 11:11:20'),
(39, 'add_products', 'products', '2021-01-16 11:11:20', '2021-01-16 11:11:20'),
(40, 'delete_products', 'products', '2021-01-16 11:11:20', '2021-01-16 11:11:20');

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
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

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
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `cover_img`, `shop_id`, `created_at`, `updated_at`) VALUES
(1, 'Sed quam consequuntur.', 'Expedita aut quisquam facere quasi fugit quia placeat et nemo non velit ipsa.', 1033.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(2, 'Dolor facilis.', 'Ut dolorem ratione sint nisi maxime quidem voluptatem harum incidunt qui ut vero recusandae inventore.', 4057.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(3, 'Ut tenetur perspiciatis.', 'Modi repellat vero ducimus earum ut dolores dolor minima soluta velit ea consequatur sunt optio nesciunt quibusdam ullam explicabo animi.', 3705.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(4, 'Vero quas.', 'Provident et qui sunt ratione natus est laudantium voluptate cupiditate iure aut voluptas quo.', 2785.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(5, 'Aut reprehenderit.', 'Iure ducimus labore est ea magnam et doloremque et voluptatum laudantium sunt id maiores quos quaerat eos.', 1269.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(6, 'Ut neque ut.', 'Recusandae laboriosam illo et minima perferendis dolorem et distinctio tenetur in accusamus autem doloribus ipsa aut odit quam recusandae quo expedita voluptatem assumenda et.', 4750.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(7, 'Perspiciatis nesciunt inventore.', 'Quod rerum modi sunt minima tempore voluptates debitis neque et non dolorem qui veniam omnis officia qui et consequatur ut ratione reprehenderit voluptatibus.', 1480.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(8, 'Dolores ut.', 'Rerum architecto libero quam impedit soluta rem eaque rem voluptatem quam rerum aliquam delectus cumque omnis excepturi animi sunt commodi reprehenderit omnis culpa nostrum sint sapiente suscipit dolorem fugiat.', 2465.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(9, 'Voluptatem cupiditate.', 'Repellat porro culpa dignissimos odit qui consequatur natus ut qui repellendus laborum natus ut aperiam cupiditate eveniet ea architecto rem voluptatum.', 2553.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(10, 'Voluptatem nihil omnis.', 'At velit laborum hic vitae praesentium corrupti ut ut vero aut nesciunt culpa vero hic consequatur.', 2529.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(11, 'Autem dolore architecto.', 'Libero repellendus mollitia libero dolorem voluptatibus eum repellendus voluptas fugiat repudiandae quas nostrum hic quia.', 3666.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(12, 'Sapiente quidem ratione.', 'Velit eligendi rerum sint ut perferendis qui et perspiciatis ut reiciendis nobis amet culpa est non minima.', 3572.00, NULL, NULL, '2021-01-16 08:58:30', '2021-01-16 08:58:30'),
(13, 'Pariatur omnis dolores.', 'Pariatur fugiat autem nihil velit et qui vel molestias consequatur iusto quia occaecati maiores esse sit illum aut aut totam in quae quia delectus in.', 1306.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(14, 'Quae labore est.', 'Architecto ipsa exercitationem esse vero nulla doloremque tenetur quia facilis veniam officia eveniet quis quibusdam at nobis voluptatem ab.', 1905.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(15, 'Omnis omnis.', 'Ipsa est ipsum est voluptas sint et et sed minus facere voluptas quis quaerat corrupti alias suscipit vel quae est molestias non cum.', 2630.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(16, 'Quo repellendus tenetur.', 'Omnis aut mollitia nemo libero animi eligendi adipisci illum quo molestiae et qui quia occaecati sint.', 586.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(17, 'Cum harum.', 'Eligendi vero cupiditate sint in quia omnis aut id nulla fugiat temporibus modi.', 1726.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(18, 'Atque rerum hic.', 'Ut ea repellat quia molestiae nemo placeat numquam cumque unde quia non asperiores dolores voluptatem et.', 1380.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(19, 'Molestias quisquam recusandae.', 'Reiciendis dolor eum animi natus et maiores repudiandae cupiditate magni doloremque nostrum quam est eius vitae aliquid sed.', 965.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(20, 'Ullam ut.', 'Assumenda ut voluptas maiores aliquid omnis natus velit ut minus unde autem officiis pariatur est laboriosam occaecati rerum libero itaque iusto autem necessitatibus deleniti iste nulla.', 3368.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(21, 'Fuga unde.', 'Et ut et enim iusto corporis odio aliquam aut officia dolorem asperiores ea dolorem aperiam quisquam.', 1707.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(22, 'Enim mollitia.', 'Atque enim repellendus ea rem nihil quia sed dignissimos delectus praesentium quia quis aperiam in natus delectus voluptatem consequatur et quo magnam inventore voluptatem voluptas.', 3495.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(23, 'Voluptas sunt.', 'Doloremque nisi corrupti deleniti et sunt et iure fuga facilis nihil quia atque praesentium modi optio saepe et at et.', 1447.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(24, 'Consequuntur sit.', 'Molestiae magni est et rerum assumenda qui praesentium debitis repudiandae dolorum ipsa nobis animi molestiae est quidem quam asperiores voluptatem.', 1481.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(25, 'Porro ut officiis.', 'Et rerum officia odit at quam est ipsum facilis natus aut in sed et eaque earum doloribus qui alias.', 1710.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(26, 'Unde ab et.', 'Voluptatem dolorem necessitatibus rerum est enim vero aliquid est voluptas amet eum et aspernatur voluptatem cupiditate neque laborum numquam dolor doloribus.', 3570.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(27, 'Quidem fugiat.', 'Impedit non numquam repudiandae nam dolor soluta rerum est quis nam vel non ab voluptatum inventore aperiam dolores.', 2861.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(28, 'Voluptates et.', 'Eius soluta consequatur odio provident ut modi harum impedit quaerat nostrum recusandae possimus et explicabo iste dolorem maiores.', 279.00, NULL, NULL, '2021-01-16 08:58:31', '2021-01-16 08:58:31'),
(29, 'Et magni est.', 'Doloremque suscipit quia sunt est qui aut assumenda hic commodi aut unde enim qui sequi nemo voluptates nostrum.', 1158.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(30, 'Voluptas odio soluta.', 'Quae corrupti consectetur reprehenderit ipsa neque dolorum architecto in deserunt voluptatibus perferendis delectus consequatur magnam consectetur quam exercitationem error voluptatem molestiae omnis.', 3764.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(31, 'Quos qui.', 'Ipsa beatae qui ut sit optio sed iusto distinctio rerum debitis eveniet voluptas possimus quae.', 3934.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(32, 'Et quia ut.', 'Nesciunt vel vitae rerum iure in laboriosam iure dolor aliquid vel consequatur molestias distinctio quis optio aut autem aspernatur praesentium alias.', 3931.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(33, 'Voluptas fugiat.', 'Est consectetur voluptatum nostrum facere sunt qui atque beatae nam sunt veritatis repellat totam assumenda.', 2428.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(34, 'Adipisci error alias.', 'Perferendis est ut dolor facere voluptatem autem qui numquam illum eos similique et voluptates molestias enim est iure rerum consequatur asperiores repellat.', 312.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(35, 'Laudantium eum aut.', 'Itaque in et omnis exercitationem consequatur ipsa ea minus ut reprehenderit cumque optio aut voluptas et et et voluptatem optio eius fuga saepe veritatis.', 2299.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(36, 'Voluptatem dignissimos fuga.', 'Reiciendis sunt temporibus aut est et eius nisi eum odit aliquam aliquid ut consequuntur sed enim.', 3250.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(37, 'Quod et quia.', 'Minima recusandae consequatur velit omnis ratione ut nihil voluptas nam maiores id debitis animi excepturi quo cupiditate fugit eaque veniam in aliquid recusandae unde.', 1880.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(38, 'Iusto iste.', 'Quibusdam esse temporibus possimus nostrum ut omnis sed qui sint nulla hic voluptatem sed aliquid labore deleniti qui rerum voluptates possimus.', 518.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(39, 'Aliquam est repudiandae.', 'Rerum voluptatibus officiis ut rerum aut ad quam quis voluptatem recusandae et eos saepe.', 3389.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(40, 'Sed quod unde.', 'Qui voluptate doloribus sed magni et qui ipsum nemo voluptate occaecati molestiae expedita voluptatem laboriosam consequatur.', 2403.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(41, 'Rerum architecto.', 'Sequi quod aut iure cum officiis voluptates debitis nihil quibusdam deserunt et officiis eum earum velit quibusdam.', 1503.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(42, 'Eius nisi et.', 'Tempora ea quam reprehenderit eos odio libero quidem dolores aliquam ut molestiae sed nisi rerum vitae est odit illum tenetur incidunt et ratione est atque architecto qui eos.', 3680.00, NULL, NULL, '2021-01-16 08:58:32', '2021-01-16 08:58:32'),
(43, 'Debitis omnis assumenda.', 'Perferendis eius voluptatem omnis soluta sunt repellendus nesciunt iure et non a architecto debitis iste excepturi sit debitis ducimus qui aut deserunt.', 3212.00, NULL, NULL, '2021-01-16 08:58:33', '2021-01-16 08:58:33'),
(44, 'Corporis atque.', 'Est magnam minima et quae animi numquam est perspiciatis et fugit tenetur sunt fuga id quaerat eligendi repellendus et voluptatibus et est architecto suscipit et inventore.', 2995.00, NULL, NULL, '2021-01-16 08:58:33', '2021-01-16 08:58:33'),
(45, 'Nostrum consequatur.', 'Soluta sint et id accusamus nisi ut non est eaque fugiat incidunt facere quia magni nam sit.', 3773.00, NULL, NULL, '2021-01-16 08:58:33', '2021-01-16 08:58:33'),
(46, 'Porro explicabo nihil.', 'Quas ut est nihil odit optio quam exercitationem inventore sed vero excepturi qui delectus excepturi ut quia qui minus iusto.', 3624.00, NULL, NULL, '2021-01-16 08:58:33', '2021-01-16 08:58:33'),
(47, 'Voluptatem libero.', 'Sed consequatur qui omnis ut provident qui qui quidem fugiat omnis quasi ut omnis consequatur saepe beatae aliquid minus rerum eius exercitationem voluptatem delectus odio.', 2518.00, NULL, NULL, '2021-01-16 08:58:33', '2021-01-16 08:58:33'),
(48, 'Aut voluptatem.', 'Qui consequuntur consequuntur non a sed possimus quod nostrum animi quaerat et id provident vel consequatur repellat hic officiis.', 1562.00, NULL, NULL, '2021-01-16 08:58:33', '2021-01-16 08:58:33'),
(49, 'Aut quidem eos.', 'Cupiditate occaecati aut mollitia est magnam aut laudantium reprehenderit harum reiciendis sit voluptatum omnis labore ea ab nulla natus doloribus maiores quas nulla nostrum.', 4811.00, NULL, NULL, '2021-01-16 08:58:33', '2021-01-16 08:58:33'),
(50, 'Fugit voluptatum beatae.', 'Est ut numquam quo commodi optio aut ab dolores sapiente autem molestias quis explicabo eum.', 3416.00, NULL, NULL, '2021-01-16 08:58:33', '2021-01-16 08:58:33'),
(51, 'Adipisci facere.', 'Modi facilis dolores illo dolores quo reprehenderit officiis recusandae ea id quae aut quia at perferendis est.', 184.00, NULL, NULL, '2021-01-16 08:59:42', '2021-01-16 08:59:42'),
(52, 'Et ut.', 'Sed rerum accusamus dolores aut pariatur aperiam ut minima sapiente totam praesentium sint est rerum nam recusandae id sed fugiat ea.', 613.00, NULL, NULL, '2021-01-16 08:59:42', '2021-01-16 08:59:42'),
(53, 'Alias aut non.', 'Dolorem cupiditate reiciendis fugit repudiandae unde reprehenderit nihil qui temporibus fuga ut dignissimos minus quibusdam.', 3195.00, NULL, NULL, '2021-01-16 08:59:42', '2021-01-16 08:59:42'),
(54, 'Aut placeat.', 'Saepe necessitatibus eos qui doloribus sed laborum illo mollitia aspernatur quia sed deserunt qui amet est adipisci eos maiores eius qui excepturi asperiores veniam.', 2202.00, NULL, NULL, '2021-01-16 08:59:42', '2021-01-16 08:59:42'),
(55, 'At dolore.', 'Dolores voluptatibus rerum qui quisquam soluta sint doloribus eum debitis adipisci non et vitae aut sint et et est vel ipsa blanditiis beatae.', 1401.00, NULL, NULL, '2021-01-16 08:59:42', '2021-01-16 08:59:42'),
(56, 'Atque non cum.', 'Nobis dolor molestiae consequatur tempore cum recusandae et ex enim molestias natus numquam totam quia corporis tempore et sapiente quia veritatis quo in.', 4920.00, NULL, NULL, '2021-01-16 08:59:42', '2021-01-16 08:59:42'),
(57, 'Totam ad molestiae.', 'Exercitationem omnis similique voluptate esse quo ut qui earum temporibus ducimus maiores enim inventore.', 2534.00, NULL, NULL, '2021-01-16 08:59:42', '2021-01-16 08:59:42'),
(58, 'Harum dolorum.', 'Illum quia a sed laborum blanditiis excepturi dolorum ut vel sed possimus et non quae perspiciatis maiores vero neque.', 4638.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(59, 'Ipsa illo molestiae.', 'Ab quod voluptatum dicta accusamus dicta aliquam voluptatem sint dolorem doloribus deserunt sint dolorum aut voluptatem exercitationem aliquid voluptatem neque.', 3363.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(60, 'Eum nam.', 'Voluptates ab cupiditate eum quasi facilis quas itaque repellat est et tempore ab eum praesentium ipsam veritatis blanditiis quae atque ipsam at nobis fugiat qui.', 956.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(61, 'Dolor hic facilis.', 'Dolorum quasi et amet rerum omnis dolore id soluta et et cum aut quis consequatur mollitia illo facere sit id sed quis omnis occaecati distinctio totam voluptatem.', 4099.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(62, 'Officia aut.', 'Ab qui quo deserunt architecto consequuntur consequuntur esse necessitatibus magnam incidunt eveniet voluptatem maxime recusandae quidem dignissimos quia esse ex.', 4652.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(63, 'Vitae est.', 'Ut blanditiis aut sunt nemo mollitia aut numquam non at earum harum modi rerum ratione fugit ea quos id perspiciatis et iure ut assumenda aperiam et quo consequuntur.', 1913.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(64, 'Distinctio iure quasi.', 'Et et omnis voluptas animi blanditiis iste perspiciatis sequi ut incidunt et aut iure molestiae totam voluptas esse et inventore aut voluptatem quis nam odit sunt quis et.', 4542.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(65, 'Magnam quia officiis.', 'Occaecati velit atque explicabo blanditiis voluptatem aut pariatur dolorem excepturi reprehenderit in tempora aut numquam fugit exercitationem perspiciatis minima.', 612.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(66, 'Et totam illum.', 'Ea quasi ut asperiores rerum et provident architecto quidem molestias voluptatem odit nihil est quia nisi.', 4275.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(67, 'Voluptatem a.', 'Corrupti quis inventore soluta fugiat reprehenderit voluptas quia rem ipsum qui ratione qui possimus quasi impedit dolorum aspernatur distinctio quis soluta totam dolorem maiores perferendis.', 4461.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(68, 'Ea magni.', 'Earum qui nobis et debitis architecto beatae saepe aperiam at corporis et et quos incidunt vel et rem.', 2554.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(69, 'Aut unde.', 'Voluptatem dolor enim quia quod reprehenderit maiores rerum id voluptatem odio nihil exercitationem animi accusamus est eaque ea omnis molestiae id reprehenderit eum.', 1581.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(70, 'Vero accusamus.', 'Quos repellendus voluptates molestiae omnis consequatur iste omnis impedit eaque ad nobis inventore aperiam.', 1902.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(71, 'Sit laudantium.', 'Temporibus fuga perferendis at voluptatum nihil porro eum a explicabo nisi suscipit sed at ut quo sequi exercitationem ad.', 2359.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(72, 'Quisquam pariatur aut.', 'Ab sit qui repudiandae voluptatem eos voluptas delectus est rerum a ut rem voluptas aut omnis aliquam et adipisci autem.', 264.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(73, 'Eos inventore sapiente.', 'Non autem quidem unde sint natus nam reprehenderit voluptatem voluptas id dicta deserunt velit excepturi fugiat et tempore facere voluptate illo quod sit est est.', 1103.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(74, 'Corporis magni porro.', 'Ratione vero nisi est ea qui molestias totam eaque et eveniet laudantium doloremque odio ipsam quasi quia veritatis accusamus quo ea ut harum id doloribus architecto.', 3630.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(75, 'Ad animi.', 'Natus neque impedit ea possimus ea soluta corporis repellendus commodi saepe dicta iure velit vero qui aut corporis aut.', 1574.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(76, 'Quo iste cumque.', 'Perferendis non qui vel aliquid fugit modi magnam architecto reprehenderit enim rerum iste.', 4432.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(77, 'Nostrum et officia.', 'Vel quae necessitatibus voluptas eum veritatis ut sapiente aspernatur nihil repudiandae magnam beatae ducimus dolorem.', 630.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(78, 'Aut animi.', 'Et nobis voluptas ducimus nihil dignissimos temporibus reprehenderit sit quia maiores natus perspiciatis.', 2295.00, NULL, NULL, '2021-01-16 08:59:43', '2021-01-16 08:59:43'),
(79, 'Est tempora optio.', 'Ut fugit aliquam voluptatem qui ut neque repudiandae dolorem et enim corrupti tempore corporis error consequuntur saepe eligendi magnam quia aperiam tenetur sunt quas.', 3122.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(80, 'Ipsa animi aut.', 'Assumenda in qui doloremque sunt perferendis consequatur dicta nihil doloribus doloremque laboriosam ipsum voluptas quia sit veniam adipisci aut rerum cum accusamus esse quae laboriosam.', 1810.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(81, 'Sit sunt et.', 'Et totam quibusdam aut nam ut neque itaque dolores sed temporibus nemo et commodi corrupti ut commodi magni et voluptas quas inventore nesciunt sunt esse provident sapiente neque.', 3826.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(82, 'Esse neque.', 'Quo dolores nesciunt iure dolores necessitatibus et quia sit sit officia vel et quasi.', 4817.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(83, 'Quam perspiciatis.', 'Et eveniet veniam iure sit earum aspernatur similique earum quas dolorem dicta alias omnis qui dolorum quo voluptatem repudiandae est est velit recusandae ex.', 4870.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(84, 'Nostrum expedita.', 'Et non et illum cum impedit sit consequuntur et non asperiores vero et molestias.', 2214.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(85, 'Vel omnis.', 'Nobis voluptas qui quam rerum aperiam eum qui eaque culpa labore laudantium officia repellat.', 4003.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(86, 'Inventore incidunt.', 'Assumenda excepturi illo expedita maiores labore saepe quis repellat unde numquam aperiam omnis est quae beatae quo sunt quidem rem porro ut.', 4567.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(87, 'Corporis tenetur.', 'Officiis et pariatur ipsum dolorem iste cupiditate id tenetur est est aspernatur excepturi et consectetur iure ipsum ut consequatur tenetur dolorem in aliquid sint quia voluptatem non beatae fugit.', 4261.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(88, 'Quisquam aspernatur consequatur.', 'Quibusdam voluptatem sunt quae ea ut aut et voluptatibus illum ipsum delectus culpa aliquam quaerat tempora suscipit ut molestias.', 2930.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(89, 'Quisquam quia.', 'Atque qui dolores optio et at quo non hic recusandae suscipit autem hic accusantium magnam placeat quaerat temporibus.', 908.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(90, 'Sunt architecto non.', 'Repudiandae nemo dolor placeat omnis cum quia tempore voluptatem non culpa in rem architecto ipsum harum delectus sunt sed beatae aliquam quam ad aut ipsa est.', 314.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(91, 'Cumque nulla laborum.', 'Aut deleniti autem numquam laborum et sit et labore perferendis aspernatur dolorum et corrupti tempora vel cumque omnis.', 625.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(92, 'Alias nulla.', 'Natus itaque accusantium explicabo aspernatur aspernatur vitae voluptatem aliquid ea sit animi incidunt repudiandae beatae.', 1049.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(93, 'Non qui sit.', 'Iure aut eos in ut dolorum nulla ipsam eos dolor cum numquam quidem voluptatem incidunt expedita ut quis et omnis alias.', 4678.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(94, 'Dolorum fugiat.', 'Ea vitae temporibus aut quis delectus sapiente distinctio corporis blanditiis repellat quaerat hic possimus earum et et corporis aut ut dolor eos molestias dicta exercitationem sunt.', 4088.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(95, 'Voluptatem nulla.', 'Consequatur aut necessitatibus corrupti excepturi ut est nesciunt optio maiores totam ullam cumque porro explicabo aliquid aut reiciendis consequatur iure consequatur quaerat voluptatem.', 1377.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(96, 'Sapiente dicta voluptatem.', 'Quasi qui deleniti qui voluptatem ut beatae non cum sunt assumenda ea in qui nihil et.', 2209.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(97, 'A commodi omnis.', 'Cumque aut praesentium numquam iste dolorem fuga qui excepturi deserunt voluptates consequuntur accusamus nesciunt omnis aperiam ut et facere quia ut aperiam repudiandae.', 2166.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(98, 'Explicabo sunt.', 'Atque consectetur consequatur ad velit maxime nihil soluta qui consequatur voluptas totam dolore nemo molestias ut sapiente qui consequatur nulla.', 4461.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(99, 'Exercitationem aut quia.', 'Quis cum cum excepturi quas sit et dolorem et consequatur beatae animi ut magnam quaerat et saepe magnam qui itaque suscipit unde aliquam rerum aut sunt sunt.', 3597.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(100, 'Eaque quam nobis.', 'Laborum quod ut iusto magni quam eius dolores nisi possimus sequi quos possimus eveniet nihil aliquid quia sed unde asperiores reprehenderit tempora quo pariatur veritatis sit.', 371.00, NULL, NULL, '2021-01-16 08:59:44', '2021-01-16 08:59:44'),
(101, 'Neque aliquid magni.', 'Quaerat asperiores tempora totam corporis et voluptatum aliquid est praesentium voluptate fugit sunt quidem iusto saepe dicta soluta voluptates delectus possimus sint aut non ratione est maiores ex.', 4447.00, NULL, NULL, '2021-01-16 08:59:54', '2021-01-16 08:59:54'),
(102, 'Ab minima minima.', 'Labore aut recusandae quo enim voluptatum atque debitis consequatur molestiae doloremque eaque sunt veniam et voluptas recusandae labore voluptatem sunt itaque.', 3186.00, NULL, NULL, '2021-01-16 08:59:54', '2021-01-16 08:59:54'),
(103, 'Et facilis.', 'Numquam ut magnam sunt perferendis quod veniam officia possimus molestiae doloribus dolorum iste nulla inventore qui laudantium ut itaque excepturi ut tempore nisi aut magni perferendis sit.', 2604.00, NULL, NULL, '2021-01-16 08:59:54', '2021-01-16 08:59:54'),
(104, 'Totam iste voluptatibus.', 'Facilis sunt temporibus repellat cupiditate temporibus quidem occaecati vel illo ut hic reiciendis facilis voluptatem quis neque.', 2235.00, NULL, NULL, '2021-01-16 08:59:54', '2021-01-16 08:59:54'),
(105, 'Dolores impedit id.', 'Voluptate doloremque necessitatibus suscipit ea vero ad sit velit eos quia quam neque eaque sit sint assumenda molestias officia ea.', 2941.00, NULL, NULL, '2021-01-16 08:59:54', '2021-01-16 08:59:54'),
(106, 'Et alias.', 'Dignissimos eaque doloribus voluptatum qui ut quia impedit laboriosam vitae nulla totam officiis facilis sapiente dicta quaerat id aliquid ipsam qui.', 1420.00, NULL, NULL, '2021-01-16 08:59:54', '2021-01-16 08:59:54'),
(107, 'Laboriosam tempore.', 'Aut sapiente nam perferendis natus ullam illum natus quaerat eum molestiae ad harum enim sint alias quam autem nostrum beatae dignissimos magnam repellendus vel est.', 1785.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(108, 'At et.', 'Cupiditate et mollitia voluptas animi fugiat eum maxime alias hic rerum facilis libero dolores molestiae.', 4269.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(109, 'Id adipisci laudantium.', 'Harum distinctio repudiandae perferendis est error labore impedit dolore qui blanditiis quidem impedit et molestias quas.', 2111.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(110, 'Unde ut.', 'Facilis non facere rerum minima et nulla eos consequatur nobis et dicta delectus sapiente ut deleniti sapiente consequuntur placeat reiciendis aut nihil assumenda reprehenderit sunt impedit neque consectetur.', 1397.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(111, 'Ducimus rerum.', 'Quibusdam id voluptates doloribus sunt aliquam aut dolores ut aut aperiam quia praesentium.', 3170.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(112, 'Ut magni est.', 'Cum voluptate itaque velit suscipit sunt corrupti dignissimos veritatis quia quam quam aut aspernatur commodi quos consequatur assumenda voluptatem cupiditate eos similique rerum fugit aut.', 446.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(113, 'Esse perferendis dolores.', 'Natus distinctio earum iste est iure numquam rem in quos quia ut eum est repellendus qui quia qui necessitatibus aut sequi veritatis autem est labore ipsum.', 355.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(114, 'Sunt cupiditate.', 'Delectus eveniet laudantium ut quasi quidem consequatur veritatis officiis sed eveniet odio ut magnam nulla est nostrum vero maxime eius quo quia recusandae.', 763.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(115, 'Tempore suscipit.', 'Libero debitis vitae rem quidem consequatur aut quis maxime rem rerum dignissimos delectus.', 4026.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(116, 'Voluptatibus sint.', 'Nisi at voluptates rerum deserunt harum sint iure ut et molestiae omnis eos molestiae voluptatem aliquid quisquam cumque nihil iure.', 4910.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(117, 'Quae aliquam voluptas.', 'Hic aut distinctio sequi culpa non mollitia laboriosam et repellat ullam corporis repellat libero maiores et quod rem aut id magni et reprehenderit.', 2228.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(118, 'Dolorem ea.', 'Possimus ut praesentium velit aliquam iure facilis expedita beatae est dolor modi numquam labore nesciunt corporis consequatur fugit optio aspernatur nesciunt perspiciatis debitis rerum occaecati nostrum qui quia.', 4840.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(119, 'Beatae omnis commodi.', 'Adipisci ab quam ratione illo vel et alias ut sequi vitae eos optio quia debitis odio autem qui nostrum dolor incidunt aut officia nihil.', 1685.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(120, 'Assumenda earum dolores.', 'Sint iure quis tenetur adipisci voluptatem ratione et hic esse cupiditate fugit eaque rerum similique expedita odit rerum.', 265.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(121, 'Explicabo voluptas.', 'Soluta nobis autem assumenda aspernatur facere doloremque ad laboriosam dolorem dolores vitae et sunt iure voluptatem.', 1582.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(122, 'Consequatur illo omnis.', 'At totam sit quo architecto illo aliquam inventore et et dolorum doloremque asperiores nulla quisquam harum eos.', 3809.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(123, 'Eius iure aliquam.', 'Voluptatem fugit est eos rerum beatae et nesciunt itaque quidem ratione porro enim libero voluptas omnis ut assumenda occaecati.', 122.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(124, 'Quod itaque et.', 'Id harum fugit perspiciatis ullam reprehenderit temporibus quia impedit enim repellat accusamus rerum ipsa rerum dolores suscipit.', 3371.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(125, 'Magnam qui perferendis.', 'Qui impedit sint tempore error ipsum libero molestiae minima expedita aut aut repudiandae doloremque totam voluptatibus sed voluptatem dolores omnis voluptatem nam nam.', 3004.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(126, 'Ratione tempora voluptatem.', 'Maiores et officia rerum veniam inventore ut dignissimos modi ipsa dicta quia dicta qui maxime delectus ex corrupti voluptatem quisquam dolor voluptas earum voluptatibus sed aliquam debitis explicabo.', 2211.00, NULL, NULL, '2021-01-16 08:59:55', '2021-01-16 08:59:55'),
(127, 'Quisquam explicabo.', 'Praesentium maiores officia ullam eius facilis consectetur itaque neque ipsa sapiente asperiores consectetur pariatur aspernatur quaerat eum aperiam rerum sint autem inventore eveniet.', 1856.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(128, 'Rerum provident.', 'Provident ut rem velit voluptatibus dolor tempora et aut natus unde pariatur quo sed fugit id est quia quisquam adipisci adipisci occaecati placeat.', 4127.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(129, 'Non architecto doloribus.', 'Voluptas recusandae nemo neque omnis sed quia ullam distinctio voluptates quaerat dicta reprehenderit.', 4874.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(130, 'Et est eum.', 'Ducimus enim harum inventore reiciendis culpa aut perferendis vero ullam dolorem sed illum ab qui voluptates aut in et.', 1464.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(131, 'Aliquid deserunt enim.', 'Ullam ut culpa itaque aut reprehenderit placeat sequi ut impedit libero quisquam architecto ducimus sed ullam ut est quasi.', 1221.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(132, 'Tempore recusandae sequi.', 'Ut tenetur modi nihil est dolor saepe harum nisi ipsam tempore ea est consequuntur itaque qui.', 1250.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(133, 'Aut est eaque.', 'Dolor quis ipsa reprehenderit tenetur sapiente facilis ea reprehenderit ut laborum optio veritatis fugit incidunt sit accusamus et impedit adipisci enim est.', 3148.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(134, 'Numquam quia reiciendis.', 'Vitae optio id adipisci non aut ipsa ducimus harum alias dolorem omnis ad.', 1617.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(135, 'Sit voluptas.', 'Doloribus beatae eveniet dicta ut inventore repellendus omnis cupiditate molestiae iure id voluptate aliquid deleniti nemo omnis incidunt incidunt delectus dolores pariatur.', 3031.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(136, 'Est saepe.', 'Debitis maiores sint animi adipisci sed et beatae eius fuga assumenda nobis aliquam tempore dignissimos molestiae sint quo tempore eos neque nam voluptatem.', 1143.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(137, 'Provident nobis.', 'Enim quibusdam quis provident molestias ut et qui eos eligendi quod architecto ullam sunt neque id nesciunt aut dolor aut ducimus a qui.', 2215.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(138, 'Quidem expedita in.', 'Qui fugit occaecati adipisci quis nostrum non numquam ipsa nostrum voluptatem et quia placeat voluptas recusandae et expedita tenetur.', 4100.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(139, 'Nostrum consequatur.', 'Aperiam harum vel occaecati non corrupti placeat magni perferendis et et voluptatem consequatur ipsa soluta quas id quia est dolores omnis a doloribus numquam necessitatibus rerum.', 793.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(140, 'Aut architecto qui.', 'Sed ullam in nemo nemo odio consequuntur et quae excepturi at porro qui magnam voluptatem et sed nulla non vitae commodi aspernatur nostrum voluptatem et.', 426.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(141, 'Voluptatum rerum neque.', 'Ut dolorem eius dolorem quia aut ut dolorem dolorem earum adipisci et ipsam voluptatem voluptas dignissimos minus repudiandae odit ipsam similique atque adipisci non.', 1217.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(142, 'A est ut.', 'Omnis eligendi deleniti odit asperiores quibusdam at et provident ipsam architecto ipsam alias dolor nihil officia fuga consequuntur.', 1287.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(143, 'Et iure in.', 'Maxime quia saepe harum quia ducimus aspernatur sunt et modi eaque repellendus non rerum nihil at deleniti modi doloremque non facilis.', 4897.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(144, 'Id veniam et.', 'Quis quo omnis autem corporis quibusdam aut delectus dolor rerum quod excepturi atque.', 2005.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(145, 'Aliquid dolorum ducimus.', 'Quae ex consequatur perspiciatis incidunt placeat odio odio blanditiis debitis qui voluptates dolores magni tempore aperiam eos et aut dolores commodi ea beatae.', 3735.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(146, 'Ut et.', 'Debitis quidem saepe et reprehenderit minima non eum in ut ad neque sed corrupti reprehenderit officia magnam.', 1764.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(147, 'Quasi blanditiis.', 'Architecto facere animi porro non expedita esse at provident expedita eos id id quis quod excepturi hic.', 1552.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(148, 'Qui et occaecati.', 'Tempore adipisci nostrum a commodi laudantium rerum quo ratione perspiciatis minima neque eum reprehenderit odit nulla omnis mollitia occaecati.', 1457.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(149, 'Quas cum.', 'Reprehenderit id atque perspiciatis consequatur rerum assumenda perspiciatis et libero aliquid laborum et aut enim quaerat autem eius dolorem praesentium dolor.', 735.00, NULL, NULL, '2021-01-16 08:59:56', '2021-01-16 08:59:56'),
(150, 'Labore sunt.', 'Et autem id ut harum ex vel quaerat quos ipsa iusto rerum qui aut sed.', 801.00, NULL, NULL, '2021-01-16 08:59:57', '2021-01-16 08:59:57'),
(151, 'Iste voluptatem.', 'Dolor enim harum quo facere earum adipisci voluptatem non est qui voluptatum sed ut cum ea aut voluptatibus et sequi molestiae alias exercitationem.', 3755.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(152, 'Porro neque.', 'Error quidem sint sit sed voluptatem recusandae quo consequuntur itaque consequatur repellat esse veritatis quo eius illo qui dolores maiores.', 300.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(153, 'Quisquam voluptatem distinctio.', 'Quis iste suscipit tenetur qui dolore quisquam sed et quos culpa nisi eligendi.', 2550.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(154, 'Est voluptatum.', 'Voluptatibus aut a in at voluptates molestiae aut aut culpa reiciendis in voluptatem veniam est voluptas quo odio molestias ut labore dolor distinctio ex.', 4612.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(155, 'Aut at amet.', 'Dignissimos eligendi odio eos corrupti at culpa iure consequatur iusto aut sapiente sit sint.', 1072.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(156, 'Quia impedit.', 'Amet quia consequatur quia velit harum qui quis corrupti nulla praesentium aut non fugit.', 1327.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(157, 'Et distinctio beatae.', 'Nihil veniam qui quia qui ipsa omnis hic commodi adipisci veritatis est a tempora provident nobis recusandae voluptatem quia.', 3631.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(158, 'Est debitis illum.', 'Alias commodi dignissimos quidem cum sint repellat temporibus autem quos nemo voluptatem et.', 4509.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(159, 'Molestiae qui itaque.', 'Nulla et reiciendis tempore ut minima quibusdam ut fugiat placeat debitis est accusamus aut mollitia nihil aut non.', 2442.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(160, 'Accusantium explicabo.', 'Veritatis quia consequuntur mollitia quam sint tempora aut dolor quia optio amet laudantium provident officia inventore asperiores tempora dolorem et et et alias.', 2394.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(161, 'Cumque aut aut.', 'Ut labore mollitia ratione ut impedit eum molestias quidem sit sit nisi est quis incidunt inventore tempore laborum ut sequi.', 2129.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(162, 'Repellendus similique doloremque.', 'Dolores voluptas molestiae rerum soluta deserunt nemo in voluptatibus quo consequatur quae dolorum sint sit a molestiae doloribus temporibus itaque et qui voluptatem necessitatibus sint voluptas vel.', 664.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(163, 'Et quo.', 'Eligendi consectetur quasi in eum possimus aperiam excepturi est aut quia exercitationem et vero ad.', 4830.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(164, 'Itaque occaecati.', 'A eos fuga fuga rerum qui est eum ut a quod consequatur placeat repellat et voluptatem commodi necessitatibus magni et omnis non.', 580.00, NULL, NULL, '2021-01-16 09:02:37', '2021-01-16 09:02:37'),
(165, 'Iusto est.', 'Qui non ut quaerat vel unde quaerat aut quod et natus et non labore consequatur quas harum.', 231.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(166, 'Repudiandae omnis.', 'Omnis nam corrupti vero est tempore aspernatur nostrum quo quisquam assumenda repellat omnis numquam deleniti tempore voluptatum velit libero voluptatem fuga nihil voluptatem.', 4096.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(167, 'Omnis sunt.', 'Suscipit et culpa reprehenderit odit maxime eligendi velit vitae consequatur quia voluptas ipsum.', 3861.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(168, 'Excepturi iure.', 'Aut quam quia molestiae ab vel provident incidunt ducimus est magnam soluta veritatis sint tempore perferendis quisquam consequuntur accusamus nobis veritatis aspernatur pariatur earum blanditiis omnis.', 2125.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(169, 'Asperiores iusto.', 'Dolorem fuga suscipit sunt dolore consectetur asperiores veniam qui minima qui ipsa aut fuga sint repellendus iste.', 3983.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(170, 'Ut voluptas sint.', 'Nihil autem veritatis veritatis quia sit provident similique saepe quam magni rerum reiciendis ipsum est voluptatum et aut eligendi cumque vel quibusdam vel optio asperiores nesciunt ut.', 569.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(171, 'Odit est voluptatem.', 'Facere commodi unde nulla amet accusantium iusto qui doloremque culpa blanditiis autem quos sapiente consequuntur quo consequuntur saepe quia adipisci magnam reiciendis velit qui.', 4568.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(172, 'Non repellat saepe.', 'Doloremque doloribus cumque deleniti deleniti reiciendis qui est vel consequatur quaerat blanditiis exercitationem cupiditate delectus temporibus ducimus consequatur cumque rerum labore tenetur eius repellendus odit.', 134.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(173, 'Dignissimos nam blanditiis.', 'Ea itaque vitae quis qui eos maiores expedita enim molestias iusto provident dolorem eos totam voluptatem vel in id quibusdam cupiditate voluptatum qui tempore aspernatur.', 2935.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(174, 'Et illo et.', 'Possimus possimus aut aut accusamus dolorem non expedita dolorem necessitatibus omnis quidem vitae tempora libero impedit.', 3187.00, NULL, NULL, '2021-01-16 09:02:38', '2021-01-16 09:02:38'),
(175, 'Ut et non.', 'Excepturi sequi et pariatur est voluptatem inventore beatae qui suscipit labore porro explicabo ut voluptas voluptas quasi quisquam autem.', 3619.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(176, 'Quo cupiditate ab.', 'Ex sequi alias est nihil aut sapiente ut itaque qui saepe pariatur et eius.', 2396.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(177, 'Sint eos.', 'Perferendis ut ab illo et vitae molestiae ea in laboriosam alias eius ea quisquam pariatur.', 1675.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(178, 'Qui est.', 'Et ratione quas quis quo nobis magnam laudantium quo esse nihil animi beatae quos.', 4537.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(179, 'Voluptatem quos soluta.', 'A non facilis veniam fuga rerum consequuntur aut sunt non consequatur sapiente explicabo quae et.', 592.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(180, 'Nihil aspernatur est.', 'Minus enim ratione inventore corrupti praesentium ipsa sunt illo dolorem explicabo porro mollitia magnam voluptatem.', 4288.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(181, 'Excepturi non.', 'Qui eum est nisi quo tempore dolore omnis et consequatur id nisi ex tempore perspiciatis illum.', 1211.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(182, 'Doloribus et.', 'Tempore necessitatibus quae sequi velit quasi deserunt non rerum aut voluptatem recusandae explicabo nesciunt fuga possimus eius eveniet laboriosam ipsam ipsam sed distinctio et ut.', 3789.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(183, 'Cumque alias.', 'Mollitia iure recusandae aut recusandae sed dignissimos natus cum quaerat cum non laborum soluta nam magnam.', 3000.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(184, 'Blanditiis ea.', 'Voluptas cum odit exercitationem et dolor ad omnis quo facilis molestiae eos libero molestiae fuga.', 2529.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(185, 'Cumque iusto.', 'Saepe enim soluta dolorem reprehenderit distinctio doloribus dolores voluptate hic iste esse qui aut similique impedit repellat accusantium quo.', 2052.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(186, 'Magni autem.', 'Aspernatur repudiandae commodi quis ex accusamus quo numquam laboriosam voluptatem quaerat quia iure placeat natus ratione quod at quos praesentium in neque sint.', 3727.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(187, 'Quia aliquam facilis.', 'Iste dignissimos consequatur voluptatibus saepe voluptate rem porro qui sequi rerum distinctio rerum et neque.', 4114.00, NULL, NULL, '2021-01-16 09:02:39', '2021-01-16 09:02:39'),
(188, 'Excepturi et.', 'Atque consequatur iste amet et non et fuga dolores saepe saepe optio quam vel aliquid veritatis recusandae.', 4596.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(189, 'Et hic quo.', 'Aut eos rerum deserunt voluptas ut adipisci error est occaecati officia ut incidunt saepe aut odio qui et ut asperiores.', 1763.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(190, 'Vitae et.', 'Minus alias quo velit ut est dignissimos qui dolores dolore saepe facere quo placeat voluptas fuga impedit enim quia iusto et dolores enim itaque dicta et ullam enim error.', 3315.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(191, 'Laborum et aut.', 'Officia voluptatibus rerum ea eveniet sequi asperiores dolor velit consequatur fugiat enim aut qui vel consequatur excepturi illum quo dolorum aut.', 892.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(192, 'Minus vitae.', 'Doloremque reiciendis fugit expedita excepturi aut facilis non dolorum rerum qui qui doloribus et sapiente ut iste omnis.', 3660.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(193, 'Nobis molestiae consectetur.', 'Est optio consequatur autem enim impedit et commodi adipisci voluptatem perspiciatis ab ipsam fugit officia debitis nesciunt consectetur.', 1011.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(194, 'Et sit illo.', 'Magnam fugit voluptatibus et deleniti id consequuntur minus et corporis molestias eos nostrum voluptatem accusantium fugit aliquid.', 1745.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(195, 'Quisquam temporibus mollitia.', 'Tempora iusto dolorum quae et optio fuga ipsum est soluta animi autem suscipit rem soluta nihil.', 4494.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(196, 'Nulla harum delectus.', 'Aut sit beatae porro dolores sed sunt perferendis vitae consequuntur omnis veniam consequatur at sunt et eum facere et molestias.', 1486.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(197, 'Voluptatibus id iste.', 'Quis exercitationem repudiandae nesciunt ex aut reiciendis ipsum voluptas minima delectus eum eos nulla totam molestiae quam.', 2397.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(198, 'Similique vero eaque.', 'Est quod cumque voluptatem animi et qui est non cum corrupti ad omnis qui illum et ut explicabo fugiat animi cumque corrupti aperiam ducimus consequuntur iusto sed.', 3948.00, NULL, NULL, '2021-01-16 09:02:40', '2021-01-16 09:02:40'),
(199, 'Qui est quo.', 'Voluptate sapiente odio perspiciatis nobis quidem nostrum velit labore laudantium sed accusantium aut.', 2836.00, NULL, NULL, '2021-01-16 09:02:41', '2021-01-16 09:02:41'),
(200, 'Omnis rem.', 'Est totam rerum dicta iusto suscipit velit sit libero possimus assumenda voluptas voluptatum enim quisquam rerum molestiae ut numquam nemo.', 1702.00, NULL, NULL, '2021-01-16 09:02:41', '2021-01-16 09:02:41'),
(201, 'Illum et.', 'Quia fugiat qui amet qui quia quasi sit sint praesentium commodi eum odio deserunt perspiciatis quidem eaque dolores non sunt laudantium omnis.', 2792.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(202, 'Aut natus.', 'Quo aut eos perferendis magnam sapiente quo eum voluptas et praesentium vel quam quia non non dolores laudantium repudiandae rerum at.', 2269.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(203, 'Sit odio eligendi.', 'Beatae accusantium iste hic iste et voluptatum facilis eligendi voluptatem qui voluptatem doloremque iusto non quibusdam quas dolores fugiat sit magni.', 2416.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(204, 'Enim iusto.', 'Suscipit nesciunt debitis reprehenderit itaque voluptatem qui magni placeat et laudantium iusto cumque optio eligendi sunt enim dicta fugit laborum porro.', 2194.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(205, 'Reprehenderit magni.', 'Qui illum aliquid nemo vel dolores ipsam labore voluptate et repudiandae temporibus omnis eligendi quos adipisci.', 1761.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(206, 'Ipsa maxime.', 'Repudiandae error magni facilis vel sunt sint non dicta rem autem dolores sed facilis qui id qui eum expedita harum aliquid fugiat atque magni reiciendis ut.', 2919.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(207, 'Illo accusantium.', 'Dolor officiis est quisquam officia est ab et similique exercitationem occaecati ut maiores autem asperiores omnis excepturi quasi est soluta tenetur molestias laboriosam iste.', 186.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(208, 'Dolor eos a.', 'Est libero veritatis amet suscipit voluptas ipsa voluptatem veniam qui minus incidunt debitis dolor iste quam dolore autem adipisci ratione et libero pariatur.', 1936.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(209, 'Quis facilis.', 'Voluptatibus dolorem harum nam cum et repudiandae cumque magnam aliquid aspernatur sed possimus aliquam quia minima laborum labore vel.', 3404.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(210, 'Aut dignissimos.', 'Ab dolor voluptatem corrupti est nisi placeat ipsam et id dolor autem accusantium quaerat ut.', 4206.00, NULL, NULL, '2021-01-16 09:03:43', '2021-01-16 09:03:43'),
(211, 'Repellat sapiente et.', 'Voluptas dignissimos veritatis et dolore accusantium eos voluptatem totam enim voluptatibus repellat labore sed earum id vero non temporibus id quos.', 476.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(212, 'Ab debitis at.', 'Error enim ut porro dignissimos voluptatem ducimus non earum et ut beatae amet at.', 4030.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(213, 'Voluptas distinctio.', 'Est sit est saepe cumque ipsa et aut dolorem nisi harum ut expedita facere praesentium similique voluptatem aut eveniet.', 3750.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(214, 'Neque repudiandae molestiae.', 'Sit et ea consequuntur explicabo doloremque similique est iusto placeat deleniti ut corrupti voluptatem fugiat deserunt vero ea mollitia est voluptatum repudiandae qui soluta minima.', 1327.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `cover_img`, `shop_id`, `created_at`, `updated_at`) VALUES
(215, 'Cumque vitae molestiae.', 'Earum occaecati reiciendis eos explicabo optio consequatur voluptate sapiente iure nihil dolor ex ipsa ea quibusdam beatae et eligendi voluptatem.', 4573.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(216, 'Velit fugiat.', 'Quo velit ex dolorum ut autem autem quia est voluptatem repudiandae dolorem asperiores quia dolorem tempora velit veniam fuga voluptates sunt corporis aut facere.', 3986.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(217, 'Dolorem cupiditate est.', 'Officia velit harum et dicta neque sapiente ullam debitis pariatur aut et maiores ut suscipit officia repellendus ipsam architecto quasi beatae eos animi perspiciatis ullam animi.', 1526.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(218, 'Dolor dolorum.', 'Assumenda tempora sequi dolorem aut aut et qui quo cumque assumenda est tempore veritatis at tempore itaque ut molestiae.', 4472.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(219, 'Id quasi.', 'Voluptates numquam delectus eius sunt sapiente rem totam excepturi aut accusantium et et ut perspiciatis molestias quisquam ut ducimus deleniti.', 258.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(220, 'Eum perspiciatis.', 'A et illum fugit sunt ut cum enim magnam eligendi at consectetur quas et est sed qui quod quia qui aut.', 438.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(221, 'Hic et.', 'Et et impedit deserunt modi dignissimos dignissimos aperiam voluptatem maiores quo provident dolor aperiam officia saepe ut atque quasi distinctio porro dolorem veritatis atque officiis vel quis.', 2195.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(222, 'Excepturi aperiam.', 'Voluptate occaecati quibusdam et quas voluptas voluptates vero dolor amet eveniet deleniti illo qui nesciunt est doloremque vel nam maxime corporis.', 4312.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(223, 'Eos libero.', 'Ipsam accusamus sit et accusantium ipsa laboriosam tempore earum saepe perferendis est a et vero sit laboriosam eveniet est voluptate.', 426.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(224, 'Non temporibus libero.', 'Sed repudiandae ut maiores in qui omnis sit deleniti sed nostrum quaerat rem tenetur quisquam beatae omnis iste eum dicta.', 4425.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(225, 'Et deleniti.', 'Dolor delectus quaerat ut consequatur et id enim quia molestiae consequuntur eius voluptate eos dolores.', 894.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(226, 'Commodi aut.', 'In provident quasi pariatur omnis consectetur nihil deleniti eveniet reiciendis provident possimus eum et et quaerat exercitationem nihil quis suscipit velit.', 1872.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(227, 'Ratione cupiditate.', 'Est ut qui consectetur consectetur placeat quisquam est tenetur voluptatibus doloremque doloremque est eligendi nobis occaecati facilis mollitia autem dolorum.', 1279.00, NULL, NULL, '2021-01-16 09:03:44', '2021-01-16 09:03:44'),
(228, 'In maiores.', 'Dolorem nihil laboriosam et sint unde vel nihil eaque eveniet soluta fugit voluptatibus et facilis voluptatem aut.', 3180.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(229, 'Molestiae quaerat.', 'Voluptas eius enim in tenetur corporis consequatur nostrum modi quaerat ut architecto consequatur est maiores consequatur ad.', 4484.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(230, 'Nihil illum non.', 'Sequi dolor sed perferendis laudantium aliquid rerum sapiente dolores dolores voluptas repellendus vel alias blanditiis rerum non.', 2537.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(231, 'Autem expedita.', 'In quo voluptatem nihil quis sed maiores ipsa quia sint autem eum placeat deleniti quo est dolores voluptatum nemo asperiores adipisci iusto voluptate voluptas est minus aspernatur.', 2689.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(232, 'Est est.', 'Quis magnam voluptas totam incidunt enim non dolores dolores aut magni tempore est qui sint ut et quia eum eum quis blanditiis porro odit enim.', 3399.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(233, 'Eum quos.', 'Enim asperiores qui at fuga quasi quibusdam sequi ex quidem aut ipsum quod in rerum labore ex sunt qui doloremque et sed harum tempore vero blanditiis sed sed.', 1207.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(234, 'Voluptatem voluptatum repellendus.', 'Et nihil qui voluptatem enim molestiae sint minus voluptas voluptate corrupti necessitatibus ea rerum ut sit vero voluptatem vel quaerat nesciunt aut illo.', 1306.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(235, 'Sit eaque saepe.', 'Ex eligendi modi sed voluptatibus optio voluptatem quis a ipsam repudiandae tempora consequuntur eaque et omnis numquam dolores.', 1089.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(236, 'Dolorum vel quisquam.', 'Error voluptatem consequatur qui numquam magni est voluptate molestiae mollitia esse maiores quisquam alias eum repudiandae quia in incidunt veniam placeat iure.', 1552.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(237, 'Amet voluptatum.', 'Voluptas molestiae eum iure ab corporis est sit incidunt ullam quis dolore qui ipsa ipsa eos nihil architecto qui facilis quia deleniti ut sed magni dolorem voluptas.', 3032.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(238, 'Sequi eos.', 'Dolorem quam enim eligendi asperiores autem consequatur sunt qui et ut quas magni cupiditate voluptate est aut ea reprehenderit veniam dolorum minima magnam porro quidem impedit sunt.', 4777.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(239, 'Dolores sunt.', 'Aliquid non mollitia ipsa dolores et atque molestiae amet cum asperiores sed harum porro dolor fuga iure aut aut illo qui sit soluta adipisci necessitatibus.', 176.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(240, 'Laudantium sequi.', 'Ut earum sed nulla omnis asperiores ratione non cupiditate eveniet et in voluptates sunt omnis ut modi inventore voluptatibus quam aut ut ea officia et ad aut qui debitis.', 2182.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(241, 'Aut perferendis.', 'Accusantium quasi architecto et esse ea est quisquam et iste voluptatum eum error.', 2774.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(242, 'Sunt non.', 'Laboriosam saepe laborum voluptas in mollitia ab quas rerum est aperiam eveniet quam voluptas eum nihil eligendi minus dignissimos dolor sed mollitia quidem quam vel.', 4713.00, NULL, NULL, '2021-01-16 09:03:45', '2021-01-16 09:03:45'),
(243, 'Nobis fugiat assumenda.', 'Eaque dolore nam voluptate consequuntur officiis voluptas consequatur voluptatem distinctio iure laudantium consequatur veritatis necessitatibus quo facilis id nobis aut omnis aut.', 1498.00, NULL, NULL, '2021-01-16 09:03:46', '2021-01-16 09:03:46'),
(244, 'Qui mollitia nisi.', 'Quis itaque sapiente voluptatem harum perferendis voluptatum voluptatem ullam quibusdam illo harum aut.', 4544.00, NULL, NULL, '2021-01-16 09:03:46', '2021-01-16 09:03:46'),
(245, 'Quo occaecati delectus.', 'A praesentium rerum fugit expedita aut nihil tenetur sunt ipsum id ut quo consequatur est est consectetur perferendis ea.', 3016.00, NULL, NULL, '2021-01-16 09:03:46', '2021-01-16 09:03:46'),
(246, 'Doloribus est et.', 'Reprehenderit numquam voluptates ipsam quo neque sed natus vero qui perferendis inventore enim delectus nihil rerum in itaque rerum iste omnis sit explicabo sint sit itaque.', 2546.00, NULL, NULL, '2021-01-16 09:03:46', '2021-01-16 09:03:46'),
(247, 'Totam minima.', 'Omnis et molestiae illum ut et vero cupiditate ipsam non non veritatis delectus dignissimos dolorum voluptate autem qui laboriosam dolor sit fugiat omnis.', 742.00, NULL, NULL, '2021-01-16 09:03:46', '2021-01-16 09:03:46'),
(248, 'Consequuntur vitae quae.', 'Doloremque inventore iusto quo sunt qui ut dolor dolorem dolor labore omnis aut voluptas est quibusdam sed sint rerum sapiente in quae ut voluptate architecto ut aspernatur.', 4219.00, NULL, NULL, '2021-01-16 09:03:46', '2021-01-16 09:03:46'),
(249, 'Soluta nesciunt.', 'Et et rerum libero similique ipsam magnam blanditiis officia minus quo nemo officiis et aut temporibus ut ut qui voluptatem accusantium.', 3892.00, NULL, NULL, '2021-01-16 09:03:46', '2021-01-16 09:03:46'),
(250, 'Nulla blanditiis saepe.', 'Nesciunt deserunt est illum quod explicabo nobis quos provident quis rem quisquam enim molestias mollitia ea alias mollitia enim enim.', 3394.00, NULL, NULL, '2021-01-16 09:03:46', '2021-01-16 09:03:46'),
(251, 'Et suscipit.', 'Et et nemo omnis ut earum debitis dignissimos quis maiores et iusto error sint ea aspernatur aut placeat molestiae soluta nihil placeat.', 3159.00, NULL, NULL, '2021-01-16 10:04:07', '2021-01-16 10:04:07'),
(252, 'Mollitia maiores possimus.', 'Fugit in veniam vero quo molestiae dignissimos laborum quibusdam ipsam quisquam sed mollitia optio sapiente eos explicabo quo recusandae consequatur rerum.', 1189.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(253, 'Et dolorem quo.', 'Omnis aut cum molestias est doloremque dolore blanditiis et velit sed id aliquam ad voluptatem at sit omnis nulla qui magnam.', 2835.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(254, 'Quae magni voluptatem.', 'Et maxime sapiente eos amet magni consequatur qui architecto voluptate adipisci sit blanditiis sed nesciunt est in et non aut.', 3037.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(255, 'Inventore error.', 'Aut eum est suscipit qui deserunt et sapiente suscipit voluptas quo recusandae voluptates deleniti in.', 818.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(256, 'Laboriosam et voluptate.', 'Et voluptatem deserunt dicta est vero quis in rem aut sint officiis nesciunt ex esse quae delectus quia non.', 142.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(257, 'Sed magni dicta.', 'Perspiciatis molestiae facere quibusdam est eaque qui natus rerum recusandae molestias facere vero.', 3481.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(258, 'Eaque consectetur.', 'Aut voluptatibus dolorem consequatur aspernatur ad architecto quo consequuntur fugiat eum et nam dicta eius id molestiae deleniti incidunt a magnam nostrum aut consequatur eius.', 1824.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(259, 'Eius omnis.', 'Natus molestias ipsam quasi sed facilis tenetur optio molestiae est occaecati nihil dolorum magnam illo ipsam id distinctio autem rerum illum aliquid pariatur.', 3317.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(260, 'Quia officia.', 'Esse aut voluptas ut animi ea adipisci qui laborum et corrupti cum veniam unde illo explicabo sint qui quisquam omnis et exercitationem sit rem.', 1595.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(261, 'Rerum reprehenderit non.', 'Doloremque earum voluptatem exercitationem eligendi impedit corporis dolor atque rerum rerum rerum optio molestiae debitis natus ea doloribus facilis delectus praesentium.', 4980.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(262, 'Officia dicta iure.', 'Qui velit accusantium odio animi assumenda sint modi voluptas pariatur qui esse voluptatem qui sequi culpa molestias explicabo velit velit consequatur dolor sit enim earum corrupti est.', 1239.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(263, 'Numquam maiores et.', 'Praesentium ut quod perspiciatis consectetur dicta et sunt enim corporis veniam nesciunt illum fugit illum ipsum optio reprehenderit repellendus a.', 3936.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(264, 'Dolor qui.', 'Quasi repudiandae excepturi ea aut cum et corporis ullam odit omnis placeat maxime hic totam aut veritatis blanditiis.', 857.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(265, 'Quia odit.', 'Nulla quaerat ea blanditiis rem vel harum pariatur et corrupti quisquam quisquam voluptatibus laudantium ipsam temporibus ad explicabo rerum laborum.', 4842.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(266, 'Aut ea.', 'Quidem aut illum quas dignissimos atque id assumenda dolore ut minima qui pariatur quaerat assumenda qui quis unde voluptas eum et commodi.', 606.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(267, 'Nostrum vitae corporis.', 'Ullam veritatis in voluptatem deleniti animi quis voluptatibus quo totam non itaque sed et itaque unde aspernatur aspernatur aut laudantium et.', 1336.00, NULL, NULL, '2021-01-16 10:04:08', '2021-01-16 10:04:08'),
(268, 'Quos quod nulla.', 'Suscipit facilis odio impedit nam enim facere magni et voluptate rerum aut qui dolore atque consequatur ut.', 1819.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(269, 'Explicabo temporibus.', 'Est vel quibusdam aliquam atque nulla iste vel nihil dolores odio dolorem rerum nesciunt explicabo placeat at officia incidunt ratione corporis.', 2599.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(270, 'In magni minima.', 'Veniam qui recusandae omnis sint ipsum officia illo magnam earum soluta eum quos alias voluptatum est eum quia quia eaque sint aut.', 1561.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(271, 'Ut illo laborum.', 'Molestiae accusamus ratione voluptatem ut excepturi repellat quam deserunt vel occaecati autem quo voluptatem dicta blanditiis quasi nobis esse voluptas repellendus qui rerum debitis id eligendi.', 435.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(272, 'Iste doloremque nulla.', 'Magnam eligendi facere recusandae odio accusamus odit enim reprehenderit facilis exercitationem impedit saepe id sit quis corrupti sed vel aut veritatis doloremque eum sit recusandae sint qui architecto.', 983.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(273, 'Voluptas cumque minus.', 'Ea eaque at pariatur occaecati iste non qui eius similique consequatur exercitationem laudantium hic et qui molestias.', 2420.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(274, 'Voluptates minus.', 'Placeat alias qui hic in earum consequatur quos expedita similique commodi mollitia aperiam quia numquam enim ea aperiam ut inventore et aliquid ut odit cum.', 2019.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(275, 'Incidunt voluptatem non.', 'Ea nisi et voluptatem rerum veniam similique ut corrupti velit sed animi fuga aspernatur aliquam eveniet et voluptas ut recusandae vitae ipsam molestiae optio iste aspernatur sunt sapiente architecto.', 1233.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(276, 'Sit velit.', 'Quod saepe numquam quae cumque minima maxime ut ut sit iure rerum doloribus molestiae at aperiam rem exercitationem quis tempora quisquam voluptate.', 2819.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(277, 'Soluta incidunt magnam.', 'Quasi est ducimus sit sit et sed dolore itaque molestiae praesentium ex ipsa distinctio possimus dolores.', 764.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(278, 'Dolorem veritatis veniam.', 'Aliquam excepturi dolores nostrum quibusdam et sed saepe aut esse soluta id omnis dolores fugiat repudiandae inventore amet.', 878.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(279, 'Voluptatem aut.', 'Et impedit est sunt unde quo deserunt quis beatae facilis ut commodi exercitationem dicta ullam laudantium.', 341.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(280, 'Eum et.', 'Dolorum qui maxime recusandae non sint voluptatem similique voluptas minima facilis distinctio dignissimos aut beatae ut nisi sit eaque harum beatae rerum numquam omnis id.', 3318.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(281, 'Quas reiciendis saepe.', 'Vel corporis consequatur voluptas corporis aut quas qui eum cum reprehenderit voluptatibus repudiandae sint aut expedita illo in qui libero voluptatibus atque incidunt quos velit velit vel expedita.', 4433.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(282, 'Quas magnam iure.', 'Sequi non dolor et eius cumque repellendus autem est reprehenderit dolorum iste cupiditate suscipit culpa voluptas molestiae facere voluptate voluptates maiores.', 4410.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(283, 'Soluta provident sint.', 'Quis reiciendis quia dicta officia impedit laborum aspernatur voluptas autem qui commodi autem.', 1007.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(284, 'Accusantium nihil voluptatibus.', 'Dolorem et exercitationem aut rerum doloribus esse velit non aspernatur dolores dignissimos qui occaecati velit rem repellat voluptatem harum sint qui ex aut dolores.', 1401.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(285, 'Beatae iste.', 'Mollitia sed porro vel ut sed voluptatum et harum quisquam odio voluptatem reprehenderit magni.', 4157.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(286, 'Et eum at.', 'Incidunt numquam est consequuntur vel quasi debitis repellat doloremque natus accusamus sed nihil ipsam enim ipsum aut inventore quis sapiente voluptatem eos ratione.', 3432.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(287, 'Nihil nostrum minima.', 'Et dolorem eos natus aut adipisci ex provident ducimus esse id odit voluptatum ut non laboriosam dolorem exercitationem autem qui quasi officia sint voluptates illo voluptates nihil.', 210.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(288, 'Ullam nostrum consequatur.', 'Ipsam error et iste aut reprehenderit assumenda cupiditate qui et quos aut mollitia ex sed sunt ut.', 1056.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(289, 'Voluptatum ea.', 'Quibusdam nulla assumenda rerum porro accusantium minus est perspiciatis quisquam quod cum sit harum fugit possimus repellendus expedita occaecati odit libero itaque.', 1573.00, NULL, NULL, '2021-01-16 10:04:09', '2021-01-16 10:04:09'),
(290, 'Non est.', 'Sit eos doloribus ipsum aut ut laboriosam ab officia esse omnis rerum repudiandae ipsam numquam quia quia consectetur.', 3932.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(291, 'Aut suscipit.', 'Voluptas modi architecto vel incidunt tempora dolorum illum dolor impedit possimus vitae reiciendis et autem repellat ad nobis beatae eius earum.', 4882.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(292, 'Saepe sequi.', 'Mollitia suscipit corporis accusantium non veniam dolor fuga odio quos incidunt sit et ex amet voluptatem ullam dolorem qui sunt consequatur sed velit vero necessitatibus.', 3236.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(293, 'Ullam earum.', 'Odio maiores iste enim reprehenderit porro voluptate necessitatibus reprehenderit fugiat aut in odio et.', 1341.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(294, 'Suscipit maxime.', 'Vitae at sit quas id minima quis dicta ad ut aut necessitatibus voluptate officiis qui tempora amet commodi mollitia vitae architecto saepe reiciendis.', 148.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(295, 'Laboriosam et vel.', 'Et voluptatum adipisci esse dignissimos dolorem enim velit quia sed laudantium quas eos facilis enim itaque ipsam.', 3814.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(296, 'Quisquam nihil.', 'Eum commodi nulla ut odio accusantium ipsam facilis quod quas vero est architecto unde voluptas.', 2828.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(297, 'Quidem in eveniet.', 'Perspiciatis optio omnis voluptatem aut aut id illum voluptatem debitis beatae mollitia culpa mollitia ut possimus sint aliquid dolor consequuntur nihil excepturi ut tempore.', 904.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(298, 'Molestiae dolor delectus.', 'Eos consequatur corporis ut et quam repudiandae reiciendis numquam voluptatibus nihil et accusamus voluptas labore pariatur rerum et alias culpa amet officia suscipit itaque.', 2727.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(299, 'Doloribus consequuntur sed.', 'Explicabo eaque deserunt nihil et facilis est nesciunt est est pariatur omnis numquam officiis ipsam neque ad repellat error blanditiis necessitatibus et pariatur qui vel totam.', 4310.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(300, 'Illum expedita dolorem.', 'Officiis voluptate ut ea et sapiente iste quam temporibus voluptas quis vero quis quod ea commodi ipsa veritatis et.', 3842.00, NULL, NULL, '2021-01-16 10:04:10', '2021-01-16 10:04:10'),
(301, 'Eum consectetur omnis.', 'Quisquam voluptatem animi esse explicabo magnam iste harum architecto quos itaque nulla aut veniam perspiciatis autem assumenda.', 3040.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(302, 'Animi quibusdam necessitatibus.', 'Quibusdam distinctio quisquam sit qui aspernatur voluptatibus voluptas animi nulla error et voluptatem rerum officiis voluptates nihil ut.', 2474.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(303, 'Fugit nesciunt provident.', 'Pariatur veritatis tempore aut dignissimos enim dolor velit consequuntur quia reiciendis accusantium quis itaque consequatur officiis quia tempora explicabo repellendus minima sunt.', 1840.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(304, 'Porro dicta dolorum.', 'Tempore pariatur harum sunt est et expedita saepe quis amet impedit laboriosam numquam dolore.', 2763.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(305, 'Recusandae omnis.', 'Quia provident delectus et laboriosam voluptas sed qui est aperiam omnis aliquid ratione saepe ut nihil voluptatem minima.', 4482.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(306, 'Error veritatis.', 'Perspiciatis aliquam minima tempora dicta corporis accusamus temporibus atque enim ab ab est doloremque iure repellat cupiditate.', 1418.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(307, 'Voluptas corrupti.', 'At et repudiandae et labore eos tempore temporibus praesentium quam sed quia est.', 1735.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(308, 'Officiis atque eos.', 'Perferendis nostrum sunt consequatur quo autem rerum consequatur nesciunt cum voluptatum ut doloribus quo a aut optio quae optio.', 1689.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(309, 'Tempore explicabo.', 'Possimus cum ut nesciunt dolorum aut illum nihil ducimus cupiditate iste sit maxime adipisci sequi ut minus nulla adipisci officia.', 3322.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(310, 'Quia nostrum qui.', 'Voluptatibus porro esse necessitatibus nesciunt deserunt dolorem est nulla aperiam et repellat nemo atque soluta repellat deleniti facilis excepturi enim et.', 2616.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(311, 'Accusantium est consequatur.', 'Earum quam tempore dolor magnam nemo reprehenderit dicta ad perferendis quis laudantium nobis quo nulla nisi quasi delectus libero architecto facere aut ducimus enim alias est.', 3421.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(312, 'Provident quam.', 'Perferendis dolores at quo cumque ab in quia at laborum sunt commodi adipisci veritatis facilis magnam asperiores sed quos accusantium illo sapiente nihil voluptate impedit.', 1162.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(313, 'Perspiciatis officia harum.', 'Expedita numquam temporibus hic dicta et non quia esse ex eveniet delectus et iure ut perferendis ea blanditiis sit reprehenderit error rerum.', 4796.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(314, 'Sequi mollitia.', 'Enim est vel eum voluptas et iusto aut esse sed ratione inventore praesentium asperiores numquam dolores quam voluptas dolores atque omnis nulla et non.', 4525.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(315, 'Est repellendus minima.', 'Qui quia reprehenderit autem omnis voluptas dolor itaque quidem itaque laborum odio eveniet numquam iusto non aspernatur mollitia soluta nulla consequatur itaque ab ipsa qui adipisci vitae et.', 2666.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(316, 'Odit autem blanditiis.', 'Nesciunt suscipit tenetur quasi a similique dolorem sed magni ullam voluptate autem magnam earum nulla quis.', 600.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(317, 'Repellendus rerum est.', 'Quo error illum esse ducimus non dolorem ut facilis iure vero aperiam iste earum illo dolore adipisci maiores occaecati.', 1971.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(318, 'Iste aut.', 'Eum pariatur sunt possimus enim quisquam architecto facere veniam tenetur sit et beatae accusantium eligendi omnis dolor id explicabo nulla quam pariatur ut dolorem eveniet.', 2274.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(319, 'Velit quidem delectus.', 'Pariatur fuga similique odit molestiae rerum voluptatem quasi aliquid totam ullam quis nobis quo pariatur dolor.', 1056.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(320, 'Molestias quam.', 'In totam ipsam dolorem officia modi qui culpa quisquam non provident dolores voluptatem ratione dignissimos nihil et illo accusamus nihil autem pariatur nostrum quo commodi et.', 2814.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(321, 'Pariatur nulla.', 'Architecto dolores temporibus labore eveniet fuga ullam aliquam qui aut sit voluptatem voluptatem quasi quos aut voluptate sit provident architecto quidem consectetur inventore.', 4094.00, NULL, NULL, '2021-01-16 10:06:57', '2021-01-16 10:06:57'),
(322, 'Fugit qui.', 'Voluptates ea atque ut aut quaerat amet quo iure sunt quas eveniet quas minima est nostrum qui maiores vitae enim.', 1626.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(323, 'Dolorem eveniet libero.', 'Hic ipsa rem incidunt sit reiciendis in neque fugiat repellat nisi vero incidunt laborum laudantium dolorum fugiat laboriosam adipisci necessitatibus et velit asperiores fugiat eos soluta nihil.', 2093.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(324, 'Quia aliquam impedit.', 'Eligendi illum inventore autem error sit fugiat dolores aut cumque dolore cum molestias repudiandae vitae debitis consequuntur eos laudantium magnam ex rerum minus dolores quae aut.', 1583.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(325, 'Voluptates at sint.', 'Odio facilis culpa numquam aut quia non iure aspernatur illo quasi dolorem aut voluptatem sapiente eius dolor.', 1552.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(326, 'Voluptatibus necessitatibus distinctio.', 'Et et tempore reiciendis et nihil nam et sint tempore ipsam voluptas praesentium temporibus et nam illum ut doloribus error occaecati maxime dolor repellendus.', 620.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(327, 'Consequatur praesentium.', 'Harum aut consequuntur repellat est quidem qui et nemo molestiae et nostrum omnis tenetur quia maiores nulla officiis laudantium quas voluptates quas magni quia.', 1000.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(328, 'Nesciunt tenetur.', 'Iste cupiditate est qui velit necessitatibus modi omnis in id rerum et similique occaecati sit placeat.', 3032.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(329, 'Occaecati est.', 'Tempore nesciunt voluptas accusamus amet possimus laborum itaque magnam impedit expedita at voluptates ad itaque modi in nobis velit sit rerum distinctio dignissimos.', 3737.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(330, 'Ducimus aut omnis.', 'Magni dolores quas odio consequatur earum aut quos culpa aut officiis ut aliquam similique reiciendis.', 3668.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(331, 'Et aut cumque.', 'Veniam qui laudantium tempore dolorem dolores eius delectus ipsum nesciunt enim assumenda animi quaerat similique iste sit rerum maxime animi hic.', 3491.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(332, 'Ab dolorem.', 'Veniam non sunt ullam nobis quod nulla quo in corporis quae dicta consequatur consequatur rerum soluta ut asperiores rem et cum ullam aut.', 4338.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(333, 'Ad atque.', 'Dolore id cum consequatur consequatur consequatur quae explicabo ut veritatis earum dolorem voluptatem quibusdam doloremque accusantium qui minus consequuntur.', 675.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(334, 'Porro sint.', 'Quos rerum quos expedita ut itaque et at soluta culpa dolorum quae soluta et totam vel quia aut et sit alias assumenda alias.', 3527.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(335, 'Esse et id.', 'Non reiciendis sunt saepe aut ducimus quis adipisci et inventore dolores quo consequuntur ut id a molestiae sit et.', 3929.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(336, 'Neque architecto architecto.', 'Tempore et debitis aut sequi quia sit et nulla ex optio veniam qui neque.', 4704.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(337, 'Quisquam beatae cum.', 'Ut qui facilis accusantium reiciendis eum blanditiis quaerat minus quia totam rerum itaque quo tempora mollitia est expedita blanditiis assumenda commodi aut ut nisi libero omnis.', 4038.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(338, 'Deserunt ipsa est.', 'Ut et quod error odit facilis et ut corporis ipsum accusamus nisi hic ex esse laboriosam natus ut dicta officiis alias mollitia et magnam quas.', 708.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(339, 'Dignissimos nulla ipsam.', 'Non sequi sed non aperiam quaerat et aperiam beatae sit vel tempore tenetur saepe nulla omnis dignissimos perferendis.', 4134.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(340, 'Id repellat.', 'Rerum accusantium maxime nihil ducimus qui asperiores minima quis aut laborum quod reprehenderit sit aperiam officiis rerum dolor necessitatibus quo soluta unde dolores.', 3362.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(341, 'Illo expedita repellat.', 'Ea repellendus labore dolor sit aliquam tempora eos vel illum numquam pariatur iste enim dolorum vel sit ipsam sequi et excepturi reprehenderit quis eos.', 4055.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(342, 'Quia veniam.', 'Placeat quas pariatur sapiente ea necessitatibus vel molestias hic sed modi architecto unde mollitia nam qui eligendi animi temporibus explicabo enim.', 3988.00, NULL, NULL, '2021-01-16 10:06:58', '2021-01-16 10:06:58'),
(343, 'Illum eos consequatur.', '<p>Repudiandae adipisci ea ut facere qui assumenda omnis fuga atque a iusto natus vitae sed nihil voluptatem corrupti ut ab voluptatibus.</p>', 3953.00, 'products\\January2021\\sIbkraUQ6uPAGVlpJhTi.jpg', NULL, '2021-01-16 10:06:00', '2021-01-16 11:12:01'),
(344, 'Aliquam voluptate ad.', '<p>Sit reiciendis sit dolor nemo et asperiores facilis quis nostrum velit repellendus aut voluptatem quae enim ab et cum cum dolore exercitationem iure.</p>', 3714.00, 'products\\January2021\\1k7XANxOgSHQRDhFkSfF.jpg', NULL, '2021-01-16 10:06:00', '2021-01-16 11:12:31'),
(345, 'Eaque necessitatibus.', '<p>Et rerum reprehenderit facere quo quia qui nostrum veniam dolores facilis soluta aperiam et blanditiis dolorem accusantium ut ut omnis officiis est.</p>', 2896.00, 'products\\January2021\\n95cGHTOa96HqxavOzMk.jpg', NULL, '2021-01-16 10:06:00', '2021-01-16 11:13:24'),
(346, 'Quia tempore.', '<p>Debitis quae saepe suscipit eos excepturi rerum consequuntur quia quas et sint quasi debitis fugiat.</p>', 0.00, NULL, NULL, '2021-01-16 10:06:00', '2021-01-16 11:14:47'),
(347, 'Tenetur quo distinctio.', 'Provident dolores et facere in consectetur est nihil libero saepe consectetur quo laborum quia voluptas delectus in id cum voluptas ut fugit corporis rem quae est nihil et.', 1144.00, NULL, NULL, '2021-01-16 10:06:59', '2021-01-16 10:06:59'),
(348, 'Quis incidunt.', 'Sunt voluptatem tempora veniam dignissimos nulla suscipit libero qui consequatur magni sit facilis.', 771.00, NULL, NULL, '2021-01-16 10:06:59', '2021-01-16 10:06:59'),
(349, 'test', '<p>Dicta iste adipisci ullam omnis tempore neque iusto deserunt tempora beatae placeat assumenda blanditiis reiciendis ducimus aut illum ut.</p>', 4146.00, 'products\\January2021\\lw64x1wnbs56d1F3xbKp.jpg', NULL, '2021-01-16 10:06:00', '2021-01-16 11:16:18'),
(350, 'Totam fugiat.', 'Placeat amet possimus sunt nisi velit rerum molestias excepturi maxime consequuntur inventore ab eos autem voluptatem doloremque tempore.', 2013.00, NULL, NULL, '2021-01-16 10:06:59', '2021-01-16 10:06:59');

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
(1, 'admin', 'Administrator', '2021-01-16 09:07:12', '2021-01-16 09:07:12'),
(2, 'user', 'Normal User', '2021-01-16 09:15:38', '2021-01-16 09:15:38'),
(3, 'seller', 'seller', '2021-01-16 10:35:19', '2021-01-16 10:35:19');

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
(3, 'computer shop', 8, 1, 'computer parts', NULL, '2021-01-16 10:41:00', '2021-01-16 10:41:55'),
(4, 'dell', 9, 1, 'damacai', NULL, '2021-01-16 10:58:00', '2021-01-16 10:59:26');

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
(4, 1, 'shatis', 'shatiswaran94@gmail.com', 'users/default.png', NULL, '$2y$10$lanzYdPRPNwalL6EwTomf.pqFOF5uf9Fg9fR4ATleEwnNdymIOuMW', NULL, NULL, '2021-01-16 10:10:42', '2021-01-16 10:10:42'),
(5, 2, 'customer', 'customer@gmail.com', 'users/default.png', NULL, '$2y$10$iJ6HPOeUX/EFkf/RSuxVC.yrQfMtkPu/lgZ3g4dFnhPnAuldgX2d.', NULL, NULL, '2021-01-16 10:11:37', '2021-01-16 10:11:37'),
(7, 2, 'customer 2', 'customer2@gmail.com', 'users/default.png', NULL, '$2y$10$1yOXqS5nxWI.2SeUYFB1NOHMYV9VDcosm70HLV/e6uBCvrH/dfaRi', NULL, NULL, '2021-01-16 10:14:25', '2021-01-16 10:14:25'),
(8, 3, 'Seller', 'seller@gmail.com', 'users/default.png', NULL, '$2y$10$GgOk4Hj5a/pQtUgY.McsYeN.JK1.raQI6XnDWLl18A5nq87I3bKNO', NULL, NULL, '2021-01-16 10:23:44', '2021-01-16 10:41:59'),
(9, 3, 'seller 2', 'seller2@gmail.com', 'users/default.png', NULL, '$2y$10$U9r.QRLFs.BAQ7HqEPqQr.yt.RfazFpWQB7M5BPbGxtHWDhbWU5bO', NULL, NULL, '2021-01-16 10:31:23', '2021-01-16 10:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

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
