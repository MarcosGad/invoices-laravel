-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 12:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoices`
--

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '5555', '2020-11-09', '2020-11-22', 'القروض الشخصية', 1, '150000.00', '5000.00', '1000.00', '200.00', '5%', '4200.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-09 07:06:56', '2020-11-09 07:06:56'),
(2, '6666', '2020-11-09', '2020-12-08', 'القروض الشخصية', 1, '50000.00', '4000.00', '100.00', '195.00', '5%', '4095.00', 'مدفوعة', 1, NULL, '2020-11-30', NULL, '2020-11-09 07:07:51', '2020-11-09 07:10:00'),
(3, '3333', '2020-11-09', '2020-11-26', 'القروض الشخصية', 1, '55000.00', '3000.00', '50.00', '147.50', '5%', '3097.50', 'مدفوعة جزئيا', 3, NULL, '2020-11-30', NULL, '2020-11-09 07:08:35', '2020-11-09 07:10:29'),
(4, '7777', '2020-11-03', '2020-11-05', 'القروض الشخصية', 1, '50000.00', '10000.00', '2000.00', '400.00', '5%', '8400.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-09 07:12:28', '2020-11-09 07:12:28'),
(5, '9090', '2020-11-13', '2020-11-22', 'القروض الشخصية للعربى', 2, '150000.00', '100000.00', '20000.00', '4000.00', '5%', '84000.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-13 06:28:03', '2020-11-13 06:28:03'),
(6, '5050', '2020-11-13', '2020-12-22', 'القروض الشخصية للعربى', 2, '50000.00', '40000.00', '0.00', '2000.00', '5%', '42000.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-13 06:28:44', '2020-11-13 06:28:44'),
(7, 'xxx', '2020-11-25', '2020-11-30', 'القروض الشخصية', 1, '50000.00', '12000.00', '6000.00', '300.00', '5%', '6300.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-25 08:17:27', '2020-11-25 08:17:27'),
(8, 'xxx2', '2020-11-25', '2020-11-23', 'القروض الشخصية', 1, '50000.00', '10000.00', '200.00', '490.00', '5%', '10290.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-25 08:19:21', '2020-11-25 08:19:21'),
(9, 'xxx3', '2020-11-25', '2020-11-30', 'القروض الشخصية', 1, '80000.00', '50000.00', '5000.00', '2250.00', '5%', '47250.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-25 08:27:00', '2020-11-25 08:27:00'),
(10, 'ooooo', '2020-11-25', '2020-11-29', 'القروض الشخصية', 1, '50000.00', '40000.00', '5000.00', '1750.00', '5%', '36750.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-25 08:29:51', '2020-11-25 08:29:51'),
(11, 'ppp', '2020-11-25', '2020-11-30', 'القروض الشخصية للعربى', 2, '5000.00', '1000.00', '50.00', '47.50', '5%', '997.50', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-25 08:30:39', '2020-11-25 08:30:39'),
(12, 'yoyo', '2020-11-27', '2020-11-30', 'القروض الشخصية', 1, '150000.00', '100000.00', '60000.00', '2000.00', '5%', '42000.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-27 05:56:00', '2020-11-27 05:56:00'),
(13, '8585u', '2020-11-27', '2020-11-30', 'القروض الشخصية للعربى', 2, '55000.00', '50000.00', '5000.00', '2250.00', '5%', '47250.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-27 06:35:18', '2020-11-27 06:35:18'),
(14, '85858', '2020-11-27', '2020-11-29', 'القروض الشخصية للعربى', 2, '150000.00', '100000.00', '0.00', '10000.00', '10%', '110000.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-11-27 09:07:08', '2020-11-27 09:07:08'),
(15, '88988', '2020-12-03', '2020-12-28', 'القروض الشخصية للعربى', 2, '150000.00', '15500.00', '5.00', '774.75', '5%', '16269.75', 'غير مدفوعة', 2, NULL, NULL, NULL, '2020-12-03 18:00:52', '2020-12-03 18:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_details`
--

CREATE TABLE `invoices_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Invoice` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Section` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_details`
--

INSERT INTO `invoices_details` (`id`, `id_Invoice`, `invoice_number`, `product`, `Section`, `Status`, `Value_Status`, `Payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(1, 1, '5555', 'القروض الشخصية', '1', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-09 07:06:56', '2020-11-09 07:06:56'),
(2, 2, '6666', 'القروض الشخصية', '1', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-09 07:07:51', '2020-11-09 07:07:51'),
(3, 3, '3333', 'القروض الشخصية', '1', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-09 07:08:36', '2020-11-09 07:08:36'),
(4, 2, '6666', 'القروض الشخصية', '1', 'مدفوعة', 1, '2020-11-30', NULL, 'MarcosGad', '2020-11-09 07:10:00', '2020-11-09 07:10:00'),
(5, 3, '3333', 'القروض الشخصية', '1', 'مدفوعة جزئيا', 3, '2020-11-30', NULL, 'MarcosGad', '2020-11-09 07:10:30', '2020-11-09 07:10:30'),
(6, 4, '7777', 'القروض الشخصية', '1', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-09 07:12:28', '2020-11-09 07:12:28'),
(7, 5, '9090', 'القروض الشخصية للعربى', '2', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-13 06:28:03', '2020-11-13 06:28:03'),
(8, 6, '5050', 'القروض الشخصية للعربى', '2', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-13 06:28:44', '2020-11-13 06:28:44'),
(9, 7, 'xxx', 'القروض الشخصية', '1', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-25 08:17:27', '2020-11-25 08:17:27'),
(10, 8, 'xxx2', 'القروض الشخصية', '1', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-25 08:19:21', '2020-11-25 08:19:21'),
(11, 9, 'xxx3', 'القروض الشخصية', '1', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-25 08:27:01', '2020-11-25 08:27:01'),
(12, 10, 'ooooo', 'القروض الشخصية', '1', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-25 08:29:51', '2020-11-25 08:29:51'),
(13, 11, 'ppp', 'القروض الشخصية للعربى', '2', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-25 08:30:39', '2020-11-25 08:30:39'),
(14, 12, 'yoyo', 'القروض الشخصية', '1', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-27 05:56:01', '2020-11-27 05:56:01'),
(15, 13, '8585u', 'القروض الشخصية للعربى', '2', 'غير مدفوعة', 2, NULL, NULL, 'user', '2020-11-27 06:35:18', '2020-11-27 06:35:18'),
(16, 14, '85858', 'القروض الشخصية للعربى', '2', 'غير مدفوعة', 2, NULL, NULL, 'MarcosGad', '2020-11-27 09:07:08', '2020-11-27 09:07:08'),
(17, 15, '88988', 'القروض الشخصية للعربى', '2', 'غير مدفوعة', 2, NULL, NULL, 'user', '2020-12-03 18:00:52', '2020-12-03 18:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2020_10_23_083436_create_sections_table', 1),
(5, '2020_10_23_111716_create_products_table', 1),
(6, '2020_10_24_093322_create_invoices_table', 1),
(7, '2020_10_24_094428_create_invoice_attachments_table', 1),
(8, '2020_10_24_1_create_invoices_details_table', 1),
(9, '2020_10_29_104512_create_permission_tables', 1),
(10, '2020_11_25_092751_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('072bc9ed-99b9-42ca-b737-7bc4c04e58f9', 'App\\Notifications\\Add_invoice_new', 'App\\User', 2, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"user\"}', NULL, '2020-12-03 18:00:56', '2020-12-03 18:00:56'),
('4fe43b06-277e-41bb-b35b-29122aae6f1e', 'App\\Notifications\\Add_invoice_new', 'App\\User', 2, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"MarcosGad\"}', NULL, '2020-11-27 09:07:10', '2020-11-27 09:07:10'),
('5f8dd2c2-9a4f-4582-a50d-c5590f04b295', 'App\\Notifications\\Add_invoice_new', 'App\\User', 1, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"user\"}', '2020-12-03 18:06:19', '2020-11-27 06:35:19', '2020-12-03 18:06:19'),
('82dee1a7-bc50-4656-aeeb-550bc27494c0', 'App\\Notifications\\Add_invoice_new', 'App\\User', 2, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"user\"}', NULL, '2020-11-27 06:35:19', '2020-11-27 06:35:19'),
('89130958-ab8a-407c-81a5-e2f1dfb648a4', 'App\\Notifications\\Add_invoice_new', 'App\\User', 1, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"user\"}', NULL, '2020-12-03 18:00:56', '2020-12-03 18:00:56'),
('97df1838-4128-4842-8c4c-5614bc3d9686', 'App\\Notifications\\Add_invoice_new', 'App\\User', 1, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"MarcosGad\"}', NULL, '2020-11-27 09:07:10', '2020-11-30 15:10:13');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'الفواتير', 'web', '2020-11-01 07:07:35', '2020-11-01 07:07:35'),
(2, 'قائمة الفواتير', 'web', '2020-11-01 07:07:36', '2020-11-01 07:07:36'),
(3, 'الفواتير المدفوعة', 'web', '2020-11-01 07:07:36', '2020-11-01 07:07:36'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2020-11-01 07:07:36', '2020-11-01 07:07:36'),
(5, 'الفواتير الغير مدفوعة', 'web', '2020-11-01 07:07:36', '2020-11-01 07:07:36'),
(6, 'ارشيف الفواتير', 'web', '2020-11-01 07:07:36', '2020-11-01 07:07:36'),
(7, 'التقارير', 'web', '2020-11-01 07:07:36', '2020-11-01 07:07:36'),
(8, 'تقرير الفواتير', 'web', '2020-11-01 07:07:36', '2020-11-01 07:07:36'),
(9, 'تقرير العملاء', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(10, 'المستخدمين', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(11, 'قائمة المستخدمين', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(12, 'صلاحيات المستخدمين', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(13, 'الاعدادات', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(14, 'المنتجات', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(15, 'الاقسام', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(16, 'اضافة فاتورة', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(17, 'حذف الفاتورة', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(18, 'تصدير EXCEL', 'web', '2020-11-01 07:07:37', '2020-11-01 07:07:37'),
(19, 'تغير حالة الدفع', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(20, 'تعديل الفاتورة', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(21, 'اضافة مرفق', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(22, 'حذف المرفق', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(23, 'اضافة مستخدم', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(24, 'تعديل مستخدم', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(25, 'حذف مستخدم', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(26, 'عرض صلاحية', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(27, 'اضافة صلاحية', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(28, 'تعديل صلاحية', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(29, 'حذف صلاحية', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(30, 'اضافة منتج', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(31, 'تعديل منتج', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(32, 'حذف منتج', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(33, 'اضافة قسم', 'web', '2020-11-01 07:07:38', '2020-11-01 07:07:38'),
(34, 'تعديل قسم', 'web', '2020-11-01 07:07:39', '2020-11-01 07:07:39'),
(35, 'حذف قسم', 'web', '2020-11-01 07:07:39', '2020-11-01 07:07:39'),
(36, 'الاشعارات', 'web', NULL, NULL),
(37, 'طباعة الفاتورة', 'web', NULL, NULL),
(38, 'ارشفة الفاتورة', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'القروض الشخصية', NULL, 1, '2020-11-09 07:05:27', '2020-11-09 07:05:27'),
(2, 'القروض الشخصية للعربى', NULL, 2, '2020-11-13 06:26:37', '2020-11-13 06:26:37'),
(3, 'منتج', NULL, 2, '2020-11-13 07:17:09', '2020-11-13 07:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2020-11-01 07:09:38', '2020-11-01 07:09:38'),
(2, 'user', 'web', '2020-11-01 07:26:47', '2020-11-01 07:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
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
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `description`, `Created_by`, `created_at`, `updated_at`) VALUES
(1, 'البنك الأهلى', NULL, 'MarcosGad', '2020-11-09 07:04:51', '2020-11-09 07:04:51'),
(2, 'البنك العربى', NULL, 'MarcosGad', '2020-11-13 06:25:43', '2020-11-13 06:25:43');

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
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MarcosGad', 'admin@admin.com', NULL, '$2y$10$YkE5Jvbp89U5JW2jtOcyd.GFr56orNbvEbhJECrmPUl5doXC9b3eW', '[\"owner\"]', 'مفعل', NULL, '2020-11-01 07:09:37', '2020-11-01 07:09:37'),
(2, 'user', 'user@user.com', NULL, '$2y$10$ke.l6S/fX1L3CGP4d24SEuXmrypqIkGDiyjr.2dMJo9jO83FCBklC', '[\"user\"]', 'مفعل', NULL, '2020-11-01 07:54:54', '2020-11-04 08:41:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_id_invoice_foreign` (`id_Invoice`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoices_details`
--
ALTER TABLE `invoices_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD CONSTRAINT `invoices_details_id_invoice_foreign` FOREIGN KEY (`id_Invoice`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD CONSTRAINT `invoice_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
