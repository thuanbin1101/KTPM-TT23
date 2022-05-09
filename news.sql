-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2022 at 09:01 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_vn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_en`, `category_vn`, `soft_delete`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Publish', 'Xuất bản', '0', NULL, NULL, NULL),
(3, 'Society', 'Xã hội', '0', NULL, NULL, NULL),
(4, 'Sport', 'Thể thao', '0', NULL, NULL, NULL),
(5, 'Entertain', 'Giải trí', '0', NULL, NULL, NULL),
(6, 'Life', 'Đời sống', '0', NULL, NULL, NULL),
(7, 'Business', 'Kinh doanh', '0', NULL, NULL, NULL),
(8, 'World', 'Thế giới', '0', NULL, NULL, NULL),
(22, 'zxczx', 'czxc', '0', NULL, '2022-03-20 20:47:38', '2022-03-20 20:47:38'),
(24, 'dd', 'dddd', '0', NULL, '2022-03-20 20:50:57', '2022-03-20 20:50:57'),
(25, 'asdasd', 'asdasd', '0', NULL, '2022-03-20 20:52:58', '2022-03-20 20:52:58'),
(26, 'asdas', 'dsadasd', '0', NULL, '2022-03-27 20:29:08', '2022-03-27 20:29:08'),
(27, 'dfsdfsd', 'fsdfsf', '0', NULL, '2022-03-31 22:06:33', '2022-03-31 22:06:33'),
(28, 'xcv', 'xcv', '0', NULL, NULL, NULL),
(29, 'jh', 'hj', '0', NULL, '2022-03-31 22:08:30', '2022-03-31 22:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_vn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_en`, `district_vn`, `created_at`, `updated_at`) VALUES
(2, 'ABC', 'Day la adasdsad', NULL, NULL),
(3, 'xzcxzczxc', 'xzcxvcx', NULL, NULL),
(4, 'xzczcx', '123213213213', NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_20_071237_create_sessions_table', 1),
(7, '2022_01_20_101929_create_categories_table', 2),
(8, '2022_01_20_102259_create_subcategories_table', 2),
(9, '2022_01_21_070614_create_districts_table', 3),
(10, '2022_01_21_070859_create_subdistricts_table', 4),
(11, '2022_01_21_082341_create_posts_table', 5),
(12, '2022_01_26_142541_create_socials_table', 6),
(13, '2022_01_26_150958_create_seos_table', 7),
(14, '2022_01_27_070139_create_photos_table', 8),
(15, '2022_03_21_034218_add_column_deleted_at_to_category_table', 9),
(16, '2022_03_26_035117_create_permission_tables', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 4),
(6, 'App\\Models\\User', 5),
(7, 'App\\Models\\User', 5);

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
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5);

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
(1, 'add category', 'web', NULL, NULL),
(2, 'edit category', 'web', NULL, NULL),
(3, 'delete category', 'web', NULL, NULL),
(5, 'publish category', 'web', NULL, NULL),
(6, 'edit posts', 'web', NULL, NULL),
(7, 'delete posts', 'web', NULL, NULL),
(9, 'add posts', 'web', NULL, NULL),
(10, 'publish posts', 'web', NULL, NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
(1, 'image/photogallery/61f254405ab14.jpg', 'asdsadasd', '0', NULL, NULL),
(2, 'image/photogallery/61f4b8a903770.jpg', 'bgbgbgb', '1', NULL, NULL),
(3, 'image/photogallery/61f4b8b1d1717.jpg', 'xcvxcvcxvcxv', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `subdistrict_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_vn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci,
  `details_vn` text COLLATE utf8mb4_unicode_ci,
  `tags_en` text COLLATE utf8mb4_unicode_ci,
  `tags_vn` text COLLATE utf8mb4_unicode_ci,
  `headline` int(11) DEFAULT NULL,
  `first_section` int(11) DEFAULT NULL,
  `first_section_thumbnail` int(11) DEFAULT NULL,
  `bigthumbnail` int(11) DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `subcategory_id`, `district_id`, `subdistrict_id`, `user_id`, `title_en`, `title_vn`, `image`, `details_en`, `details_vn`, `tags_en`, `tags_vn`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, 2, 1, '\'People at 4 levels of translation are not isolated when they go home.\'', 'Người dân ở 4 cấp độ dịch đều không phải cách ly khi về que', 'image/postimg/61f1573e6f54b.jpg', '<p>Residents residing in 4 translation levels are not medical isolation when they go home to celebrate Tet, except for cases of health monitoring or being in blockade areas, according to the explanation of the Ministry of Health representatives.</p><p><br></p><p>On January 25, Ms. Nguyen Thi Lien Huong, Director of Health Environmental Management (Ministry of Health), said the above information.</p><p><br></p><p>Previously on January 22, the Ministry of Health had a document (No. 357) sent localities, stating that the vaccination rate of Covid-19 vaccination in the whole country has achieved very high; All populations from 18 years old were injected by one; 96% of the population injected two doses; 19% of the population injecting three. Children aged 12-17 years have a nose of 94%; Two injections reach 82%.</p><p><br></p><p>Therefore, the Ministry of Health proposes localities to facilitate people to go home to celebrate Tet, ensuring the anti-epidemic, including 5K implementation, self-monitoring and not medical isolation. People with doubts suspected of Covid-19 such as fever, cough, difficulty breathing ..., limiting contact and restricting travel, immediately informing local health for guidance, testing and management according to the law.</p><p><br></p><p>However, after the above guidelines, many people wondered people to reside in the epidemic area at Level 4 (Red Region), when they returned to the countryside. This concerns come from, in the professional guidelines for the Ministry of Health\'s safety adaptation in October 2021, there is a need to insulate people from level 4 and blockade areas. Elderly people, have background diseases or pregnant women, children under 18, are isolated at home and have the same caregivers.</p><p><br></p><p>The isolation of people in the countryside to celebrate Tet is built at the cultural house in Quang Hung village and the cultural center of Thanh Phong commune, Nhu Xuan district, Thanh Hoa province. Photo: Lam Son</p><p>The isolation of people in the countryside to celebrate Tet is built at the cultural house in Quang Hung village and the cultural center of Thanh Phong commune, Nhu Xuan district, Thanh Hoa province. Photo: Lam Son</p><p><br></p><p>Explain more about Official Letter No. 357, Ms. Nguyen Thi Lien Huong said this is a document to create favorable conditions for domestic people to their hometown. Currently the vaccine coverage rate across the country has reached high, so only people are in time isolation of medical and health monitoring at home or in the blockade area, they must be quarantined when they return The countryside to eat Tet.</p><p><br></p><p>\"The remaining people who are not in the above-mentioned areas are not isolated when they return to their hometown, including in the area of ​​level 4 disease,\" Ms. Huong said.</p><p><br></p><p>Ms. Info, now if detecting cases, localities only blockade one-storey, an apartment or several apartments in the apartment building, one or several houses in residential areas. Others still travel normally, so when he returned home was not isolated.</p><p><br></p><p>A week ago, the Prime Minister directed localities without setting the measures to prevent and combat Covid-19, contrary to the Government\'s regulations, the Ministry of Health; Not causing unnecessary difficulties for people, especially the occasion of home to eat Lunar New Year.</p><p><br></p><p>Last time, many localities made measures on quarantine and testing with the person who returned to the holiday of the Lunar New Year 2022.</p><p><br></p><p>On January 9, a household in Nam Cao commune (Kien Xuong district) was locked from outside from outside with a family of relatives returning from the \"red region\". After that, the commune government apologized for this household. At the beginning of January, nearly 30 households in Thieu Phu commune, Thieu Hoa district (Thanh Hoa province) was also locked by the local authorities to prevent Covid-19. The incident was resolved when the district asked the commune \"unlocked\".</p><p><br></p><p>Since the beginning of January, the government of Thanh Phong commune, Nhu Xuan district, Thanh Hoa province has mobilized human resources to build three types of temporary houses on the Cultural House of Quang Hung and the Cultural Center, then compartment 60 rooms are a place to quarantine the countryside.</p>', '<p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; background-color: rgb(252, 250, 246);\">Người dân cư trú ở 4 cấp độ dịch không phải cách ly y tế khi về quê đón Tết, ngoại trừ các trường hợp thuộc diện theo dõi sức khỏe hoặc đang ở trong khu phong tỏa, theo giải thích của đại diện Bộ Y tế.</p><article class=\"fck_detail \" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; float: left; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 28.8px; font-family: arial; color: rgb(34, 34, 34); background-color: rgb(252, 250, 246);\"><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Ngày 25/1, bà Nguyễn Thị Liên Hương, Cục trưởng Quản lý môi trường Y tế (Bộ Y tế), cho biết thông tin nêu trên.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Trước đó hôm 22/1, Bộ Y tế có văn bản (số 357) gửi các địa phương, nêu rõ hiện nay tỷ lệ tiêm chủng vaccine Covid-19 trên cả nước đã đạt rất cao; tất cả dân số từ 18 tuổi đã được tiêm mũi một; 96% dân số tiêm đủ hai liều; 19% dân số tiêm mũi ba. Trẻ em từ 12-17 tuổi đã tiêm mũi một đạt 94%; tiêm mũi hai đạt 82%.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Vì vậy, Bộ Y tế đề nghị các địa phương tạo thuận lợi cho người dân về quê ăn Tết, đảm bảo công tác chống dịch, gồm thực hiện 5K, tự theo dõi sức khỏe và không phải cách ly y tế. Những người có biểu hiện nghi ngờ mắc Covid-19 như sốt, ho, khó thở... thì hạn chế tiếp xúc và hạn chế đi lại, thông báo ngay cho y tế địa phương để được hướng dẫn, xét nghiệm và xử trí theo quy định.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Tuy nhiên, sau hướng dẫn trên, nhiều ý kiến thắc mắc người dân hiện cư trú tại khu vực dịch bệnh ở cấp độ 4 (vùng đỏ) thì khi về quê có phải cách ly y tế hay không. Băn khoăn này xuất phát từ việc, trong hướng dẫn chuyên môn về thích ứng an toàn của Bộ Y tế vào tháng 10/2021, có yêu cầu cách ly người đến từ địa bàn dịch cấp độ 4 và vùng phong tỏa. Người cao tuổi, có bệnh nền hoặc phụ nữ mang thai, trẻ em dưới 18 tuổi, được cách ly tại nhà và có người chăm sóc cùng.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 670px; float: left;\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 376.875px; text-rendering: optimizelegibility; width: 670px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-vnexpress.vnecdn.net/2022/01/25/img-20220104-154409-1643038681-2087-8255-1643094251.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9niBtV7CSOMrt_6my7qA5Q 1x, https://i1-vnexpress.vnecdn.net/2022/01/25/img-20220104-154409-1643038681-2087-8255-1643094251.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vz29VoWgVSlShRxGGPvQ3A 1.5x, https://i1-vnexpress.vnecdn.net/2022/01/25/img-20220104-154409-1643038681-2087-8255-1643094251.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=V5sKgSLw04nNtlEWhjWsww 2x\" srcset=\"https://i1-vnexpress.vnecdn.net/2022/01/25/img-20220104-154409-1643038681-2087-8255-1643094251.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9niBtV7CSOMrt_6my7qA5Q 1x, https://i1-vnexpress.vnecdn.net/2022/01/25/img-20220104-154409-1643038681-2087-8255-1643094251.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vz29VoWgVSlShRxGGPvQ3A 1.5x, https://i1-vnexpress.vnecdn.net/2022/01/25/img-20220104-154409-1643038681-2087-8255-1643094251.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=V5sKgSLw04nNtlEWhjWsww 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Khu lán cách ly người dân về quê đón Tết được dựng tại nhà văn hoá thôn Quang Hùng cũ và Trung tâm văn hoá xã Thanh Phong, huyện Như Xuân, tỉnh Thanh Hóa. Ảnh: Lam Sơn\" class=\"lazy lazied\" src=\"https://i1-vnexpress.vnecdn.net/2022/01/25/img-20220104-154409-1643038681-2087-8255-1643094251.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9niBtV7CSOMrt_6my7qA5Q\" data-src=\"https://i1-vnexpress.vnecdn.net/2022/01/25/img-20220104-154409-1643038681-2087-8255-1643094251.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9niBtV7CSOMrt_6my7qA5Q\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 670px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Khu lán cách ly người dân về quê đón Tết được dựng tại nhà văn hoá thôn Quang Hùng cũ và Trung tâm văn hoá xã Thanh Phong, huyện Như Xuân, tỉnh Thanh Hóa. Ảnh:&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Lam Sơn</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Giải thích rõ hơn về công văn số 357, bà Nguyễn Thị Liên Hương cho hay đây là văn bản nhằm tạo điều kiện thuận lợi cho người dân trong nước về quê nhân dịp Tết Nguyên đán. Hiện nay tỷ lệ bao phủ vaccine trên cả nước đã đạt cao, vì vậy chỉ những người dân đang trong thời gian cách ly y tế, thuộc diện theo dõi sức khỏe tại nhà hoặc ở trong khu phong tỏa thì mới phải cách ly khi về quê ăn Tết.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">\"Những người còn lại không thuộc các diện nêu trên thì không phải cách ly khi về quê, kể cả ở địa bàn nguy cơ dịch bệnh cấp 4\", bà Hương cho hay.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Bà thông tin thêm, hiện nay nếu phát hiện ca nhiễm, các địa phương chỉ phong tỏa một tầng, một căn hộ hoặc vài căn hộ trong khu chung cư, một hoặc một vài nhà trong khu dân cư. Những người khác vẫn đi lại bình thường, nên khi về quê cũng không phải cách ly.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Cách đây một tuần, Thủ tướng đã chỉ đạo các địa phương không đặt ra những biện pháp phòng, chống dịch&nbsp;<a href=\"https://vnexpress.net/covid-19/tin-tuc\" rel=\"dofollow\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Covid-19</a>&nbsp;trái với quy định của Chính phủ, Bộ Y tế; không gây khó khăn không cần thiết cho người dân, nhất là dịp về quê ăn Tết Nguyên đán Nhâm Dần.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Thời gian qua, nhiều địa phương đã đưa ra các biện pháp về cách ly, xét nghiệm khác nhau với người về quê dịp Tết Nguyên đán Nhâm Dần 2022.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Ngày 9/1, một hộ dân ở xã Nam Cao (huyện Kiến Xương) bị thôn khóa cửa từ bên ngoài với lý do gia đình có người thân trở về từ \"vùng đỏ\". Sau đó, chính quyền xã đã xin lỗi hộ dân này. Đầu tháng 1, gần 30 hộ dân ở xã Thiệu Phú, huyện Thiệu Hóa (tỉnh Thanh Hóa) cũng bị chính quyền địa phương khoá cổng nhà để phòng dịch&nbsp;<a href=\"https://vnexpress.net/covid-19/tin-tuc\" rel=\"dofollow\" style=\"margin: 0px; padding: 0px 0px 1px; text-rendering: optimizelegibility; color: rgb(7, 109, 182); position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;\">Covid-19</a>. Sự việc được giải quyết khi huyện yêu cầu xã \"mở khóa\".</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px;\">Từ đầu tháng một đến nay, chính quyền xã Thanh Phong, huyện Như Xuân, tỉnh Thanh Hóa đã huy động nhân lực dựng ba dãy nhà tạm trong khuôn viên nhà văn hóa thôn Quang Hùng cũ và Trung tâm văn hóa, sau đó ngăn thành 60 phòng làm nơi cách ly người dân về quê.</p></article>', 'covid 19', 'corona', 1, 1, 1, 1, '26-01-2022', 'January', NULL, NULL),
(2, 3, 3, 2, 2, 1, 'Why is the Chief of Tay Ho Cong Lake under supply under the Law?', 'Vì sao cựu trưởng Công an Tây Hồ ép cấp dưới thả người trái luật?', 'image/postimg/61f1508488488.jpg', '<p>Hanoi Colonel Phung Anh Le (former Chief of Tay Ho District Police, former Head of the City Police Department of the City Police) was accused of putting pressure, using the power of forcing subordinating legal people.</p><p><br></p><p>Mr. Le (55 years old) and subordinates at Tay Ho Police are Nguyen Duc Chau (49 years old, former criminal police captain), Vu Cong Ngoc (42 years old, former criminal police deputy team) and Le Dinh Trung (45 years old, former police deputy police executed criminal judgment and judicial assistance) was proposed by the Supreme VKSND agency proposing prosecution of illegal charges of people arrested, who was temporarily seized, detention, who is serving imprisonment sentences under Clause 1, Article 378 of the Criminal Code. The penalty frame from renovation is not detained for up to 3 years or imprisonment from 6 months to 3 years.</p><p><br></p><p>According to conclusions, on June 19, 2016, Mr. Nguyen Cong Thanh, 32, to Public Security Headquarters of Yen Phu Ward, Tay Ho District, denied by a group of illegal arrests and injuries. The incident was recorded by the staff in the live book and reported Mr. Duong Hong Link, Chief of Ward Police.</p><p><br></p><p>He finished calling the Chief of Le and Deputy Head of the Police of Pham Quy Hai about the incident with signs of criminal arrest of illegal people and intentionally causing injury. The criminal police team was later tasked with verification to appoint staff to Yen Phu Ward Police.</p><p><br></p><p>Colonel Phung Anh Le when receiving the head of the economic police department, 2019. Photo: AnNinhThuDo</p><p>Colonel Phung Anh Le when receiving the head of the economic police department, 2019. Photo: AnNinhThuDo</p><p><br></p><p>The team identified Nguyen Huu Tai, 29 years old, and his commitment to conduct offense. Three days later, Tai came to Tay Ho District Police. When verifying, investigators who see the financial suggestions show signs of many criminal acts should propose temporary seizure to investigate and catch relevant suspects.</p><p><br></p><p>The vice-criminal team dancer Ngoc agrees with the proposal and calls to report to the Chizzhou and bring the file to Mr. Hai\'s own house. Here Mr. Hai Ken approved the proposal and signed a decision to temporarily hold the suspects of the acts of arresting illegal people. On the evening of September 22, 2016, Tai was put into the temporary holder of Tay Ho district police.</p><p><br></p><p>From the beginning of the animal, his wife and his father and his father asked acquaintances to find a relationship at Tay Ho District Police for help. Through the intermediate relationship, Phung Van Bay, that time was fixing the office for Mr. Le, asking for. Mr. Seven later was reported by Mr. Le announcing that the Tai Family needed 110 million VND to reconcile with harm.</p><p><br></p><p>22h on September 22, 2016, seven holding VND 110 million of the talent to the room gave Mr. Le, put it on the desk and ask for reconciliation. After receiving money, Mr. Le called for the requirement to bring the document to review. About 23h, finished reading the file, Mr. Le said that the evidence of weak talent and the direction must be taken out of the temporary custody.</p><p><br></p><p>Vice-pearl team provided that the financial decision was implementing the temporary decision, so he wanted to have a decision to cancel the temporary seizure or decision to release. Mr. Le said \"Do not care\" and still direct Ngoc to continue to follow the \"Order\", the conclusion of the Supreme VKSND Investigation Agency stated.</p><p><br></p><p>About 0h30 on September 23, 2016, Ngoc and some criminal officials came to bring the talent from the temporary holder. Because Ngoc did not decide to cancel temporary custody, Le Dinh Trung, who was in charge of the Ca that day, exchanged over the phone with Mr. Le.</p><p><br></p><p>Talking to Mr. Le through the phone, Trung Titric Presentation needs to be exchanged with the Deputy Head of the District Public Security in charge of Central Justice and Advanced Support.</p><p><br></p><p>After reporting the number of levels through the phone, Trung received the instructions of the superiors: \"Le Le has directed, it must be heard, the district of the boss, wants to do anything.\" Right in the night, talented for.</p><p><br></p><p>Police of the Colonel Phung Anh Le. Photo: Pham Cuong</p><p>Police examine the Colonel Phung Anh Le, September 2021. Photo: Pham Cuong</p><p><br></p><p>Criminal officials The days later suggested the team leader to ask Mr. Le to continue verifying. However, Mr. Chau said Mr. Le did not agree to work, many officials were also given the head of the \"taken\" by the district. Mr. Chau Khai, Mr. Le also directed \"for them to reconcile and withdraw.\"</p><p><br></p><p>After two reconciles at Tay Ho District Police, suspects and suspects are suspended to unify the views. Accordingly, the talent must compensate VND 15 million and fix the phone screen for the city. The investigator then did not make a record of this reconciliation because it argued that the acts of arresting illegal people did not belong to the group of prosecution as required by the harm. The incident was silent from there.</p><p><br></p><p>On January 22, 2021, Hanoi Police overturned the records and prosecuted the case, prosecuted the accused with accompanying their accused of robbery. Mr. Le\'s offense was gradually braked.</p><p><br></p><p>The investigation process, the supreme VKSND said Mr. Le did not recognize behavior and blame. Three accused remaining into urgent.</p><p><br></p><p>However, the authorities argue that the testimony of the accused and other stakeholders \"enough basis to confirm Mr. Le has committed a crime of illegal legislative people arrested, who was temporarily seized.\"</p><p><br></p><p>Tay Ho district police headquarters. Photo: Pham Cuong</p><p>Tay Ho district police headquarters. Photo: Pham Cuong</p><p><br></p><p>According to conclusion, Mr. Le is cHuzhou, the Can Chau, Ngoc and Middle plays the role of homeliness. The accused is that the investigator is basically trained, understanding the provisions of the law but lack of cultivation, moral training and lack of lights that lead to crimes.</p><p><br></p><p>In this case, the testimony of the financier took 110 million to Mr. Le to help reconcile with harm. Because Mr. Le did not admit, the Supreme VKSND Investigation Agency separated behavior showing signs of bringing bribes, accepting bribes and bribes to continue to clarify.</p><p><br></p><p>For other stakeholders such as Mr. Hai and a number of Tay Ho district police officers, the investigating agency has proposed a competent authority to handle according to regulations.</p><p><br></p><p>The Supreme VKSND also decided to separate criminal cases on charges of not being examined for criminal liability people guilty to investigate another case.</p>', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:21.6pt;background:#FCFAF6\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#757575;text-transform:uppercase;letter-spacing:-.4pt\">HÀ\r\nNỘI</span><span style=\"font-size:13.5pt;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#222222\">Cựu đại tá Phùng Anh\r\nLê (cựu trưởng Công an quận Tây Hồ, cựu trưởng phòng Cảnh sát kinh tế Công an\r\nthành phố) bị cáo buộc gây sức ép, dùng quyền lực buộc cấp dưới tha người trái\r\npháp luật.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Ông Lê (55 tuổi) cùng các thuộc cấp ở Công an Tây Hồ là\r\nNguyễn Đức Châu (49 tuổi, cựu đội trưởng cảnh sát hình sự), Vũ Công Ngọc (42\r\ntuổi, cựu đội phó cảnh sát hình sự) và Lê Đình Trung (45 tuổi, cựu đội phó cảnh\r\nsát thi hành án hình sự và hỗ trợ tư pháp) vừa bị Cơ quan điều tra VKSND Tối\r\ncao đề nghị truy tố về tội&nbsp;<i>Tha trái pháp luật người bị bắt, người đang\r\nbị tạm giữ, tạm giam, người đang chấp hành án phạt tù</i>&nbsp;theo khoản 1\r\nđiều 378 Bộ luật hình sự. Khung hình phạt từ cải tạo không giam giữ đến 3 năm\r\nhoặc phạt tù từ 6 tháng đến 3 năm.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Theo kết luận, ngày 19/6/2016, anh Nguyễn Công Thành, 32\r\ntuổi, đến trụ sở công an phường Yên Phụ, quận Tây Hồ, tố giác bị một nhóm người\r\nbắt giữ trái pháp luật, đánh gây thương tích. Sự việc được cán bộ ghi lại vào\r\nsổ trực ban và báo cáo ông Dương Hồng Kết, Trưởng công an phường.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Ông Kết gọi điện báo cáo Trưởng quận Lê và Phó trưởng công\r\nan quận Phạm Quý Hải về vụ việc có dấu hiệu phạm tội&nbsp;<i>Bắt giữ người trái\r\npháp luật</i>&nbsp;và&nbsp;<i>Cố ý gây thương tích</i>. Đội cảnh sát hình sự\r\nsau đó được giao nhiệm vụ xác minh nên cử cán bộ đến Công an phường Yên Phụ.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:normal;background:#F0EEEA\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-color-alt:windowtext;mso-no-proof:yes\"><!--[if gte vml 1]><v:shapetype\r\n id=\"_x0000_t75\" coordsize=\"21600,21600\" o:spt=\"75\" o:preferrelative=\"t\"\r\n path=\"m@4@5l@4@11@9@11@9@5xe\" filled=\"f\" stroked=\"f\">\r\n <v:stroke joinstyle=\"miter\"/>\r\n <v:formulas>\r\n  <v:f eqn=\"if lineDrawn pixelLineWidth 0\"/>\r\n  <v:f eqn=\"sum @0 1 0\"/>\r\n  <v:f eqn=\"sum 0 0 @1\"/>\r\n  <v:f eqn=\"prod @2 1 2\"/>\r\n  <v:f eqn=\"prod @3 21600 pixelWidth\"/>\r\n  <v:f eqn=\"prod @3 21600 pixelHeight\"/>\r\n  <v:f eqn=\"sum @0 0 1\"/>\r\n  <v:f eqn=\"prod @6 1 2\"/>\r\n  <v:f eqn=\"prod @7 21600 pixelWidth\"/>\r\n  <v:f eqn=\"sum @8 21600 0\"/>\r\n  <v:f eqn=\"prod @7 21600 pixelHeight\"/>\r\n  <v:f eqn=\"sum @10 21600 0\"/>\r\n </v:formulas>\r\n <v:path o:extrusionok=\"f\" gradientshapeok=\"t\" o:connecttype=\"rect\"/>\r\n <o:lock v:ext=\"edit\" aspectratio=\"t\"/>\r\n</v:shapetype><v:shape id=\"Picture_x0020_3\" o:spid=\"_x0000_i1027\" type=\"#_x0000_t75\"\r\n alt=\"Đại tá Phùng Anh Lê khi nhận chức trưởng phòng Cảnh sát kinh tế, năm 2019. Ảnh: Anninhthudo\"\r\n style=\'width:468pt;height:313.8pt;visibility:visible;mso-wrap-style:square\'>\r\n <v:imagedata src=\"file:///C:/Users/thuan/AppData/Local/Temp/msohtmlclip1/01/clip_image001.jpg\"\r\n  o:title=\" Anninhthudo\"/>\r\n</v:shape><![endif]--><!--[if !vml]--><img width=\"624\" height=\"418\" src=\"file:///C:/Users/thuan/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg\" alt=\"Đại tá Phùng Anh Lê khi nhận chức trưởng phòng Cảnh sát kinh tế, năm 2019. Ảnh: Anninhthudo\" v:shapes=\"Picture_x0020_3\"><!--[endif]--></span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:16.8pt\"><span style=\"font-size:10.5pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Đại tá Phùng Anh Lê khi nhận chức trưởng phòng Cảnh sát kinh\r\ntế, năm 2019. Ảnh:&nbsp;<i>Anninhthudo</i><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Đội hình sự xác định&nbsp;<a href=\"https://vnexpress.net/truy-duoi-nguoi-no-4-trieu-dong-4270682.html\"><span style=\"color:#076DB6\">Nguyễn Hữu Tài</span></a>, 29 tuổi, cùng đồng phạm đã\r\nthực hiện hành vi phạm tội. Ba ngày sau, Tài đến Công an quận Tây Hồ đầu thú.\r\nKhi xác minh, điều tra viên đội hình sự thấy Tài có dấu hiệu của nhiều hành vi\r\nphạm tội nên đề xuất tạm giữ để điều tra và bắt các nghi phạm liên quan.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Đội phó hình sự Vũ Công Ngọc đồng ý với đề xuất và gọi điện\r\nbáo cáo Đội trưởng Châu rồi mang hồ sơ đến nhà riêng của ông Hải. Tại đây ông\r\nHải ký duyệt đề xuất và ký quyết định tạm giữ nghi phạm Tài về hành vi bắt giữ\r\nngười trái pháp luật. Tối 22/9/2016, Tài bị đưa vào nhà tạm giữ Công an quận\r\nTây Hồ.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Từ lúc Tài đi đầu thú, vợ và bố vợ anh ta đã nhờ người quen\r\ntìm mối quan hệ tại Công an quận Tây Hồ nhờ giúp đỡ. Qua mối quan hệ trung\r\ngian, Phùng Văn Bảy, thời điểm đó đang sửa phòng làm việc cho ông Lê, đã ngỏ\r\nlời nhờ. Ông Bảy sau đó được ông Lê thông báo gia đình Tài cần chuẩn bị 110\r\ntriệu đồng để hòa giải với bị hại.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">22h ngày 22/9/2016, Bảy cầm 110 triệu đồng của người nhà Tài\r\nđến phòng đưa cho ông Lê, đặt lên bàn làm việc và nhờ giúp hòa giải. Sau khi\r\nnhận tiền, ông Lê gọi điện thoại cho thuộc cấp yêu cầu mang tài liệu đến xem\r\nxét. Khoảng 23h, đọc xong hồ sơ, ông Lê cho rằng chứng cứ tạm giữ Tài còn yếu\r\nvà chỉ đạo phải đưa ra khỏi nhà tạm giữ.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Đội phó Ngọc lúc đó cho rằng Tài đang thi hành quyết định\r\ntạm giữ nên muốn cho về phải có quyết định hủy bỏ tạm giữ hoặc quyết định trả\r\ntự do. Ông Lê nói \"không quan tâm\" và vẫn chỉ đạo Ngọc tiếp tục thực\r\nhiện theo \"lệnh\", kết luận của Cơ quan điều tra VKSND Tối cao nêu.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Khoảng 0h30 ngày 23/9/2016, Ngọc cùng một số cán bộ đội hình\r\nsự đến đưa Tài ra khỏi nhà tạm giữ. Vì Ngọc không có quyết định hủy bỏ tạm giữ,\r\nLê Đình Trung, người phụ trách ca trực hôm đó, đã trao đổi qua điện thoại với\r\nông Lê.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Nói chuyện xong với ông Lê qua điện thoại, Trung đề xuất\r\nNgọc cần trao đổi thêm với phó trưởng công an quận phụ trách lĩnh vực hỗ trợ tư\r\npháp và cấp trên của Trung.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Sau khi báo cáo lòng vòng nhiều cấp qua điện thoại, Trung\r\nnhận được chỉ đạo của cấp trên: \"Sếp Lê đã chỉ đạo thì phải nghe thôi,\r\nquận này của sếp cả, muốn làm gì chả được\". Ngay trong đêm, Tài được cho\r\nvề.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:normal;background:#F0EEEA\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-color-alt:windowtext;mso-no-proof:yes\"><!--[if gte vml 1]><v:shape\r\n id=\"Picture_x0020_2\" o:spid=\"_x0000_i1026\" type=\"#_x0000_t75\" alt=\"Cảnh sát khám nhà đại tá Phùng Anh Lê. Ảnh: Phạm Cường\"\r\n style=\'width:468pt;height:308.4pt;visibility:visible;mso-wrap-style:square\'>\r\n <v:imagedata src=\"file:///C:/Users/thuan/AppData/Local/Temp/msohtmlclip1/01/clip_image003.jpg\"\r\n  o:title=\" Phạm Cường\"/>\r\n</v:shape><![endif]--><!--[if !vml]--><img border=\"0\" width=\"624\" height=\"411\" src=\"file:///C:/Users/thuan/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg\" alt=\"Cảnh sát khám nhà đại tá Phùng Anh Lê. Ảnh: Phạm Cường\" v:shapes=\"Picture_x0020_2\"><!--[endif]--></span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:16.8pt\"><span style=\"font-size:10.5pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Cảnh sát khám nhà đại tá Phùng Anh Lê, tháng 9/2021.\r\nẢnh:&nbsp;<i>Phạm Cường</i><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Cán bộ đội hình sự những ngày sau đó nhiều lần đề xuất lãnh\r\nđạo đội để xin ý kiến ông Lê tiếp tục xác minh. Tuy nhiên, ông Châu cho biết\r\nông Lê không đồng ý cho làm, nhiều cán bộ cũng bị trưởng quận \"gạt\"\r\nra khỏi sự việc. Ông Châu khai, ông Lê còn chỉ đạo \"cho chúng nó hòa giải,\r\nrút đơn\".<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Sau hai lần hòa giải tại Công an quận Tây Hồ, nghi phạm Tài\r\nvà bị hại Thành mới thống nhất được quan điểm. Theo đó, Tài phải bồi thường 15\r\ntriệu đồng và sửa màn hình điện thoại cho Thành. Điều tra viên lúc đó không lập\r\nbiên bản về việc hòa giải này vì cho rằng hành vi bắt giữ người trái pháp luật\r\nkhông thuộc nhóm tội khởi tố theo yêu cầu của bị hại. Sự việc đi vào im lặng từ\r\nđó.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Ngày 22/1/2021, Công an Hà Nội lật lại hồ sơ và khởi tố vụ\r\nán, khởi tố bị can với Tài cùng đồng bọn về tội&nbsp;<i>Cướp tài sản.&nbsp;</i>Sai\r\nphạm của ông Lê cùng thuộc cấp dần bị phanh phui.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Quá trình điều tra, VKSND Tối cao cho rằng ông Lê không khai\r\nnhận hành vi và đổ lỗi. Ba bị can còn lại thành khẩn.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Tuy nhiên, nhà chức trách cho rằng lời khai của các bị can\r\nvà những người liên quan khác \"đủ cơ sở khẳng định ông Lê đã phạm vào\r\ntội&nbsp;<i>Tha trái pháp luật người bị bắt, người đang bị tạm giữ\"</i>.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:normal;background:#F0EEEA\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-color-alt:windowtext;mso-no-proof:yes\"><!--[if gte vml 1]><v:shape\r\n id=\"Picture_x0020_1\" o:spid=\"_x0000_i1025\" type=\"#_x0000_t75\" alt=\"Trụ sở Công an quận Tây Hồ. Ảnh: Phạm Cường\"\r\n style=\'width:468pt;height:310.2pt;visibility:visible;mso-wrap-style:square\'>\r\n <v:imagedata src=\"file:///C:/Users/thuan/AppData/Local/Temp/msohtmlclip1/01/clip_image005.jpg\"\r\n  o:title=\" Phạm Cường\"/>\r\n</v:shape><![endif]--><!--[if !vml]--><img border=\"0\" width=\"624\" height=\"414\" src=\"file:///C:/Users/thuan/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg\" alt=\"Trụ sở Công an quận Tây Hồ. Ảnh: Phạm Cường\" v:shapes=\"Picture_x0020_1\"><!--[endif]--></span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:16.8pt\"><span style=\"font-size:10.5pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Trụ sở Công an quận Tây Hồ. Ảnh:&nbsp;<i>Phạm Cường</i><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Theo kết luận, ông Lê là chủ mưu, các bị can Châu, Ngọc và\r\nTrung giữ vai trò đồng phạm giúp sức. Các bị can đều là điều tra viên được đào\r\ntạo cơ bản, hiểu rõ quy định pháp luật nhưng thiếu tu dưỡng, rèn luyện đạo đức\r\nvà thiếu bản lĩnh dẫn đến phạm tội.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Trong vụ án này còn lời khai về việc người nhà Tài đưa 110\r\ntriệu đồng cho ông Lê để giúp hòa giải với bị hại. Do ông Lê không thừa nhận,\r\nCơ quan điều tra VKSND Tối cao tách hành vi có dấu hiệu&nbsp;<i>Đưa hối lộ,\r\nNhận hối lộ&nbsp;</i>và&nbsp;<i>Môi giới hối lộ</i>&nbsp;để tiếp tục làm rõ.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Với những người liên quan khác như ông Hải cùng một số cán\r\nbộ Công an quận Tây Hồ, Cơ quan điều tra đã kiến nghị cấp có thẩm quyền xử lý\r\ntheo quy định.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:21.6pt\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">VKSND Tối cao cũng quyết định tách vụ án hình sự về tội<i>&nbsp;Không\r\ntruy cứu trách nhiệm hình sự người có tội&nbsp;</i>để điều tra thành vụ án\r\nkhác.<o:p></o:p></span></p><p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; background-color: rgb(252, 250, 246);\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>', 'law', 'phap-luat', NULL, 1, 1, 1, '29-01-2022', 'January', NULL, NULL),
(3, 3, 1, 3, 3, 1, 'adssadsa', 'dasdasdasdas', 'image/postimg/61f4e767e6708.jpg', '<p>sdaaaaaaaaaaaaaa</p>', '<p>sadsdadadsad</p>', 'covid 19', 'sadasd', NULL, NULL, NULL, NULL, '29-01-2022', 'January', NULL, NULL),
(5, 3, 1, 2, 2, 1, 'vcvcvcv', 'cvccvcvcvcv', 'image/postimg/61f4f42e41873.jpg', '<p>dâsd</p>', '<p>ádádádsadsad</p>', 'sadsadqwe', 'qwewqewqewq', NULL, NULL, NULL, NULL, '29-01-2022', 'January', NULL, NULL);

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
(1, 'Admin', 'web', NULL, NULL),
(2, 'Designer', 'web', NULL, NULL),
(3, 'Developer', 'web', NULL, NULL),
(4, 'Content', 'web', NULL, NULL);

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
(3, 1),
(5, 1),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mete_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `mete_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, 'asdasdasd', 'asdasdasd', 'dasdasd', 'sdasdasdasdas', 'sda', 'sdasdasdasda', 'asdasdasda', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('42vU06iW9hCyuGRwNERWTCP5TONflcnTdyTLYzNX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYVdsakMzYkh3akNPM1ZjblI3QzRVTGVEeHloSGZDTTVYWUNKWGZtQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGg5a0NFL05McGZ0d2dQMzhZTEtTak9lLnh6Si5MazMwRHFIYTBZN3BjVUY0LmsuenJSLlZPIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRoOWtDRS9OTHBmdHdnUDM4WUxLU2pPZS54ekouTGszMERxSGEwWTdwY1VGNC5rLnpyUi5WTyI7fQ==', 1648789720),
('c149o2ah1BVRgWtS859vOmwhMjOqKKLocEiuSJAZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTXVCeWM2M1lrMWxJZmpMbnlhOFppS3BmSFVFZmNkOUU1MUZZbXAxNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoibGFuZyI7czoyOiJ2biI7fQ==', 1651157107),
('fXUhM97TOWpBoO7kO4S1qd0NmCXKN8aWHL4ywLWy', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYjdmaXNTOGIzOHY4aDNpTXdxY1JJazZIak9maVlFNlppQndqNDZhdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGg5a0NFL05McGZ0d2dQMzhZTEtTak9lLnh6Si5MazMwRHFIYTBZN3BjVUY0LmsuenJSLlZPIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRoOWtDRS9OTHBmdHdnUDM4WUxLU2pPZS54ekouTGszMERxSGEwWTdwY1VGNC5rLnpyUi5WTyI7fQ==', 1652070163);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_vn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_en`, `subcategory_vn`, `created_at`, `updated_at`) VALUES
(1, '3', 'PERSONNEL123', 'NHÂN SỰ123', NULL, NULL),
(3, '3', 'PERSONNEL', 'NHÂN SỰ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_vn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `district_id`, `subdistrict_en`, `subdistrict_vn`, `created_at`, `updated_at`) VALUES
(2, '2', 'asdsad', 'asdasdad', NULL, NULL),
(3, '3', 'safddfdsfdfsfsdsfdsfdsfds', 'fdsfsfsfsfsfsfdsf', NULL, NULL);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$h9kCE/NLpftwgP38YLKSjOe.xzJ.Lk30DqHa0Y7pcUF4.k.zrR.VO', NULL, NULL, NULL, NULL, NULL, '2022-01-20 00:23:52', '2022-01-20 00:23:52'),
(2, 'kenbe123', 'xzxx@gmail.com', NULL, '$2y$10$pqLpU.Mqf.Mw9DAt0UQLEuS8gbLLEGnVog1p3RD1u4t19ZAteyeU6', NULL, NULL, NULL, NULL, NULL, '2022-03-29 08:14:41', '2022-03-29 08:14:41'),
(4, 'cvcv', 'vcxv@gmail.com', NULL, '$2y$10$I6IicRhhs8luH..aH4o6OeqeKJ0Eiie61PdsBT7xTE8yUHw1Dql2W', NULL, NULL, NULL, NULL, NULL, '2022-03-29 08:16:32', '2022-03-29 08:16:32'),
(5, 'fdsf', 'ken@gmail.com', NULL, '$2y$10$rCAubcR8alt0CbT/43FSf.QRH/SIapIQQX76zmRRWNjMPXVMun0vW', NULL, NULL, NULL, NULL, NULL, '2022-03-29 08:20:25', '2022-03-29 08:20:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

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
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
