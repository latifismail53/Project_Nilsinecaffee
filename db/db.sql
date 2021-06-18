-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Feb 2021 pada 22.06
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nilesinecf`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `message` mediumtext NOT NULL,
  `contact_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `reply_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `parent_id`, `name`, `subject`, `email`, `message`, `contact_date`, `status`, `reply_at`) VALUES
(2, NULL, 'dani ganteng', 'ksnfaklsjdklasjdlkasjlkd', 'casadanidwi@gmail.com', 'lkjlaksjdlkajslkdjaslkdjalksjdljaslkdj', '2021-06-09 07:06:32', 2, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(32) NOT NULL,
  `credit` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `expired_date` date NOT NULL,
  `is_active` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `credit`, `start_date`, `expired_date`, `is_active`) VALUES
(1, 'Potongan Harga', 'MARIBELANJA', '50000.00', '2021-05-01', '2021-05-31', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `phone_number` varchar(32) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `profile_picture` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `phone_number`, `address`, `profile_picture`) VALUES
(7, 9, 'pelanggan', '087888232', 'jalan', NULL),
(8, 11, 'latifismailadjie', '088213078815', 'kp.basmol', NULL),
(9, 12, 'pelanggan1', '123123123', 'asdasdkasdasd', NULL),
(10, 13, 'latif', '087388382838283', 'ksksksksnsks', NULL),
(11, 14, 'Ridho Sudrajat', '085694629882', 'jl tanah sereal', NULL),
(12, 15, 'Dani dwi cahyo saputro', '089696719293', 'Jl cendrawasih 6', NULL),
(13, 16, 'Muhammad Rafi Naufal Rachman', '081386164206', 'Srengseng', NULL),
(14, 17, 'Fazrian', '08984567057', 'Subang', NULL),
(15, 18, 'pengen makan', '04540540540', 'ksjsjfaosfaosfnasf', NULL),
(16, 19, 'dimas', '085717268925', 'Jl.Pedongkelan', NULL),
(17, 23, 'dani ganteng', '08976565456', 'jl.dadaaaa', 'whatsapp_PNG20.png'),
(18, 24, 'kimjongun', '089682826529', 'Kalideres', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `order_number` varchar(16) NOT NULL,
  `order_status` enum('1','2','3','4','5') DEFAULT '1',
  `order_date` datetime NOT NULL,
  `total_price` decimal(8,2) DEFAULT NULL,
  `total_items` int(10) DEFAULT NULL,
  `payment_method` int(11) DEFAULT 1,
  `delivery_data` text DEFAULT NULL,
  `delivered_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `coupon_id`, `order_number`, `order_status`, `order_date`, `total_price`, `total_items`, `payment_method`, `delivery_data`, `delivered_date`, `finish_date`) VALUES
(9, 9, NULL, 'CWU3032139132', '3', '2021-03-30 07:26:38', '494000.00', 3, 2, '{\"customer\":{\"name\":\"pelanggan\",\"phone_number\":\"087888232\",\"address\":\"jalan\"},\"note\":\"\"}', NULL, NULL),
(10, 11, 1, 'ASZ55212111784', '3', '2021-05-05 13:36:46', '185000.00', 2, 2, '{\"customer\":{\"name\":\"latifismailadjie\",\"phone_number\":\"088213078815\",\"address\":\"kp.basmol\"},\"note\":\"jangan lupa pake acar\"}', NULL, NULL),
(11, 9, NULL, 'WRA2352119846', '3', '2021-05-23 19:38:23', '50000.00', 1, 2, '{\"customer\":{\"name\":\"pelanggan\",\"phone_number\":\"087888232\",\"address\":\"jalan\"},\"note\":\"\"}', NULL, NULL),
(12, 23, NULL, 'SBG9621123612', '4', '2021-06-09 06:54:23', '35000.00', 1, 2, '{\"customer\":{\"name\":\"dani ganteng\",\"phone_number\":\"08976565456\",\"address\":\"jl.dadaaaa\"},\"note\":\"jangan lama\"}', NULL, NULL),
(13, 23, NULL, 'NLO9621123056', '4', '2021-06-09 07:30:50', '50000.00', 1, 1, '{\"customer\":{\"name\":\"dani ganteng\",\"phone_number\":\"08976565456\",\"address\":\"jl.dadaaaa\"},\"note\":\"\"}', NULL, NULL),
(14, 24, NULL, 'FVE16621124043', '5', '2021-06-16 07:20:26', '70000.00', 1, 1, '{\"customer\":{\"name\":\"kimjongun\",\"phone_number\":\"089682826529\",\"address\":\"Kalideres\"},\"note\":\"AYO DONG ANTERIN\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_qty` int(10) NOT NULL,
  `order_price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `order_qty`, `order_price`) VALUES
(3, 4, 2, 1, '31000.00'),
(4, 4, 8, 13, '20000.00'),
(5, 5, 2, 1, '31000.00'),
(6, 5, 13, 12, '20000.00'),
(7, 6, 9, 10, '35000.00'),
(8, 7, 10, 1, '12000.00'),
(9, 7, 9, 1, '35000.00'),
(10, 7, 2, 1, '31000.00'),
(11, 8, 9, 1, '35000.00'),
(12, 8, 1, 5, '65000.00'),
(13, 9, 4, 2, '10000.00'),
(14, 9, 5, 1, '12000.00'),
(15, 9, 14, 14, '33000.00'),
(16, 10, 17, 1, '35000.00'),
(17, 10, 18, 5, '40000.00'),
(18, 11, 15, 1, '50000.00'),
(19, 12, 17, 1, '35000.00'),
(20, 13, 15, 1, '50000.00'),
(21, 14, 17, 2, '35000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_price` decimal(8,2) DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `payment_status` enum('1','2','3') DEFAULT '1',
  `confirmed_date` datetime DEFAULT NULL,
  `payment_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_price`, `payment_date`, `picture_name`, `payment_status`, `confirmed_date`, `payment_data`) VALUES
(4, 5, '271000.00', '2020-03-29 08:20:39', 'category-1.jpg', '1', NULL, '{\"transfer_to\":\"bri\",\"source\":{\"bank\":\"Bank BRI\",\"name\":\"Agung Tri Saputra\",\"number\":\"12-345-678-9\"}}'),
(5, 7, '78000.00', '2020-03-30 08:51:08', 'html5.jpg', '2', NULL, '{\"transfer_to\":\"btn\",\"source\":{\"bank\":\"BANK BCA\",\"name\":\"MMS\",\"number\":\"123-456\"}}'),
(6, 13, '50000.00', '2021-06-09 08:36:34', 'WhatsApp_Image_2021-04-20_at_13_21_02_(3).jpeg', '2', NULL, '{\"transfer_to\":\"bri\",\"source\":{\"bank\":\"danny\",\"name\":\"dd\",\"number\":\"12312312312312\"}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `sku` varchar(32) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `current_discount` decimal(8,2) DEFAULT 0.00,
  `stock` int(10) NOT NULL,
  `product_unit` varchar(32) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `add_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `sku`, `name`, `description`, `picture_name`, `price`, `current_discount`, `stock`, `product_unit`, `is_available`, `add_date`) VALUES
(15, 4, 'BM5500317', 'Blossom', NULL, 'blossom.jpg', '50000.00', '0.00', 500, 'ml', 1, '2021-04-09 08:38:36'),
(16, 4, 'MPM6600568', 'Matcha Pearl', NULL, 'matcha-pearl-300x300.jpg', '65000.00', '0.00', 600, 'ml', 1, '2021-04-09 09:16:08'),
(17, 4, 'MM3550205', 'MilkShake', NULL, 'm_milkshake-300x300.jpg', '35000.00', '0.00', 550, 'ml', 1, '2021-04-09 09:26:45'),
(18, 4, 'CM4550339', 'ChocoBeans', NULL, 'Love-Story-300x300.png', '45000.00', '5000.00', 550, 'ml', 1, '2021-04-09 09:28:59'),
(19, 4, 'BSM5550727', 'Banana Split', NULL, 'banana-split.jpg', '53000.00', '12000.00', 550, 'ml', 1, '2021-04-09 09:35:27'),
(20, 4, 'CBM350129', 'Coffee Break', NULL, 'kirthika-soundararajan-5aYhea3o8gw-unsplash.jpg', '30000.00', '0.00', 50, 'ml', 1, '2021-06-09 08:58:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(3, 'Makanan'),
(4, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `review_text` mediumtext NOT NULL,
  `review_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `order_id`, `title`, `review_text`, `review_date`, `status`) VALUES
(2, 7, 6, 'Sangat puas', 'Pengiriman cepat dan sayur segar', '2020-03-30 08:31:31', 1),
(3, 7, 5, 'Buah segar', 'Buah segar dan kualitasnya sangat bagus', '2020-03-30 08:33:10', 1),
(4, 9, 9, 'knlkn', ',jhjkhjkj', '2021-03-30 07:28:17', 1),
(5, 23, 12, 'dada', 'apa aja', '2021-06-09 06:59:15', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `role_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Customer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `key` varchar(32) NOT NULL,
  `content` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `content`) VALUES
(1, 'current_theme_name', 'Cafe'),
(2, 'store_name', 'NILSINE CAFE'),
(3, 'store_phone_number', '082281666584'),
(4, 'store_email', 'nlsncafe@gmail.com'),
(5, 'store_tagline', 'Mau Coba Pesan dirumah ? Kuy,Siap Kami Antarkan!'),
(6, 'store_logo', 'logo1.png'),
(7, 'max_product_image_size', '20000'),
(8, 'store_description', 'Nikmati Kenikmatan coffe dari nilsine'),
(9, 'store_address', 'jl.Basmol Raya Kembangan Utara Jakarta Barat'),
(10, 'min_shop_to_free_shipping_cost', '20000'),
(11, 'shipping_cost', '3000'),
(12, 'payment_banks', '{\"bri\":{\"bank\":\"BRI\",\"name\":\"Latif ismail adjie\",\"number\":\"9999-999-99-9\"},\"btn\":{\"bank\":\"BNI\",\"name\":\"Dany\",\"number\":\"4444-444-44-4\"}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) DEFAULT 0,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `profile_picture`, `role_id`, `register_date`) VALUES
(9, NULL, 'pelanggan@gmail.com', NULL, 'pelanggan', '$2y$10$oUc0wKaKLv/AaP12Wk6u7uwvRSZpbE9D8BDVIJolyIaqG9OQXMhry', NULL, 1, '2021-03-30 07:24:04'),
(11, NULL, 'test@aja.com', NULL, 'latifismailadjie', '$2y$10$WenYa9KRGQS2R5oi8XEHi.5RtNFMu/Ll/APa.0c18teG6Xicx.3E2', NULL, 2, '2021-05-05 13:33:46'),
(12, NULL, 'pelanggan1@gmasd.cp', NULL, 'pelanggan1', '$2y$10$MqNj/n37tixkWNr7idTlDO/IVifVYFGErF.CPY50iAc9NtWtumXUm', NULL, 2, '2021-05-23 19:42:11'),
(13, NULL, 'latifismask@gmail.co', NULL, 'latif', '$2y$10$FwhEvh.OZCft3iNc4v314ejfxqQ7PEzCCPm2N8vXD2Ip3PsqE4ZYa', NULL, 2, '2021-05-29 03:35:31'),
(14, NULL, 'maqloterbang@gmail.com', NULL, 'ridhosdjt', '$2y$10$7wvVPAqkZ5AKhYeamaaPNOqv.zoO2DlozDs6OS9F0HiqrvuXDu9GO', NULL, 1, '2021-05-29 10:21:16'),
(15, NULL, 'cdanidwi@gmail.com', NULL, 'Dannydwi', '$2y$10$u7eBvdemVuzit0gnLrsTjefhn3VZsbvevNc8KMrdJ2FZhJXd0lpJG', NULL, 1, '2021-05-29 10:21:26'),
(16, NULL, 'iam.naufalrafi@gmail.com', NULL, 'rafinaufalx', '$2y$10$Iay3WoI/0NkWq6UqWN9.Vuw777Gtxdbotuq5N5FdNv0jvoFdiFjOy', NULL, 1, '2021-05-29 10:24:16'),
(17, NULL, 'Zihadfazrian@nusamandiri.ac.id', NULL, 'Zihad', '$2y$10$4Qh2BCNupC7ZuKixCKZdV.CScJxc6MrHEeN6Q0u1KCgteTPxY9/ae', NULL, 1, '2021-05-29 10:28:31'),
(18, NULL, 'asasd@gmail.com', NULL, 'pengen', '$2y$10$ODxqwiytCZ6wst5oSWW5reddVNwKqPcPAjiIXHPuiZ4q7XbsmGKHa', NULL, 2, '2021-05-29 11:04:44'),
(19, NULL, 'dimasbarkah14@gmail.com', NULL, 'dimas', '$2y$10$etOubhhyjS8AlbdLbxoCeO2yFGJAL3f799KLqkisZj0ITEhpFieKK', NULL, 2, '2021-05-29 11:29:14'),
(23, NULL, 'casadanidwi@gmail.com', NULL, 'dani', '$2y$10$LCUZB5PiVtqRi.mBC37FW.bQsiwyc8KYEjiDIbN9sIELsw23P5HtS', NULL, 2, '2021-06-09 06:52:58'),
(24, NULL, 'baksooofajar@gmail.com', NULL, 'kimjongun', '$2y$10$g9TGvmX/r5qN8c04iImvveP2CAFk./kwQrLsOInj1feALqMRP0jmm', NULL, 1, '2021-06-16 07:17:49');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_contacts_contacts` (`parent_id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_customers_users` (`user_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_users` (`user_id`),
  ADD KEY `FK_orders_coupons` (`coupon_id`);

--
-- Indeks untuk tabel `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_products_product_category` (`category_id`);

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reviews_users` (`user_id`),
  ADD KEY `FK_reviews_orders` (`order_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `FK_contacts_contacts` FOREIGN KEY (`parent_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_customers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_coupons` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
