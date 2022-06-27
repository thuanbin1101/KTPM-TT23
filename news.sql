-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2022 at 02:33 PM
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
-- Database: `news1`
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
(2, 'ANIME NOMINATION', 'ĐỀ CỬ ANIME', '0', NULL, '2022-06-25 02:20:50', NULL),
(3, 'NEWS ANIME', 'TIN TỨC ANIME', '0', NULL, '2022-06-25 02:21:24', NULL),
(4, 'NEWS MANGA', 'TIN TỨC MANGA', '0', NULL, '2022-06-25 02:22:08', NULL),
(5, 'FIGURE', 'NHÂN VẬT', '0', NULL, '2022-06-25 02:22:30', NULL),
(6, 'COSPLAY', 'COSPLAY', '0', NULL, '2022-06-25 02:25:13', NULL),
(7, 'SYNTHETIC', 'TỔNG HỢP', '0', NULL, '2022-06-27 02:21:28', NULL),
(8, 'SYNTHETIC', 'TỔNG HỢP', '0', NULL, '2022-06-27 02:20:31', '2022-06-27 02:20:31'),
(9, 'OKLA', 'sad', '0', '2022-06-13 14:37:44', '2022-06-27 02:19:20', '2022-06-27 02:19:20');

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
(2, 'Hoan Kiem', 'Hoàn Kiếm', NULL, NULL),
(3, 'Hai Ba Trung', 'Hai Bà Trưng', NULL, NULL),
(4, 'Dong Da', 'Đống Đa', NULL, NULL),
(5, 'Hoang Mai', 'Hoàng Mai', NULL, NULL),
(6, 'Thanh Xuân', 'Thanh Xuan', NULL, NULL),
(7, 'Long Bien', 'Long Biên', NULL, NULL);

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
-- Table structure for table `livetvs`
--

CREATE TABLE `livetvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `embed_code` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetvs`
--

INSERT INTO `livetvs` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/i1P-9IspBus\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, NULL, NULL);

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
(16, '2022_03_26_035117_create_permission_tables', 10),
(19, '2022_05_25_073252_create_prayers_table', 11),
(20, '2022_05_25_080600_create_livetvs_table', 12),
(21, '2022_05_25_085421_create_notices_table', 13),
(22, '2022_05_25_092048_create_websites_table', 14),
(23, '2022_05_25_105202_create_videos_table', 15);

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
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
(1, 'asas', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$LFx8HhStIudLUFt8ltJr7.WU.3YqJrrrlnKC/UA2jGVodwMvAKQ4C', '2022-05-23 05:40:59');

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
(1, 'add category', 'api', NULL, NULL),
(2, 'edit category', 'api', NULL, NULL),
(3, 'delete category', 'api', NULL, NULL),
(5, 'publish category', 'api', NULL, NULL),
(6, 'edit posts', 'api', NULL, NULL),
(7, 'delete posts', 'api', NULL, NULL),
(9, 'add posts', 'api', NULL, NULL),
(10, 'publish posts', 'api', NULL, NULL);

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
(1, 'image/photogallery/62b6d77f8bc691.20049765.jpg', 'ONE PIECE: TRÁI ÁC QUỶ CỦA KAIDO ĐÃ THỨC TỈNH CHƯA?', '0', NULL, NULL),
(2, 'image/photogallery/61f4b8a903770.jpg', 'Người nhện nhí', '1', NULL, NULL),
(5, 'image/photogallery/62b6d70f00a458.78021209.jpg', 'ONE PIECE TIẾT LỘ MỨC TIỀN TRUY NÃ TẤT CẢ CÁC HẢI HẶC', '0', NULL, NULL),
(8, 'image/photogallery/628e08812e2537.96129022.jpeg', 'asdads', '1', NULL, NULL),
(9, 'image/photogallery/62b6d7f6d06101.15822876.jpg', 'Takemichi vs Mikey: Ai sẽ thắng?', '0', NULL, NULL),
(10, 'image/photogallery/62b6d82cc05493.83843606.jpg', 'Demon Slayer: Giới tính của Enmu là gì?', '0', NULL, NULL),
(11, 'image/photogallery/62b6d84edc7796.01548710.jpg', 'Dragon Ball Super: Điều gì có thể khiến Vegeta kết thúc cuộc cạnh tranh với Goku?', '0', NULL, NULL);

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
(1, 2, 3, 2, 2, 1, 'TSURUNE OFFICIALLY LIVES THE MOVIE FOR THE COURTERS!', 'TSURUNE CHÍNH THỨC LÊN SÓNG BẢN ĐIỆN ẢNH CHO CÁC CUNG THỦ TRẺ!', 'image/postimg/62b98364564b5.jpg', '<p>On Friday, Kyoto Animation posted a new trailer for the project Gekijouban Tsurune: Hajimari no Issha (Tsurune The Movie: The Beginning Arrow), the upcoming anime film by Tsurune (Young Archers). The trailer has revealed the upcoming title song. Takuya Yamamura will be returning from the TV series to step into the film version of the project at Kyoto Animation. Yamamura will also be taking on the role of the script with script supervision from screenwriter Michiko Yokote (who assisted in the television anime). Miku Kadowaki is credited with designing the characters. Separately, Masaru Yokoyama will replace Harumi Fuuki in composing the music. The two confirmed return actors include: Yūto Uemura as Minato Narumiya and Shintarō Asanuma as Masaki Takigawa.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/6d4838d314220fd3_c2c0b5af65f70d2f_23340716560837583185710.jpg\" style=\"width: 700px;\"></p><p>The story opens when Minato Narumiya starts studying at Kazemai High School. Mr. Tommy, the adviser of the Japanese archery club, is keen to recruit Minato, as well as his childhood friends Seiya Takehaya and Ryohei Yamanouchi. Ryohei convinces the reluctant Minato to attend the club\'s tutorial session, where he also meets Kaito Onogi and Nanao Kisaragi. Minato was introduced by Mr. Tommy as a rare Japanese archery talent and asked him to show it off in front of everyone. However, Minato\'s arrow didn\'t hit the target because he wasn\'t in good shape.<br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Vào hôm thứ sáu vừa qua, Kyoto Animation đã đăng tải trailer mới cho dự án Gekijouban Tsurune: Hajimari no Issha (Tsurune The Movie: The Beginning Arrow), bộ anime điện ảnh sắp lên sóng của Tsurune (Những Chàng Cung Thủ Trẻ). Trailer đã hé lộ ca khúc chủ đề sắp được lên sóng.</span></p><p><span style=\"font-weight: 700;\">Takuya Yamamura</span>&nbsp;sẽ quay trở lại từ bản truyền hình để bước vào bản điện ảnh sản xuất dự án tại&nbsp;<span style=\"font-weight: 700;\">Kyoto Animation</span>.<span style=\"font-weight: 700;\">&nbsp;Yamamura</span>&nbsp;cũng sẽ đảm nhận vai trò kịch bản cùng với sự giám sát kịch bản từ nhà biên kịch<span style=\"font-weight: 700;\">&nbsp;Michiko Yokote</span>&nbsp;(từng hỗ trợ trong anime truyền hình).&nbsp;<span style=\"font-weight: 700;\">Miku Kadowaki</span>&nbsp;được ghi nhận sẽ thiết kế nhân vật. Riêng,<span style=\"font-weight: 700;\">&nbsp;Masaru Yokoyama</span>&nbsp;sẽ thay thế cho Harumi Fuuki sáng tác nhạc.</p><p>Hai diễn viên được xác nhận trở lại gồm có:<span style=\"font-weight: 700;\">&nbsp;Yūto Uemura&nbsp;</span>vào vai Minato Narumiya và&nbsp;<span style=\"font-weight: 700;\">Shintarō Asanuma</span>&nbsp;vào vai Masaki Takigawa.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/6d4838d314220fd3_c2c0b5af65f70d2f_23340716560837583185710.jpg\" style=\"width: 700px;\"></p><p style=\"margin-left: 25px;\"><i>Câu chuyện mở đầu khi Minato Narumiya bắt đầu học tại trường trung học Kazemai.</i></p><p style=\"margin-left: 25px;\"><i>Ông Tommy, cố vấn của câu lạc bộ bắn cung Nhật Bản, rất muốn chiêu mộ Minato, cũng như những người bạn thời thơ ấu của cậu là Seiya Takehaya và Ryohei Yamanouchi. Ryohei thuyết phục Minato miễn cưỡng tham gia buổi hướng dẫn của câu lạc bộ, nơi cậu cũng gặp Kaito Onogi và Nanao Kisaragi.</i></p><p style=\"margin-left: 25px;\"><i>Minato được ông Tommy giới thiệu là một tài năng bắn cung hiếm có của Nhật Bản và yêu cầu anh ta thể hiện trước mặt mọi người. Tuy nhiên, mũi tên của Minato không đi trúng đích vì cậu đang không ở trong tình trạng tốt.&nbsp;</i><i><br></i></p><p><br style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"></p>', 'Anime', 'Anime', 1, 1, 1, 1, '27-06-2022', 'June', NULL, NULL),
(2, 3, 1, 2, 2, 1, 'DRAGON BALL SUPER: SUPER HERO TAKES ONE MILLION TICKET TICKETS AFTER 12 DAYS OF PRINCIPLE!', 'DRAGON BALL SUPER: SUPER HERO CÁN MỐC MỘT TRIỆU VÉ SAU 12 NGÀY CÔNG CHIẾU!', 'image/postimg/62b9bc96c8b2b.jpg', '<p>On the Comic Natalie newspaper in Japan, it was officially confirmed that the Dragon Ball Super: Super Hero movie project, the second movie in the Dragon Ball Super movie series, has surpassed one million tickets after 12 days of launch. mat. YouTube channel Toei Channel also released a 5-minute video revealing some scenes from the movie (only viewable in Japan).</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>In the second week since its premiere, the project has fallen from first place to second place. The film grossed about 300 million yen (about 51.15 billion VND) this past weekend (Friday to Monday) to bring the total revenue of the project to nearly 1.3 billion yen (equivalent to 222 billion VND). copper). The film has also collected about 947 thousand tickets.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>Dragon Ball Super: Super Hero has been released in Japan since June 11 previously. In the first two days, the film has reached 498 thousand tickets, equivalent to 670 million yen (more than 114 billion dong). The film has opened in IMAX format from June 11, 4DX and MX4D formats on June 25, and Dolby Cinemas from July 1.</p><p><br></p><p>The anime is scheduled to premiere in Vietnam on August 19, if this information is correct, Vietnam will become the first Asian country (except Japan) to premiere this project.</p>', '<p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">Trên trang báo Comic Natalie tại Nhật Bản đã chính thức xác nhận dự án điện ảnh Dragon Ball Super: Super Hero, bộ phim điện ảnh thứ hai trong sê-ri điện ảnh của Dragon Ball Super đã cán mốc một triệu vé sau 12 ngày khởi chiếu. Kênh YouTube Toei Channel cũng đã phát hành video 5 phút hé lộ một số phân cảnh trong phim (chỉ xem được trong khu vực Nhật Bản).</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/06/24/aab34974be30d56c_8b23fbec5c06318b_9589316560443295185710.jpg\" data-filename=\"filename\" style=\"border: 0px; display: block; margin: auto; max-width: 100%; padding: 10px 0px 0px;\"></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Trong tuần thứ hai kể từ khi công chiếu, dự án đã rơi từ vị trí thứ nhất xuống vị trí thứ hai. Bộ phim đã thu về khoảng 300 triệu yên (khoảng 51,15 tỷ đồng) trong cuối tuần vừa qua (từ thứ sáu đến thứ hai) để đưa tổng doanh thu của dự án lên gần 1,3 tỉ yên (tương đương 222 tỷ đồng). Bộ phim cũng đã thu được khoảng 947 nghìn vé.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br></p><div id=\"ta-179179\" class=\"player note-video-clip\" style=\"position: relative; margin: 0px auto; padding: 0px; background: rgb(0, 0, 0); overflow: hidden; outline: none; width: 660px; height: 371px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><iframe src=\"https://tinanime.com/embed/179179\" style=\"outline: none; border-width: initial; border-style: none; position: relative; margin: 0px auto; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow: hidden; width: 660px; height: 371px;\"></iframe></div><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Dragon Ball Super: Super Hero đã được khởi chiếu tại Nhật Bản từ 11 tháng 6 trước đó. Trong hai ngày đầu tiên, bộ phim đã cán mốc 498 nghìn vé, tương đương 670 triệu yên (hơn 114 tỉ đồng). Bộ phim đã bắt đầu khởi chiếu với định dạng IMAX từ 11 tháng 6, định dạng 4DX và MX4D vào ngày 25 tháng 6 và Dolby Cinemas từ 1 tháng 7.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Bộ anime&nbsp;<a href=\"https://tinanime.com/dragon-ball-super-super-hero-chinh-thuc-co-ngay-khoi-chieu-tai-viet-nam\" target=\"_blank\" style=\"color: rgb(255, 77, 0);\">được dự kiến khởi chiếu tại Việt Nam vào ngày 19 tháng 8</a>, nếu như thông tin này chính xác thì Việt Nam sẽ trở thành quốc gia châu Á đầu tiên (trừ Nhật Bản) công chiếu dự án này.</p>', 'law', 'phap-luat', NULL, 1, 1, 1, '27-06-2022', 'June', NULL, NULL),
(5, 3, 1, 2, 2, 1, 'AOASHI ANNOUNCES NEW INFORMATION BEFORE THE 2nd Quarter Airtime!', 'AOASHI CÔNG BỐ THÊM THÔNG TIN MỚI TRƯỚC THỀM LÊN SÓNG QUÝ THỨ 2!', 'image/postimg/62b98c313854a.jpg', '<p>Recently, the official website for the Aoashi TV anime series based on the manga of the same name by author Yuugo Kobayashi has announced more members, visuals as well as the official theme song for the second quarter of the project.</p><p>The workforce involved in the project includes: Directed by: Akira Sato Studio: Production I.G Screenplay: Masahiro Yokotani Character Designer: Manabu Nakatake, Toshie Kawamura, Asuka Yamaguchi and Saki Hasegawa Director and illustrator: Natake and Yamaguchi Supporting character designs: Naho Seike, Yukiko Watabe, Miho Daidouji and Eisuke Shirai Composer: Masaru Yokoyama</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/26/826f6544279d7355_1dc52c2c8e854f34_25123816562577205185710.jpg\" style=\"width: 724px;\"><br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Vừa qua, trang web chính thức cho bộ anime truyền hình Aoashi được dựa trên manga cùng tên của tác giả Yuugo Kobayashi đã công bố thêm thành viên, visual cũng như ca khúc chủ đề chính thức cho quý thứ hai của dự án.&nbsp;</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Dàn nhân lực tham gia vào dự án bao gồm:</p><ul style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><li>Đạo diễn:&nbsp;<span style=\"font-weight: 700;\">Akira Sato</span></li><li>Studio:&nbsp;<span style=\"font-weight: 700;\">Production I.G</span></li><li>Kịch bản:&nbsp;<span style=\"font-weight: 700;\">Masahiro Yokotani</span></li><li>Thiết kế nhân vật:&nbsp;<span style=\"font-weight: 700;\">Manabu Nakatake, Toshie Kawamura, Asuka Yamaguchi&nbsp;</span>và&nbsp;<span style=\"font-weight: 700;\">Saki Hasegawa</span></li><li>Đạo diễn diễn họa:<span style=\"font-weight: 700;\">&nbsp;Natake&nbsp;</span>và&nbsp;<span style=\"font-weight: 700;\">Yamaguchi</span></li><li>Thiết kế nhân vật phụ:<span style=\"font-weight: 700;\">&nbsp;Naho Seike, Yukiko Watabe, Miho Daidouji&nbsp;</span>và&nbsp;<span style=\"font-weight: 700;\">Eisuke Shirai</span></li><li>Sáng tác nhạc:&nbsp;<span style=\"font-weight: 700;\">Masaru Yokoyama</span></li></ul><p><img src=\"https://s199.imacdn.com/ta/2022/06/26/826f6544279d7355_1dc52c2c8e854f34_25123816562577205185710.jpg\" style=\"width: 724px;\"><br></p>', 'hh', 'hh', NULL, NULL, NULL, NULL, '27-06-2022', 'June', NULL, NULL),
(6, 3, 5, 4, 3, 1, 'LIVE-ACTION SHIN SHINCHOU KOUKI - \"GOD\" OR \"ORDER OF GOD\"?', 'LIVE-ACTION SHIN SHINCHOU KOUKI - \"XÀM CHÚA\" HAY \"LÃNH CHÚA\"?', 'image/postimg/62b9b5a3bb917.jpg', '<p>Recently, the official website for the TV live-action Shin Shinchou Kouki ~ Classmate wa Sengoku Bujou, based on Shinobu Kaitani\'s Shin Shinchou Kouki - Nobunaga-kun to Watashi manga, announced 11 new actors will join the cast. project.</p><p>The newly announced cast includes (left to right, respectively):</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/993d1cfc3111fb79_f907aa2c582a8525_5885716561748597185710.jpg\" style=\"width: 800px;\"></p><p>Tarō Suruga as Ii Naomasa Shuntarō Yanagi as Takenaka Shigeharu Ryōhei Abe as Honda Tadakatsu Kenta Suga as Katō Kiyomasa</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/723fa381e7109cb1_a313318e537c9315_6619916561749248185710.jpg\" style=\"width: 800px;\"></p><p>Seiya Osada as Sakai Tadatsugu Shūichirō Naitō as Sakakibara Yasumasa Hisamichi Kataoka as Mōri Motonari Kōta Nomura as Maeda Toshiie<br></p>', '<p><span style=\"font-weight: 700;\">Vừa qua, trang web chính thức cho live-action truyền hình Shin Shinchou Kouki ~ Classmate wa Sengoku Bujоu được dựa trên manga Shin Shinchou Kouki - Nobunaga-kun to Watashi của tác giả Shinobu Kaitani đã công bố 11 diễn viên mới sẽ tham gia vào dự án.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Dàn diễn viên mới được công bố bao gồm (lần lượt từ trái sang phải):</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/993d1cfc3111fb79_f907aa2c582a8525_5885716561748597185710.jpg\" style=\"width: 800px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span></p><ul style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><li><span style=\"font-weight: 700;\">Tarō Suruga&nbsp;</span>vào vai Ii Naomasa</li><li><span style=\"font-weight: 700;\">Shuntarō Yanagi</span>&nbsp;vào vai Takenaka Shigeharu</li><li><span style=\"font-weight: 700;\">Ryōhei Abe&nbsp;</span>vào vai Honda Tadakatsu</li><li><span style=\"font-weight: 700;\">Kenta Suga</span>&nbsp;vào vai Katō Kiyomasa</li></ul><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/723fa381e7109cb1_a313318e537c9315_6619916561749248185710.jpg\" style=\"width: 800px;\"></p><ul style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><li><span style=\"font-weight: 700;\">Seiya Osada</span>&nbsp;vào vai Sakai Tadatsugu</li><li><span style=\"font-weight: 700;\">Shūichirō Naitō</span>&nbsp;vào vai Sakakibara Yasumasa</li><li><span style=\"font-weight: 700;\">Hisamichi Kataoka</span>&nbsp;vào vai Mōri Motonari</li><li><span style=\"font-weight: 700;\">Kōta Nomura</span>&nbsp;vào vai Maeda Toshiie</li></ul>', 'anime', 'anime', NULL, NULL, NULL, 1, '27-06-2022', 'June', NULL, NULL),
(7, 7, 5, 2, 2, 1, 'MANGAKA KANOJO, OKARISHIMASU SHOCKED TO STAY THE KEY FEMALE IN MANGA IS MY FRIDAY!', 'MANGAKA KANOJO, OKARISHIMASU GÂY SỐC KHI TUYÊN BỐ NỮ CHÍNH TRONG MANGA LÀ BẠN GÁI CỦA MÌNH!', 'image/postimg/62b9b48dbab3b.jpg', '<p>The romantic comedy manga series \"Kanojo, Okarishimasu\" by author Reiji Miyajima has caused a lot of controversy among fans. Earlier, readers of the series were shocked when the author of the series himself erased the development of the main character\'s character, Kazuya. Only recently, this mangaka claimed to consider Chizuru Mizuhara - the female lead in the manga he composed as his girlfriend.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/26/df510ef42e816e1a_474511dfa8588172_7493916562606644185710.jpg\" style=\"width: 800px;\"></p><p>The author of the manga \"Kanojo, Okarishimasu\" is known for drawing Chizuru Mizuhara in 3D. And recently, the mangaka once again shared another 3D image of Chizuru, this time in the bathroom with the tweet: \"This girl is my girlfriend and her name is Chizuru Mizuhara. She is a girl The girl was very kind and always forgave me even though she was angry before.\"<br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Sê-ri manga lãng mạn, hài hước \"Kanojo, Okarishimasu\" của tác giả Reiji Miyajima vốn đã gây ra rất nhiều tranh cãi trong người hâm mộ. Trước đó, độc giả của bộ truyện đã rất sốc khi chính tác giả của bộ truyện đã xóa sạch quá trình phát triển tính cách của nhân vật chính, Kazuya. Để rồi mới đây, mangaka này lại tuyên bố coi Chizuru Mizuhara - nữ chính trong manga do mình sáng tác là bạn gái của mình.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/26/df510ef42e816e1a_474511dfa8588172_7493916562606644185710.jpg\" style=\"width: 800px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span></p><p>Tác giả của bộ manga \"Kanojo, Okarishimasu\" đã được biết đến với việc vẽ Chizuru Mizuhara trong phiên bản 3D. Và mới đây thì mangaka một lần nữa đã chia sẻ hình ảnh 3D khác của Chizuru, lần này là ở phòng tắm cùng dòng tweet: \"Cô gái này là bạn gái của tôi và tên cô ấy là Chizuru Mizuhara. Cô ấy là một cô gái rất tốt bụng và luôn tha thứ cho tôi dù trước đó cô ấy vừa giận dữ\".</p><p><br style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"></p><p><br></p>', 'law', 'law', NULL, NULL, NULL, 1, '27-06-2022', 'June', NULL, NULL),
(8, 6, 6, 2, 2, 1, 'GYM, LOSE 13KG TO BECOME LIKE INOSUKE IN KIMETSU NO YAIBA!', 'TẬP GYM, GIẢM 13KG ĐỂ TRỞ NÊN GIỐNG VỚI INOSUKE TRONG KIMETSU NO YAIBA!', 'image/postimg/62b9b24fbbefc.jpg', '<p>Among us, who doesn\'t want to be more beautiful, right? Recently, in Japan, a 33-year-old office worker tried to practice at home to have a body like Inosuke\'s character in the cult anime Kimetsu no Yaiba that he loves.</p><p><br></p><p><img src=\"https://s199.imacdn.com/ta/2022/04/30/1820d7f9cbc6c532_e0f19992b9b43045_10178716513343296185710.jpg\" style=\"width: 700px;\"></p><p>This guy shared on his personal Twitter named @InosukeWorkout, himself trying to train hard to be able to cosplay Inosuke Hashibira in Kimetsu no Yaiba. He also posted his body before and after training to express his passion for this character. With an initial weight of 70kg, account holder @InosukeWorkout has reduced to 57kg after 365 days, with nearly 36,000 Ab Wheel exercises. But exercise alone is not enough, this anonymous guy said that diet plays an important role in his muscle-building journey.</p><p><img src=\"https://s199.imacdn.com/ta/2022/04/30/810eb7585f8fe55f_0fc51ff552fee625_19544116513345657185710.jpg\" style=\"width: 800px;\"><br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Trong số chúng ta, ai mà chẳng muốn trở nên đẹp đẽ hơn đúng không nào? Mới đây, tại Nhật Bản một chàng nhân viên văn phòng 33 tuổi đã cố gắng luyện tập tại nhà để có thân hình giống như nhân vật Inosuke trong bộ anime đình đám Kimetsu no Yaiba mà mình yêu thích.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/04/30/1820d7f9cbc6c532_e0f19992b9b43045_10178716513343296185710.jpg\" style=\"width: 700px;\"></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Anh chàng này đã chia sẻ trên Twitter cá nhân của mình có tên @InosukeWorkout, bản thân đã cố gắng tập luyện chăm chỉ để có thể cosplay Inosuke Hashibira trong Kimetsu no Yaiba. Anh còn đăng tải thân hình của mình trước và sau khi luyện tập để bày tỏ niềm đam mê với nhân vật này.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Với cân nặng ban đầu là 70kg, chủ tài khoản @InosukeWorkout đã giảm còn 57kg sau 365 ngày, với gần 36.000 lượt tập Ab Wheel. Thế nhưng chỉ tập luyện thôi cũng chưa đủ, chàng trai ẩn danh này cho biết chế độ ăn uống đóng vai trò quan trọng trong hành trình xây dựng cơ bắp của anh.&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/04/30/810eb7585f8fe55f_0fc51ff552fee625_19544116513345657185710.jpg\" style=\"width: 800px;\"><br></p>', 'law', 'law', NULL, NULL, NULL, 1, '27-06-2022', 'June', NULL, NULL),
(10, 5, 7, 2, 2, 1, 'ONE PIECE: Admiral RYOKUGYU - CONTINUOUS AND ORIGINAL INFORMATION!', 'ONE PIECE: ĐÔ ĐỐC RYOKUGYU - LỤC NGƯU VÀ NHỮNG THÔNG TIN BAN ĐẦU!', 'image/postimg/62b9b171bb7e7.jpg', '<p>The One Piece manga has officially entered a month of rest before starting new stories. However, before taking a break, Eiichiro Oda did not disappoint the fans. In the newly leaked chapter 1053, there is a lot of initial information about Navy Admiral Ryokugyu, also known as the Six Bulls.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/15/2b0e7992839e0a25_51be6f46165f68e5_11177516552914552185710.jpg\" style=\"width: 800px;\"></p><p>According to initial leaks, One Piece chapter 1053 is titled \"The New Yonko\" and finally reveals Luffy\'s new bounty after the Wano Kingdom. All three of the Worst Generation have the same bounty (including Luffy, Kid, and Law) of 3 billion berries each. The image on Luffy\'s new bounty is in Gear 5 state. But what fans are more interested in is Marine Admiral Ryokugyu - Aramaki and has the ability to control plants.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/15/8b40334496962094_3b8a4211738043aa_42635016552916087185710.jpg\" style=\"width: 628px;\"></p><p>Currently, it is not clear what Devil Fruit this new Navy Admiral eats, but it is known that it has the ability to absorb nutrients from people. From creating plants or absorbing nutrients like the state of sucking up nutrients is the strength of Luc Nguu. Not only that, the two characters, King and Queen, were also \"the first\" that we witnessed that power being tested.<br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Bộ truyện tranh One Piece đã chính thức bước vào một tháng nghỉ ngơi trước khi bắt đầu những câu chuyện mới. Tuy nhiên, trước khi tạm nghỉ, Eiichiro Oda cũng đã không làm người hâm mộ phải thất vọng. Trong chương 1053 vừa được rò rỉ đã có nhiều thông tin ban đầu về Đô đốc Hải quân Ryokugyu hay còn được gọi là Lục Ngưu.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/15/2b0e7992839e0a25_51be6f46165f68e5_11177516552914552185710.jpg\" style=\"width: 800px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Theo những rò rỉ ban đầu, One Piece chương 1053 có tựa đề là \"Tân Tứ hoàng\" và cuối cùng cũng tiết lộ tiền thưởng mới của Luffy sau Wano Quốc. Cả ba người trong Thế hệ tồi tệ nhất đều có tiền thưởng như nhau (bao gồm Luffy, Kid và Law) với 3 tỷ berry mỗi người. Hình ảnh trên lệnh truy nã mới của Luffy là ở trạng thái Gear 5.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Nhưng điều mà người hâm mộ quan tâm hơn lại chính là Đô đốc Hải quân Ryokugyu - Aramaki và có khả năng điều khiển thực vật.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/06/15/8b40334496962094_3b8a4211738043aa_42635016552916087185710.jpg\" style=\"width: 628px;\"></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Hiện tại, chúng ta vẫn chưa rõ Đô đốc Hải quân mới này ăn trái ác quỷ gì nhưng được biết nó có khả năng hấp thụ chất dinh dưỡng của mọi người.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Từ việc tạo ra thực vật hay hấp thụ chất dinh dưỡng như trạng thái hút khô cạn dinh dưỡng chính là sức mạnh của Lục Ngưu. Không chỉ vậy, hai nhân vật là King và Queen cũng đã là \"người đầu tiên\" mà chúng ta chứng kiến sức mạnh đó được thực nghiệm.</p>', 'anime', 'anime', NULL, NULL, NULL, 1, '27-06-2022', 'June', NULL, NULL),
(11, 8, 4, 4, 3, 1, 'There is an official broadcast schedule for the Hero of the Shield season 2', 'Đã có lịch phát sóng chính thức cho Khiên Hiệp Sĩ mùa 2', 'image/postimg/62b9bbd8d45f7.jpg', '<p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">Anime Shield Hero Season 2 – The Rising of the Shield Hero Season 2 has an official broadcast schedule after 5 months of being delayed.</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\"><br></span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">The official website for the anime The Rising of the Shield Hero Season 2 - The Hero of the Shield season 2 announced today the broadcast date for the series. Accordingly, the anime The Rising of the Shield Hero Season 2 will start airing from April 6 this year</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\"><br></span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\"><br></span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\"><br></span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">The Rising of The Shield Hero season 2 will be made by two studios Kinema Citrus and DR MOVIE. The main members of the production team include:</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\"><br></span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">Director: Masato Jinbo will replace director Takao Abo, who led the project of The Rising of The Shield Hero season 1.</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">Screenwriter: Keigo Koyanagi.</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">Character designer: Masahiro Sua.</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">Music: Kevin Penkin.</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">Two theme songs for The Rising of The Shield Hero season 2 were also revealed. We will have:</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\"><br></span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">Opening: Bring Back performed by MADKID.</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">Ending: Yuzurenai performed by Chiai Fujikawa.</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">The Rising of The Shield Hero is an anime adaptation of the hit web novel written by Aneko Yusagi. The story follows Naofumi, a male student summoned to another world as a hero. With him were three friends. The other three were assigned to attack knights in turn, while Naofumi became the Hero of the Shield, the most despised position ever. Banished by her own summoners, Naofumi decides to walk her own heroic path.</span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\"><br></span></font></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-rendering: optimizelegibility; background-color: rgb(255, 255, 255); text-align: justify;\"><font color=\"#0a0a0a\" face=\"Source Sans Pro, Helvetica, Arial, sans-serif\"><span style=\"font-size: 18px;\">The anime was originally slated to premiere in October 2021, and Crunchyroll is also slated to stream the anime alongside the Japanese broadcast. Crunchyroll announced in 2019 that the anime would have a second and a third season.</span></font></p>', '<p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 18px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Source Sans Pro&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(10, 10, 10); background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Anime Khiên Hiệp Sĩ mùa 2 – The Rising of the Shield Hero Season 2 đã có lịch phát sóng chính thức sau 05 tháng bị hoãn chiếu.</span></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 18px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Source Sans Pro&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(10, 10, 10); background-color: rgb(255, 255, 255); text-align: justify;\">Vào hôm nay trang web chính thức cho anime The Rising of the Shield Hero Season 2 – Khiên Hiệp Sĩ mùa 2 đã công bố ngày phát sóng cho bộ phim. Theo đó, anime The Rising of the Shield Hero Season 2 sẽ bắt đầu được chiếu từ ngày 6 tháng 4 năm nay</p><div class=\"jnews_inline_related_post_wrapper left\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"><div class=\"jnews_inline_related_post\" style=\"margin: 0px 0px 1.25em; padding: 20px; border: 0px; font: inherit; vertical-align: baseline; background: rgb(247, 247, 247);\"><div class=\"jeg_postblock_29 jeg_postblock jeg_module_hook jeg_pagination_disable jeg_col_2o3 jnews_module_44256_1_62b9abf9e9563\" data-unique=\"jnews_module_44256_1_62b9abf9e9563\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;\"><div class=\"jeg_block_container\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; height: 113.562px; position: relative; z-index: 1; overflow: hidden;\"><div class=\"jeg_posts\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><div class=\"jeg_postsmall jeg_load_more_flag\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; column-gap: 60px; column-count: 2; column-rule: 1px solid rgb(224, 224, 224);\"><article class=\"jeg_post jeg_pl_xs format-standard\" style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><div class=\"jeg_postblock_content\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.4; font-family: inherit; vertical-align: baseline; position: relative; overflow: hidden;\"><h3 class=\"jeg_post_title\" style=\"margin-right: 5px; margin-bottom: 0px; margin-left: 0px; line-height: 1.4; font-size: 14px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-family: inherit; vertical-align: baseline; color: rgb(37, 36, 34); text-rendering: optimizelegibility; display: inline;\"></h3></div></article></div></div></div><div class=\"jeg_block_navigation\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;\"></div></div></div></div><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 18px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Source Sans Pro&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(10, 10, 10); background-color: rgb(255, 255, 255);\"><img class=\"size-full wp-image-44257 aligncenter\" src=\"https://www.manganetworkplus.com/wp-content/uploads/2022/03/da-co-lich-phat-song-chinh-thuc-cho-khien-hiep-si-mua-2.jpg\" alt=\"\" width=\"710\" height=\"444\" data-pin-no-hover=\"true\" style=\"border: 0px; height: auto; max-width: 100%; margin: 5px auto 1.25em; padding: 0px; font: inherit; clear: both; text-align: center; display: block;\"></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 18px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Source Sans Pro&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(10, 10, 10); background-color: rgb(255, 255, 255); text-align: justify;\">The Rising of The Shield Hero season 2 sẽ được thực hiện bởi hai studio Kinema Citrus và DR MOVIE. Các thành viên chính của ê kíp sản xuất bao gồm:</p><ul style=\"margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 2.14286em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: square; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\"><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Đạo diễn: Masato Jinbo sẽ thay thế cho đạo diễn Takao Abo, người đã cầm trịch dự án The Rising of The Shield Hero season 1.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Biên kịch: Keigo Koyanagi.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Thiết kế nhân vật: Masahiro Sưa.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Âm nhạc: Kevin Penkin.</li></ul><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 18px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Source Sans Pro&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(10, 10, 10); background-color: rgb(255, 255, 255); text-align: justify;\">Hai ca khúc chủ đề của The Rising of The Shield Hero season 2 cũng được tiết lộ. Chúng ta sẽ có:</p><ul style=\"margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 2.14286em; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; vertical-align: baseline; list-style: square; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\"><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Opening: Bring Back do MADKID trình bày.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Ending: Yuzurenai do Chiai Fujikawa trình bày.</li></ul><blockquote style=\"margin-right: 1em; margin-bottom: 1.25em; margin-left: 1em; padding: 0px 0px 0px 1em; border-width: 0px 0px 0px 8px; border-style: solid; border-color: rgb(253, 79, 24); border-image: initial; font-style: italic; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.5em; font-family: Roboto, Helvetica, Arial, sans-serif; vertical-align: baseline; quotes: none; color: rgb(253, 79, 24); background-color: rgb(255, 255, 255);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: inherit; padding: 0px; border: 0px; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(10, 10, 10); text-align: justify;\">The Rising of The Shield Hero là anime chuyển thể từ web novel đình đám do Aneko Yusagi sáng tác. Câu chuyện đưa ta theo chân Naofumi, một nam sinh được triệu hồi đến thế giới khác làm anh hùng. Đi cùng cậu là ba người bạn. Ba người kia lần lượt được trở thành các hiệp sĩ chuyên tấn công còn Naofumi lại trở thành Khiên Hiệp Sĩ, vị trí bị coi khinh nhất từ trước đến giờ. Bị chính những người triệu hồi mình xua đuổi, Naofumi quyết định tự đi trên con đường anh hùng của riêng mình.</p></blockquote><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 18px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Source Sans Pro&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(10, 10, 10); background-color: rgb(255, 255, 255); text-align: justify;\">Ban đầu anime được dự kiến sẽ ra mắt vào tháng 10 năm 2021, và Crunchyroll cũng dự kiến sẽ phát trực tuyến anime cùng với việc phát sóng tại Nhật Bản. Crunchyroll đã thông báo vào năm 2019 rằng anime sẽ có mùa thứ hai và thứ ba.</p>', '12321312', '3123123123', NULL, NULL, NULL, 1, '27-06-2022', 'June', NULL, NULL),
(13, 6, 6, 2, 2, 1, 'JUJUTSU KAISEN\'S CHARACTER CHARACTERS CAUSES FANS CRAZY!', 'HOÀNG THƯỢNG HÓA THÂN NHÂN VẬT TRONG JUJUTSU KAISEN KHIẾN FAN PHÁT CUỒNG!', 'image/postimg/62b9b2f17f6b0.jpg', '<p>Recently, the online community went crazy when they saw the extremely cute images of the \"kings\" when cosplaying as the character Gojo Satoru in the Jujutsu Kaisen anime that is storming in Vietnam. As a 2D character, this guy made the netizen crazy, but with the incarnation of \"His Majesty\", this madness must be multiplied many times over.</p><p><img src=\"https://s199.imacdn.com/ta/2022/04/21/1db184b801983747_41fab874d43a3c46_11242416505476067185710.jpg\" style=\"width: 640px;\"></p><p><img src=\"https://s199.imacdn.com/ta/2022/04/21/bca53538457fc51f_57a6a5fd32258d4e_10421316505476215185710.jpg\" style=\"width: 640px;\"></p><p><img src=\"https://s199.imacdn.com/ta/2022/04/21/eacbcb365b8006a9_bd4690afd4920874_13097316505476256185710.jpg\" style=\"width: 640px;\"><br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Mới đây, cộng đồng mạng đã phát cuồng khi nhìn thấy hình ảnh cực kỳ dễ thương của các \"hoàng thượng\" khi cosplay thành nhân vật Gojo Satoru trong bộ anime Jujutsu Kaisen đang làm mưa làm gió tại Việt Nam. Khi là nhân vật 2D thôi, anh chàng này đã khiến cho các netizen phải phát cuồng thì với sự hóa thân của \"hoàng thượng\", độ phát cuồng này còn phải nhân lên gấp nhiều lần.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/04/21/1db184b801983747_41fab874d43a3c46_11242416505476067185710.jpg\" style=\"width: 640px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span></p><p><img src=\"https://s199.imacdn.com/ta/2022/04/21/bca53538457fc51f_57a6a5fd32258d4e_10421316505476215185710.jpg\" style=\"width: 640px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span></p><p><img src=\"https://s199.imacdn.com/ta/2022/04/21/eacbcb365b8006a9_bd4690afd4920874_13097316505476256185710.jpg\" style=\"width: 640px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span><br></p>', 'law', 'law', NULL, NULL, NULL, NULL, '27-06-2022', 'June', NULL, NULL);
INSERT INTO `posts` (`id`, `category_id`, `subcategory_id`, `district_id`, `subdistrict_id`, `user_id`, `title_en`, `title_vn`, `image`, `details_en`, `details_vn`, `tags_en`, `tags_vn`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(14, 5, 7, 2, 2, 1, 'EVERYTHING ABOUT UTA - THE Daughter of Red-Hair SHANKS AND ONE WHO WANT LUFFY TO GET A PIEP!', 'TẤT TẦN TẬT VỀ UTA - CON GÁI CỦA SHANKS TÓC ĐỎ VÀ LÀ NGƯỜI MUỐN LUFFY BỎ LÀM HẢI TẶC!', 'image/postimg/62b9b08ec8b90.jpg', '<p>In the trailer as well as recent news related to One Piece Film Red, you must have seen a new female character with half-red, half-pink hair. More specifically, this character is also said to be the daughter of Red-haired Shanks - who inspired Luffy. So who is this girl?</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/23/a7e2f80d9b26db54_786157c1da4bb686_6702616559685412185710.jpg\" style=\"width: 800px;\"></p><p>Surely everyone already knows that Uta is the main character in the upcoming movie project of One Piece. She is said to be one of the most famous singers in the world and is also the daughter of Yonko Shanks Red Hair. It has also been confirmed through the mass release of music videos as well as visuals of Uta\'s singing in the new trailers with headlines popping up like \"Beautiful Voice\" and \"Red Hair\" at the heart of it. .</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/23/aa38240aa9317ee9_85e120763779c59a_3877716559686984185710.jpg\" style=\"width: 800px;\"></p><p>Uta\'s voice is described as belonging to another world, she also does not reveal her identity when singing and the upcoming event in the movie is when Uta reveals her true face to the public. they. The concert venue attracted many pirates, the navy watched closely. Even our main story crew, the Straw Hats, will be participating in the event. When the voice that the world has been waiting for plays, an unexpected truth is revealed: She is Shanks\' daughter.<br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Trong trailer cũng như các tin tức gần đây liên quan đến One Piece Film Red thì hẳn các bạn đều đã thấy một nữ nhân vật mới với mái tóc nửa đỏ, nửa trắng hồng. Đặc biệt hơn, nhân vật này cũng được cho là con gái của Shanks Tóc Đỏ - người truyền cảm hứng cho Luffy. Vậy rốt cuộc cô gái này là ai?</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/23/a7e2f80d9b26db54_786157c1da4bb686_6702616559685412185710.jpg\" style=\"width: 800px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Hẳn mọi người cũng đã biết Uta là nhân vật chính trong dự án điện ảnh sắp tới của One Piece. Cô được cho là một ca sĩ nổi tiếng nhất thế giới và cũng chính là con gái Tứ hoàng Shanks Tóc Đỏ.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Nó cũng đã được xác nhận thông qua việc phát hành hàng loạt các MV cũng như hình ảnh ca hát của Uta trong các trailer mới cùng với những dòng tiêu đề hiện ra như \"Giọng hát hay\" và \"Mái tóc đỏ\" là tâm điểm.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/23/aa38240aa9317ee9_85e120763779c59a_3877716559686984185710.jpg\" style=\"width: 800px;\"></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Giọng hát của Uta được mô tả như thuộc về thế giới khác, cô cũng không để lộ danh tính của mình khi hát và sự kiện sắp được diễn ra trong bộ phim chính là lúc mà Uta lộ diện gương mặt thật sự của mình trước công chúng. Địa điểm tổ chức buổi hòa nhạc đã thu hút rất nhiều hải tặc, hải quân theo dõi sát sao. Thậm chí, băng hải tặc chính truyện của chúng ta là băng Mũ Rơm cũng sẽ tham gia vào sự kiện.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Lúc giọng hát mà cả thế giới chờ đợi vang lên cũng là lúc một sự thật bất ngờ được tiết lộ: Cô chính là con gái của Shanks.</p>', 'anime', 'anime', NULL, NULL, NULL, NULL, '27-06-2022', 'June', NULL, NULL),
(15, 4, 8, 4, 3, 1, 'MANGA TOKYO REVENGERS WILL HAVE A STORY ABOUT KEISUKE AND CHIFUYU!', 'MANGA TOKYO REVENGERS SẼ CÓ NGOẠI TRUYỆN VỀ KEISUKE VÀ CHIFUYU!', 'image/postimg/62b98f6cc79b7.jpg', '<p>On Monday, the official Twitter for Ken Wakui\'s Tokyo Revenger manga confirmed that it will publish a side story manga titled Tokyo Revengers ~Baji Keisuke Kara no Tegami~ (A Letter from Keisuke Baji) by Ken Wakui. Yukinori Kawaguchi draws under Wakui\'s supervision. The manga will begin serialization in this year\'s 35th issue of Weekly Shōnen Magazine on July 27. The confirmed side story will revolve around two characters, Keisuke (above below) and Chifuyu (below).</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/20/7868a572eb36e490_ce45e0efbdbfe7b9_2967616557390671185710.jpg\" style=\"width: 388px;\"></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/20/ed035ccb6ece3290_9f7d0fcb08ff9c1b_2456016557390758185710.jpg\" style=\"width: 388px;\"><br></p>', '<p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">Vào hôm thứ hai vừa qua, Twitter chính thức cho bộ manga Tokyo Revenger của tác giả Ken Wakui đã xác nhận sẽ phát hành bộ manga ngoại truyện với cái tên Tokyo Revengers ~Baji Keisuke Kara no Tegami~ (A Letter from Keisuke Baji) do Yukinori Kawaguchi vẽ dưới sự giám sát của Wakui. Manga sẽ bắt đầu được đăng tải trên số thứ 35 năm nay của tạp chí Weekly Shōnen Magazine vào ngày 27 tháng 7 sắp tới.</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Ngoại truyện được xác nhận sẽ xoay quanh hai nhân vật là Keisuke (ảnh trên bên dưới) và Chifuyu (ảnh dưới).</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/06/20/7868a572eb36e490_ce45e0efbdbfe7b9_2967616557390671185710.jpg\" style=\"width: 388px;\"></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/06/20/ed035ccb6ece3290_9f7d0fcb08ff9c1b_2456016557390758185710.jpg\" style=\"width: 388px;\"><br></p>', 'hh', 'hh', NULL, NULL, NULL, 1, '27-06-2022', 'June', NULL, NULL),
(17, 9, 9, 4, 3, 8, 'vbcnvbcncvbnbcvnvbcncvbnbcvn', 'cvbnbcvnbcvnbcvncvbncvb', 'image/postimg/62a74bddd6ce7.jpg', '<p>sdafasdfasdfas</p>', '<p>dfsdfasfasfasf</p>', 'wfdsfasdf', 'sdfasdfsadf', NULL, NULL, NULL, 1, '13-06-2022 21:38:21', 'June', NULL, NULL),
(18, 9, 9, 2, 2, 8, '999999999999999678678768', '3563452345423', 'image/postimg/62a74bef4ff51.png', '<p>ghshsfd</p>', '<p>gsg</p>', 'adwfsdf', 'asfsdaf', NULL, NULL, NULL, NULL, '13-06-2022 21:38:39', 'June', NULL, NULL),
(19, 2, 3, 2, 2, 1, 'AKIBA MEIDO SENSO - DREAM OF BEING A HANDS', 'AKIBA MEIDO SENSO - ƯỚC MƠ LÀM CÔ HẦU GÁI', 'image/postimg/62b98007d6b77.jpg', '<p>Main production team: Original work: Kedamono Land Management Strategy Room Directed by: Soichi Masui at P.A. Works Screenwriter: Yoshihiro Hiki Character Designer: Manabu Nii Composer: Yoshihiro Ike at Cygames Art Direction: Kohei Tanaka Artistic Design: Risa Iraha Color design: Naomi Nakano Recommended Setup: Kenji Irie, Kayoko Nabeta Director of Photography: Rumi Ishiguro 3D Director: Kohei Ogawa Special Effects: Masahiro Murakami Editor: Ayumu Takahashi Sound Director: Satoki Iida Sound Effects: Katsuhiro Nakano Sound Production: Dugout<br></p><p>The film will star Reina Kondo as Nagomi Kazuhira, a woman who moves to Tokyo with the desire to become a cute maid in Akihabara. Also participating in this movie is Rina Satou as Ranko Kazutoshi, a maid who has been away from Akihabara for a long time.</p>', '<div style=\"margin-top: 10px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Đội ngũ sản xuất chính:</div><ul style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><li>Tác phẩm gốc:&nbsp;<i style=\"display: inline !important;\">Kedamono Land Management Strategy Room</i></li><li>Đạo diễn:&nbsp;<span style=\"font-weight: 700;\">Soichi Masui</span>&nbsp;tại&nbsp;<span style=\"font-weight: 700;\">P.A. Works&nbsp;</span></li><li>Biên kịch:&nbsp;<span style=\"font-weight: 700;\">Yoshihiro Hiki&nbsp;</span></li><li>Thiết kế nhân vật:&nbsp;<span style=\"font-weight: 700;\">Manabu Nii&nbsp;</span></li><li>Soạn nhạc:&nbsp;<span style=\"font-weight: 700;\">Yoshihiro Ike</span>&nbsp;tại&nbsp;<span style=\"font-weight: 700;\">Cygames</span></li><li>Chỉ đạo nghệ thuật:&nbsp;<span style=\"font-weight: 700;\">Kohei Tanaka</span></li><li>Thiết kế nghệ thuật:&nbsp;<span style=\"font-weight: 700;\">Risa Iraha</span></li><li>Thiết kế màu sắc:&nbsp;<span style=\"font-weight: 700;\">Naomi Nakano</span></li><li>Thiết lập đề xuất:&nbsp;<span style=\"font-weight: 700;\">Kenji Irie, Kayoko Nabeta</span></li><li>Chỉ đạo hình ảnh:&nbsp;<span style=\"font-weight: 700;\">Rumi Ishiguro</span></li><li>Đạo diễn 3D:&nbsp;<span style=\"font-weight: 700;\">Kohei Ogawa</span></li><li>Hiệu ứng đặc biệt:&nbsp;<span style=\"font-weight: 700;\">Masahiro Murakami</span></li><li>Biên tập:&nbsp;<span style=\"font-weight: 700;\">Ayumu Takahashi</span></li><li>Đạo diễn âm thanh:&nbsp;<span style=\"font-weight: 700;\">Satoki Iida</span></li><li>Hiệu ứng âm thanh:&nbsp;<span style=\"font-weight: 700;\">Katsuhiro Nakano</span></li><li>Sản xuất âm thanh:&nbsp;<span style=\"font-weight: 700;\">Dugout</span></li></ul><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Phim sẽ có sự tham gia của&nbsp;</span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Reina Kondo</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">&nbsp;trong vai Nagomi Kazuhira, một người phụ nữ chuyển đến Tokyo với mong muốn trở thành một cô hầu gái dễ thương ở Akihabara. Cũng tham gia vào bộ phim này còn có&nbsp;</span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Rina Satou</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">&nbsp;trong vai Ranko Kazutoshi, một người hầu gái đã từng rời xa Akihabara trong một thời gian dài.</span><span style=\"font-weight: 700;\"><br></span></p>', 'Anime', 'Anime', NULL, NULL, NULL, NULL, '27-06-2022', 'June', NULL, NULL),
(20, 3, 1, 2, 2, 1, 'CHI: CHIKYUU NO UNDOU NI TSUITE - THE TRUTH OF THE renaissance!', 'CHI: CHIKYUU NO UNDOU NI TSUITE - SỰ THẬT THỜI KỲ PHỤC HƯNG!', 'image/postimg/62b98b688e352.jpg', '<p>Recently, in this year\'s 30th issue of Big Comic Spirits magazine published by Shogakukan, it was confirmed that the Chi: Chikyuu no Undou ni Tsuite (Chi: On the Movements of the Earth) manga will get an anime adaptation. by Madhouse. Currently, the format of the anime has not been announced yet.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/26/54812ea926ff8231_f7b92f6f50ee5994_10705316562580788185710.jpg\" style=\"width: 800px;\"></p><p>The spark of Renaissance inventions only began to burn in 15th-century Europe, even as the inventors were burned at the stake for their own \"evil cults.\" In Poland, a child prodigy named Rafal is expected to be a great mind in theology, but an encounter with a certain man leads him on the path to \"the truth of a man.\" Heretic\".<br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Vừa qua, trên số thứ 30 năm nay của tạp chí Big Comic Spirits do nhà xuất bản Shogakukan phát hành đã xác nhận bộ manga Chi: Chikyuu no Undou ni Tsuite (Chi: On the Movements of the Earth) sẽ được chuyển thể thành anime bởi Madhouse. Hiện tại, định dạng của anime vẫn chưa được công bố.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/26/54812ea926ff8231_f7b92f6f50ee5994_10705316562580788185710.jpg\" style=\"width: 800px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span></p><p><i style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Tia lửa của những phát minh trong thời kỳ Phục hưng chỉ bắt đầu bùng cháy ở châu Âu thế kỷ 15, ngay cả khi những người đưa ra phát minh cũng đã bị hỏa thiêu vì \"tà giáo\" của bản thân họ. Ở Ba Lan, một đứa trẻ thần đồng tên là Rafal được kỳ vọng sẽ là một bộ óc vĩ đại trong thần học, nhưng cuộc gặp gỡ với một người đàn ông nào đó đã dẫn cậu đến con đường dẫn tới \"sự thật của một dị giáo\".</i><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span><br></p>', 'hh', 'hh', NULL, NULL, NULL, NULL, '27-06-2022', 'June', NULL, NULL),
(21, 2, 3, 2, 2, 1, 'KAMISATO AYAKA IN GENSHIN IMPACT IS AWESOME, \"HAPPY HEART\" FANS!', 'KAMISATO AYAKA TRONG GENSHIN IMPACT ĐẸP MÊ MẨN, \"RỤNG TIM\" NGƯỜI HÂM MỘ!', 'image/postimg/62b97f4a77bdb.jpg', '<p><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><b>Kamisato Ayaka is a character in Genshin Impact - an anime-style Chinese action role-playing game, she is the eldest daughter of the Kamisato clan and the younger sister of Kamisata Ayato. She is a beautiful, elegant and graceful person. Not only that, but her status in society is high, making her an ideal model for every family\'s daughter-in-law. Kamisato Ayaka\'s beauty is also undisputed after you are seen through the cosplay photos below.</b></font><br></span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/62611c29f16248ac_363f49cb36b47aed_21158416560876509185710.jpg\" style=\"width: 800px;\"><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 700; background-color: rgb(255, 255, 255);\">Kamisato Ayaka là một nhân vật trong Genshin Impact - một trò chơi hành động nhập vai của Trung Quốc theo phong cách anime, cô là con gái lớn của gia tộc Kamisato và là em gái của Kamisata Ayato. Cô là một người xinh đẹp, thanh lịch và duyên dáng. Không chỉ vậy, địa vị trong xã hội lại cao, quả là một hình mẫu lý tưởng cho con dâu của mọi nhà. Vẻ đẹp của Kamisato Ayaka cũng không cần phải bàn cãi sau khi bạn được nhìn ngắm qua bộ ảnh cosplay dưới đây.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/62611c29f16248ac_363f49cb36b47aed_21158416560876509185710.jpg\" style=\"width: 800px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 700; background-color: rgb(255, 255, 255);\"><br></span><br></p>', 'Anime', 'Anime', NULL, NULL, NULL, NULL, '27-06-2022', 'June', NULL, NULL),
(22, 2, 3, 2, 2, 1, 'RWBY: HYOUSETSU TEIKOKU - FEMALE STEAM HUNTING!', 'RWBY: HYOUSETSU TEIKOKU - BIỆT ĐỘI NỮ THỢ SĂN!', 'image/postimg/62b97e81eee29.jpg', '<p>Previously, the staff in the series announced that the first 3 episodes would be broadcast on the YouTube platform from 8 pm Japan time (Vietnam time) June 24 until 23:59 pm Japan time (21 pm). 59 minutes Vietnam time) June 26. The episodes will only be broadcast within Japan, while Crunchyroll with Aniplus will stream outside of Japan.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/de00da02b5d0b1e5_ed4a6c301550b5fb_11312216560845001185710.jpg\" style=\"width: 800px;\"><br></p><p>RWBY is a fantasy world filled with terrible monsters that aim for death and destruction, and humanity\'s only hope is to depend on powerful Huntsmen and Huntresses. Ruby Rose, Weiss Schnee, Blake Belladonna and Yang Xiao Long are four such Huntresses being trained to take them far beyond the Beacon academy campus where they are studying. Although each possess their own unique strengths, these four girls must overcome the dark forces and work as a team if they truly hope to become the next generation of Remnant defenders.<br></p>', '<p>Trước đó, dàn nhân lực trong phim đã thông tin 3 tập đầu tiên sẽ được lên sóng trên nền tảng YouTube từ 20 giờ Nhật Bản (18 giờ Việt Nam) ngày 24 tháng 6 cho đến 23 giờ 59 phút giờ Nhật Bản (21 giờ 59 phút theo giờ Việt Nam) ngày 26 tháng 6. Các tập phim sẽ chỉ được lên sóng trong phạm vi Nhật Bản, trong khi đó, Crunchyroll với Aniplus sẽ phát ngoài phạm vi Nhật Bản.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/de00da02b5d0b1e5_ed4a6c301550b5fb_11312216560845001185710.jpg\" style=\"width: 800px;\"><br></p><p><i style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">RWBY là một thế giới giả tưởng chứa đầy những con quái vật khủng khiếp nhắm vào cái chết, sự hủy diệt và hy vọng duy nhất của nhân loại là phụ thuộc vào những Huntsmen và Huntresses mạnh mẽ. Ruby Rose, Weiss Schnee, Blake Belladonna và Yang Xiao Long là bốn Huntresses như vậy đang được huấn luyện để đưa họ vượt xa khuôn viên học viện Beacon - nơi họ đang học tập. Mặc dù mỗi người sở hữu sức mạnh riêng nhưng bốn cô gái này phải vượt qua được thế lực đen tối và làm việc đồng đội nếu họ thực sự hy vọng trở thành thế hệ tiếp theo của những người bảo vệ Remnant.</i><br style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"></p>', 'Anime', 'Anime', NULL, NULL, NULL, NULL, '27-06-2022', 'June', NULL, NULL),
(23, 2, 10, 2, 2, 1, 'HOSHI NO SAMIDARE - THE POWER LABEL', 'HOSHI NO SAMIDARE - CHIẾC NHẪN QUYỀN NĂNG', 'image/postimg/62b9850049321.jpg', '<p>The cast includes: Junya Enoki as Yuuhi Amamiya Naomi Ozora as Samidare Asahina Kenjiro Tsuda as Noi Crezant Azusa Tadokoro as Hisame Asahina M.A.O as Anima Tatsumaru Tachibana as Animus Shuuhei Iwase as Hangetsu Shinonome Gen Sato as Mikazuki Shinonome Tetsu Inada as Soichiro Nagumo Aya Suzaki as Yayoi Hakudo Yoshitsugu Matsuoka as Hyo Shimaki Shunichi Toki as Tark Kusakabe Chinatsu Hirose as Hanako Sorano Chihaya Yoshitake as Subaru Hoshikawa Moeha Nochimoto as Yuimachi Tsukishiro Mutsumi Tamura as Taiyo Akane Kazuhiro Yamaji as Inachika Akitani Shoya Ishige as ludo Shubarie Atsuko Tanaka as Muu Kentaro Kumagai as Dance Dark Hyousei as Shea Moon Nagisa Kakegawa as Coo Ritter Kazutomi Yamamoto as Lance Lumiere Ruriko Aoki as Kil Zonne Mitsuo Iwata as Lee Soleil Katsuji Mori as Ron Yue Manabu Muraji as Loki Helios Tetsuei Sumiya as Zan Amaru</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/10ca7876c64114bc_3cbd0629fcf43186_8497416560833333734221.jpg\" style=\"width: 800px;\"></p><p>Main production team: Original: Mizukami, Yuichiro Momose Directed by: Nobuaki Nakanishi Editing: NAZ, Jumondo Character Designer: Hajime Hatakeyama Composer: Takatsugu Wakabayashi Art Direction: Minoru Okochi Color: Ryusuke Araki Director of photography: Toshikazu Kuno Sound Director: Yuichi Imaizumi Sound Effects: Yasuyuki Konno Editor: Rina Koguchi The Half time Old bandmate will perform the opening song \"Gyoko\" (Dawn Light) SpendyMily will perform the ending song \"Reflexion\"</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/45a7e289e7b63961_d8b111baba265298_33808216560833496734221.jpg\" style=\"width: 800px;\"></p><p>Asamiya Yuuhi was a very ordinary university student... until one day a lizard appeared and asked him to save the world. The next thing he is revealed to be is that he has been given a ring with special powers, plus enemies are lurking around. This is a unique story that blends everyday life with the bizarre and the supernatural!<br></p>', '<div style=\"margin-top: 10px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Dàn diễn viên bao gồm:</div><ul style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><li><span style=\"font-weight: 700;\">Junya Enoki</span>&nbsp;trong vai Yuuhi Amamiya</li><li><span style=\"font-weight: 700;\">Naomi Ozora</span>&nbsp;trong vai Samidare Asahina</li><li><span style=\"font-weight: 700;\">Kenjiro Tsuda</span>&nbsp;trong vai Noi Crezant</li><li><span style=\"font-weight: 700;\">Azusa Tadokoro</span>&nbsp;trong vai Hisame Asahina</li><li><span style=\"font-weight: 700;\">M.A.O</span>&nbsp;trong vai Anima</li><li><span style=\"font-weight: 700;\">Tatsumaru Tachibana</span>&nbsp;trong vai Animus</li><li><span style=\"font-weight: 700;\">Shuuhei Iwase</span>&nbsp;trong vai Hangetsu Shinonome</li><li><span style=\"font-weight: 700;\">Gen Sato</span>&nbsp;trong vai Mikazuki Shinonome</li><li><span style=\"font-weight: 700;\">Tetsu Inada</span>&nbsp;trong vai Soichiro Nagumo</li><li><span style=\"font-weight: 700;\">Aya Suzaki</span>&nbsp;trong vai Yayoi Hakudo</li><li><span style=\"font-weight: 700;\">Yoshitsugu Matsuoka</span>&nbsp;trong vai Hyo Shimaki</li><li><span style=\"font-weight: 700;\">Shunichi Toki</span>&nbsp;trong vai Tark Kusakabe</li><li><span style=\"font-weight: 700;\">Chinatsu Hirose</span>&nbsp;trong vai Hanako Sorano</li><li><span style=\"font-weight: 700;\">Chihaya Yoshitake</span>&nbsp;trong vai Subaru Hoshikawa</li><li><span style=\"font-weight: 700;\">Moeha Nochimoto</span>&nbsp;trong vai Yuimachi Tsukishiro</li><li><span style=\"font-weight: 700;\">Mutsumi Tamura</span>&nbsp;trong vai Taiyo Akane</li><li><span style=\"font-weight: 700;\">Kazuhiro Yamaji</span>&nbsp;trong vai Inachika Akitani</li><li><span style=\"font-weight: 700;\">Shoya Ishige</span>&nbsp;trong vai ludo Shubarie</li><li><span style=\"font-weight: 700;\">Atsuko Tanaka</span>&nbsp;trong vai Muu</li><li><span style=\"font-weight: 700;\">Kentaro Kumagai</span>&nbsp;trong vai Dance Dark</li><li><span style=\"font-weight: 700;\">Hyousei</span>&nbsp;trong vai Shea Moon</li><li><span style=\"font-weight: 700;\">Nagisa Kakegawa</span>&nbsp;trong vai Coo Ritter</li><li><span style=\"font-weight: 700;\">Kazutomi Yamamoto</span>&nbsp;trong vai Lance Lumiere</li><li><span style=\"font-weight: 700;\">Ruriko Aoki</span>&nbsp;trong vai Kil Zonne</li><li><span style=\"font-weight: 700;\">Mitsuo Iwata</span>&nbsp;trong vai Lee Soleil</li><li><span style=\"font-weight: 700;\">Katsuji Mori</span>&nbsp;trong vai Ron Yue</li><li><span style=\"font-weight: 700;\">Manabu Muraji</span>&nbsp;trong vai Loki Helios</li><li><span style=\"font-weight: 700;\">Tetsuei Sumiya</span>&nbsp;trong vai Zan Amaru</li></ul><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/10ca7876c64114bc_3cbd0629fcf43186_8497416560833333734221.jpg\" style=\"width: 800px;\"><br></p><div style=\"margin-top: 10px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Đội ngũ sản xuất chính:</div><ul style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><li>Nguyên tác:&nbsp;<span style=\"font-weight: 700;\">Mizukami, Yuichiro Momose</span></li><li>Đạo diễn:&nbsp;<span style=\"font-weight: 700;\">Nobuaki Nakanishi</span>&nbsp;</li><li>Dựng phim:&nbsp;<span style=\"font-weight: 700;\">NAZ, Jumondo</span></li><li>Thiết kế nhân vật:&nbsp;<span style=\"font-weight: 700;\">Hajime Hatakeyama&nbsp;</span></li><li>Soạn nhạc:&nbsp;<span style=\"font-weight: 700;\">Takatsugu Wakabayashi&nbsp;</span></li><li>Chỉ đạo nghệ thuật:&nbsp;<span style=\"font-weight: 700;\">Minoru Okochi&nbsp;</span></li><li>Màu sắc:&nbsp;<span style=\"font-weight: 700;\">Ryusuke Araki&nbsp;</span></li><li>Chỉ đạo hình ảnh:&nbsp;<span style=\"font-weight: 700;\">Toshikazu Kuno&nbsp;</span></li><li>Chỉ đạo âm thanh:&nbsp;<span style=\"font-weight: 700;\">Yuichi Imaizumi&nbsp;</span></li><li>Hiệu ứng âm thanh:&nbsp;<span style=\"font-weight: 700;\">Yasuyuki Konno&nbsp;</span></li><li>Biên tập:&nbsp;<span style=\"font-weight: 700;\">Rina Koguchi&nbsp;</span></li><li>Bạn nhạc&nbsp;<span style=\"font-weight: 700;\">Half time Old</span>&nbsp;sẽ thể hiện bài hát opening \"Gyoko\" (Dawn Light)</li><li><span style=\"font-weight: 700;\">SpendyMily</span>&nbsp;sẽ thể hiện ca khúc ending \"Reflexion\"&nbsp;</li></ul><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/45a7e289e7b63961_d8b111baba265298_33808216560833496734221.jpg\" style=\"width: 800px;\"><br></p><p><i style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Asamiya Yuuhi là một sinh viên đại học vô cùng bình thường... cho đến ngày một con thằn lằn xuất hiện và yêu cầu cậu giải cứu thế giới. Điều tiếp theo anh ta được tiết lộ chính là anh đã được trao cho một chiếc nhẫn với sức mạnh đặc biệt, cộng với kẻ thù đang rình rập xung quanh. Đây là một câu chuyện độc đáo pha trộn giữa cuộc sống thường ngày với sự kỳ quái và siêu nhiên!</i><br></p>', 'Hoạt Hình', 'Hoạt Hình', NULL, NULL, NULL, NULL, '27-06-2022 17:22:56', 'June', NULL, NULL),
(24, 2, 10, 2, 2, 1, 'TAKT OP. DESTINY WILL BE TRANSFORMED TO MANGA', 'TAKT OP. DESTINY SẼ ĐƯỢC CHUYỂN THỂ THÀNH MANGA', 'image/postimg/62b985bb8cbda.jpg', '<p>The Twitter account of the Takt Op Destiny project (takt op.Destiny) announced the plan for a manga adaptation following the success of the anime and video games. The manga will be serialized in Monthly Comic Alive, and more information will be revealed in the magazine\'s August issue, slated for release on June 27.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/23/8eb147226974ff37_aee7f3c380382966_13046116559812419769722.jpg\" style=\"width: 680px;\"></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Takt Op Destiny là một dự án truyền thông hỗn hợp về âm nhạc cổ điển của Bandai Namco Arts và DeNA. DeNA China Co., Ltd đang phát triển game di động RPG, với MAPPA và MADHOUSE sản xuất anime.&nbsp;</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/23/dea11ccf1b108060_70ab8fb5e2226361_44045216559815974769722.jpg\" style=\"width: 800px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span><br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Tài khoản Twitter của dự án Takt Op Destiny (takt op.Destiny) đã thông báo về kế hoạch chuyển thể thành manga sau sự thành công của anime và trò chơi điện tử. Manga sẽ được đăng nhiều kỳ trong Monthly Comic Alive, và nhiều thông tin mới hơn sẽ được tiết lộ trong ấn bản tháng 8 của tạp chí, dự kiến ​​phát hành vào ngày 27 tháng 6.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/23/8eb147226974ff37_aee7f3c380382966_13046116559812419769722.jpg\" style=\"width: 680px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Takt Op Destiny là một dự án truyền thông hỗn hợp về âm nhạc cổ điển của Bandai Namco Arts và DeNA. DeNA China Co., Ltd đang phát triển game di động RPG, với MAPPA và MADHOUSE sản xuất anime.&nbsp;</span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span><img src=\"https://s199.imacdn.com/ta/2022/06/23/dea11ccf1b108060_70ab8fb5e2226361_44045216559815974769722.jpg\" style=\"width: 800px;\"><br></p>', 'HH', 'HH', NULL, NULL, NULL, NULL, '27-06-2022 17:26:03', 'June', NULL, NULL),
(25, 2, 10, 2, 2, 1, 'ARC COVID-19 IN MANGA KOUNODORI: DR. STORK WILL END IN 3 MORE CHAPTERS!', 'ARC COVID-19 TRONG MANGA KOUNODORI: DR. STORK SẼ KẾT THÚC TRONG 3 CHƯƠNG NỮA!', 'image/postimg/62b9865c8fb28.jpg', '<p>Recently, in the 30th issue of Morning magazine published by Kodansha publisher, it was reported that the COVID-19 arc in the Kounodori: Dr. Stork (Kounodori) by author Yuu Suzunoki will end in the next 3 chapters. Without any delay, the series will end on July 14.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/003766f8ff0cafe3_8f8210eec328f697_4104716560833056185710.jpg\" style=\"width: 267px;\"></p><p>A new arc titled \"Kounodori: Shingata Coronovirus-hen\" was published in Kodansha\'s Morning magazine on April 28. The manga focuses on Sakura Kounotori and details the struggles of being an OB/GYN regarding childbirth during the COVID-19 pandemic.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/75170a8bb9fb5674_cd423fcdc3255f13_10424916560833481185710.jpg\" style=\"width: 678px;\"><br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Mới đây, trong số thứ 30 của tạp chí Morning do nhà xuất bản Kodansha phát hành đã thông tin rằng arc COVID-19 trong bộ manga Kounodori: Dr. Stork (Kounodori) của tác giả Yuu Suzunoki sẽ kết thúc trong 3 chương tiếp theo. Nếu không có gì trì hoãn, bộ truyện sẽ kết thúc vào ngày 14 tháng 7.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/003766f8ff0cafe3_8f8210eec328f697_4104716560833056185710.jpg\" style=\"width: 267px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Arc mới với tựa đề là \"Kounodori: Shingata Coronovirus-hen\" đã được ra mắt trên tạp chí Morning của nhà xuất bản Kodansha vào ngày 28 tháng 4 vừa qua. Bộ manga tập trung vào Sakura Kounotori và trình bày chi tiết những cuộc đấu tranh khi trở thành một OB/GYN (sản phụ khoa) liên quan đến việc sinh con trong đại dịch COVID-19.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/75170a8bb9fb5674_cd423fcdc3255f13_10424916560833481185710.jpg\" style=\"width: 678px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span><br></p>', 'hh', 'hh', NULL, NULL, NULL, NULL, '27-06-2022 17:28:44', 'June', NULL, NULL),
(26, 3, 11, 2, 2, 1, 'SPY × FAMILY XÁC NHẬN SẼ QUAY TRỞ LẠI VÀO THÁNG 10 SẮP TỚI!', 'SPY × FAMILY XÁC NHẬN SẼ QUAY TRỞ LẠI VÀO THÁNG 10 SẮP TỚI!', 'image/postimg/62b98cded0d77.jpg', '<p>In the video, Hiroki Takahashi has been confirmed to play the new character Keith Kepler. The main production team includes: Directed by: Kazuhiro Furuhashi Character Designer: Kazuaki Shimada Music: (K)NoW_NAME Animation Director: Kyoji Asano, Kazuaki Shimada Assistant Director: Takashi Katagiri, Norihito Takahashi, Takahiro Harada Color: Ken Hashimoto</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/049899c7b0015ed2_120ac9f984658372_11068116561745711185710.jpg\" style=\"width: 800px;\"><br></p>', '<p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Trong video,&nbsp;<span style=\"font-weight: 700;\">Hiroki Takahashi</span>&nbsp;đã được xác nhận sẽ vào vai nhân vật mới là Keith Kepler.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Đội ngũ sản xuất chính gồm có:</p><ul style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><li>Đạo diễn:&nbsp;<span style=\"font-weight: 700;\">Kazuhiro Furuhashi</span></li><li>Thiết kế nhân vật:&nbsp;<span style=\"font-weight: 700;\">Kazuaki Shimada</span></li><li>Âm nhạc:&nbsp;<span style=\"font-weight: 700;\">(K)NoW_NAME</span></li><li>Đạo diễn hoạt hình:&nbsp;<span style=\"font-weight: 700;\">Kyoji Asano, Kazuaki Shimada</span></li><li>Trợ lý đạo diễn:&nbsp;<span style=\"font-weight: 700;\">Takashi Katagiri, Norihito Takahashi, Takahiro Harada</span></li><li>Màu sắc:&nbsp;<span style=\"font-weight: 700;\">Ken Hashimoto</span></li></ul><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/049899c7b0015ed2_120ac9f984658372_11068116561745711185710.jpg\" style=\"width: 800px;\"><span style=\"font-weight: 700;\"><br></span></p>', 'hh', 'hh', NULL, NULL, NULL, NULL, '27-06-2022 17:56:30', 'June', NULL, NULL),
(27, 3, 11, 2, 2, 1, 'LYCORIS RECOIL - COFFEE \"DEPARTMENT\"!', 'LYCORIS RECOIL - QUÁN CÀ PHÊ \"BÁCH HÓA\"!', 'image/postimg/62b98d6fb9245.jpg', '<p>The cast involved in the project include: Chika Anzai as Chisato Nishikigi who is always smiling Shion Wakayama plays the reserved and serious Takina Inoue Ami Koshimizu as Mizuki Nakahara, about 30 years old and expecting results Misaki Kuno plays Kurumi who doesn\'t want to work Kosuke Sakaki as Mika, the cafe manager</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/9ba9a9110b010b82_ed9a1da692183aff_39931916560884553185710.jpg\" style=\"width: 710px;\"></p><p><b>The anime is the \"debut\" of director Adachi. Prior to this anime, Adachi was the character designer and art director for Sword Art Online and Wagnaria!!. Imigimuru will design and A-1 Pictures will produce the project. Ben-To author Asaura will draft the story. Kimika Onai designed the characters\' uniforms. ClariS was recently confirmed to perform the project\'s opening song \"ALIVE\"</b></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/8ad9b158137d9e1b_81581c5548bc77ca_38106216560884991185710.jpg\" style=\"width: 710px;\"><b><br></b><br></p>', '<p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Dàn diễn viên tham gia vào dự án bao gồm:<br></p><ul style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><li><span style=\"font-weight: 700;\">Chika Anzai&nbsp;</span>vào vai Chisato Nishikigi luôn luôn mỉm cười<br></li><li><span style=\"font-weight: 700;\">Shion Wakayama</span>&nbsp;vào vai Takina Inoue dè dặt và rất nghiêm túc<br></li><li><span style=\"font-weight: 700;\">Ami Koshimizu&nbsp;</span>vào vai Mizuki Nakahara, khoảng chừng 30 tuổi và đang mong đợi kết quả<br></li><li><span style=\"font-weight: 700;\">Misaki Kuno&nbsp;</span>vào vai Kurumi, người này thì chả muốn làm việc<br></li><li><span style=\"font-weight: 700;\">Kosuke Sakaki&nbsp;</span>vào vai Mika, quản lý quán cà phê</li></ul><p><img src=\"https://s199.imacdn.com/ta/2022/06/24/9ba9a9110b010b82_ed9a1da692183aff_39931916560884553185710.jpg\" style=\"font-size: 0.875rem; font-weight: initial; width: 710px;\"></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Bộ anime chính là màn \"debut\" của đạo diễn&nbsp;<span style=\"font-weight: 700;\">Adachi</span>. Trước anime này, Adachi là nhà thiết kế nhân vật và đạo diễn diễn họa cho Sword Art Online và Wagnaria!!.&nbsp;<span style=\"font-weight: 700;\">Imigimuru&nbsp;</span>sẽ thiết kế và<span style=\"font-weight: 700;\">&nbsp;A-1 Pictures</span>&nbsp;sản xuất dự án. Tác giả&nbsp;<span style=\"font-weight: 700;\">Asaura&nbsp;</span>của Ben-To sẽ soạn thảo câu chuyện.&nbsp;<span style=\"font-weight: 700;\">Kimika Onai&nbsp;</span>thiết kế đồng phục của các nhân vật.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">ClariS&nbsp;</span>mới đây đã được xác nhận sẽ trình bày ca khúc mở đầu \"ALIVE\" của dự án</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/06/24/8ad9b158137d9e1b_81581c5548bc77ca_38106216560884991185710.jpg\" style=\"width: 710px;\"><br></p>', 'hh', 'hh', NULL, NULL, NULL, NULL, '27-06-2022 17:58:55', 'June', NULL, NULL),
(28, 4, 8, 2, 2, 1, 'HATARAKU SAIBOU STORY MANGA ABOUT WBC\'S WILL END IN JULY!', 'MANGA NGOẠI TRUYỆN HATARAKU SAIBOU VỀ BẠCH CẦU SẼ KẾT THÚC VÀO THÁNG 7!', 'image/postimg/62b98e1bca114.jpg', '<p>Recently, in the August issue of Kodansha\'s Monthly Shonen Sirius magazine, it was announced that Tetsuji Kanie\'s Hataraku Saibou WHITE (Cells at Work! White Brigad) manga will end in the next issue in September. ie next July 26th.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/00b4648908c29c2e_0a753ee461d37746_27060516561733795185710.jpg\" style=\"width: 800px;\"></p><p>Kanie launched the spin-off manga based on Akane Shimizu\'s Hataraku Saibou in Monthly Shonen Sirius magazine in October 2020. Kodansha Publishing released the third volume on March 9. .</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/22af615698efe203_6c2a20d53c22619a_37995216561734671185710.jpg\" style=\"width: 800px;\"><br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Mới đây, trên tạp chí Monthly Shonen Sirius số tháng 8 của nhà xuất bản Kodansha đã thông tin rằng bộ manga Hataraku Saibou WHITE (Cells at Work! White Brigad) của tác giả Tetsuji Kanie sẽ kết thúc trong số tiếp theo vào tháng 9, tức là vào ngày 26 tháng 7 sắp tới.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/00b4648908c29c2e_0a753ee461d37746_27060516561733795185710.jpg\" style=\"width: 800px;\"></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Kanie đã cho ra mắt manga ngoại truyện trên được dựa theo Hataraku Saibou của tác giả Akane Shimizu trong tạp chí Monthly Shonen Sirius vào tháng 10 năm 2020. Nhà xuất bản Kodansha đã cho phát hành tập truyện thứ 3 vào ngày 9 tháng 3 vừa qua.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/25/22af615698efe203_6c2a20d53c22619a_37995216561734671185710.jpg\" style=\"width: 800px;\"><br></p>', 'hh', 'hh', NULL, NULL, NULL, NULL, '27-06-2022 18:01:47', 'June', NULL, NULL),
(29, 4, 12, 4, 3, 1, 'MANGA NIEHIME TO KEMONO NO OU - BEAUTY AND MONSTER HAS A STORY!', 'MANGA NIEHIME TO KEMONO NO OU - NGƯỜI ĐẸP VÀ QUÁI VẬT SẼ CÓ NGOẠI TRUYỆN!', 'image/postimg/62b9ae416d551.jpg', '<p>On Monday, this year\'s 14th issue of Hakusensha\'s Hana to Yume magazine confirmed Yu Tomofuji\'s Niehime to Kemono no Ou (Sacrificial Princess &amp; the King of Beasts) manga. There will be a side story work in the upcoming 18th issue.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/20/1a6e60945072331c_ae6571fa7a68cf8a_12047816557183245185710.jpg\" style=\"width: 800px;\"></p><p>According to information from the magazine, the 18th issue will be released on August 20. Recently, the manga also had a side story chapter in The Hana to Yume magazine, \"sister\" to Hana to Yume magazine on April 26 this year.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/20/e45e6deb8187f38c_d677b9df496080f5_6663216557184195185710.jpg\" style=\"width: 550px;\"></p><p>The story revolves around a young girl who is doomed to become the next sacrifice to the Beast King... but this king is more than just a monster! Love is more than flesh in this beautiful fantasy manga.<br></p>', '<p><span style=\"font-weight: 700;\">Vào hôm thứ hai vừa qua, trên số thứ 14 năm nay của tạp chí Hana to Yume do nhà xuất bản Hakusensha phát hành, đã xác nhận manga Niehime to Kemono no Ou (Sacrificial Princess &amp; the King of Beasts) của tác giả Yu Tomofuji sẽ có tác phẩm ngoại truyện trong số thứ 18 sắp tới.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/20/1a6e60945072331c_ae6571fa7a68cf8a_12047816557183245185710.jpg\" style=\"width: 800px;\"></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Theo thông tin từ tạp chí, số thứ 18 sẽ được phát hành vào ngày 20 tháng 8 sắp tới.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Gần đây, manga cũng đã có một chương truyện bên lề trên tạp chí The Hana to Yume, \"chị em\" với tạp chí Hana to Yume vào ngày 26 tháng 4 năm nay.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/06/20/e45e6deb8187f38c_d677b9df496080f5_6663216557184195185710.jpg\" style=\"width: 550px;\"></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><i>Câu chuyện xoay quanh cô gái trẻ đã cam chịu trở thành kẻ hiến tế tiếp theo cho Vua Thú... nhưng vị vua này không chỉ là một con quái vật đơn thuần! Tình yêu còn hơn cả da thịt trong bộ truyện tranh giả tưởng tuyệt đẹp này.</i><br></p>', 'anime', 'anime', NULL, NULL, NULL, NULL, '27-06-2022 20:18:57', 'June', NULL, NULL),
(30, 4, 12, 4, 3, 1, 'THE SOLID HORRIBLE MANGA THAT AKAGO HIGAN WILL BE HAPPENING TO THE READING THIS JULY!', 'MANGA KINH DỊ RÙNG RỢN AKAGO HIGAN SẼ CHIA TAY ĐỘC GIẢ VÀO GIỮA THÁNG 7 NÀY!', 'image/postimg/62b9afa1c9132.jpg', '<p>Not long ago, in the July issue of Monthly Sunday GX magazine published by Shogakukan, it was confirmed that Yuuki Iinuma\'s Akago Higan manga will officially end in the next issue to be published on the 19th. next July.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/20/b51a80bb25303e68_9794a73e3f2b5be7_10809616557194675185710.jpg\" style=\"width: 800px;\"></p><p>The series revolves around Umeko Tachiki, a doctor who is trusted by patients and loves children. She once expressed her desire to have children with her husband. One night, tragedy broke out in the hospital when monsters started appearing and killing everyone but the source of all the monsters was the children in the hospital.</p><p><img src=\"https://s199.imacdn.com/ta/2022/06/20/28d1bfd980c78eb1_a2a5ec815943ac97_13657916557195319185710.jpg\" style=\"width: 706px;\"><br></p>', '<p><span style=\"font-weight: 700;\">Cách đây không lâu, trên số tháng 7 của tạp chí Monthly Sunday GX do nhà xuất bản Shogakukan phát hành, đã xác nhận bộ manga Akago Higan của tác giả Yuuki Iinuma sẽ chính thức kết thúc trong số tiếp theo được ra mắt vào ngày 19 tháng 7 sắp tới.</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/20/b51a80bb25303e68_9794a73e3f2b5be7_10809616557194675185710.jpg\" style=\"width: 800px;\"></p><p><i style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Bộ truyện xoay quanh Umeko Tachiki, một bác sĩ được bệnh nhân tin tưởng và rất yêu mến trẻ em. Cô từng bày tỏ mong muốn có con với chồng của mình. Một đêm, bi kịch nổ ra trong bệnh viện khi những con quái vật bắt đầu xuất hiện và giết chết tất cả mọi người mà nguồn gốc của tất cả những con quái vật là những đứa trẻ trong bệnh viện.</i></p><p><img src=\"https://s199.imacdn.com/ta/2022/06/20/28d1bfd980c78eb1_a2a5ec815943ac97_13657916557195319185710.jpg\" style=\"width: 706px;\"><i style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></i><br style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"></p>', 'anime', 'anime', NULL, NULL, NULL, NULL, '27-06-2022 20:24:49', 'June', NULL, NULL),
(31, 6, 13, 2, 2, 1, 'THE WOMAN AND COSER HIKARI WILL COME TO PERFORM AT JAPAN EXPO IN FRANCE!', 'NỮ CA SĨ KIÊM COSER HIKARI SẼ ĐẾN TRÌNH DIỄN TẠI JAPAN EXPO Ở PHÁP!', 'image/postimg/62b9b3cb2a3ff.jpg', '<p>Recently, female singer and coser Hikari - an international singer who specializes in covering JPOP songs, especially songs about anime and Vocaloid, has confirmed to perform at the JAPAN EXPO event held in France on the same day. July 14 to July 17 is coming.</p><p><img src=\"https://s199.imacdn.com/ta/2022/04/15/bec5be1ac5390c84_e0536875f3425fb6_5826016499914814185710.jpg\" style=\"width: 800px;\"></p><p>JANPAN EXPO is the world\'s largest Japanese cultural festival, expected to attract more than 250,000 people within 4 days of the event. This will be the second international event with Hikari\'s participation, after HYPER JAPAN ONLINE 2021 - the largest Japanese cultural festival in the UK to be held in July 2021. At JAPAN EXPO, she will perform. performing two live concerts and one cosplay stage appearance, as well as signing autographs once a day for the 4 days of the event. This is also the first time the female artist participates in an event with the audience.</p><p><img src=\"https://s199.imacdn.com/ta/2022/04/15/90b145298a6c9047_61441a4b424f8f2e_16031416499916439185710.jpg\" style=\"width: 800px;\"><br></p>', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Mới đây, nữ ca sĩ kiêm coser Hikari - một ca sĩ quốc tế chuyên cover các ca khúc JPOP, đặc biệt là các bài hát về anime lẫn Vocaloid, đã xác nhận sẽ trình diễn tại sự kiện JAPAN EXPO tổ chức ở Pháp vào ngày 14 tháng 7 đến ngày 17 tháng 7 sắp tới.&nbsp;</span></p><p><img src=\"https://s199.imacdn.com/ta/2022/04/15/bec5be1ac5390c84_e0536875f3425fb6_5826016499914814185710.jpg\" style=\"width: 800px;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">JANPAN EXPO chính là lễ hội văn hóa Nhật Bản lớn nhất thế giới, dự kiến sẽ thu hút hơn 250.000 người trong vòng 4 ngày tổ chức sự kiện. Đây sẽ là sự kiện quốc tế thứ 2 có sự tham gia của Hikari, sau HYPER JAPAN ONLINE 2021 - lễ hội văn hóa Nhật Bản lớn nhất tại Vương quốc Anh được tổ chức vào tháng 7 năm 2021. Tại JAPAN EXPO, cô sẽ biểu diễn hai buổi hòa nhạc trực tiếp và một lần xuất hiện trên sân khấu cosplay, cũng như ký tặng mỗi ngày một lần trong 4 ngày sự kiện. Đây cũng là lần đầu nữ nghệ sĩ tham gia một sự kiện với khán giả.</span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></span><img src=\"https://s199.imacdn.com/ta/2022/04/15/90b145298a6c9047_61441a4b424f8f2e_16031416499916439185710.jpg\" style=\"width: 800px;\"><br></p>', 'law', 'law', NULL, NULL, NULL, NULL, '27-06-2022 20:42:35', 'June', NULL, NULL);
INSERT INTO `posts` (`id`, `category_id`, `subcategory_id`, `district_id`, `subdistrict_id`, `user_id`, `title_en`, `title_vn`, `image`, `details_en`, `details_vn`, `tags_en`, `tags_vn`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(32, 2, 3, 2, 2, 1, 'A SPECIAL INTRODUCTION HAS BEEN ANNOUNCED TO HAPPY BIRTHDAY OF HINATA SHOYO (HAIKYUU!!)', 'MỘT ĐOẠN GIỚI THIỆU ĐẶC BIỆT ĐÃ ĐƯỢC CÔNG BỐ ĐỂ CHÚC MỪNG SINH NHẬT CỦA HINATA SHOYO (HAIKYUU!!)', 'image/postimg/62b9bd953ba8a.jpg', '<p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\">June 21, the day Hinata Shoyo (Haikyuu!!) was born and a special trailer was released to celebrate this special day. This is the first project to celebrate the 10th anniversary of the manga\'s release on the official YouTube channel of JUMP COMICS.</font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\">Haruichi Furudate wrote and drew the original Haikyuu manga, serialized in Weekly Shonen Jump from 2012 to 2020. The manga ended with 405 chapters, and compiled into 45 vol.</font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\">Production IG is the studio that produced the anime adaptation. With the last season airing almost 2 years ago, fans are excited to see what\'s new to Hinata Shoyo in this special trailer. Let\'s hope we can see the remaining games of the Karasuno high school volleyball team in anime form soon.</font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\">Hinata Shouyou, a middle school student who dreams of becoming a volleyball player. After recruiting enough members, he was able to participate in the first match of his life that he had been waiting for in 3 years. Unfortunately, in the first match of the qualifying round, Shouyou encountered Kageyama Tobio, who was known as the \"King of the Court\". Although his team was eliminated, Shouyou still tried to practice to beat Kageyama one day.</font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\">In high school, Shouyou chose Karasuno, the school that once had an athlete who brought his passion for volleyball. With a new club, new teammates, Shouyou is determined to go with a new team to surpass Kageyama, but, things are unexpected...</font></p>', '<p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">Ngày 21 tháng 6, ngày Hinata Shoyo (Haikyuu!!) ra đời và một đoạn giới thiệu đặc biệt đã được phát hành để chúc mừng ngày đặc biệt này. Đây là dự án kỉ niệm đầu tiên của sự kiện kỉ niệm 10 năm manga phát hành trên kênh YouTube chính thức của JUMP COMICS.&nbsp;</span></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></p><div id=\"ta-179277\" class=\"player note-video-clip\" style=\"position: relative; margin: 0px auto; padding: 0px; background: rgb(0, 0, 0); overflow: hidden; outline: none; width: 660px; height: 371px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><iframe src=\"https://tinanime.com/embed/179277\" style=\"outline: none; border-width: initial; border-style: none; position: relative; margin: 0px auto; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow: hidden; width: 660px; height: 371px;\"></iframe></div><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Haruichi Furudate là người đã viết và vẽ cho nguyên tác manga Haikyuu, được đăng nhiều kỳ trên Weekly Shonen Jump từ năm 2012 đến năm 2020. Manga kết thúc với 405 chương, và được biên soạn thành 45 vol.</p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Production IG là studio đã sản xuất chuyển thể anime. Với mùa cuối cùng đã phát sóng cách đây gần 2 năm, người hâm mộ rất vui khi thấy những điều mới mẻ của Hinata Shoyo trong đoạn giới thiệu đặc biệt này. Hãy hy vọng chúng ta có thể sớm xem các trận đấu còn lại của đội bóng chuyền trường Karasuno ở dạng anime.</p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/06/20/923c990963fc3371_474630fd6fd9c334_6932816557430986769722.jpg\" style=\"border: 0px; display: block; margin: auto; max-width: 100%; padding: 10px 0px 0px;\"></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255); margin-left: 25px;\"><i>Hinata Shouyou, một học sinh cấp 2 ấp ủ mong ước trở thành một vận động viên bóng chuyền. Sau khi chiêu mộ được đủ thành viên, cậu đã có thể tham gia trận đấu đầu tiên trong đời mà cậu đã mong chờ trong suốt 3 năm. Tiếc thay, ngay trận đầu tiên của vòng loại, Shouyou đã đụng độ Kageyama Tobio, người được mệnh danh \"Vua sân đấu\". Mặc dù đội bóng của cậu đã bị loại nhưng Shouyou vẫn cố gắng luyện tập để có ngày đánh bại được Kageyama.</i></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255); margin-left: 25px;\"><i>Lên cấp 3, Shouyou đã chọn Karasuno, trường từng sở hữu vận động viên đã mang lại niềm đam mê bóng chuyền cho cậu. Cùng câu lạc bộ mới, những đồng đội mới, Shouyou quyết tâm sẽ cùng đội bóng mới sẽ vượt mặt Kageyama, nhưng, mọi chuyện đâu có ngờ...</i></p>', 'wdfadsf', 'sdfsdf', NULL, 1, NULL, NULL, '27-06-2022 21:24:21', 'June', NULL, NULL),
(33, 7, 5, 4, 3, 1, 'ORGANIZING ATTACK ON TITAN SPECIAL EVENT ON NOVEMBER 13', 'TỔ CHỨC SỰ KIỆN ĐẶC BIỆT CỦA ATTACK ON TITAN SẼ DIỄN RA VÀO NGÀY 13 THÁNG 11', 'image/postimg/62b9bde96eace.jpg', '<p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\">A special Attack on Titan event will be held on November 13, including a concert by Kohta Yamamoto and a special stage featuring the anime\'s voice actors. In addition to Yamamoto, Attack on Titan Final Season film composer Hiroyuki Sawano, Yuko Ando and Ai Higuchi are also expected to appear along with other vocalists.</font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\">Yuko Ando and Ai Higuchi will appear in the second half of the event with the participation of several main actors: Yuki Kaji (Eren), Yui Ishikawa (Mikasa), Marina Inoue (Armin), Hiro Shimono (Connie), Kisho Taniyama (Jean), Romi Park (Hange), and Ayane Sakura (Gabi).</font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\">The event will take place at the Tachikawa Stage Garden and tickets are available for purchase now. Children under school age are not allowed in and in the event that too many people file a complaint, a draw will be held for a final decision.</font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\"><br></font></p><p style=\"background-color: rgb(255, 255, 255);\"><font color=\"#333333\" face=\"Open Sans, sans-serif\">Hundreds of years ago, humanity was almost destroyed by Titan - a giant creature, without intelligence and worst of all, it seems that they eat people alive just for fun, not for needs. survival needs. The few surviving humans have defended themselves by enclosing themselves in huge walls, taller than even the biggest Titans. One hundred years of peace passed... But one day, a giant Titan taller than the wall appeared. With just one kick, he destroyed a corner of the wall. Everything happened so quickly and unexpectedly, in just a moment the Titans had flattened everything and devoured anyone they caught before the extreme horror of the people here...</font></p>', '<p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700;\">Một sự kiện đặc biệt của Attack on Titan sẽ được tổ chức vào ngày 13 tháng 11, bao gồm buổi hòa nhạc của Kohta Yamamoto và một sân khấu đặc biệt có sự góp mặt của dàn diễn viên lồng tiếng cho anime. Ngoài Yamamoto, nhà soạn nhạc phim cho Attack on Titan Final Season, Hiroyuki Sawano, Yuko Ando và Ai Higuchi cũng được cho là sẽ xuất hiện cùng với các giọng ca khác.</span></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Yuko Ando và Ai Higuchi sẽ xuất hiện trong nửa sau sự kiện với sự góp mặt của một số diễn viên chính: Yuki Kaji (Eren), Yui Ishikawa (Mikasa), Marina Inoue (Armin), Hiro Shimono (Connie), Kisho Taniyama (Jean), Romi Park (Hange), và Ayane Sakura (Gabi).</p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/06/20/0e464a4b48ff0733_15efc0ed7fe79891_7439716557404386769722.jpg\" data-filename=\"filename\" style=\"border: 0px; display: block; margin: auto; max-width: 100%; padding: 10px 0px 0px;\"><br></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Sự kiện sẽ diễn ra tại vườn sân khấu Tachikawa và hiện tại đã có thể mua được vé. Trẻ em dưới độ tuổi đi học không được phép vào và trong trường hợp có quá nhiều người nộp đơn khiếu nại, ban tổ chức sẽ tổ chức bốc thăm để có quyết định cuối cùng.</p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><br></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"https://s199.imacdn.com/ta/2022/06/20/954b601fafb1b846_2170244cd05257d2_16046816557405824769722.jpg\" data-filename=\"filename\" style=\"border: 0px; display: block; margin: auto; max-width: 100%; padding: 10px 0px 0px;\"><br></p><p style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255); margin-left: 25px;\"><i>Hàng trăm năm về trước, loài người gần như bị diệt vong bởi Titan - một sinh vật khổng lồ, không có trí thông minh và tồi tệ nhất là dường như chúng ăn tươi nuốt sống con người chỉ vì niềm vui chứ không phải vì nhu cầu sinh tồn. Số ít nhân loại còn sống sót đã tự bảo vệ mình bằng cách nhốt mình trong những bức tường khổng lồ, cao hơn cả những Titan to lớn nhất. Một trăm năm yên ổn trôi qua... Nhưng đến một ngày, Titan khổng lồ cao hơn cả bức tường xuất hiện. Chỉ bằng một cú đá, gã đã phá hủy một góc tường thành. Mọi thứ diễn ra quá chóng vánh và bất ngờ, chỉ trong phút chốc Titan đã tràn vào san phẳng mọi thứ và ngấu nghiến bất cứ ai chúng bắt được trước sự kinh hoàng tột độ của người dân nơi đây...</i></p>', 'asdasdasd', 'dsadasd', NULL, 1, NULL, NULL, '27-06-2022 21:25:45', 'June', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prayers`
--

CREATE TABLE `prayers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fajr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `johor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magrib` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eaha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jummah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prayers`
--

INSERT INTO `prayers` (`id`, `fajr`, `johor`, `asor`, `magrib`, `eaha`, `jummah`, `created_at`, `updated_at`) VALUES
(1, '5:10 AM', '1:30 PM', '4:30 PM', '6:10 PM', '8:10 PM', '1:10 PM', NULL, NULL);

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
(1, 'Admin', 'api', NULL, NULL),
(2, 'Designer', 'api', NULL, NULL),
(3, 'Developer', 'api', NULL, NULL),
(4, 'Content', 'api', NULL, NULL);

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
(5, 1),
(6, 1),
(7, 1),
(9, 1),
(10, 1),
(5, 4);

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
('7jvW3K6b4hMHtEwpkrBJJFIXeDt3peqXFTn6CuVo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTmtwUm1TdTVRenNlSGR4N1VEdWYyeDA1dHBpQTlOaHJVNFdIRVZiSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lZGl0L3VzZXIvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoibGFuZyI7czozOiJlbmciO30=', 1656340342),
('AEET4grecMcb4NPUTXehyrgAFgOgKedm6w9LpUkl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVk1qZVJrVUR3ZVExaFlMQVNjckhKUzFQd01JRDdSY3lGZ2xKd3ZUUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdWJjYXRlL3Bvc3QvMS9BTklNRSUyMGNvbWluZyUyMG91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoibGFuZyI7czoyOiJ2biI7fQ==', 1656338288);

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

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'https://twitter.com/?lang=vi', 'https://www.youtube.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', NULL, NULL);

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
(1, '3', 'ANIME coming out', 'ANIME sắp ra', NULL, NULL),
(3, '2', 'Winter anime', 'ANIME mùa đông', NULL, NULL),
(4, '8', 'Cast', 'Diễn Viên', NULL, NULL),
(5, '7', 'Anime', 'Anime', NULL, NULL),
(6, '6', 'Cosplay hot', 'Cosplay hot', NULL, NULL),
(7, '5', 'Favorite character', 'Nhân vật yêu thích nhất', NULL, NULL),
(8, '4', 'Manga coming out', 'Manga sắp ra', NULL, NULL),
(10, '2', 'Spring ANIME', 'ANIME mùa xuân', NULL, NULL),
(11, '3', 'ANIME hot', 'ANIME hot', NULL, NULL),
(12, '4', 'Manga hot', 'Manga hot', NULL, NULL),
(13, '6', 'Cosplay trend', 'Cosplay theo xu hướng', NULL, NULL);

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
(2, '2', 'Chuong Duong', 'Chương Dương', NULL, NULL),
(3, '4', 'Hang Bot', 'Hàng Bột', NULL, NULL);

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
(8, 'benben', 'thuan@gmail.com', NULL, '$2y$10$tKFIHLffIpxtuZ4kBnsotuCKlIucVDIvhxp8Tg.rCvuGY0jVfvLkq', NULL, NULL, NULL, NULL, NULL, '2022-06-12 06:42:03', '2022-06-12 06:42:03'),
(52, 'tenten', 'benben@gmail.com', NULL, '$2y$10$lrbJdlJqHqspR4u/SEDA1.MiGbEsi7MfOw0IQTKYOIB1MR8uRQskK', NULL, NULL, NULL, NULL, NULL, '2022-06-15 02:10:31', '2022-06-15 02:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `embed_code`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Demon Slayer', 'SVhHhtG4DPM', '1', NULL, NULL),
(4, 'Kuroko', '2zX-Q2LrSEE', '0', NULL, NULL),
(5, 'Nhac', 'GJtz8b5b4tU', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_link`, `created_at`, `updated_at`) VALUES
(2, 'Laravel', 'https://laravel.com/docs/9.x', NULL, NULL),
(3, 'React JS', 'https://reactjs.org/', NULL, NULL),
(4, 'VueJS', 'https://vuejs.org/', NULL, NULL),
(5, 'Angular', 'https://angular.io/', NULL, NULL);

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
-- Indexes for table `livetvs`
--
ALTER TABLE `livetvs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `prayers`
--
ALTER TABLE `prayers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetvs`
--
ALTER TABLE `livetvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `prayers`
--
ALTER TABLE `prayers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
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
