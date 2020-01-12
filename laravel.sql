-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2020 at 11:46 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(2, 'Some Company', 'some@email.com', NULL, 'some web', '2020-01-12 09:30:57', '2020-01-12 09:30:57'),
(3, 'Another Company', 'another@email.com', NULL, 'website', '2020-01-12 11:54:21', '2020-01-12 18:33:41'),
(4, '3rd Company', 'email@for.com', NULL, 'www.someweb.com', '2020-01-12 18:09:06', '2020-01-12 18:33:48'),
(6, '4rd Company', 'someemail@for.com', NULL, 'www.somewebsite.com', '2020-01-12 18:17:03', '2020-01-12 18:35:40'),
(7, 'HTA', 'htac@hitec.com', NULL, 'www.hta.com', '2020-01-12 18:36:36', '2020-01-12 18:36:36'),
(8, 'Hi-Tech', 'hitech@hitech.com', NULL, 'hitech.com.mk', '2020-01-12 18:37:21', '2020-01-12 18:37:21'),
(9, 'MkHost', 'mkhost@mkhost.com', NULL, 'www.mkhost.mk', '2020-01-12 18:37:58', '2020-01-12 18:37:58'),
(10, 'Imaginary Company', 'email@imaginary.com', NULL, 'www.imaginary.com', '2020-01-12 18:38:37', '2020-01-12 18:38:37'),
(11, 'New Corp', 'corp@mail.com', NULL, NULL, '2020-01-12 18:39:01', '2020-01-12 18:39:01'),
(12, 'Genesis', 'genesis@gmail.com', NULL, 'genesis', '2020-01-12 18:39:26', '2020-01-12 18:39:26'),
(13, 'Google', 'google@gmail.com', NULL, 'google.com', '2020-01-12 18:40:16', '2020-01-12 18:40:16'),
(14, 'Login Corp', 'login@log.com', '61giltHzlDL._SY450_.jpg', 'www.log.com', '2020-01-12 18:48:32', '2020-01-12 18:48:32'),
(15, 'Corporation', 'someOne@email.com', NULL, NULL, '2020-01-12 19:17:58', '2020-01-12 19:17:58'),
(16, 'Nth Another Company', 'val.gjoki93@gmail.com', '61giltHzlDL._SY450_.jpg', NULL, '2020-01-12 21:06:14', '2020-01-12 21:06:14'),
(23, '22Nth Another Company', 'aaal.gjok11i93@gmail.com', NULL, NULL, '2020-01-12 21:31:33', '2020-01-12 21:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `company_id`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Some Update', 'Employee', 2, 'employee@email.com', '1234', '2020-01-12 11:45:23', '2020-01-12 13:31:22'),
(2, 'Another', 'Employee', 2, 'anotheremployee@email.com', '4', '2020-01-12 11:52:49', '2020-01-12 11:52:49'),
(3, 'New', 'Employee', 3, 'email@new.com', '123', '2020-01-12 11:54:51', '2020-01-12 11:54:51'),
(5, 'Vale', 'Gjorgoski', 3, 'vale@gmail.com', '213312', '2020-01-12 12:57:03', '2020-01-12 12:57:03'),
(6, 'Employe 5', 'Empl', 2, 'email@sdf.com', '3289423', '2020-01-12 14:58:21', '2020-01-12 14:58:21'),
(7, 'Fifth', 'Employee', 2, 'usr@emp.com', '+045453', '2020-01-12 17:39:36', '2020-01-12 17:39:36'),
(8, '6th', 'Employee', 3, 'email@hotmail.com', '+83822323', '2020-01-12 17:43:32', '2020-01-12 17:43:32'),
(9, 'Some name', 'last some name', 2, 'email@gmail.com', NULL, '2020-01-12 19:11:14', '2020-01-12 19:11:14'),
(10, 'Empl', 'Last', 2, 'employee1@email.com', NULL, '2020-01-12 19:19:39', '2020-01-12 19:19:39'),
(11, 'Harr', 'Lalli', 2, 'mail@mail.com', NULL, '2020-01-12 19:20:31', '2020-01-12 19:20:31');

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
(12, '2020_01_10_213525_create_companies_table', 2),
(13, '2020_01_10_215652_create_employees_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '2020-01-10 20:00:42', '$2y$10$5kY9FK9WnDVAzBa.fl0nPORWRAa6O60qPkSP4hM.yc5iDyUyw2j2q', 'kiB0wgjwHCz0i70LvUtdE7JmjTkeZE12T5yAUG66XDCC8t76KFOYPtXzM5VH', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_company_id_foreign` (`company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
