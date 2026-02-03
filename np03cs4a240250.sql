-- phpMyAdmin SQL Dump
-- version 5.2.3-1.el10_2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2026 at 12:44 PM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `np03cs4a240250`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `sku` varchar(50) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `min_stock_level` int(11) DEFAULT 5,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category`, `price`, `quantity`, `sku`, `supplier`, `location`, `min_stock_level`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Pro', 'High performance laptop', 'Electronics', 1299.99, 15, 'LP-001', 'TechCorp', 'Warehouse A', 5, NULL, '2026-01-30 17:29:24', '2026-01-30 17:29:24'),
(2, 'Wireless Mouse', 'Ergonomic wireless mouse', 'Electronics', 29.99, 45, 'WM-002', 'TechCorp', 'Warehouse B', 10, NULL, '2026-01-30 17:29:24', '2026-01-30 17:29:24'),
(3, 'Office Chair', 'Comfortable office chair', 'Furniture', 199.99, 8, 'OC-003', 'FurnitureCo', 'Warehouse C', 5, NULL, '2026-01-30 17:29:24', '2026-01-30 17:29:24'),
(4, 'Coffee Mug', 'Ceramic coffee mug', 'Kitchen', 12.99, 100, 'CM-004', 'HomeGoods', 'Warehouse A', 20, NULL, '2026-01-30 17:29:24', '2026-01-30 17:29:24'),
(5, 'iPhone 15', 'Latest Apple smartphone', 'Electronics', 999.99, 13, 'IP15-001', 'Apple Inc.', 'Warehouse A', 5, NULL, '2026-02-01 09:51:03', '2026-02-03 12:38:29'),
(6, 'Samsung Monitor', '27-inch 4K monitor', 'Electronics', 349.99, 12, 'SM-002', 'Samsung', 'Warehouse B', 10, NULL, '2026-02-01 09:51:03', '2026-02-01 09:51:03'),
(7, 'Office Desk', 'Wooden office desk', 'Furniture', 299.99, 3, 'OD-003', 'FurnitureCo', 'Warehouse C', 5, NULL, '2026-02-01 09:51:03', '2026-02-01 09:51:03'),
(8, 'Coffee Machine', 'Automatic espresso maker', 'Kitchen', 199.99, 7, 'CM-005', 'KitchenPro', 'Warehouse A', 8, NULL, '2026-02-01 09:51:03', '2026-02-02 18:24:18'),
(9, 'Wireless Keyboard', 'Mechanical wireless keyboard', 'Electronics', 89.99, 25, 'WK-006', 'TechCorp', 'Warehouse B', 15, NULL, '2026-02-01 09:51:03', '2026-02-01 09:51:03'),
(10, 'Desk Lamp', 'LED desk lamp with dimmer', 'Home', 29.99, 50, 'DL-007', 'HomeGoods', 'Warehouse C', 20, NULL, '2026-02-01 09:51:03', '2026-02-01 09:51:03'),
(11, 'Backpack', 'Water-resistant laptop backpack', 'Accessories', 49.99, 30, 'BP-008', 'TravelGear', 'Warehouse A', 10, NULL, '2026-02-01 09:51:03', '2026-02-01 09:51:03'),
(12, 'Water Bottle', 'Insulated stainless steel', 'Kitchen', 24.99, 100, 'WB-009', 'HomeGoods', 'Warehouse B', 30, NULL, '2026-02-01 09:51:03', '2026-02-01 09:51:03'),
(13, 'Gaming Mouse', 'RGB gaming mouse', 'Electronics', 59.99, 18, 'GM-010', 'GamingTech', 'Warehouse C', 10, NULL, '2026-02-01 09:51:03', '2026-02-01 09:51:03'),
(14, 'Notebook Set', '5-pack premium notebooks', 'Stationery', 19.99, 45, 'NS-011', 'OfficeSupplies', 'Warehouse A', 20, NULL, '2026-02-01 09:51:03', '2026-02-01 09:51:03'),
(16, 'Macbook Air M3', 'New Mac Launch', 'Electronics', 1500.00, 69, 'MB-003', 'Apple', 'Warehouse C', 5, NULL, '2026-02-02 22:26:29', '2026-02-03 12:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `last_login`, `created_at`) VALUES
(1, 'admin', 'admin@inventory.com', '$2y$10$hjnXlzeUFTqPJBQnQbxTSuO0VFVqGSxLR8k24YY0uEMekmmmJPYrK', 'admin', '2026-02-03 12:32:44', '2026-01-30 18:56:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
