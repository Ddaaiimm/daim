-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 12:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

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
-- Table structure for table `college_classes`
--

CREATE TABLE `college_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `college_classes`
--

INSERT INTO `college_classes` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MI-VII', '2021-01-05 03:22:03', '2021-01-05 03:22:29', NULL),
(2, 'TI-VIIA-DATABASE', '2021-01-05 03:22:43', '2021-01-05 03:22:43', NULL),
(3, 'TI-VIIA-JARINGAN', '2021-01-05 03:23:01', '2021-01-05 03:23:01', NULL),
(4, 'TI-VIIB-DATABASE', '2021-01-05 03:23:17', '2021-01-05 03:23:17', NULL),
(5, 'TI-VIIB-JARINGAN', '2021-01-05 03:24:36', '2021-01-05 03:24:36', NULL),
(6, 'SI-VIIA', '2021-01-05 03:40:17', '2021-01-05 03:40:17', NULL),
(7, 'SI-VIIB', '2021-01-05 03:40:30', '2021-01-05 03:40:30', NULL),
(8, 'MI-VI', '2021-01-05 19:07:58', '2021-01-05 19:07:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `weekday` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `weekday`, `start_time`, `end_time`, `created_at`, `updated_at`, `deleted_at`, `dosen_id`, `class_id`) VALUES
(1, 3, '08:30:00', '10:30:00', '2021-01-05 03:41:59', '2021-01-05 10:18:40', NULL, 3, 2),
(2, 2, '12:30:00', '14:30:00', '2021-01-05 22:23:57', '2021-01-05 22:23:57', NULL, 3, 7);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2020_02_20_000001_create_permissions_table', 1),
(8, '2020_02_20_000002_create_roles_table', 1),
(9, '2020_02_20_000003_create_users_table', 1),
(10, '2020_02_20_000004_create_time_entries_table', 1),
(11, '2020_02_20_000005_create_permission_role_pivot_table', 1),
(12, '2020_02_20_000006_create_role_user_pivot_table', 1),
(13, '2020_02_20_000007_add_relationship_fields_to_time_entries_table', 1),
(14, '2020_12_31_000004_create_lessons_table', 1),
(15, '2020_12_31_000005_create_college_classes_table', 1),
(16, '2020_12_31_000008_add_relationship_fields_to_lessons_table', 1),
(17, '2020_12_31_000009_add_relationship_fields_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'lesson_create', NULL, NULL, NULL),
(18, 'lesson_edit', NULL, NULL, NULL),
(19, 'lesson_show', NULL, NULL, NULL),
(20, 'lesson_delete', NULL, NULL, NULL),
(21, 'lesson_access', NULL, NULL, NULL),
(22, 'college_class_create', NULL, NULL, NULL),
(23, 'college_class_edit', NULL, NULL, NULL),
(24, 'college_class_show', NULL, NULL, NULL),
(25, 'college_class_delete', NULL, NULL, NULL),
(26, 'college_class_access', NULL, NULL, NULL),
(27, 'time_entry_create', NULL, NULL, NULL),
(28, 'time_entry_edit', NULL, NULL, NULL),
(29, 'time_entry_show', NULL, NULL, NULL),
(30, 'time_entry_delete', NULL, NULL, NULL),
(31, 'time_entry_access', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 24),
(3, 26),
(3, 27),
(3, 29),
(3, 31),
(5, 27),
(5, 29),
(5, 31),
(4, 19),
(4, 21),
(4, 24),
(4, 26),
(4, 27),
(4, 29),
(4, 31);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, '2021-01-05 22:03:15', '2021-01-05 22:03:15'),
(3, 'Dosen', NULL, NULL, NULL),
(4, 'Mahasiswa', NULL, NULL, NULL),
(5, 'Karyawan', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5);

-- --------------------------------------------------------

--
-- Table structure for table `school_classes`
--

CREATE TABLE `school_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_classes`
--

INSERT INTO `school_classes` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MI-VII', '2021-01-05 03:22:03', '2021-01-05 03:22:29', NULL),
(2, 'TI-VIIA-DATABASE', '2021-01-05 03:22:43', '2021-01-05 03:22:43', NULL),
(3, 'TI-VIIA-JARINGAN', '2021-01-05 03:23:01', '2021-01-05 03:23:01', NULL),
(4, 'TI-VIIB-DATABASE', '2021-01-05 03:23:17', '2021-01-05 03:23:17', NULL),
(5, 'TI-VIIB-JARINGAN', '2021-01-05 03:24:36', '2021-01-05 03:24:36', NULL),
(6, 'SI-VIIA', '2021-01-05 03:40:17', '2021-01-05 03:40:17', NULL),
(7, 'SI-VIIB', '2021-01-05 03:40:30', '2021-01-05 03:40:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_entries`
--

CREATE TABLE `time_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_entries`
--

INSERT INTO `time_entries` (`id`, `time_start`, `time_end`, `note`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, '2021-01-05 17:14:43', '2021-01-05 17:31:16', 'Absen Selasa', '2021-01-05 03:20:07', '2021-01-05 03:31:19', NULL, 1),
(2, '2021-01-06 00:21:27', '2021-01-06 00:21:32', 'Absensi Database (Pertemuan 1)', '2021-01-05 10:22:09', '2021-01-05 10:22:09', NULL, 7),
(3, '2021-01-06 09:33:26', '2021-01-06 09:33:42', 'Absensi Rabu (Mata Kuliah Database)', '2021-01-05 19:34:05', '2021-01-05 19:34:05', NULL, 7),
(4, '2021-01-06 09:39:31', '2021-01-06 09:39:43', 'Absensi Selasa (Matakuliah Jaringan Komputer)', '2021-01-05 19:40:13', '2021-01-05 19:40:13', NULL, 7),
(5, '2021-01-06 10:00:10', '2021-01-06 10:00:16', 'Absensi Rabu', '2021-01-05 20:00:37', '2021-01-05 20:00:37', NULL, 1),
(6, '2021-01-06 10:02:47', '2021-01-06 10:02:50', 'Absen Rabu', '2021-01-05 20:03:09', '2021-01-05 20:03:09', NULL, 1),
(7, '2021-01-06 10:24:10', '2021-01-06 15:24:37', 'Absensi Rabu', '2021-01-05 20:24:59', '2021-01-05 20:24:59', NULL, 1),
(8, '2021-01-06 12:11:26', '2021-01-06 13:11:37', 'Present', '2021-01-05 22:11:57', '2021-01-05 22:11:57', NULL, 15),
(9, '2021-01-06 12:24:59', '2021-01-06 14:25:06', 'Present', '2021-01-05 22:25:20', '2021-01-05 22:25:20', NULL, 2),
(10, '2021-01-06 12:47:40', '2021-01-06 13:47:43', 'Present', '2021-01-05 22:47:52', '2021-01-05 22:47:52', NULL, 16),
(11, '2021-01-12 11:00:20', '2021-01-12 13:00:33', 'Present', '2021-01-12 06:00:53', '2021-01-12 06:00:53', NULL, 10),
(12, '2021-01-11 08:06:02', '2021-01-12 17:06:14', 'Present', '2021-01-12 06:06:25', '2021-01-12 06:06:25', NULL, 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `class_id`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$HvSDJRBDVWwRd18qj5oaQOF0DBXqnZcyFJ4dJA8hcQGAfmyZ7xkei', NULL, NULL, NULL, NULL, NULL),
(2, 'Dosen', 'dosen@dosen.com', NULL, '$2y$10$HvSDJRBDVWwRd18qj5oaQOF0DBXqnZcyFJ4dJA8hcQGAfmyZ7xkei', NULL, NULL, NULL, NULL, NULL),
(3, 'Dosen 2', 'dosen2@dosen2.com', NULL, '$2y$10$HvSDJRBDVWwRd18qj5oaQOF0DBXqnZcyFJ4dJA8hcQGAfmyZ7xkei', NULL, NULL, NULL, NULL, NULL),
(4, 'Dosen 3', 'dosen3@dosen3.com', NULL, '$2y$10$HvSDJRBDVWwRd18qj5oaQOF0DBXqnZcyFJ4dJA8hcQGAfmyZ7xkei', NULL, NULL, NULL, NULL, NULL),
(5, 'Dosen 4', 'dosen4@dosen4.com', NULL, '$2y$10$HvSDJRBDVWwRd18qj5oaQOF0DBXqnZcyFJ4dJA8hcQGAfmyZ7xkei', NULL, NULL, NULL, NULL, NULL),
(6, 'Dosen 5', 'dosen5@dosen5.com', NULL, '$2y$10$HvSDJRBDVWwRd18qj5oaQOF0DBXqnZcyFJ4dJA8hcQGAfmyZ7xkei', NULL, NULL, NULL, NULL, NULL),
(7, 'Mahasiswa', 'mahasiswa@mahasiswa.com', NULL, '$2y$10$HvSDJRBDVWwRd18qj5oaQOF0DBXqnZcyFJ4dJA8hcQGAfmyZ7xkei', NULL, NULL, NULL, NULL, NULL),
(8, 'Karyawan', 'karyawan@karyawan.com', NULL, '$2y$10$HvSDJRBDVWwRd18qj5oaQOF0DBXqnZcyFJ4dJA8hcQGAfmyZ7xkei', NULL, NULL, NULL, NULL, NULL),
(9, 'Tedi Kurniawan', 'a2.1700119@mhs.stmik-sumedang.ac.id', NULL, '$2y$10$9i3z4aFuWKZOvQlZVXuD.OGcAMbRX.nJA0fOw4Gon0rU./EE4JClC', NULL, '2021-01-05 19:43:55', '2021-01-05 19:43:55', NULL, NULL),
(10, 'Sri Rohayati', 'A2.1700115@stmik-sumedang.ac.id', NULL, '$2y$10$.mpBYFpliV.VDtYywyOJDOheDdf8zzYh5Tg4Ad1ixmEfI5ZKjOmUS', NULL, '2021-01-05 22:04:44', '2021-01-05 22:04:44', NULL, NULL),
(11, 'Sudrajat', 'A2.1700116@stmik-sumedang.ac.id', NULL, '$2y$10$HC1dVp6RyGNfAGbGrFZVROGP9.JRbUFewAO.2RpYYxVri5TRp467u', NULL, '2021-01-05 22:05:33', '2021-01-05 22:05:33', NULL, NULL),
(12, 'Tasya Sabilla', 'A2.1700118@stmik-sumedang.ac.id', NULL, '$2y$10$2tIlqFvtdGaWZcn6NMZcVewatBH1Tjoc6Mm1n1zAedYb4x0mQXD2i', NULL, '2021-01-05 22:06:09', '2021-01-05 22:06:09', NULL, NULL),
(13, 'Ubad Baharudin', 'A2.1700123@stmik-sumedang.ac.id', NULL, '$2y$10$oEc97a4XnmMSgbQeTWPnAetYvVYA0hA3M7tLWKhnKfPIcLopn/u1y', NULL, '2021-01-05 22:06:58', '2021-01-05 22:06:58', NULL, NULL),
(14, 'Aditya Ramdhani', 'A3.1700001@stmik-sumedang.ac.id', NULL, '$2y$10$UYChDDa3PHROJOSel1vT5uW4FgCYkQ9UrQLv8xTOu/aBRI7evbPoW', NULL, '2021-01-05 22:08:15', '2021-01-05 22:08:15', NULL, NULL),
(15, 'Ai Komala', 'A3.1700002@stmik-sumedang.ac.id', NULL, '$2y$10$vg7TYncZxV6ZZM8foWJDqeIPYJIRYWvbgoZRCPnBjQyaxpSU.G1/2', NULL, '2021-01-05 22:08:51', '2021-01-05 22:08:51', NULL, NULL),
(16, 'Agun Guntara, M.Kom', 'aguntara@stmik-sumedang.ac.id', NULL, '$2y$10$XwenFLOeWMtcORCgk66D7ecsQ5NXseZAoBtJXWostUe3NTKWsfvOG', NULL, '2021-01-05 22:31:29', '2021-01-05 22:31:29', NULL, NULL),
(17, 'Asep Saeppani, M.Kom', 'asep@stmik-sumedang.ac.id', NULL, '$2y$10$w9XaYH1QDBycRQasRl8m1O1rQliqY7MFWpD/tvkuhOPe104daJ0Nq', NULL, '2021-01-05 22:32:27', '2021-01-05 22:32:27', NULL, NULL),
(18, 'Eggi Julian, S.Kom, M.T.', 'eggi@stmik-sumedang.ac.id', NULL, '$2y$10$iSfK0/ENOzTmhMIOg.lr9uph4UO6rpeYNTk69Z69ByBOEWCUK346m', NULL, '2021-01-05 22:33:59', '2021-01-05 22:33:59', NULL, NULL),
(19, 'Fathoni Mahardika, S.Kom, M.T.', 'fathoni@stmik-sumedang.ac.id', NULL, '$2y$10$GJnyzSwPesMOg8JDS8wsVeGKjxsWOgegkQ5huwTG3nyi3KoMC2nG2', NULL, '2021-01-05 22:35:22', '2021-01-05 22:35:22', NULL, NULL),
(20, 'Leni Nurhayati, M.A.B.', 'leni@stmik-sumedang.ac.id', NULL, '$2y$10$C3gECAqdBZB/QT5wjdXsiOh39Sq4FEozu.HSRBVqCrSyF7uj3w5M6', NULL, '2021-01-05 22:36:20', '2021-01-05 22:36:20', NULL, NULL),
(21, 'Yopi Hidayatul Akbar, S.Kom, M.T.', 'yopi@stmik-sumedang.ac.id', NULL, '$2y$10$COPHGYQZSS5QJnzT4w7M8eMYbDYJvffF7dik8KaFThOWgEckP9Bui', NULL, '2021-01-05 22:37:34', '2021-01-05 22:37:34', NULL, NULL),
(22, 'Atep Ruhiyat, M.Kom', 'atep@stmik-sumedang.ac.id', NULL, '$2y$10$06Ebv8EQMzQGmxWbQi1KQOFKSS7kght6qog6.3G1XCt1bsiYJFHgm', NULL, '2021-01-05 22:38:24', '2021-01-05 22:38:24', NULL, NULL),
(23, 'Irfan Fadil, M.Kom.', 'irfan@stmik-sumedang.ac.id', NULL, '$2y$10$2YURcfh7e2gqvKLXFeAtFuHsrS2wF1sYOavFtPA4J90n2.D/X7TPm', NULL, '2021-01-05 22:39:15', '2021-01-05 22:39:15', NULL, NULL),
(24, 'Deni Indra Junaedi, M.M.', 'deni@stmik-sumedang.ac.id', NULL, '$2y$10$G3tIsgHaqKknQanUVw1Q0eecNTD4ZYqhR1bGI5BBWc.DhiLkOMAMS', NULL, '2021-01-05 22:40:28', '2021-01-05 22:40:28', NULL, NULL),
(25, 'David Setiadi, S.Kom, M.T.', 'david@stmik-sumedang.ac.id', NULL, '$2y$10$faYqUlsuf5F1YbPEe8Lrn.DVoJ396k8XXnwAM817IfhmnrdbCNKmC', NULL, '2021-01-05 22:41:37', '2021-01-05 22:41:37', NULL, NULL),
(26, 'H. Mulya Suryadi, S.Pd, M.Kom.', 'mulya@stmik-sumedang.ac.id', NULL, '$2y$10$swJ3nZB6PcWNNpvm0gGW2uz31yv2Tw5caMLL0i673SKnMQtDQP4HS', NULL, '2021-01-05 22:43:13', '2021-01-05 22:43:13', NULL, NULL),
(27, 'Dwi Yuniarto, S.Sos, M.Kom', 'dwi@stmik-sumedang.ac.id', NULL, '$2y$10$4sf3RIvOMSuDZ5Swbl76ren9VFpsqNVcfFXsVq0JKuLq94J0eqADa', NULL, '2021-01-05 22:44:04', '2021-01-05 22:44:04', NULL, NULL),
(28, 'H Usep Sehabudin, Drs.,M.M.', 'usep@stmik-sumedang.ac.id', NULL, '$2y$10$ylDI.UtuieWXw3JYHvgvtOqlMPRj8QM8nBrF9vpN5fWTWH8JI/Gzy', NULL, '2021-01-05 22:45:04', '2021-01-05 22:45:04', NULL, NULL),
(29, 'Kiki Alibasah, M.Kom.', 'kiki@stmik-sumedang.ac.id', NULL, '$2y$10$gnYYXkQS74Z2Gs.qXmrdwOaQLQPhp1WIcc36IkYW5Fa2WX2j2EzkC', NULL, '2021-01-05 22:45:48', '2021-01-05 22:45:48', NULL, NULL),
(30, 'Dian Budiana, M.Kom.', 'dian@stmik-sumedang.ac.id', NULL, '$2y$10$vw0YC1Nm1nGeGyM0Ekkaguy7ZLA/CPHfVU8GXNUVqVEGPEnrzt2B6', NULL, '2021-01-05 22:46:27', '2021-01-05 22:46:27', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college_classes`
--
ALTER TABLE `college_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dosen_fk_1001496` (`dosen_id`),
  ADD KEY `class_fk_1001508` (`class_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_1028284` (`role_id`),
  ADD KEY `permission_id_fk_1028284` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_1028293` (`user_id`),
  ADD KEY `role_id_fk_1028293` (`role_id`);

--
-- Indexes for table `school_classes`
--
ALTER TABLE `school_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_entries`
--
ALTER TABLE `time_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_fk_1028320` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `class_fk_1001550` (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college_classes`
--
ALTER TABLE `college_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `school_classes`
--
ALTER TABLE `school_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `time_entries`
--
ALTER TABLE `time_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `class_fk_1001508` FOREIGN KEY (`class_id`) REFERENCES `college_classes` (`id`),
  ADD CONSTRAINT `dosen_fk_1001496` FOREIGN KEY (`dosen_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_1028284` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_1028284` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_1028293` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_1028293` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_entries`
--
ALTER TABLE `time_entries`
  ADD CONSTRAINT `user_fk_1028320` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `class_fk_1001550` FOREIGN KEY (`class_id`) REFERENCES `college_classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
