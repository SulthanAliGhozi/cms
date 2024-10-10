-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 25, 2024 at 05:06 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `management_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjacencies`
--

CREATE TABLE `adjacencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjects` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adjacencies`
--

INSERT INTO `adjacencies` (`id`, `name`, `subjects`, `created_at`, `updated_at`) VALUES
(1, 'Menu Utama', '{\"d6043f8e-87b3-4856-995e-351369ceb65b\":{\"label\":\"Home\",\"children\":[]},\"dbcbbbb9-5b03-438f-a9ce-79ef8bf1c1de\":{\"label\":\"Page\",\"children\":{\"69f0c1d8-110b-4334-9b6b-7c292aa79e20\":{\"label\":\"Blog\",\"children\":[]},\"cea1184e-a111-4944-9bd2-a317218b22eb\":{\"label\":\"Struktur Organisasi\",\"children\":[]}}},\"5fb912b7-8ad6-4986-946b-014b0a358c19\":{\"label\":\"Contact\",\"children\":[]}}', '2023-10-06 04:18:18', '2023-10-06 04:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1727225648),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1727225648;', 1727225648),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:152:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:14:\"view_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:18:\"view_any_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:16:\"create_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:16:\"update_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:17:\"restore_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:21:\"restore_any_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:19:\"replicate_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:17:\"reorder_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:16:\"delete_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:20:\"delete_any_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:22:\"force_delete_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:26:\"force_delete_any_adjacency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:20:\"view_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:24:\"view_any_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:22:\"create_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:22:\"update_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:23:\"restore_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:27:\"restore_any_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:25:\"replicate_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:23:\"reorder_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:22:\"delete_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:26:\"delete_any_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:28:\"force_delete_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:32:\"force_delete_any_category::nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:14:\"view_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:18:\"view_any_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:16:\"create_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:16:\"update_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:17:\"restore_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:21:\"restore_any_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:19:\"replicate_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:17:\"reorder_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:16:\"delete_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:20:\"delete_any_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:22:\"force_delete_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:26:\"force_delete_any_classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:16:\"view_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:20:\"view_any_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:18:\"create_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:18:\"update_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:19:\"restore_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:23:\"restore_any_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:21:\"replicate_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:19:\"reorder_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:18:\"delete_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:22:\"delete_any_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:24:\"force_delete_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:28:\"force_delete_any_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:10:\"view_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:14:\"view_any_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:12:\"create_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:12:\"update_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:13:\"restore_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:17:\"restore_any_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:15:\"replicate_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:13:\"reorder_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:12:\"delete_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:16:\"delete_any_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:18:\"force_delete_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:22:\"force_delete_any_nilai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:12:\"view_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:16:\"view_any_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:14:\"create_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:14:\"update_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:15:\"restore_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:19:\"restore_any_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:17:\"replicate_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:15:\"reorder_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:14:\"delete_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:18:\"delete_any_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:20:\"force_delete_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:24:\"force_delete_any_periode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:12:\"view_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:16:\"view_any_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:14:\"create_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:14:\"update_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:15:\"restore_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:19:\"restore_any_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:17:\"replicate_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:15:\"reorder_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:14:\"delete_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:18:\"delete_any_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:20:\"force_delete_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:24:\"force_delete_any_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:24:\"view_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:28:\"view_any_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:26:\"create_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:26:\"update_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:27:\"restore_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:31:\"restore_any_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:29:\"replicate_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:27:\"reorder_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:26:\"delete_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:30:\"delete_any_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:32:\"force_delete_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:36:\"force_delete_any_student::has::class\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:12:\"view_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:16:\"view_any_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:14:\"create_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:14:\"update_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:15:\"restore_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:19:\"restore_any_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:17:\"replicate_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:15:\"reorder_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:14:\"delete_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:18:\"delete_any_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:20:\"force_delete_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:24:\"force_delete_any_subject\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:12:\"view_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:16:\"view_any_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:14:\"create_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:14:\"update_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:15:\"restore_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:19:\"restore_any_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:120;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:17:\"replicate_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:121;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:15:\"reorder_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:122;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:14:\"delete_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:123;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:18:\"delete_any_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:124;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:20:\"force_delete_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:125;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:24:\"force_delete_any_teacher\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:126;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:129;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:131;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:11:\"page_Report\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:20:\"widget_StatsOverview\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:12:\"view_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:16:\"view_any_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:14:\"create_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:14:\"update_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:15:\"restore_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:19:\"restore_any_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:17:\"replicate_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:15:\"reorder_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:14:\"delete_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:18:\"delete_any_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:20:\"force_delete_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:151;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:24:\"force_delete_any_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"Teacher\";s:1:\"c\";s:3:\"web\";}}}', 1727275710);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_nilais`
--

CREATE TABLE `category_nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_nilais`
--

INSERT INTO `category_nilais` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Task Daily', 'task-daily', '2023-08-04 03:56:24', '2023-08-04 03:56:24'),
(2, 'Examp', 'examp', '2023-08-04 03:56:47', '2023-08-04 03:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, '1 A', '1-a', '2023-08-05 16:38:50', '2023-08-05 16:38:50'),
(2, '1 B', '1-b', '2023-08-11 16:14:21', '2023-08-11 16:14:21'),
(3, '2 A', '2-a', '2023-09-08 04:41:18', '2023-09-08 04:41:18'),
(4, '2 B', '2-b', '2023-09-08 04:41:22', '2023-09-08 04:41:22'),
(5, '3 A', '3-a', '2023-09-08 04:41:26', '2023-09-08 04:41:26'),
(6, '3 B', '3-b', '2023-09-08 04:41:29', '2023-09-08 04:41:29'),
(8, '1 C', '1-c', '2023-09-08 04:47:45', '2023-09-08 04:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `classroom_subject`
--

CREATE TABLE `classroom_subject` (
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classroom_subject`
--

INSERT INTO `classroom_subject` (`classroom_id`, `subject_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 7, NULL, NULL, NULL),
(2, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name_department`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kepsek', 'kepsek', NULL, '2023-08-05 16:50:32', '2023-08-05 16:50:32'),
(2, 'Wakil Kepala Sekolah', 'wakil-kepala-sekolah', NULL, '2023-08-05 16:51:07', '2023-08-05 16:51:07'),
(3, 'Bendahara', 'bendahara', NULL, '2023-08-24 05:00:50', '2023-08-24 05:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_rooms`
--

CREATE TABLE `home_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teachers_id` bigint(20) UNSIGNED NOT NULL,
  `classrooms_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_rooms`
--

INSERT INTO `home_rooms` (`id`, `teachers_id`, `classrooms_id`, `periode_id`, `is_open`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 1, '2023-08-09 04:59:44', '2023-08-09 04:59:44'),
(2, 2, 2, 3, 1, '2023-08-15 00:09:41', '2023-08-15 00:09:41');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_04_085552_create_teachers_table', 2),
(6, '2023_08_04_085754_create_students_table', 2),
(7, '2023_08_04_090241_create_periodes_table', 2),
(8, '2023_08_04_090353_create_departments_table', 2),
(9, '2023_08_04_090543_create_classrooms_table', 2),
(10, '2023_08_04_090650_create_subjects_table', 2),
(11, '2023_08_04_090831_create_category_nilais_table', 2),
(12, '2023_08_09_122108_create_home_rooms_table', 3),
(15, '2023_08_25_125641_create_classroom_has_subjects_table', 5),
(20, '2023_09_06_125313_create_notifications_table', 7),
(21, '2023_08_09_122109_create_student_has_classes_table', 8),
(22, '2023_09_10_101842_create_teams_table', 9),
(26, '2023_09_22_140517_create_nilais_table', 10),
(28, '2023_10_06_130853_create_adjacencies_table', 11),
(30, '2023_08_30_134432_create_permission_tables', 12),
(31, '2024_05_12_022112_create_posts_table', 13),
(32, '2024_05_12_024220_add_name_to_posts', 14),
(33, '2024_05_12_025804_add_name_to_posts', 15),
(34, '0001_01_01_000001_create_cache_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nilais`
--

CREATE TABLE `nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `category_nilai_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` double UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilais`
--

INSERT INTO `nilais` (`id`, `class_id`, `student_id`, `periode_id`, `teacher_id`, `subject_id`, `category_nilai_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 2, 2, 1, 90, NULL, NULL),
(2, 1, 36, 3, 2, 2, 1, 80, NULL, NULL),
(3, 1, 37, 3, 2, 2, 1, 100, NULL, NULL),
(4, 1, 1, 2, 2, 5, 2, 80, NULL, NULL),
(5, 1, 36, 2, 2, 5, 2, 70, NULL, NULL),
(6, 1, 37, 2, 2, 5, 2, 90, NULL, NULL),
(7, 1, 1, 2, 1, 4, 1, 80, NULL, NULL),
(8, 1, 36, 2, 1, 4, 1, 70, NULL, NULL),
(9, 1, 1, 2, 1, 3, 2, 50, NULL, NULL),
(10, 1, 37, 2, 1, 3, 2, 100, NULL, NULL),
(11, 1, 36, 2, 1, 3, 2, 90, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('47d12c2f-fca0-4a0e-a20f-95c7166e30b1', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 3, '{\"actions\":[],\"body\":null,\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-check-circle\",\"iconColor\":\"success\",\"title\":\"Murid Mighty Guy telah mendaftar\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2023-09-06 04:57:40', '2023-09-06 04:57:40'),
('6f0b68ef-324a-429f-b09f-0ffebb768cca', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 3, '{\"actions\":[],\"body\":null,\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-check-circle\",\"iconColor\":\"success\",\"title\":\"Murid Shubuh telah mendaftar\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2023-09-06 12:06:47', '2023-09-06 12:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periodes`
--

CREATE TABLE `periodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periodes`
--

INSERT INTO `periodes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2021/2022', '2023-08-05 15:54:53', '2023-08-09 04:45:58'),
(2, '2022/2023', '2023-08-09 04:46:07', '2023-08-09 04:46:07'),
(3, '2023/2024', '2023-08-09 04:46:13', '2023-08-09 04:46:13'),
(4, '2024/2025', '2023-08-11 14:46:30', '2023-08-11 14:46:30'),
(5, '2025/2026', '2023-08-11 15:15:56', '2023-08-11 15:15:56'),
(6, '2026/2027', '2023-08-11 16:16:23', '2023-08-11 16:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(2, 'view_any_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(3, 'create_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(4, 'update_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(5, 'restore_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(6, 'restore_any_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(7, 'replicate_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(8, 'reorder_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(9, 'delete_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(10, 'delete_any_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(11, 'force_delete_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(12, 'force_delete_any_adjacency', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(13, 'view_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(14, 'view_any_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(15, 'create_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(16, 'update_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(17, 'restore_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(18, 'restore_any_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(19, 'replicate_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(20, 'reorder_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(21, 'delete_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(22, 'delete_any_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(23, 'force_delete_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(24, 'force_delete_any_category::nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(25, 'view_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(26, 'view_any_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(27, 'create_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(28, 'update_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(29, 'restore_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(30, 'restore_any_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(31, 'replicate_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(32, 'reorder_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(33, 'delete_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(34, 'delete_any_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(35, 'force_delete_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(36, 'force_delete_any_classroom', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(37, 'view_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(38, 'view_any_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(39, 'create_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(40, 'update_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(41, 'restore_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(42, 'restore_any_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(43, 'replicate_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(44, 'reorder_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(45, 'delete_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(46, 'delete_any_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(47, 'force_delete_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(48, 'force_delete_any_departments', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(49, 'view_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(50, 'view_any_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(51, 'create_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(52, 'update_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(53, 'restore_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(54, 'restore_any_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(55, 'replicate_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(56, 'reorder_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(57, 'delete_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(58, 'delete_any_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(59, 'force_delete_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(60, 'force_delete_any_nilai', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(61, 'view_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(62, 'view_any_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(63, 'create_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(64, 'update_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(65, 'restore_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(66, 'restore_any_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(67, 'replicate_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(68, 'reorder_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(69, 'delete_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(70, 'delete_any_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(71, 'force_delete_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(72, 'force_delete_any_periode', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(73, 'view_role', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(74, 'view_any_role', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(75, 'create_role', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(76, 'update_role', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(77, 'delete_role', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(78, 'delete_any_role', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(79, 'view_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(80, 'view_any_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(81, 'create_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(82, 'update_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(83, 'restore_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(84, 'restore_any_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(85, 'replicate_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(86, 'reorder_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(87, 'delete_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(88, 'delete_any_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(89, 'force_delete_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(90, 'force_delete_any_student', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(91, 'view_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(92, 'view_any_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(93, 'create_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(94, 'update_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(95, 'restore_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(96, 'restore_any_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(97, 'replicate_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(98, 'reorder_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(99, 'delete_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(100, 'delete_any_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(101, 'force_delete_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(102, 'force_delete_any_student::has::class', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(103, 'view_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(104, 'view_any_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(105, 'create_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(106, 'update_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(107, 'restore_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(108, 'restore_any_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(109, 'replicate_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(110, 'reorder_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(111, 'delete_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(112, 'delete_any_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(113, 'force_delete_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(114, 'force_delete_any_subject', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(115, 'view_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(116, 'view_any_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(117, 'create_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(118, 'update_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(119, 'restore_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(120, 'restore_any_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(121, 'replicate_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(122, 'reorder_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(123, 'delete_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(124, 'delete_any_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(125, 'force_delete_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(126, 'force_delete_any_teacher', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(127, 'view_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(128, 'view_any_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(129, 'create_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(130, 'update_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(131, 'restore_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(132, 'restore_any_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(133, 'replicate_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(134, 'reorder_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(135, 'delete_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(136, 'delete_any_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(137, 'force_delete_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(138, 'force_delete_any_user', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(139, 'page_Report', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(140, 'widget_StatsOverview', 'web', '2024-01-17 15:41:57', '2024-01-17 15:41:57'),
(141, 'view_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(142, 'view_any_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(143, 'create_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(144, 'update_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(145, 'restore_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(146, 'restore_any_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(147, 'replicate_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(148, 'reorder_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(149, 'delete_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(150, 'delete_any_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(151, 'force_delete_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40'),
(152, 'force_delete_any_absensi', 'web', '2024-01-17 15:49:40', '2024-01-17 15:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '[{\"type\":\"heading\",\"data\":{\"content\":\"Latihan Builder Form\",\"level\":\"h2\"}},{\"type\":\"paragraph\",\"data\":{\"content\":\"<p>Lear how to make builder form<\\/p><p><strong>Lear how to make builder form<\\/strong><\\/p><h2>Lear how to make builder form<\\/h2>\"}},{\"type\":\"image\",\"data\":{\"url\":\"image_content\\/01HXNH3DK16NY4JDPBPBHYAWGB.jpg\",\"alt\":\"bulan\"}}]', 1, '2024-05-11 19:31:14', '2024-05-11 19:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-01-17 15:41:56', '2024-01-17 15:41:56'),
(2, 'Teacher', 'web', '2024-01-17 15:44:33', '2024-01-17 15:44:33'),
(5, 'panel_user', 'web', '2024-09-24 05:48:31', '2024-09-24 05:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('f32um6NWhHyHltnasJrQtbLi0N8j4uVnnc42dBIl', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoia0FLbWVvN2l0bnpYN3hlUDdIZXdDUzRmMkxpTDdvd0o5Rzl2RHEzOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jbGFzc3Jvb21zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRGSTNVWjA4cUFGV3BPREZOWUZYdEEuOWxDQWRUT2VaR2xsRlNHN0xaOGxsZzcueHFkc3JibSI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1727227686),
('xhLvQKXYJP9xytTWrHqGagiBlTMzc27eRtWeV5ml', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQlZaTTkzeFRST0ZwRFJPTDVNMnJZWFM4eDZxUVZnU2xadlpuNVdxRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jbGFzc3Jvb21zIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJEZJM1VaMDhxQUZXcE9ERk5ZRlh0QS45bENBZFRPZVpHbGxGU0c3TFo4bGxnNy54cWRzcmJtIjtzOjY6InRhYmxlcyI7YToxOntzOjI4OiJMaXN0U3R1ZGVudHNfdG9nZ2xlZF9jb2x1bW5zIjthOjI6e3M6ODoiYmlydGhkYXkiO2I6MDtzOjY6InN0YXR1cyI7YjowO319czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1727189973);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Male',
  `birthday` date DEFAULT NULL,
  `religion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'islam',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('accept','off','move','grade') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `nis`, `name`, `gender`, `birthday`, `religion`, `contact`, `profile`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '12001', 'Nobita', 'Male', '2008-08-06', 'Islam', '628122889999', 'students/Thoi2mjtHy0a5hHiSzC6GNpfb5bMbp-metabm9iaXRhLmpwZw==-.jpg', 'off', NULL, '2023-08-05 16:14:33', '2023-11-14 14:41:53'),
(36, '12002', 'Doraemon', 'Male', NULL, 'Katolik', '628123334445', 'students/igx6CvCoP9w1sxtzAf12AbagAjA92f-metaZG9yYWVtb24uanBn-.jpg', 'off', NULL, '2023-08-14 16:40:59', '2023-08-27 04:59:45'),
(37, '12003', 'Sizuka', 'Female', '2008-08-23', 'Islam', '628239239923', 'students/oDVcbIPTuLCUKkYGce7XmhPWhmCq74-metac2l6dWthLmpwZw==-.jpg', 'accept', 14, '2023-08-14 17:44:05', '2023-08-24 14:15:06'),
(38, '12004', 'Suneo', 'Male', NULL, 'Buddha', '082332323233', 'students/hDHS9FPM5KOPCU1rNXq0Zo36vgph1N-metaYXZhdGFycy0wMDAwODAwNzUzMTgtZHR6YzliLXQ1MDB4NTAwLmpwZw==-.jpg', 'off', NULL, '2023-08-24 14:13:24', '2023-08-27 04:59:45'),
(39, '12005', 'Giant', 'Male', '2001-01-14', 'Buddha', '08232300200', 'students/IVhHRIhvjuFtEeqEWiwSVzVL3cOqrb-metaZ2lhbnQuanBn-.jpg', 'off', NULL, '2023-08-24 14:18:07', '2023-08-27 04:59:45'),
(40, '12006', 'Dekisugi', 'Male', '2001-02-02', 'Buddha', '0812232333333', 'students/3BGUpRchV0QCB07k3IO2PuU3ixAHuh-metaSGlkZXRvc2hpLURla2lzdWdpLmpwZw==-.jpg', 'accept', NULL, '2023-08-24 14:23:43', '2023-08-24 14:23:43'),
(41, '21001', 'Ichigo', 'Male', NULL, 'Buddha', '082828282222', 'students/trtZxlEbC51MJ7cxNNM6s9xyXizB2t-metaNTEyNzg4LmpwZw==-.jpg', 'accept', NULL, '2023-08-24 14:25:12', '2023-08-24 14:25:12'),
(42, '21002', 'Rukia', 'Female', '2000-05-09', 'Buddha', '0812929299999', 'students/mgLbn0HLnSOjuOUjxOCGFRMCmAMNYI-metaUnVraWFLdWNoaWtpS3Viby5qcGc=-.jpg', 'accept', NULL, '2023-08-24 14:27:37', '2023-08-24 14:27:37'),
(43, '12003', 'Renji', 'Male', '2000-02-07', 'Buddha', '082929292992', 'students/YuJ6YoiGLZUMP3apKU344Too2yd5hR-metacmVuamkuanBn-.jpg', 'accept', NULL, '2023-08-24 14:29:09', '2023-08-24 14:29:09'),
(44, '21004', 'Inoe', 'Female', '2001-06-06', 'Buddha', '082229292999', 'students/Ok8jzvEaJezoGwtXJDXQqi2A0P3c4v-metab3JpaGltZS5qcGc=-.jpg', 'accept', NULL, '2023-08-24 14:30:52', '2023-08-24 14:30:52'),
(45, '21005', 'Sado', 'Male', '2000-11-14', 'Buddha', '018282828282', 'students/z0u64e3G8zRZHZju1Sz7pxxjZUi1DG-metaQ2hhZC53ZWJw-.webp', 'accept', NULL, '2023-08-24 14:34:01', '2023-08-24 14:34:01'),
(51, '88888', 'Hello', 'Male', NULL, 'Islam', '081292939999', NULL, 'accept', NULL, NULL, '2024-09-24 05:53:39'),
(52, NULL, 'Try Students', 'Male', '2023-09-04', 'Islam', '0829329393999', 'students/1693988344_logo-m.png', 'accept', NULL, NULL, NULL),
(53, NULL, 'Try student 2', 'Female', '2002-09-05', 'Hindu', '082929299', 'students/1693988853_emoticon.png', 'accept', NULL, NULL, NULL),
(55, NULL, 'cobasls', 'Male', '2023-09-03', 'Islam', '0230909', 'students/1694005332_logo-m.png', 'accept', NULL, NULL, NULL),
(61, NULL, 'Coba saja dulu', 'Male', '2023-09-04', 'Islam', '989239398239', NULL, 'accept', NULL, NULL, NULL),
(62, NULL, 'Coba saja dulu', 'Male', '2023-09-04', 'Islam', '989239398239', NULL, 'accept', NULL, NULL, NULL),
(63, NULL, 'Mighty Guy', 'Male', '2023-09-07', 'Islam', '0823939399', 'students/1694008660_logo-m.png', 'accept', NULL, NULL, NULL),
(67, '801', 'Jabar karim', 'Male', NULL, 'Islam', NULL, 'students/2023-12-14test.pdf', 'accept', NULL, '2023-12-13 01:19:02', '2023-12-13 19:39:13'),
(68, NULL, 'Siapa Saya', 'Male', '2024-09-24', 'Islam', '08124888218777', NULL, 'accept', NULL, NULL, NULL),
(69, NULL, 'Siapa Saya', 'Male', '2024-09-24', 'Islam', '08124888218777', NULL, 'accept', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_has_classes`
--

CREATE TABLE `student_has_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `students_id` bigint(20) UNSIGNED NOT NULL,
  `classrooms_id` bigint(20) UNSIGNED NOT NULL,
  `periode_id` bigint(20) UNSIGNED NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_has_classes`
--

INSERT INTO `student_has_classes` (`id`, `students_id`, `classrooms_id`, `periode_id`, `is_open`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 1, NULL, '2024-09-24 16:11:57'),
(2, 36, 1, 2, 1, NULL, NULL),
(3, 37, 1, 2, 1, NULL, NULL),
(4, 38, 1, 2, 1, NULL, NULL),
(5, 39, 1, 2, 1, NULL, NULL),
(6, 40, 1, 2, 1, NULL, NULL),
(7, 41, 2, 2, 1, NULL, NULL),
(8, 42, 2, 2, 1, NULL, NULL),
(9, 43, 2, 2, 1, NULL, NULL),
(10, 44, 2, 2, 1, NULL, NULL),
(11, 45, 2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `kode`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'A124', 'B.Inggris', 'binggris', '2023-08-08 23:58:39', '2023-08-08 23:58:39'),
(3, 'B321', 'B.Indonesia', 'bindonesia', '2023-08-24 13:48:22', '2023-08-25 17:33:23'),
(4, 'B341', 'Fisika', 'fisika', '2023-08-24 13:48:46', '2023-08-24 13:48:46'),
(5, 'B424', 'Agama', 'agama', '2023-08-24 13:49:15', '2023-08-24 13:49:15'),
(6, 'C111', 'Algoritma Pemrograman', 'algoritma-pemrograman', '2023-08-24 13:49:49', '2023-08-24 13:49:58'),
(7, 'C122', 'Web 1', 'web-1', '2023-08-24 13:50:22', '2023-08-24 13:50:22'),
(8, 'C123', 'Web 2', 'web-2', '2023-08-24 13:50:35', '2023-08-24 13:50:35'),
(9, 'C124', 'Database', 'database', '2023-08-24 13:51:36', '2023-08-24 13:51:36'),
(10, 'C125', 'Data Analyst', 'data-analyst', '2023-08-24 13:52:09', '2023-08-24 13:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `nip`, `name`, `address`, `profile`, `created_at`, `updated_at`) VALUES
(1, '12345433443', 'Jiraiya', 'Street 1 Konohagakure', 'teachers/zAskZgDRFhgmP01ARfZ5n0imkjeuD4-metaSmlyYWl5YS02OTZ4NDk3LmpwZw==-.jpg', '2023-08-05 16:01:33', '2023-08-24 05:00:01'),
(2, '9099999999', 'Kakashi', 'Jl. Suderman No. 52', 'teachers/CvK42UZWoNHtgwTO7tpJWCvYpNdGbu-metaS2FrYXNoaUhhdGFrZS53ZWJw-.webp', '2023-08-14 17:46:48', '2023-08-24 04:59:13'),
(3, '234444243444', 'Tsunade', 'Jl. Kecapi No. 71', 'teachers/y6pB2GxCcxFpFuqouaXtmUl1KkwSAq-metaaW1hZ2VzLmpwZWc=-.jpg', '2023-08-24 13:55:27', '2023-08-24 13:55:27'),
(4, '432322222111', 'Guru Guy', 'Jl. Konoha No. 11', 'teachers/5hBrLV08piK6ARaaYGWXiZPUqpBlKL-metaZ3V5LmpwZw==-.jpg', '2023-08-24 13:57:31', '2023-08-24 13:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'School A', 'school-a', '2023-09-11 05:15:13', '2023-09-11 05:15:13'),
(3, 'School B', 'school-b', '2023-09-11 05:25:36', '2023-09-11 05:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_user`
--

INSERT INTO `team_user` (`id`, `team_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 3, 2, NULL, NULL);

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
(1, 'Admin', 'admin@test.com', NULL, '$2y$12$FI3UZ08qAFWpODFNYFXtA.9lCAdTOeZGllFSG7LZ8llg7.xqdsrbm', 'XZKaGDa5ywszhlWPc15hBfHnz4Q5bQahVpw9G2Sb29F08Y8zpcuMmd1usrle', '2023-08-01 16:16:08', '2024-09-23 22:39:28'),
(2, 'Kakashi', 'kakashi@test.com', NULL, '$2y$12$OnNPdBhAHfxsT3wcxZMkiedymEwQO.VkzHYx2qz.6OW1u0m6tdyei', 'SbwdqWOsIQBOb1JP7yKCfsDyOPLdk3DSTUPQpz65hA8UxMFEz5MM5WS1Vd6E', '2023-08-30 23:12:52', '2024-09-24 05:49:32'),
(3, 'admin_two', 'admintwo@test.com', NULL, '$2y$10$ifhk47sWMrGJo/kB8NDlYOy0SEYK7Qi.ahMrE5lKq34Ax9333bJZi', NULL, '2023-09-04 04:15:18', '2023-09-04 04:15:18'),
(6, 'Student One', 'student@test.com', NULL, '$2y$10$Zi9OJYGXXYu2b2S0V.De.ekKA4MNixdXmjAnXLAFtQ/baj92ftkXG', NULL, '2023-09-18 14:19:46', '2023-09-18 14:19:46'),
(8, 'Student Two', 'studenttwo@test.com', NULL, '$2y$10$8Tbw1hGL1yc9ThjT4w1dzeuQYBjqtT0DCbBYb6cgqJ0l.6D/chLcK', NULL, '2023-09-18 14:21:46', '2023-09-18 14:21:46'),
(14, 'Sizuka', 'sizuka@test.com', NULL, '$2y$10$kMAJIABbZEVdUU2RALbX7.XLz/2VKn0vJP1ADGPSWHVDnTLdye5oi', NULL, '2023-11-28 17:22:40', '2023-11-28 17:22:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjacencies`
--
ALTER TABLE `adjacencies`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `category_nilais`
--
ALTER TABLE `category_nilais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroom_subject`
--
ALTER TABLE `classroom_subject`
  ADD KEY `classroom_has_subjects_classrooms_id_foreign` (`classroom_id`),
  ADD KEY `classroom_has_subjects_subjects_id_foreign` (`subject_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_rooms`
--
ALTER TABLE `home_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_rooms_teachers_id_foreign` (`teachers_id`),
  ADD KEY `home_rooms_classrooms_id_foreign` (`classrooms_id`),
  ADD KEY `home_rooms_periode_id_foreign` (`periode_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `periodes`
--
ALTER TABLE `periodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `periodes_name_unique` (`name`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_has_classes`
--
ALTER TABLE `student_has_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_has_classes_students_id_foreign` (`students_id`),
  ADD KEY `student_has_classes_classrooms_id_foreign` (`classrooms_id`),
  ADD KEY `student_has_classes_periode_id_foreign` (`periode_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_user_team_id_foreign` (`team_id`),
  ADD KEY `team_user_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `adjacencies`
--
ALTER TABLE `adjacencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_nilais`
--
ALTER TABLE `category_nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_rooms`
--
ALTER TABLE `home_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `periodes`
--
ALTER TABLE `periodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `student_has_classes`
--
ALTER TABLE `student_has_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classroom_subject`
--
ALTER TABLE `classroom_subject`
  ADD CONSTRAINT `classroom_has_subjects_classrooms_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `classroom_has_subjects_subjects_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `home_rooms`
--
ALTER TABLE `home_rooms`
  ADD CONSTRAINT `home_rooms_classrooms_id_foreign` FOREIGN KEY (`classrooms_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_rooms_periode_id_foreign` FOREIGN KEY (`periode_id`) REFERENCES `periodes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_rooms_teachers_id_foreign` FOREIGN KEY (`teachers_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_has_classes`
--
ALTER TABLE `student_has_classes`
  ADD CONSTRAINT `student_has_classes_classrooms_id_foreign` FOREIGN KEY (`classrooms_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_has_classes_periode_id_foreign` FOREIGN KEY (`periode_id`) REFERENCES `periodes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_has_classes_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team_user`
--
ALTER TABLE `team_user`
  ADD CONSTRAINT `team_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
