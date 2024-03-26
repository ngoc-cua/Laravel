-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 16, 2024 lúc 07:53 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `n1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `vendor_join` varchar(255) DEFAULT NULL,
  `vendor_short_info` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('admin','vendor','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `vendor_join`, `vendor_short_info`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trương Hoàng Nhu', 'admin', 'admin@gmail.com', NULL, '$2y$12$OlsdJA7KTzsZ2ieee6WyRex8o3ExOdMWSGQJSNKHdTcEaMO.cSek.', '202401020849tux-icon.svg', NULL, NULL, '0982210278', '12 Trịnh Đình Thảo, Quận Bình Tân, Tp. Hồ Chí Minh.', 'admin', 'active', NULL, NULL, '2024-01-04 00:13:59'),
(2, 'Nest Food.,Ltd', 'vendor', 'vendor@gmail.com', NULL, '$2y$12$eJKpqvshxdFvgZDOwhwZ2euWG/p1KUR3werzM2uVPqy59C1s/qqCS', '202401090657vendor-16.png', '2022', 'Got a smooth, buttery spread in your fridge? Chances are good that it\'s Good Chef. This brand made Lionto\'s list of the most popular grocery brands across the country.', '(+91) - 540-025-124553', '5171 W Campbell Ave undefined, Utah 53127 United States', 'vendor', 'active', NULL, NULL, '2024-01-09 00:39:20'),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$12$r7cGAv3621UdPbBTP2K5HeNSSygIgGBtD57dsCKYw5yxzwKMyZ05G', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, NULL, NULL),
(4, 'Prof. Harrison Walsh PhD', NULL, 'charity.kshlerin@example.net', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/0088aa?text=voluptatem', NULL, NULL, '1-801-714-9411', '7280 Brisa Stravenue Apt. 753\nSouth Wendytown, IN 03273-0964', 'vendor', 'active', 'WLyIPmUbWD', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(5, 'Duane Schmidt DDS', NULL, 'emmy.volkman@example.org', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/005577?text=rem', NULL, NULL, '+1-336-864-3260', '4025 Turner Fords Suite 511\nBernicestad, NJ 15431-5956', 'user', 'inactive', 'bRlvTlCQZK', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(6, 'Mrs. Trycia Rau', NULL, 'vhaag@example.org', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/006600?text=iure', NULL, NULL, '(831) 508-3877', '99064 Emely Freeway\nEichmannberg, IN 04869', 'user', 'inactive', 'AyiiidrTlf', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(7, 'Judd Ferry I', NULL, 'deshawn76@example.net', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/00aa77?text=amet', NULL, NULL, '1-956-597-5900', '5806 Nikko Cape\nWest Sophiastad, OH 92527', 'user', 'active', 'OtrctXEQZ0', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(8, 'Marco Lockman', NULL, 'fwindler@example.com', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/00eeee?text=adipisci', NULL, NULL, '1-320-741-2983', '38446 Clemmie Estates\nChristineview, MI 87486-5129', 'admin', 'active', 'jyKTcS1p1r', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(9, 'Lenny Turner', NULL, 'nhamill@example.com', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/007788?text=blanditiis', NULL, NULL, '+1-623-201-0251', '7421 Lyda Mission Apt. 858\nKariborough, CO 56205', 'user', 'inactive', 'AyxOQi6BSa', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(10, 'Dr. Nikko Marquardt Sr.', NULL, 'stiedemann.oleta@example.org', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/0055bb?text=dolor', NULL, NULL, '+1-201-498-9408', '7252 Rath Landing\nLangoshmouth, MT 02052', 'admin', 'active', 'SuQruqyqHQ', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(11, 'Leonard Brekke', NULL, 'jrosenbaum@example.net', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/00aa11?text=ipsum', NULL, NULL, '+1-209-337-4765', '290 Lucy Run Apt. 831\nLuciennemouth, LA 31191', 'vendor', 'active', 'DWTQl2LPxq', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(12, 'Gladyce Jacobson', NULL, 'dallas29@example.org', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/002222?text=aliquam', NULL, NULL, '+1.878.348.1866', '21970 Lue Ports Suite 634\nJoaquinbury, WY 80767-3514', 'user', 'inactive', 'NXchPW0jQ5', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(13, 'Mr. Dedric Padberg', NULL, 'quigley.samara@example.com', '2023-12-19 00:52:08', '$2y$12$0k3o7AHr/k.MEVqFc74EU.wUpf/NyFOAPKKKOVm/braevvMk7YXlS', 'https://via.placeholder.com/60x60.png/002255?text=quam', NULL, NULL, '+1-870-849-9935', '9715 McCullough Points\nKozeyton, MS 42921', 'admin', 'active', 'YgN7mVCx5J', '2023-12-19 00:52:08', '2023-12-19 00:52:08'),
(14, 'Demo', NULL, 'demo@gmail.com', NULL, '$2y$12$eX7yYqguJ7x/N13rRabyqeCdVS0KXIokiqbczxVgXIq7eDoS9tY0W', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, '2023-12-19 01:32:17', '2023-12-19 01:32:17');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
