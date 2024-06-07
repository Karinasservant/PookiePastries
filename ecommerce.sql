-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 04:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1717660312),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1717660312;', 1717660312);

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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Shortcrust pastry', '2024-06-04 14:17:05', '2024-06-04 14:17:05'),
(2, 'Filo pastry', '2024-06-04 14:17:13', '2024-06-04 14:17:13'),
(3, 'Choux pastry', '2024-06-04 14:17:22', '2024-06-04 14:17:22'),
(4, 'Flaky pastry', '2024-06-04 14:17:31', '2024-06-04 14:17:31'),
(5, 'Puff pastry', '2024-06-04 14:17:39', '2024-06-04 14:17:39');

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
(5, '2024_05_30_235344_create_proudcts_table', 3),
(9, '0001_01_01_000000_create_users_table', 4),
(10, '0001_01_01_000001_create_cache_table', 4),
(11, '0001_01_01_000002_create_jobs_table', 4),
(12, '2024_05_29_160421_create_categories_table', 4),
(13, '2024_05_31_152326_create_products_table', 4),
(14, '2024_06_01_235130_create_carts_table', 4),
(15, '2024_06_02_080215_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rec_address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'in progress',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `rec_address`, `phone`, `status`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'user', 'Sandoy Street', '123456789', 'Delivered', 2, 13, '2024-06-05 14:38:35', '2024-06-05 22:04:32'),
(2, 'user', 'Sandoy Street', '123456789', 'On the way', 2, 3, '2024-06-05 14:39:14', '2024-06-05 22:02:51'),
(3, 'user', 'Sandoy Street', '123456789', 'On the way', 2, 1, '2024-06-05 21:10:32', '2024-06-05 22:02:53'),
(4, 'user', 'Sandoy Street', '123456789', 'On the way', 2, 2, '2024-06-05 21:10:32', '2024-06-05 22:02:55'),
(5, 'user', 'Sandoy Street', '123456789', 'On the way', 2, 2, '2024-06-05 21:10:32', '2024-06-05 22:04:24'),
(6, 'user', 'Sandoy Street', '123456789', 'On the way', 2, 22, '2024-06-05 21:10:32', '2024-06-05 22:04:27'),
(7, 'user', 'Sandoy Street', '123456789', 'On the way', 2, 18, '2024-06-05 21:10:32', '2024-06-05 22:04:30'),
(8, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 2, '2024-06-05 21:10:32', '2024-06-05 21:10:32'),
(9, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 3, '2024-06-05 21:10:32', '2024-06-05 21:10:32'),
(10, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 3, '2024-06-05 21:10:32', '2024-06-05 21:10:32'),
(11, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 2, '2024-06-05 21:10:32', '2024-06-05 21:10:32'),
(12, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 1, '2024-06-05 21:10:32', '2024-06-05 21:10:32'),
(13, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 12, '2024-06-05 21:10:32', '2024-06-05 21:10:32'),
(14, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 2, '2024-06-05 21:10:32', '2024-06-05 21:10:32'),
(15, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 2, '2024-06-05 21:10:32', '2024-06-05 21:10:32'),
(16, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 1, '2024-06-05 21:11:19', '2024-06-05 21:11:19'),
(17, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 6, '2024-06-05 21:11:20', '2024-06-05 21:11:20'),
(18, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 9, '2024-06-05 21:17:04', '2024-06-05 21:17:04'),
(19, 'user', 'Sandoy Street', '123456789', 'in progress', 2, 1, '2024-06-05 21:17:04', '2024-06-05 21:17:04');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `price`, `category`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Cream Puff', 'A close-up view of a golden brown and puffed cream puff. This classic choux pastry is dusted with a light layer of powdered sugar, and its center bursts with a creamy vanilla custard filling.', '1717625862.jpg', '150', 'Choux pastry', '50', '2024-06-05 14:17:42', '2024-06-05 14:17:42'),
(2, 'Parisien Éclairs', 'Three Parisian éclairs rest side-by-side on a long plate. Glazed in a rich chocolate fondant, these choux pastries are decorated with piped ribbons of white and pink buttercream frosting.', '1717625902.jpg', '200', 'Choux pastry', '50', '2024-06-05 14:18:22', '2024-06-05 14:18:22'),
(3, 'Savory Gougères', 'A delightful display of bite-sized gougères, made from choux pastry.  They are baked to a golden crisp and studded with grated Gruyère cheese. The gougères rest on a bed of fresh rosemary sprigs.', '1717625932.jpg', '100', 'Choux pastry', '50', '2024-06-05 14:18:52', '2024-06-05 14:18:52'),
(4, 'Swan Cream Puffs', 'Imagine two cream puffs, classically golden brown and puffed, but shaped like graceful swans. Their necks are formed with slender piped choux pastry, and their bodies are plump and dusted with powdered sugar. Elegant black currant eyes complete this delightful and whimsical pastry.', '1717625997.jpg', '225', 'Choux pastry', '50', '2024-06-05 14:19:57', '2024-06-05 14:19:57'),
(5, 'Profiterole Tower', 'A towering centerpiece fit for royalty. Profiteroles, small choux pastry puffs, are stacked high, filled with a rich chocolate cream, and decorated with a cascade of milk chocolate ganache. Atop the tower sits a single, perfect strawberry, glistening with a touch of simple syrup.', '1717626043.jpg', '255', 'Choux pastry', '50', '2024-06-05 14:20:43', '2024-06-05 14:20:43'),
(6, 'Spanakopita', 'A quintessential Greek dish, spanakopita is a savory filo pastry pie brimming with a vibrant mixture of chopped spinach, crumbled feta cheese, and aromatic fresh herbs. Encased in a golden brown, flaky filo crust, it\'s a delightful combination of textures and flavors.', '1717626110.jpg', '125', 'Filo pastry', '50', '2024-06-05 14:21:50', '2024-06-05 14:21:50'),
(7, 'Tiropita', 'Indulge in tiropita, a traditional Greek savory pie made with layers of filo pastry. This delectable dish features a rich and creamy filling of feta cheese, ricotta, and a subtle touch of dill, all encased in a crispy, golden brown filo exterior.', '1717626259.jpg', '175', 'Filo pastry', '50', '2024-06-05 14:24:19', '2024-06-05 14:24:19'),
(8, 'Baklava', 'A luxurious dessert with a rich history, baklava is a filo pastry masterpiece. Layers of paper-thin filo are generously filled with chopped nuts and fragrant spices, then drenched in a sweet syrup. The top glistens with a diamond-shaped pattern, often adorned with pistachios for an extra touch of elegance.', '1717626322.jpg', '195', 'Filo pastry', '50', '2024-06-05 14:25:22', '2024-06-05 14:25:22'),
(9, 'Bougatsa', 'A versatile Greek delight, bougatsa can be enjoyed as a savory or sweet treat. This version features a savory filling of creamy béchamel sauce, seasoned ground meat, and crumbled feta cheese, all wrapped in a flaky filo crust.', '1717626379.jpg', '250', 'Filo pastry', '50', '2024-06-05 14:26:19', '2024-06-05 14:26:19'),
(10, 'Crispy Filo Cups with Feta Dip', 'These delightful appetizers showcase the versatility of filo pastry. Crispy filo cups are filled with a vibrant summer medley of chopped fresh vegetables like tomatoes, cucumbers, and olives, nestled in a creamy feta cheese dip. Perfect for sharing, they\'re a refreshing and flavorful bite.', '1717626419.jpg', '175', 'Filo pastry', '50', '2024-06-05 14:26:59', '2024-06-05 14:26:59'),
(11, 'Quiche Lorraine', 'A timeless French dish, quiche Lorraine features a savory filling of eggs, crispy bacon, and melty Gruyère cheese. Baked in a golden brown and flaky shortcrust pastry crust, it\'s a hearty and satisfying meal.', '1717626472.jpg', '185', 'Shortcrust pastry', '50', '2024-06-05 14:27:52', '2024-06-05 14:27:52'),
(12, 'Rustic Goat Cheese and Caramelized Onion Tart', 'This delightful tart showcases the versatility of shortcrust pastry. Flaky and rustic, the crust cradles a rich and creamy filling of caramelized onions and tangy goat cheese.', '1717626501.jpg', '165', 'Shortcrust pastry', '50', '2024-06-05 14:28:21', '2024-06-05 14:28:21'),
(13, 'Blueberry Hand Pies', 'Adorable and delicious, these miniature shortcrust pastry pies are bursting with a sweet and tangy blueberry filling. A simple glaze adds a touch of shine and sweetness.', '1717626536.jpg', '155', 'Shortcrust pastry', '50', '2024-06-05 14:28:56', '2024-06-05 14:28:56'),
(14, 'Chocolate Ganache Tart', 'A decadent indulgence, this chocolate tart features a rich and smooth ganache filling nestled in a crumbly shortcrust pastry shell. Dusted with cocoa powder, it\'s a chocolate lover\'s dream.', '1717626574.jpg', '160', 'Shortcrust pastry', '50', '2024-06-05 14:29:34', '2024-06-05 14:29:34'),
(15, 'Roasted Vegetable Tart', 'This free-form tart is a celebration of fresh, seasonal vegetables. Roasted peppers, zucchini, and cherry tomatoes are nestled in a flaky shortcrust pastry crust and drizzled with a tangy balsamic glaze for a burst of flavor.', '1717626605.jpg', '215', 'Shortcrust pastry', '50', '2024-06-05 14:30:05', '2024-06-05 14:30:05'),
(16, 'Sausage Roll', 'A quintessential British comfort food, the sausage roll is a flaky pastry classic. Seasoned sausage meat is encased in a golden brown and flaky pastry crust, making for a delicious and satisfying snack or light lunch.', '1717626643.jpg', '225', 'Flaky pastry', '50', '2024-06-05 14:30:43', '2024-06-05 14:30:43'),
(17, 'Apple Turnover', 'A delightful handheld treat, the apple turnover features a sweet and juicy apple filling nestled in a flaky pastry crust. Dusted with cinnamon sugar, it\'s a warm and comforting dessert or snack.', '1717626680.jpg', '250', 'Flaky pastry', '50', '2024-06-05 14:31:20', '2024-06-05 14:31:20'),
(18, 'Palmier', 'Delicate and addictive, palmiers are a French flaky pastry treat. The thin, elongated pastry is sprinkled with sugar and baked until golden brown and caramelized, creating a delightful textural contrast.', '1717626713.jpg', '240', 'Flaky pastry', '50', '2024-06-05 14:31:53', '2024-06-05 14:31:53'),
(19, 'Berry Galette', 'A rustic and free-form tart, the berry galette showcases the beauty of fresh summer fruits. Flaky pastry dough is filled with juicy berries and baked until golden brown. A dollop of whipped cream adds a touch of richness and indulgence.', '1717626743.jpg', '190', 'Flaky pastry', '50', '2024-06-05 14:32:23', '2024-06-05 14:32:23'),
(20, 'Chicken Pot Pie', 'A comforting and hearty dish, the chicken pot pie is a classic example of flaky pastry in action. Tender chicken, vegetables, and a creamy gravy are encased in a golden brown and flaky pastry crust, making for a delicious and satisfying meal.', '1717626781.jpg', '180', 'Flaky pastry', '50', '2024-06-05 14:33:01', '2024-06-05 14:33:01'),
(21, 'Croissant', 'A timeless French breakfast pastry, the croissant is a masterpiece of puff pastry. Layers of dough are carefully laminated and baked to create a golden brown exterior and a light, airy, and buttery interior.', '1717626824.jpg', '120', 'Puff pastry', '50', '2024-06-05 14:33:44', '2024-06-05 14:33:44'),
(22, 'Savory Puff Pastry Bites', 'Perfect for parties or appetizers, these bite-sized puff pastry creations offer endless possibilities. Flaky puff pastry is filled with a variety of savory ingredients like cheeses, herbs, and vegetables, making them delicious and visually appealing finger foods.', '1717626859.jpg', '80', 'Puff pastry', '50', '2024-06-05 14:34:19', '2024-06-05 14:34:19'),
(23, 'Chocolate Babka', 'A delightful treat with Eastern European roots, the chocolate babka features rich and flaky puff pastry dough swirled with a decadent chocolate hazelnut spread. Baked to golden perfection, it\'s a delightful indulgence.', '1717626896.jpg', '320', 'Puff pastry', '50', '2024-06-05 14:34:56', '2024-06-05 14:34:56'),
(24, 'Caramelized Onion and Gruyère Tart', 'This rustic tart showcases the versatility of puff pastry. The flaky crust holds a rich and savory filling of caramelized onions and creamy Gruyère cheese, drizzled with a balsamic reduction for a touch of sweet and tangy contrast.', '1717626938.jpg', '400', 'Puff pastry', '50', '2024-06-05 14:35:38', '2024-06-05 14:35:38'),
(25, 'Apple Turnover with Puff Pastry', 'Offering a delightful twist on the classic apple turnover, this version features a flaky puff pastry crust. The golden brown and buttery crust complements the sweet and juicy apple filling, while the lattice crust design adds a touch of elegance.', '1717626977.jpg', '90', 'Puff pastry', '50', '2024-06-05 14:36:17', '2024-06-05 14:36:17');

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
('361RLj8LdzbM09p7jOhdWmsJjlHmYyKBXzqGP4DJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYTQ3ZVpLcllOWnJmd0tkc20xWlliMFo3Z1ZCU05wNWhENVN3cFV2SCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9fQ==', 1717726387),
('SW99nr5zahtfF3lY4TDrWZI7UP0W4Ppgwr5Nuu1G', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSThENkZjZ0NmRVp5ZVpaZkNRVVptYjllSjEwM2x3enZwajg0R0lVNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9fQ==', 1717678404);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '789456120', 'Sandoy Street', NULL, '$2y$12$VTdhGiaYSj61uMbUc2rv9uG6vdCuMDgtDWgDcQ007hWisfGb1zzUa', NULL, '2024-06-04 08:20:26', '2024-06-04 08:20:26'),
(2, 'user', 'user@gmail.com', 'user', '123456789', 'Sandoy Street', NULL, '$2y$12$3t/YUjzII8of8p0sYmi6PuboMGtET48OBzKVkitp9ro7akNONnjxm', 'u0gX1kzyOtmDP41SkbEGsM8F67GGlhQtHW6lnsiamVYFLB7kR1YfD3MHhq3x', '2024-06-04 08:21:04', '2024-06-04 08:21:04'),
(6, 'pookie', 'pookiepastries@gmail.com', 'user', '123456789098', 'Sandoy Street', NULL, '$2y$12$yjQ6yu4pdZsJq3IdxgovyODJ/H7APMjWET.Y9Rls6/GlSpkppb.lO', NULL, '2024-06-05 23:45:26', '2024-06-05 23:45:26'),
(7, 'April Jermaine', 'jermaine@gmail.com', 'user', '09876543211', 'Sandoy Street', NULL, '$2y$12$MQaJI5a4ts1s.NQJpBT3Qe6cfut4Q02AXmJ7yPHWvFGq6HOl6mreG', NULL, '2024-06-06 17:56:33', '2024-06-06 17:56:33'),
(8, 'april', 'april@gmail.com', 'user', '123456789098765432123456776543', 'Sandoy Street', NULL, '$2y$12$Y4mqDQZ2SRJ8efMO52OYyujecXT2wKBzdq8OyZO6B0V16F41Nr2vi', NULL, '2024-06-06 18:12:03', '2024-06-06 18:12:03');

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
