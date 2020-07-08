-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 05:36 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `texting`
--

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_fields`
--

CREATE TABLE `dynamic_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_fields`
--

INSERT INTO `dynamic_fields` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'ضس', 'ضصي', NULL, NULL),
(2, 'ضصي', 'ضصي', NULL, NULL),
(3, 'wef', 'dsc', NULL, NULL),
(4, 'ljlkm', ';kol', NULL, NULL),
(5, 'sdg', 'frwf', NULL, NULL);

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
(1, '2020_07_03_070632_create_ajax_cruds_table', 1),
(2, '2020_07_06_061122_create_dynamic_field', 2),
(3, '2020_07_06_124238_create_dynamic_input', 3),
(4, '2020_07_06_133608_create_dynamic_field', 4),
(5, '2014_10_12_000000_create_users_table', 5),
(6, '2014_10_12_100000_create_password_resets_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mark', 'programmerpro7@gmail.com', NULL, '$2y$10$Ieo8lpjCJSXsPscXfmOHbeSjmwv5NEKZe1cqdmkRncL97eWrI5Ide', NULL, '2020-07-08 14:07:02', '2020-07-08 14:07:02'),
(2, 'mark', 'alambratwrhmwdy58@gmail.com', NULL, '$2y$10$iOH3w79.AllA6RHvBXqhk.s2tC4t0Wyg.P9VipBr55WtC.qHWjeWa', NULL, '2020-07-08 14:19:46', '2020-07-08 14:19:46'),
(3, 'mark', 'hnodaalhnona1234@gmail.com', NULL, '$2y$10$MKcK1kmuNsDw9ZVVIN/mEuKRO1N1QnWZcKhvqoVdcRCYNTvha8EOO', NULL, '2020-07-08 14:23:01', '2020-07-08 14:23:01'),
(4, 'mark', 'mohmmedshaker1234@gmail.com', NULL, '$2y$10$cj.TsYzTPw/93nNUtV.bp.hU4P1q.WjMjhz4hOW8EOwWLZzyXAeaO', NULL, '2020-07-08 17:10:50', '2020-07-08 17:10:50'),
(5, 'mark', 'sprogrammerg77@gmail.com', NULL, '$2y$10$Jjkgd9nu4iWp3Y/lbnzzyOJ/8K1bl8FLPMX0VugB44iUh.t4fm2si', NULL, '2020-07-08 17:15:10', '2020-07-08 17:15:10'),
(6, 'mark', 'hnodaalhfna1234@gmail.com', NULL, '$2y$10$gK5XDQ2GGXyfGIJYdujWUusZxtR1/ffjA7r.QzMTtKS.qdGwZwARG', NULL, '2020-07-08 17:17:39', '2020-07-08 17:17:39'),
(7, 'njkn jkn', 'jknkjnbjhhb@gmail.com', NULL, '$2y$10$Q0oSySYf6c6xNnFWZ0Qlpep5WkBmZ4uN1FlR8IqHkh23qjJ9ERxNe', NULL, '2020-07-08 17:51:57', '2020-07-08 17:51:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dynamic_fields`
--
ALTER TABLE `dynamic_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `dynamic_fields`
--
ALTER TABLE `dynamic_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
