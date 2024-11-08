-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 05:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `plate_number` varchar(255) NOT NULL,
  `daily_rate` decimal(10,2) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand`, `model`, `plate_number`, `daily_rate`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', 'Camry', 'ABC1234', 500000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(2, 'Honda', 'Civic', 'DEF5678', 450000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(3, 'Ford', 'Focus', 'GHI9101', 400000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(4, 'Chevrolet', 'Malibu', 'JKL2345', 550000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(5, 'Nissan', 'Sentra', 'MNO6789', 420000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(6, 'BMW', '3 Series', 'PQR1111', 700000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(7, 'Audi', 'A4', 'STU2222', 750000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(8, 'Mercedes', 'C Class', 'VWX3333', 800000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(9, 'Hyundai', 'Elantra', 'YZA4444', 480000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(10, 'Kia', 'Optima', 'BCD5555', 45000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(11, 'Volkswagen', 'Jetta', 'EFG6666', 500000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(12, 'Subaru', 'Impreza', 'HIJ7777', 470000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(13, 'Mazda', 'Mazda3', 'KLM8888', 460000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(14, 'Tesla', 'Model 3', 'NOP9999', 1000000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45'),
(15, 'Jeep', 'Wrangler', 'QRS0000', 900000.00, 1, '2024-11-08 16:20:45', '2024-11-08 16:20:45');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_08_033129_create_users_table', 2),
(5, '2024_11_08_033130_create_cars_table', 2),
(6, '2024_11_08_033148_create_rentals_table', 2);

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
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `status` enum('active','completed','cancelled') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `user_id`, `car_id`, `start_date`, `end_date`, `return_date`, `total_cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-11-08', '2024-11-18', NULL, 3000000.00, 'active', '2024-11-08 00:18:25', '2024-11-08 00:18:25'),
(37, 2, 1, '2024-01-01', '2024-01-05', '2024-01-05', 2000000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(38, 2, 2, '2024-01-02', '2024-01-06', '2024-01-06', 1800000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(39, 3, 3, '2024-01-03', '2024-01-07', '2024-01-07', 1600000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(40, 4, 4, '2024-01-04', '2024-01-08', NULL, 220.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(41, 5, 5, '2024-01-05', '2024-01-09', '2024-01-09', 1680000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(42, 6, 6, '2024-01-06', '2024-01-10', '2024-01-10', 2800000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(43, 7, 7, '2024-01-07', '2024-01-11', NULL, 3000000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(44, 8, 8, '2024-01-08', '2024-01-12', '2024-01-12', 320000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(45, 9, 9, '2024-01-09', '2024-01-13', '2024-01-13', 1440000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(46, 10, 10, '2024-01-10', '2024-01-14', '2024-01-14', 1350000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(47, 3, 11, '2024-01-11', '2024-01-15', NULL, 2000000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(48, 2, 12, '2024-01-12', '2024-01-16', NULL, 1880000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(49, 3, 13, '2024-01-13', '2024-01-17', '2024-01-17', 1380000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(50, 4, 14, '2024-01-14', '2024-01-18', '2024-01-18', 4000000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(51, 5, 15, '2024-01-15', '2024-01-19', NULL, 3600000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(52, 6, 1, '2024-01-16', '2024-01-20', '2024-01-20', 2000000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(53, 7, 2, '2024-01-17', '2024-01-21', NULL, 1800000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(54, 8, 3, '2024-01-18', '2024-01-22', '2024-01-22', 160000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(55, 9, 4, '2024-01-19', '2024-01-23', '2024-01-23', 2200000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(57, 4, 6, '2024-01-21', '2024-01-25', NULL, 280000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(58, 2, 7, '2024-01-22', '2024-01-26', '2024-01-26', 3000000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(59, 3, 8, '2024-01-23', '2024-01-27', '2024-01-27', 3200000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(60, 4, 9, '2024-01-24', '2024-01-28', NULL, 14400000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(61, 5, 10, '2024-01-25', '2024-01-29', NULL, 1350000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(62, 6, 11, '2024-01-26', '2024-01-30', NULL, 2000000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(63, 7, 12, '2024-01-27', '2024-01-31', '2024-01-31', 1880000.00, 'completed', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(64, 8, 13, '2024-01-28', '2024-02-01', NULL, 138000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(65, 9, 14, '2024-01-29', '2024-02-02', NULL, 400000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(66, 10, 15, '2024-01-30', '2024-02-03', NULL, 3600000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(67, 1, 1, '2024-02-01', '2024-02-05', NULL, 200000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(68, 2, 2, '2024-02-02', '2024-02-06', NULL, 1800000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(69, 3, 3, '2024-02-03', '2024-02-07', NULL, 1600000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(70, 4, 4, '2024-02-04', '2024-02-08', NULL, 2200000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41'),
(71, 5, 5, '2024-02-05', '2024-02-09', NULL, 1680000.00, 'active', '2024-11-08 15:36:41', '2024-11-08 15:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eayF2LnH8XNFjWXDYV3hDqhdR0wYn0WaPme4BFlw', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMHU3ZzR4YVEyMThOZUpua0xjbHBiTWhKcU5ydUZEYWtjWDFnOTEzRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1731083571);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `license_number` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `license_number`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Mikey Ackerman', 'mikey000@toman.co', '$2y$12$TBGZs1cLR/8G2qZl8ha3Bu1AVArCg3/bN2m390rufdHQnVPChz8Ie', 'Tokyo Manji', '0823949248299', '239586293858', 'CWlx1KEzfdrpGUThqQv56hC67FfEsSe3ogeoQ0xPcbjZ2yc1tHcjkzfNXnTs', '2024-11-07 23:59:38', '2024-11-07 23:59:38'),
(3, 'Alice Johnson', 'alice@example.com', 'password123', '123 Main St', '1234567890', 'LIC123456', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01'),
(4, 'Bob Smith', 'bob@example.com', 'password123', '456 Elm St', '0987654321', 'LIC234567', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01'),
(5, 'Charlie Brown', 'charlie@example.com', 'password123', '789 Maple Ave', '2345678901', 'LIC345678', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01'),
(6, 'Diana Prince', 'diana@example.com', 'password123', '101 Birch Rd', '3456789012', 'LIC456789', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01'),
(7, 'Evan Lee', 'evan@example.com', 'password123', '202 Cedar Ln', '4567890123', 'LIC567890', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01'),
(8, 'Fiona Davis', 'fiona@example.com', 'password123', '303 Pine St', '5678901234', 'LIC678901', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01'),
(9, 'George Harris', 'george@example.com', 'password123', '404 Oak Ave', '6789012345', 'LIC789012', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01'),
(10, 'Hannah White', 'hannah@example.com', 'password123', '505 Spruce St', '7890123456', 'LIC890123', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01'),
(11, 'Ian Black', 'ian@example.com', 'password123', '606 Willow Rd', '8901234567', 'LIC901234', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01'),
(12, 'Julia Green', 'julia@example.com', 'password123', '707 Chestnut St', '9012345678', 'LIC012345', NULL, '2024-11-08 15:29:01', '2024-11-08 15:29:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cars_plate_number_unique` (`plate_number`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_user_id_foreign` (`user_id`),
  ADD KEY `rentals_car_id_foreign` (`car_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `rentals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
