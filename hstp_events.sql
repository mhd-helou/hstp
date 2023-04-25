-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 04:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hstp_events`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'mhd', 'pink', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'dasd', 'dasdasdas', '2023-04-18 10:55:34', '2023-04-18 11:46:57'),
(3, 'ddd', '1234321', '2023-04-18 10:55:52', '2023-04-18 10:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `chairs`
--

CREATE TABLE `chairs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chairs`
--

INSERT INTO `chairs` (`id`, `class`, `status`, `created_at`, `updated_at`) VALUES
(2, 'A3', 1, NULL, NULL),
(3, 'A4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `whatsapp_num` int(11) NOT NULL,
  `is_whatsapp` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sec_email` varchar(255) NOT NULL,
  `authority` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `is_attendant` tinyint(1) NOT NULL,
  `req_status` char(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `title_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `chair_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`id`, `full_name`, `whatsapp_num`, `is_whatsapp`, `email`, `sec_email`, `authority`, `position`, `is_attendant`, `req_status`, `lang`, `date`, `title_id`, `category_id`, `chair_id`, `created_at`, `updated_at`) VALUES
(1, 'mhdhelou', 312312, 1, 'mmdasd@dasd.comm', 'qweqw@dad.com', 'NANA', 'Manger', 1, '1', 'Ar', '2023-04-04', 2, 2, 2, '2023-04-19 09:27:32', '2023-04-19 09:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_18_120907_create_categories_table', 2),
(6, '2023_04_18_155243_create_titles_table', 3),
(9, '2023_04_18_202722_create_chairs_table', 4),
(10, '2023_04_18_203946_create_invitations_table', 5),
(11, '2023_04_19_073939_create_chairs_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'API TOKEN', '7b381d34a9fdb60b41356fd7007a47b77229a30ffff4bdffe050edbbb3b95604', '[\"*\"]', NULL, NULL, '2023-04-19 10:07:33', '2023-04-19 10:07:33'),
(2, 'App\\Models\\User', 4, 'API TOKEN', 'afb68a7e4f17a0759b31b53f4315e9b482ea6ca89ea9d8f74319d20dbc1be1c7', '[\"*\"]', NULL, NULL, '2023-04-19 10:07:40', '2023-04-19 10:07:40'),
(3, 'App\\Models\\User', 1, 'API TOKEN', '54f8d988d6c45dcbae6fc83937afce3c9eafb4097d5c9a2552ecb407b355edf8', '[\"*\"]', NULL, NULL, '2023-04-19 10:09:03', '2023-04-19 10:09:03'),
(4, 'App\\Models\\User', 1, 'API TOKEN', '74e656d19d8d85328efbdc6fdde460dca99a14046edd477c2f9697a050beeeda', '[\"*\"]', NULL, NULL, '2023-04-19 10:09:13', '2023-04-19 10:09:13'),
(5, 'App\\Models\\User', 1, 'API TOKEN', '62fde85b520df8fb608117b3279008d9c0648c3ab61c89ddc68d25414feab372', '[\"*\"]', NULL, NULL, '2023-04-19 10:09:15', '2023-04-19 10:09:15'),
(6, 'App\\Models\\User', 1, 'API TOKEN', '472ca94514f29ccf13d37d0ab035690b962abd95871bbad4592a4cd09dfffb19', '[\"*\"]', NULL, NULL, '2023-04-19 10:09:17', '2023-04-19 10:09:17'),
(7, 'App\\Models\\User', 1, 'API TOKEN', '3641ab645ff3c32472100446c0926d8aa446d97571c9c32c1e340cca0964eaeb', '[\"*\"]', NULL, NULL, '2023-04-19 10:09:19', '2023-04-19 10:09:19'),
(8, 'App\\Models\\User', 1, 'API TOKEN', 'e16b1d15e622b7d791b458335cb808b99504a71afcac11f99fbfbd7890f8a269', '[\"*\"]', '2023-04-19 10:11:56', NULL, '2023-04-19 10:09:21', '2023-04-19 10:11:56'),
(9, 'App\\Models\\User', 1, 'API TOKEN', '62ba8d0671323b0525f38bd35a7f1bab251d60267e6f58d98843b6972d131b8f', '[\"*\"]', NULL, NULL, '2023-04-19 10:09:38', '2023-04-19 10:09:38'),
(10, 'App\\Models\\User', 1, 'API TOKEN', '5236df8409fc7355ce2de83af075b65e1304bdc8b8df7c094212168fefedfdb4', '[\"*\"]', NULL, NULL, '2023-04-19 10:09:41', '2023-04-19 10:09:41'),
(11, 'App\\Models\\User', 1, 'API TOKEN', '07a2c66a8007b626e710332020d23c58fefb026aeeb8c5082be32eaf9e1900c8', '[\"*\"]', '2023-04-19 10:15:56', NULL, '2023-04-19 10:13:36', '2023-04-19 10:15:56'),
(12, 'App\\Models\\User', 1, 'API TOKEN', '9a0d338d6eef848c4956430fd76a4745d628ea0420a06bc9de8cb33b9b5a745a', '[\"*\"]', '2023-04-19 10:26:31', NULL, '2023-04-19 10:26:12', '2023-04-19 10:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(2, 'Mr', 'Ar', NULL, NULL),
(3, 'Mr', 'Ar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin2@admin.com', NULL, '$2y$10$FmO7ql37zKZMJGDrRiGcOudRqfg7Qr802kzPCQOPf4rukbqf1vBIS', NULL, '2023-04-19 10:09:03', '2023-04-19 10:09:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chairs`
--
ALTER TABLE `chairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitations_title_id_foreign` (`title_id`),
  ADD KEY `invitations_category_id_foreign` (`category_id`),
  ADD KEY `invitations_chair_id_foreign` (`chair_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chairs`
--
ALTER TABLE `chairs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invitations`
--
ALTER TABLE `invitations`
  ADD CONSTRAINT `invitations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `invitations_chair_id_foreign` FOREIGN KEY (`chair_id`) REFERENCES `chairs` (`id`),
  ADD CONSTRAINT `invitations_title_id_foreign` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
