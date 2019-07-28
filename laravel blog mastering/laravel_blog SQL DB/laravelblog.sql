-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 03:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelblog`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_07_13_144704_create_products_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `alert_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_price`, `product_quantity`, `alert_quantity`, `created_at`, `updated_at`) VALUES
(1, 'Easay fashion', 'is simply dummy text of the printing and typesetting industry.', 22675, 50, '5', NULL, '2019-07-18 05:25:04'),
(9, 'alixpress fashion', 'is simply dummy text of the printing and typesetting industry.', 7005, 50, '5', '2019-07-16 03:21:41', NULL),
(11, 'alixpress fashion', 'is simply dummy text of the printing and typesetting industry.', 500, 60, '5', '2019-07-16 03:22:13', NULL),
(12, 'Easey fashion', 'is simply dummy text of the printing and typesetting industry.', 700, 60, '5', '2019-07-16 03:22:25', NULL),
(13, 'alixpress fashion', 'is simply dummy text of the printing and typesetting industry.', 4775, 50, '5', '2019-07-16 03:22:43', NULL),
(14, 'Easey fashion', 'is simply dummy text of the printing and typesetting industry.', 4535, 50, '5', '2019-07-16 03:22:56', NULL),
(15, 'Mamun fashion', 'is simply dummy text of the printing and typesetting industry.', 564, 50, '5', '2019-07-18 05:25:29', NULL),
(16, 'alixpress fashion', 'is simply dummy text of the printing and typesetting industry.', 4554, 50, '5', '2019-07-18 05:25:55', NULL),
(17, 'daraz fashion', 'is simply dummy text of the printing and typesetting industry.', 700, 50, '5', '2019-07-18 05:26:10', NULL),
(18, 'alixpress fashion', 'is simply dummy text of the printing and typesetting industry.', 700, 50, '5', '2019-07-18 05:26:23', NULL),
(19, 'Easey fashion', 's simply dummy text of the printing and typesetting industry.', 4775, 50, '5', '2019-07-26 16:02:33', NULL);

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
(1, 'Abdullah Al Mamun', 'mamuncet27@gmail.com', '2019-07-15 07:00:00', '$2y$10$cl.ggqwa2Bz0Z8lRwtXXGOM8xSGuOEUh/GCfp6i9X3fkaxMQ4.Fqe', 'E1GRzbWVhoys0PD80Zhv1bnqzKYm4bRQMTpUIMOgqhJewp10Ztlag5lW2QoL', '2019-07-12 23:17:48', '2019-07-12 23:17:48'),
(2, 'Abdullah Al Mamun', 'mamuncreativeit@gmail.com', NULL, '$2y$10$jEEQimBnftTvGZxZjED18OsX38riZia6VWsxU2ub4ztpXtAltRQoS', NULL, '2019-07-26 15:58:18', '2019-07-26 15:58:18');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
