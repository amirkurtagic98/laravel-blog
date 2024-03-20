-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 05:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_social_media`
--

CREATE TABLE `blog_social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bsm_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bsm_instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bsm_youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bsm_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_social_media`
--

INSERT INTO `blog_social_media` (`id`, `bsm_facebook`, `bsm_instagram`, `bsm_youtube`, `bsm_linkedin`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/larablog-official', 'https://www.instagram.com/larablog.official', 'https://www.youtube.com/user/larablog', 'https://www.linkedin.com/', NULL, '2024-03-17 10:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 10000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `ordering`, `created_at`, `updated_at`) VALUES
(2, 'App dev.', 1, '2024-03-19 11:14:01', '2024-03-20 10:14:34'),
(4, 'Web dev.', 2, '2024-03-20 09:41:42', '2024-03-20 10:14:34'),
(5, 'Languages', 3, '2024-03-20 09:41:57', '2024-03-20 10:13:10');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_16_105743_create_types_table', 1),
(6, '2024_03_17_100117_create_settings_table', 2),
(7, '2024_03_17_112755_create_blog_social_media_table', 3),
(8, '2024_03_19_114914_create_categories_table', 4),
(9, '2024_03_19_114931_create_subcategories_table', 4),
(10, '2024_03_19_134622_create_posts_table', 5),
(11, '2024_03_20_112757_update_posts_table', 6);

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
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `post_title`, `post_slug`, `post_content`, `post_tags`, `featured_image`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'How to upload and resize images', 'how-to-upload-and-resize-images', 'new test', 'laravel,javascript,Vue js', '1710860058_footballers-news.jpg', '2024-03-19 13:54:18', '2024-03-19 13:54:18'),
(3, 1, 1, 'Upload file with laravel', 'upload-file-with-laravel', '<p>Hey, we can use CKEDITOR</p>', 'laravel,javascript,Vue js', '1710861197_news1.jpg', '2024-03-19 14:13:17', '2024-03-19 14:13:17'),
(4, 1, 2, 'Build an app using Kotlin', 'build-an-app-using-kotlin', '<p>This content will have an image</p>\r\n\r\n<p><img alt=\"\" src=\"http://laravel-blog.com/storage/my1files/sandwich.jpg\" style=\"height:67px; width:100px\" /></p>', 'laravel,javascript,Vue js', '1710867955_fashion.jpg', '2024-03-19 14:45:08', '2024-03-20 10:36:37'),
(6, 1, 6, 'How to upload files in Codeigniter 4', 'how-to-upload-files-in-codeigniter-4', '<p>Commodo habitant taciti, phasellus quam, nibh sem hac gravida donec mauris semper. Aenean donec mattis, euismod ut, lacinia nostra rhoncus mollis tempus. Eu turpis laoreet lorem, donec volutpat ut, faucibus mauris habitant varius aliquet pellentesque potenti. Quisque curae, pellentesque donec vulputate. Donec tristique vel, cras tempor, sapien quisque at nibh senectus lorem dictum.</p>\r\n\r\n<p>Condimentum fringilla laoreet, in donec quam scelerisque. Lacinia risus nam, aenean cursus, felis aptent curae vel volutpat. Inceptos ad hac, enim semper, condimentum molestie turpis eleifend euismod. Tristique metus, rhoncus phasellus duis. Euismod nec tempus, netus himenaeos, orci taciti quam eros dui. Amet massa, nullam quis egestas. Justo litora varius, inceptos dictumst, commodo curabitur morbi hac orci. Dolor feugiat inceptos proin, fringilla himenaeos torquent, class gravida volutpat nunc enim velit dapibus et.</p>\r\n\r\n<p>Donec lorem orci nec, convallis phasellus massa, adipiscing justo sociosqu duis ligula donec etiam ultricies. Volutpat sodales suspendisse pulvinar, litora massa bibendum, magna porttitor nullam nostra libero facilisis potenti at. Class pretium cubilia, pharetra senectus, litora elementum sociosqu ornare quisque malesuada. Tristique egestas aliquet aenean, consectetur mollis laoreet purus porttitor. Velit potenti vestibulum, ultrices augue, vulputate habitasse in mauris cursus sit.</p>\r\n\r\n<p>Laoreet volutpat vestibulum, nullam ligula, luctus platea tristique ullamcorper massa fermentum malesuada. Aliquam at tempus, faucibus etiam semper venenatis aptent. Faucibus malesuada vehicula bibendum, facilisis vestibulum mauris, dictum habitant suspendisse morbi donec nisi. Ullamcorper bibendum tristique, duis rhoncus, nec eu ac inceptos id torquent. Hac platea feugiat, libero ultricies, enim senectus proin elementum taciti. Orci ac convallis, consequat conubia, nam nullam felis netus ante in. A pulvinar aliquet laoreet, lorem hendrerit ullamcorper, pretium risus magna convallis interdum nisl netus. Habitasse rutrum in nisi, potenti magna ipsum, mi vitae inceptos tincidunt fames amet cubilia elementum.</p>\r\n\r\n<p>Netus donec adipiscing, torquent etiam, mauris himenaeos ad varius gravida odio eget. Litora vitae etiam, pretium potenti laoreet senectus ullamcorper. Accumsan a massa, eros nullam libero amet ad. Sociosqu faucibus purus aptent, congue vivamus sapien, ullamcorper pretium et integer ac vestibulum aenean. Tristique consectetur aptent, fames magna, ornare placerat lorem fusce massa lobortis. Curabitur magna vivamus imperdiet, auctor suscipit gravida sollicitudin mi. Cubilia eu, lectus pharetra sagittis.</p>', 'laravel,javascript,Vue js', '1710931473_world-cup-news.jpg', '2024-03-20 09:44:33', '2024-03-20 10:58:50'),
(7, 1, 8, 'Upload files to server in Flutter', 'upload-files-to-server-in-flutter', '<p>Placerat litora curabitur, tempor nulla, egestas aenean primis tempus gravida blandit. Tincidunt quis phasellus posuere, et tristique ante, donec massa habitasse conubia ac id ultricies facilisis. Habitant facilisis arcu, cras eleifend, lorem curae orci nullam sagittis nibh. Turpis nunc cursus, phasellus congue, platea porta condimentum molestie ultricies. Lobortis varius, lacinia platea hac. Purus neque euismod, felis curabitur, in consectetur dictum litora lectus.</p>\r\n\r\n<p>Neque nec, pulvinar magna sagittis. Id nunc sociosqu feugiat, blandit in leo, consequat ornare molestie diam lacus turpis malesuada. Rhoncus laoreet urna, fusce vehicula, faucibus leo ut dui nulla mi. Consectetur pulvinar dui, risus sollicitudin massa habitant. Molestie ante pharetra senectus, faucibus etiam etiam, luctus tincidunt curae laoreet fringilla sed vel. Lacinia curabitur phasellus, aliquam quis dictumst fringilla aliquet. Ipsum venenatis id metus, augue rutrum duis, sapien quisque pretium euismod placerat et litora. Praesent integer, ullamcorper interdum morbi.</p>\r\n\r\n<p>Nisl lorem taciti, gravida justo, donec iaculis congue consequat sociosqu. Lectus ornare rhoncus quisque, massa porttitor consectetur, vel purus velit justo class aliquet. Placerat torquent sapien, auctor maecenas, sodales morbi metus class habitant pellentesque. Justo fringilla odio proin, tristique purus sociosqu, est vel praesent pellentesque platea massa mi leo. Laoreet etiam et, magna ad vitae mi sagittis. Et euismod mollis lectus, interdum pulvinar quis torquent scelerisque.</p>\r\n\r\n<p>Class sociosqu, adipiscing quam pellentesque auctor. Mattis felis dolor ad, at platea imperdiet, venenatis cubilia sed taciti auctor ornare nostra. Sagittis nulla, vivamus aliquam quisque. Ante pellentesque tellus, sapien non, sed potenti porta consectetur id pharetra augue. Dictum cubilia ut pellentesque, aptent ullamcorper elit, egestas commodo ultricies a vulputate tincidunt. Enim maecenas mauris, habitasse libero, non tortor scelerisque litora dictum facilisis est. Vivamus ullamcorper aliquam at, tellus aliquam nulla blandit netus.</p>\r\n\r\n<p>Risus fringilla fusce, curae sociosqu, quisque sit ultrices sapien posuere magna. Cubilia magna vulputate, nam massa himenaeos pretium. Primis posuere ut, tellus etiam egestas nulla id. Dolor et nisi, suscipit quam, fermentum platea gravida tortor donec duis. Porttitor pulvinar velit malesuada, fusce curae mattis, sodales consequat lacinia a eget praesent.</p>', 'laravel,javascript,Vue js', '1710931519_rappers-news.jpg', '2024-03-20 09:45:19', '2024-03-20 10:58:37'),
(8, 1, 7, 'CakePHP for beginners', 'cakephp-for-beginners', '<p>Sollicitudin euismod adipiscing, elit posuere massa senectus in. Cras malesuada accumsan, egestas felis aliquam placerat. Pharetra augue erat eget, interdum pellentesque nibh, tellus amet odio egestas vulputate lorem porta varius. Neque hendrerit congue donec, mattis aptent eget, adipiscing fusce aliquam malesuada elementum lorem nisi curae. Mollis quisque ut ad, phasellus varius volutpat, ultrices libero arcu aenean semper sit pellentesque hendrerit. Aenean et, laoreet leo magna netus. Eget vehicula cursus, tellus ac, dapibus proin pellentesque primis nullam pulvinar litora. Tempus aliquam elit odio, primis dictum ac, mollis tincidunt lorem eros suspendisse faucibus imperdiet duis. Aliquamsollicitudin faucibus, facilisis vel quisque rhoncus aliquam.</p>\r\n\r\n<p>Viverra elementum, tempor gravida tempus ut. Egestas eleifend massa, orci consectetur, ligula quis aliquam habitant quisque class. Cursus porta rhoncus senectus, quisque interdum amet, viverra in convallis maecenas enim aliquet elementum justo. Massa mi habitant, habitasse phasellus et vulputate nostra. Diam fames interdum, aptent rhoncus, justo quam sagittis porttitor malesuada tristique morbi. Hendrerit blandit, volutpat aliquet eros habitasse. Tellus justo, sit duis curabitur. Metus nullam ut, sodales malesuada vel in.</p>\r\n\r\n<p>Leo nisi aenean, imperdiet sodales, blandit at sem suscipit aliquam. Tincidunt nullam iaculis, lectus turpis vitae per. Neque sociosqu tortor, fusce hendrerit praesent ullamcorper. Vestibulum ullamcorper, enim rutrum porta. Molestie a ad conubia, tristique quisque diam, tempor aptent semper habitasse fusce arcu tortor odio. Velit ligula pellentesque pharetra, dapibus risus ullamcorper, tellus et est cubilia at suscipit posuere.</p>\r\n\r\n<p>Pharetra enim fames, accumsan quam, sem litora himenaeos lacus etiam donec. Neque egestas vehicula, pulvinar nunc, amet convallis duis bibendum primis ut. Nullam quis purus, quam nibh primis suspendisse donec. Convallis aliquam habitant, sit in, aliquet a risus aenean condimentum accumsan. Venenatis a urna semper, quisque lacinia cursus, convallis aptent libero posuere ultricies nam. Congue lorem, quis lobortis facilisis nulla. Blandit sodales mollis nam, nulla aenean eget, interdum hac aliquet ultrices lorem cubilia tortor cursus. Sollicitudin dictum ante nam, litora euismod tempor, odio curabitur eros risus augue duis. Est euismod feugiat, lacinia hac, sodales urna sem porta dapibus praesent. Blandit purus curabitur lorem, inceptos consequat luctus, fermentum metus eros ultricies dolor hac elementum in.</p>\r\n\r\n<p>Est sapien curabitur, nulla nibh lorem quisque posuere. Est fusce lobortis, morbi vestibulum per aliquam. Augue tincidunt ullamcorper, metus curabitur, consectetur nam sit ultrices scelerisque feugiat nisl. Curabitur lectus est, netus urna nostra orci. Porttitor suscipit, mollis lorem class. Tellus sed dolor sit, risus venenatis fames, maecenas aptent quis fermentum curae vestibulum. Eros lacinia quis, hendrerit pretium curae aliquet velit.</p>', 'laravel,javascript,Vue js', '1710931567_electronics.jpg', '2024-03-20 09:46:08', '2024-03-20 10:58:26'),
(9, 1, 9, 'How to upgrade Laptop RAM using three ways', 'how-to-upgrade-laptop-ram-using-three-ways', '<p>Dolor consequat faucibus, purus aliquam praesent donec. Vel malesuada dictumst, quis commodo vivamus euismod proin. Inceptos habitant massa, semper risus eros turpis. Phasellus consequat placerat, ad primis, congue vulputate aliquet ac proin purus. Ante dapibus etiam leo, est molestie donec, nulla nisi rhoncus sociosqu libero maecenas ligula habitant. Aptent a, vehicula proin lacus quis.</p>\r\n\r\n<p>Torquent ut habitant sapien, tincidunt cubilia sem porta hac. Tristique non neque, risus in elementum ut. Dui libero cursus etiam, litora condimentum varius, tempor facilisis sed magna nunc curae quisque. Mauris leo adipiscing convallis, ac quam dui fringilla senectus. Taciti nisl donec pellentesque, aptent varius aenean eu luctus. Per dolor congue augue, euismod tortor erat, cursus integer taciti nostra senectus nec.</p>\r\n\r\n<p>Pellentesque tellus laoreet faucibus, porttitor aenean nisi, potenti etiam accumsan dui enim massa id in. Commodo nisi neque nunc, mollis mattis molestie, ante luctus interdum risus eget duis scelerisque eu. Congue risus malesuada, vitae donec, per conubia at donec ipsum suspendisse tellus. Tellus gravida, arcu sagittis ipsum. Praesent egestas senectus mattis, nostra mi conubia, donec nisi suscipit vivamus massa imperdiet himenaeos congue. Netus mauris cursus pretium, platea cras aptent, proin metus imperdiet elementum donec varius. Dictumst magna aliquam, eros tempor justo morbi maecenas.</p>\r\n\r\n<p>Consequat cubilia, non massa habitant praesent. Commodo tempor sit tincidunt, conubia per quisque, sapien molestie non litora felis suspendisse fames cursus. Sollicitudin dolor rutrum platea, tincidunt faucibus eget, mauris eleifend aliquam integer id habitasse posuere. Sit tincidunt iaculis metus, donec etiam tempus, molestie ante vivamus neque mollis hac proin conubia. Est leo aliquam, non ipsum ut adipiscing posuere. Ligula egestas feugiat turpis, pellentesque donec aptent, aliquam venenatis vehicula dapibus cras curabitur eget. Urna magna, cras nulla fringilla. Ligula ultrices, nostra lacus himenaeos. Lacus primis vehicula, inceptos venenatis, luctus fringilla senectus maecenas massa.</p>\r\n\r\n<p>Donec nisi senectus, elementum eget, nec facilisis pulvinar potenti velit hac. Eu litora tellus curabitur, metus feugiat mollis, non quisque nostra augue magna adipiscing. Felis nisl, euismod libero sagittis tellus. Neque laoreet feugiat, scelerisque eros, primis nunc tortor lobortis class. Egestas justo et, ultrices semper, urna senectus leo sem nunc vulputate enim. Class eget dictumst in, nec luctus fames, justo potenti platea libero rutrum metus. Hac venenatis viverra ante, semper dapibus dictum, ut varius potenti sapien adipiscing tristique. Viverra cras curae mauris, morbi molestie lacinia, tellus tempor aptent duis neque nam vivamus dictumst. Eu gravida, arcu non vestibulum praesent. A aenean massa porta, ut amet venenatis, nostra nisl ante ligula egestas sem.</p>', 'laravel,javascript,Vue js', '1710932149_fashion.jpg', '2024-03-20 09:55:50', '2024-03-20 10:58:15'),
(10, 1, 1, 'How to remove file extension in laravel', 'how-to-remove-file-extension-in-laravel', '<p>Fusce lorem venenatis, blandit integer vitae elementum. Quis risus, vel elementum vitae ultrices. Felis eu hendrerit, mattis tincidunt, consequat ligula dictum turpis facilisis odio. Accumsan aenean, pulvinar ultrices nunc. Nec nisi, elementum netus orci auctor. Velit dictum, aenean orci ut felis.</p>\r\n\r\n<p>Lacus scelerisque sagittis, eros proin mauris duis augue. Metus quisque felis tellus, porta porttitor morbi, tempus adipiscing pulvinar turpis augue sollicitudin accumsan. Ut taciti, libero consequat quisque. Dictum placerat ornare felis, senectus porta vel, integer porttitor libero luctus risus curae ut. Dictumst pharetra quisque, dui vitae mattis felis integer. Libero sagittis sit sodales, praesent velit quam, nostra dictum curabitur ad varius scelerisque. Aptent elementum netus, quisque malesuada, taciti aenean venenatis justo conubia donec. Proin interdum, dapibus felis fringilla.</p>\r\n\r\n<p>Felis bibendum fusce, metus purus aptent vestibulum consectetur. Quam dictumst diam libero, turpis aenean suscipit, maecenas quis habitant tortor a aliquam convallis metus. Hac convallis aenean cras, a mi cursus, eros fringilla adipiscing curae tristique habitasse. Habitasse arcu torquent, vivamus himenaeos, molestie litora condimentum habitant elit. Lobortis inceptos semper fringilla, hac duis adipiscing, sapien proin diam nisi aliquam scelerisque purus curabitur. Mattis imperdiet nisi, velit sed, donec pellentesque sagittis lobortis semper.</p>\r\n\r\n<p>Neque etiam id, litora nostra libero quisque aenean. Nullam fringilla at, praesent aliquam per dictumst sollicitudin. Inceptos interdum molestie, rutrum litora cubilia dapibus. Congue venenatis, iaculis etiam nostra pellentesque. Phasellus rutrum leo, etiam velit, sem tempus mauris est elit. Iaculis vestibulum volutpat urna, rutrum fringilla integer, cubilia praesent ante habitasse class laoreet per duis. Ultricies tortor varius scelerisque, dui per nunc conubia facilisis.</p>\r\n\r\n<p>Ligula sodales aliquet massa, facilisis tellus vivamus sagittis placerat. Accumsan eleifend condimentum, amet malesuada leo aenean. Orci iaculis, odio velit praesent. Cursus consequat taciti, etiam hac fames praesent proin. Sit nunc rutrum id, risus vestibulum tristique, ullamcorper ut cras taciti nisi commodo curabitur. Sed himenaeos volutpat, ut ac commodo bibendum.</p>', 'laravel,javascript,Vue js', '1710934433_Mobile-Phones.png', '2024-03-20 10:33:54', '2024-03-20 10:58:01'),
(11, 1, 1, 'How to build your first CRUD app with Laravel and MySQL', 'how-to-build-your-first-crud-app-with-laravel-and-mysql', '<p>Et malesuada taciti, turpis pulvinar dui euismod porta. Netus rutrum, erat integer class. Cursus ut, torquent euismod duis sed. Ad condimentum taciti curabitur, ut mattis nec, tortor rutrum suscipit feugiat duis vehicula ante. Potenti tristique consectetur vel, magna tempor integer fringilla etiam. Fames aptent, gravida potenti pulvinar malesuada. Nisi non, feugiat cras volutpat. Dolor taciti, hendrerit nam per. Turpis taciti libero etiam, nisi consequat congue, non vitae mauris nulla tortor bibendum metus.</p>\r\n\r\n<p>Sed a taciti, vitae at tempor tristique urna. Convallis quam cubilia turpis, lorem metus commodo, tellus per cras ultrices porta malesuada leo mi. In pulvinar donec torquent, lorem vulputate aenean, lectus justo tempor neque primis lacus feugiat sociosqu. Fusce pretium eleifend, cras ullamcorper, tristique est vel hac ad gravida eros. Ipsum nec, platea posuere adipiscing. Ullamcorper quam ligula phasellus, consectetur sem massa, sociosqu vestibulum nec orci rhoncus eu.</p>\r\n\r\n<p>Per aenean varius blandit, luctus sapien sociosqu, laoreet suscipit augue porttitor hac curae tempus tincidunt. Curae proin ad, mi integer, quam conubia faucibus donec non velit. Proin elementum, donec ornare aptent. Senectus turpis vehicula, torquent id placerat vitae. Tortor potenti mollis, bibendum porttitor ullamcorper maecenas.</p>\r\n\r\n<p>Sagittis mi vitae molestie, porttitor a odio non risus. Fermentum nam vel, condimentum ligula in netus. Risus quisque fames elit, convallis placerat imperdiet netus dolor. Inceptos massa pellentesque, aptent euismod mauris nullam. Lacinia aenean dui, neque non pellentesque blandit dictum.</p>\r\n\r\n<p>Bibendum quisque id, hac congue, dapibus sapien porta etiam neque sollicitudin. Euismod hac, nibh nisi fusce. Lacus ad, integer vulputate velit quam. Ligula venenatis quis integer, faucibus eros phasellus, scelerisque etiam primis arcu leo neque luctus. Habitasse tempor fringilla urna, dictumst varius at, condimentum ullamcorper sociosqu diam ante viverra molestie. Odio rutrum, ac fringilla tristique. Ultrices nullam nam, vitae habitant varius dictumst. Auctor phasellus feugiat fermentum, hendrerit proin imperdiet, in ante ut potenti bibendum vivamus suscipit et.</p>', 'laravel,javascript,Vue js', '1710934698_household.jpg', '2024-03-20 10:38:18', '2024-03-20 10:57:50'),
(12, 1, 1, 'User authentication with laravel 9', 'user-authentication-with-laravel-9', '<p>Dapibus iaculis class, orci volutpat, aliquam ornare euismod ligula hendrerit magna quam. Blandit est at elit, condimentum litora ante, elementum ligula varius himenaeos sed tincidunt facilisis curabitur. Massa placerat, primis tristique scelerisque integer. Proin convallis eu auctor, bibendum suspendisse suscipit, ipsum varius placerat rhoncus aliquam curae. Nullam amet curabitur platea, erat ullamcorper lobortis, convallis mi felis aliquam tristique massa class purus. Tempus pellentesque nisi, placerat mauris eros phasellus id. Et tortor, ligula eleifend condimentum praesent.</p>\r\n\r\n<p>Senectus porta nullam eleifend, ad adipiscing tortor, donec sapien rhoncus etiam quam tempus duis nisl. Placerat ac urna, at quisque, duis aenean tincidunt ultricies faucibus ultrices. Semper imperdiet pharetra, aenean cubilia cursus fames. Aliquam aenean odio, sit vitae, id lectus luctus molestie sapien. Lorem luctus integer, nisi congue tellus nullam.</p>\r\n\r\n<p>Morbi consequat nec, arcu sem, molestie tempor lorem a quisque. Id eget ac, sit porttitor aenean eu. Ipsum lorem metus, varius sociosqu, potenti est cursus inceptos mi. Quis quam, fames donec laoreet consequat. Lobortis vivamus ultricies quisque, curae aenean nisl, eros porta vehicula commodo posuere fusce. Accumsan viverra rutrum, quisque maecenas, vestibulum commodo aenean eu libero ante. Aliquam morbi ultrices, vehicula est elit dictumst. Sed neque himenaeos aenean, laoreet potenti eu augue ligula. Ut neque augue, viverra mi, potenti sed praesent elementum litora semper. Et nullam, morbi justo semper.</p>\r\n\r\n<p>Netus egestas vestibulum, ante diam nibh potenti ornare. Fermentum sociosqu dui, tempus per curae laoreet aliquet. Laoreet praesent vivamus massa, sapien integer litora, posuere quisque donec convallis suspendisse egestas. Class nec risus orci, etiam netus aptent lorem senectus. Elit molestie, nulla eu amet hendrerit.</p>\r\n\r\n<p>Massa diam taciti, quis dui aenean in. Duis lacinia nulla, congue torquent, sagittis pulvinar non diam himenaeos sed. Velit inceptos laoreet, lacus ut, in et ullamcorper ac gravida nibh. Urna scelerisque blandit, class non, metus ut ultricies massa nisi habitasse mi. Sit orci himenaeos feugiat, vestibulum adipiscing convallis, aliquam donec urna consequat nibh odio sem ipsum. Nostra ligula sapien venenatis, potenti nullam lorem, quis dapibus adipiscing hac sagittis conubia. Ante fames nisl, cubilia tellus torquent mollis id. Ultrices sit, amet vivamus vestibulum. Consectetur imperdiet gravida, class diam ipsum tortor vitae. Blandit tempus tempor, urna class, suscipit ad taciti aliquet commodo.</p>', 'laravel,javascript,Vue js', '1710934743_soup.jpg', '2024-03-20 10:39:03', '2024-03-20 10:57:39'),
(13, 1, 1, 'Create Online Banking System using Laravel Framework', 'create-online-banking-system-using-laravel-framework', '<p>Rhoncus fusce dolor, aliquam pulvinar, dui inceptos dapibus class cubilia erat. Placerat commodo condimentum, ipsum a ultrices ullamcorper. Sed leo laoreet pharetra, id platea diam, sapien sem vivamus mollis vestibulum proin hac. Curae donec risus, aenean tristique sociosqu imperdiet eget. Faucibus nec curabitur, arcu venenatis, taciti ipsum ligula aptent augue justo sollicitudin. Tempor diam ultricies, magna varius cubilia scelerisque.</p>\r\n\r\n<p>Aenean est fames, molestie pretium, curabitur vel nisi sapien orci pellentesque odio. Volutpat mattis laoreet fermentum, nam maecenas vel ut malesuada. Inceptos torquent donec ultrices, pulvinar curabitur nisi, sodales lobortis pharetra gravida mollis odio fermentum dictumst. Donec urna ligula diam, leo fusce venenatis, eleifend nam nostra quam aliquet blandit enim lectus. Commodo quam elementum, tristique sit pretium enim etiam. Hac euismod bibendum, dictumst nisi quisque ad ut. Aptent ut vel luctus, donec conubia orci, suspendisse augue placerat adipiscing metus nibh tempus proin.</p>\r\n\r\n<p>Feugiat sociosqu blandit, nisi morbi ac rhoncus iaculis. Enim quisque faucibus, nisi pulvinar, egestas semper curabitur lobortis ligula. Primis class aptent, leo tempus rhoncus aenean. Dui varius sapien, netus aenean tristique interdum faucibus. Risus dapibus, lorem tincidunt hac.</p>\r\n\r\n<p>Ut congue accumsan, venenatis curabitur per vivamus. Augue class fringilla mattis, volutpat sit eleifend egestas tellus. Adipiscing ligula ultrices lacinia, arcu tortor cursus, tincidunt sociosqu litora aliquam consectetur augue. Mattis cras ultricies, integer tincidunt vel hendrerit inceptos. Felis cras quam tellus, scelerisque pharetra aptent, metus senectus purus risus neque praesent. Potenti mi fringilla, vestibulum torquent, curae viverra cubilia aenean senectus curabitur. Adipiscing libero consectetur at, velit faucibus vehicula, lectus condimentum viverra cubilia fames odio ultrices dolor. Mi porttitor imperdiet sapien, neque lectus rhoncus phasellus nunc. Venenatis conubia, cursus euismod quam.</p>\r\n\r\n<p>Tempus suspendisse pharetra, netus proin fermentum etiam. Aliquam elit fusce, vel rutrum nulla velit at. Hendrerit elit aliquam vehicula, pellentesque ultricies ut ut porta. Faucibus aenean, taciti condimentum volutpat consequat. Pulvinar eu, dictum consectetur amet semper. Pharetra potenti, mattis nunc sit.</p>', 'laravel,javascript,Vue js', '1710934835_fashion.jpg', '2024-03-20 10:40:35', '2024-03-20 10:57:29'),
(14, 1, 1, 'How to make login and register in laravel 9', 'how-to-make-login-and-register-in-laravel-9', '<p>Scelerisque sociosqu vel, lacinia tortor tempor lacus luctus. Sollicitudin vestibulum libero ornare, mauris litora odio diam proin. Ullamcorper rutrum rhoncus ad, dolor litora posuere, conubia vitae duis curabitur adipiscing ornare. Imperdiet molestie maecenas, fermentum mi, donec curabitur ligula accumsan morbi purus. Ultrices rutrum phasellus, maecenas ac, dolor arcu dui eleifend curabitur. Aliquam aenean amet bibendum, interdum rutrum orci risus mauris. Id suspendisse tristique imperdiet, platea bibendum et, hendrerit dictum quis libero vel gravida. Euismod aliquam magna, id condimentum, potenti aenean facilisis curabitur sed semper convallis. Lacinia ipsum nisi mi, sem hac libero in congue. Fusce consequat, mi fermentum tincidunt est.</p>\r\n\r\n<p>Dictum habitasse imperdiet pharetra, potenti turpis luctus vel commodo. Accumsan pretium, consectetur habitasse magna. Rutrum sodales gravida hendrerit, per habitant vestibulum tellus ut. Donec lobortis enim, etiam lectus, mattis sodales vitae quis non ut vel. Sagittis arcu tempus aliquam, malesuada scelerisque commodo, at platea ultricies nec netus accumsan. Augue inceptos, curae et lacus taciti.</p>\r\n\r\n<p>Libero purus congue, ipsum a etiametiam. Quisque non volutpat, primis aliquam, augue aliquet phasellus suspendisse donec condimentum. Lacinia sed hendrerit, vel senectus vivamus dolor. Molestie vulputate curabitur, est libero, ut praesent sit pellentesque litora. Semper mauris etiam, sociosqu suscipit, dapibus cursus faucibus suspendisse aliquam nibh hendrerit. Aenean neque pretium, quis porttitor, suspendisse diam urna luctus faucibus tristique.</p>\r\n\r\n<p>Vestibulum iaculis donec torquent, sagittis vel nulla imperdiet volutpat. Auctor sit scelerisque, platea tellus, semper nulla lacus molestie leo rhoncus condimentum. Erat at tempus, posuere blandit, eleifend turpis nam congue molestie enim. Laoreet malesuada mollis, egestas accumsan class libero in. Vitae donec, quisque commodo semper pulvinar.</p>\r\n\r\n<p>Pellentesque sollicitudin praesent sit, auctor nec aliquam proin mollis. Fames id commodo aptent, tristique molestie diam, integer congue pellentesque porta aenean donec ornare. Scelerisque lectus bibendum, phasellus mattis, litora libero purus nisl egestas semper mi. Venenatis proin dictum, magna class nec molestie enim. Mauris adipiscing platea laoreet, purus ut fames, mollis quisque nulla ipsum etiam cras et sagittis. Tellus hac rutrum ad, ut blandit aenean, non fusce nulla dapibus donec quisque laoreet primis.</p>', 'laravel,javascript,Vue js', '1710934876_book-slider-3.jpeg', '2024-03-20 10:41:17', '2024-03-20 10:57:16'),
(15, 1, 1, 'How to make middleware on laravel project', 'how-to-make-middleware-on-laravel-project', '<p>Est nulla magna tellus, blandit etiam nisi, iaculis netus luctus ac ut cras. Pulvinar cubilia purus, lectus senectus, quam malesuada arcu fusce cras adipiscing quis. Cubilia non nullam, dui egestas ultrices leo laoreet. Netus lobortis habitant, ultricies condimentum, mi aliquam aliquet dictum molestie. Porttitor tempor per, fames suspendisse, fusce ut duis orci urna. Orci ultricies fusce, aptent habitant torquent sem. Quisque vitae porta adipiscing, lacus primis conubia, tristique lectus vulputate facilisis tincidunt pellentesque malesuada. Arcu congue vel, tortor scelerisque, fermentum hendrerit pretium a non. Aenean netus luctus dolor, et donec elementum, aliquet amet velit tempor bibendum imperdiet a faucibus. Imperdiet cubilia, habitant feugiat faucibus sollicitudin.</p>\r\n\r\n<p>Hac turpis pretium augue, blandit at varius, maecenas curabitur fames ornare congue aenean etiam aliquam. At semper aptent vel, tristique tempus quisque, vivamus fusce arcu condimentum mauris erat metus. Gravida vel aliquam, mi hendrerit, orci ac vitae placerat sed semper. Netus duis consectetur massa, primis velit non, hac condimentum magna phasellus vestibulum a. Himenaeos mauris tortor accumsan, mollis tempus vitae, hac ultricies inceptos vehicula quisque litora sit. Risus phasellus elementum, metus leo, nulla sociosqu accumsan platea ornare ullamcorper. Curae pellentesque sed, elit ornare, inceptos diam etiam vulputate feugiat tortor. Sodales nec dapibus, congue suspendisse, quisque nunc lacus tristique etiam at.</p>\r\n\r\n<p>Vestibulum eu nulla, nullam mi, pulvinar euismod nam et convallis. Nisl ultricies, curae cursus accumsan vitae. Habitasse adipiscing facilisis donec, sociosqu congue pulvinar, mi ut lacinia aliquam velit interdum tellus. Et per aenean primis, placerat eleifend egestas, turpis sit inceptos vehicula rutrum suspendisse. Purus congue per, egestas ornare aliquam aptent habitant. Euismod pharetra placerat fusce, senectus vel pellentesque condimentum nostra. Est accumsan leo, imperdiet auctor, suscipit habitant donec nostra dolor eu.</p>\r\n\r\n<p>Molestie purus fames enim, nibh dapibus pretium, tristique phasellus cubilia amet lacinia lobortis convallis litora. Diam potenti malesuada, ipsum auctor, nisl per sed eu porttitor. Pulvinar ligula id velit, orci ante cursus, libero sodales pretium dapibus diam nunc venenatis interdum. Mattis quam sollicitudin, per litora, egestas diam fames turpis sit habitasse eros. Duis suscipit dolor, donec potenti, curabitur rutrum feugiat posuere congue lobortis velit. Dui sapien pellentesque, posuere imperdiet, gravida libero etiam potenti bibendum habitasse suspendisse. Volutpat vestibulum donec sed, tempus id consequat, augue nec nostra inceptos taciti quisque senectus turpis. Scelerisque molestie per sit, sodales nullam felis, in dictum commodo aenean feugiat primis torquent quam.</p>\r\n\r\n<p>Elit cursus, erat purus pharetra a. Etiam hendrerit mattis laoreet, accumsan a semper, luctus malesuada felis cursus facilisis congue posuere. Nulla tempus, magna varius non tristique. Amet lorem nibh, auctor non, placerat ad quisque gravida id pellentesque. Lectus iaculis hac, faucibus sit, quisque augue in facilisis at blandit. Cras ut sollicitudin vel, congue felis nisl nullam cubilia.</p>', 'laravel,javascript,Vue js', '1710934900_fried-rice.jpg', '2024-03-20 10:41:40', '2024-03-20 10:57:03'),
(16, 1, 1, 'Apply SEO Strategy on your Laravel project', 'apply-seo-strategy-on-your-laravel-project', '<p>Sociosqu nullam purus vestibulum, aenean gravida facilisis, habitant mattis viverra nisl at libero iaculis integer. Tortor hendrerit lectus, curae tincidunt, elit scelerisque nam molestie consectetur himenaeos fusce. Netus luctus iaculis pellentesque, nisi lorem primis, volutpat per dictum dui ultrices curae fusce. Lectus ornare interdum sit, imperdiet sociosqu consequat, vehicula cras quis risus vestibulum enim nisi. Ac justo himenaeos vel, felis elit proin, pellentesque blandit venenatis praesent risus eget aenean potenti. Iaculis sapien velit, proin mollis tristique suspendisse quisque. Quam odio scelerisque, lectus ultricies, non diam lobortis convallis potenti. Sapien diam, suspendisse curabitur velit neque. Ac molestie primis, mollis tristique, varius vitae fermentum nam nec.</p>\r\n\r\n<p>Id curabitur interdum hac, ultricies malesuada maecenas, curae ornare risus tellus leo lacinia massa. Volutpat tincidunt dictumst, fermentum felis, enim tortor congue lorem fringilla. Sit feugiat arcu facilisis, aenean fusce accumsan, nunc auctor non quam eros dolor proin. Viverra nam luctus, hac cras, etiam eget duis sociosqu fringilla. Mi rutrum, lobortis id pellentesque. Ultrices potenti, convallis odio erat suscipit. Euismod nec dapibus tortor, dui nostra mauris, scelerisque dictum arcu ut facilisis mattis posuere condimentum. Curabitur pretium tempus suscipit, ante a quisque, amet lectus magna lacinia iaculis fames. Consectetur feugiat, himenaeos urna fames.</p>\r\n\r\n<p>Phasellus aptent himenaeos aliquam, velit aliquet nibh, venenatis commodo ut id fringilla arcu porttitor in. Lorem egestas sit, curabitur arcu imperdiet mi vestibulum. Tristique turpis mauris platea, donec tortor sapien, elit nostra hendrerit dictum arcu sagittis malesuada quisque. Himenaeos vivamus aliquet, consequat ante quisque pulvinar lectus. Ante nunc dolor, vel condimentum lacus quisque interdum. Cras molestie sem et, interdum tristique consectetur, nisi nunc aenean massa pellentesque litora. Fames scelerisque consectetur maecenas, eleifend tempor varius, condimentum ultricies tortor eget ligula urna. Donec sem velit ad, nam cras etiam fames lorem.</p>\r\n\r\n<p>Id feugiat, hac velit luctus curabitur. Risus pellentesque, vehicula bibendum ante. Tincidunt ac lorem, sociosqu aliquam integer sed. Sociosqu cras adipiscing aliquam, potenti proin eleifend, viverra habitasse nostra molestie vulputate facilisis urna nisi. Quam ipsum molestie felis, taciti pellentesque lectus, fringilla nec litora consectetur nunc ac interdum. Aenean ullamcorper ante cubilia, hac aptent velit, sollicitudin ipsum aenean sem morbi quisque mollis. Praesent blandit donec, commodo eros, eleifend sem at imperdiet mi.</p>\r\n\r\n<p>Placerat adipiscing facilisis hac, vestibulum tempus viverra, nunc euismod neque mollis varius augue laoreet hendrerit. Orci vitae cursus, pretium per, proin eu dui aliquam justo. Augue donec aenean, eget suscipit, sagittis netus scelerisque per malesuada. Sagittis habitasse, bibendum condimentum potenti egestas. Dictum cursus conubia, dapibus cras, amet metus cubilia malesuada mauris.</p>', 'laravel,javascript,Vue js', '1710934964_laravel.jpeg', '2024-03-20 10:42:44', '2024-03-20 10:56:31'),
(17, 1, 1, 'Add paypal payment gateway to laravel project', 'add-paypal-payment-gateway-to-laravel-project', '<p>Sociosqu nullam purus vestibulum, aenean gravida facilisis, habitant mattis viverra nisl at libero iaculis integer. Tortor hendrerit lectus, curae tincidunt, elit scelerisque nam molestie consectetur himenaeos fusce. Netus luctus iaculis pellentesque, nisi lorem primis, volutpat per dictum dui ultrices curae fusce. Lectus ornare interdum sit, imperdiet sociosqu consequat, vehicula cras quis risus vestibulum enim nisi. Ac justo himenaeos vel, felis elit proin, pellentesque blandit venenatis praesent risus eget aenean potenti. Iaculis sapien velit, proin mollis tristique suspendisse quisque. Quam odio scelerisque, lectus ultricies, non diam lobortis convallis potenti. Sapien diam, suspendisse curabitur velit neque. Ac molestie primis, mollis tristique, varius vitae fermentum nam nec.</p>\r\n\r\n<p>Id curabitur interdum hac, ultricies malesuada maecenas, curae ornare risus tellus leo lacinia massa. Volutpat tincidunt dictumst, fermentum felis, enim tortor congue lorem fringilla. Sit feugiat arcu facilisis, aenean fusce accumsan, nunc auctor non quam eros dolor proin. Viverra nam luctus, hac cras, etiam eget duis sociosqu fringilla. Mi rutrum, lobortis id pellentesque. Ultrices potenti, convallis odio erat suscipit. Euismod nec dapibus tortor, dui nostra mauris, scelerisque dictum arcu ut facilisis mattis posuere condimentum. Curabitur pretium tempus suscipit, ante a quisque, amet lectus magna lacinia iaculis fames. Consectetur feugiat, himenaeos urna fames.</p>\r\n\r\n<p>Phasellus aptent himenaeos aliquam, velit aliquet nibh, venenatis commodo ut id fringilla arcu porttitor in. Lorem egestas sit, curabitur arcu imperdiet mi vestibulum. Tristique turpis mauris platea, donec tortor sapien, elit nostra hendrerit dictum arcu sagittis malesuada quisque. Himenaeos vivamus aliquet, consequat ante quisque pulvinar lectus. Ante nunc dolor, vel condimentum lacus quisque interdum. Cras molestie sem et, interdum tristique consectetur, nisi nunc aenean massa pellentesque litora. Fames scelerisque consectetur maecenas, eleifend tempor varius, condimentum ultricies tortor eget ligula urna. Donec sem velit ad, nam cras etiam fames lorem.</p>\r\n\r\n<p>Id feugiat, hac velit luctus curabitur. Risus pellentesque, vehicula bibendum ante. Tincidunt ac lorem, sociosqu aliquam integer sed. Sociosqu cras adipiscing aliquam, potenti proin eleifend, viverra habitasse nostra molestie vulputate facilisis urna nisi. Quam ipsum molestie felis, taciti pellentesque lectus, fringilla nec litora consectetur nunc ac interdum. Aenean ullamcorper ante cubilia, hac aptent velit, sollicitudin ipsum aenean sem morbi quisque mollis. Praesent blandit donec, commodo eros, eleifend sem at imperdiet mi.</p>\r\n\r\n<p>Placerat adipiscing facilisis hac, vestibulum tempus viverra, nunc euismod neque mollis varius augue laoreet hendrerit. Orci vitae cursus, pretium per, proin eu dui aliquam justo. Augue donec aenean, eget suscipit, sagittis netus scelerisque per malesuada. Sagittis habitasse, bibendum condimentum potenti egestas. Dictum cursus conubia, dapibus cras, amet metus cubilia malesuada mauris.</p>', 'laravel,javascript,Vue js', '1710935011_sql.png', '2024-03-20 10:43:31', '2024-03-20 10:56:14'),
(18, 1, 7, 'Upload file on server with CakePHP', 'upload-file-on-server-with-cakephp', '<p>Sociosqu nullam purus vestibulum, aenean gravida facilisis, habitant mattis viverra nisl at libero iaculis integer. Tortor hendrerit lectus, curae tincidunt, elit scelerisque nam molestie consectetur himenaeos fusce. Netus luctus iaculis pellentesque, nisi lorem primis, volutpat per dictum dui ultrices curae fusce. Lectus ornare interdum sit, imperdiet sociosqu consequat, vehicula cras quis risus vestibulum enim nisi. Ac justo himenaeos vel, felis elit proin, pellentesque blandit venenatis praesent risus eget aenean potenti. Iaculis sapien velit, proin mollis tristique suspendisse quisque. Quam odio scelerisque, lectus ultricies, non diam lobortis convallis potenti. Sapien diam, suspendisse curabitur velit neque. Ac molestie primis, mollis tristique, varius vitae fermentum nam nec.</p>\r\n\r\n<p>Id curabitur interdum hac, ultricies malesuada maecenas, curae ornare risus tellus leo lacinia massa. Volutpat tincidunt dictumst, fermentum felis, enim tortor congue lorem fringilla. Sit feugiat arcu facilisis, aenean fusce accumsan, nunc auctor non quam eros dolor proin. Viverra nam luctus, hac cras, etiam eget duis sociosqu fringilla. Mi rutrum, lobortis id pellentesque. Ultrices potenti, convallis odio erat suscipit. Euismod nec dapibus tortor, dui nostra mauris, scelerisque dictum arcu ut facilisis mattis posuere condimentum. Curabitur pretium tempus suscipit, ante a quisque, amet lectus magna lacinia iaculis fames. Consectetur feugiat, himenaeos urna fames.</p>\r\n\r\n<p>Phasellus aptent himenaeos aliquam, velit aliquet nibh, venenatis commodo ut id fringilla arcu porttitor in. Lorem egestas sit, curabitur arcu imperdiet mi vestibulum. Tristique turpis mauris platea, donec tortor sapien, elit nostra hendrerit dictum arcu sagittis malesuada quisque. Himenaeos vivamus aliquet, consequat ante quisque pulvinar lectus. Ante nunc dolor, vel condimentum lacus quisque interdum. Cras molestie sem et, interdum tristique consectetur, nisi nunc aenean massa pellentesque litora. Fames scelerisque consectetur maecenas, eleifend tempor varius, condimentum ultricies tortor eget ligula urna. Donec sem velit ad, nam cras etiam fames lorem.</p>\r\n\r\n<p>Id feugiat, hac velit luctus curabitur. Risus pellentesque, vehicula bibendum ante. Tincidunt ac lorem, sociosqu aliquam integer sed. Sociosqu cras adipiscing aliquam, potenti proin eleifend, viverra habitasse nostra molestie vulputate facilisis urna nisi. Quam ipsum molestie felis, taciti pellentesque lectus, fringilla nec litora consectetur nunc ac interdum. Aenean ullamcorper ante cubilia, hac aptent velit, sollicitudin ipsum aenean sem morbi quisque mollis. Praesent blandit donec, commodo eros, eleifend sem at imperdiet mi.</p>\r\n\r\n<p>Placerat adipiscing facilisis hac, vestibulum tempus viverra, nunc euismod neque mollis varius augue laoreet hendrerit. Orci vitae cursus, pretium per, proin eu dui aliquam justo. Augue donec aenean, eget suscipit, sagittis netus scelerisque per malesuada. Sagittis habitasse, bibendum condimentum potenti egestas. Dictum cursus conubia, dapibus cras, amet metus cubilia malesuada mauris.</p>', 'laravel,javascript,Vue js', '1710935088_PHP-logo.png', '2024-03-20 10:44:48', '2024-03-20 10:55:54'),
(19, 1, 7, 'Is CakePHP more easy than Codeigniter', 'is-cakephp-more-easy-than-codeigniter', '<p>Sociosqu nullam purus vestibulum, aenean gravida facilisis, habitant mattis viverra nisl at libero iaculis integer. Tortor hendrerit lectus, curae tincidunt, elit scelerisque nam molestie consectetur himenaeos fusce. Netus luctus iaculis pellentesque, nisi lorem primis, volutpat per dictum dui ultrices curae fusce. Lectus ornare interdum sit, imperdiet sociosqu consequat, vehicula cras quis risus vestibulum enim nisi. Ac justo himenaeos vel, felis elit proin, pellentesque blandit venenatis praesent risus eget aenean potenti. Iaculis sapien velit, proin mollis tristique suspendisse quisque. Quam odio scelerisque, lectus ultricies, non diam lobortis convallis potenti. Sapien diam, suspendisse curabitur velit neque. Ac molestie primis, mollis tristique, varius vitae fermentum nam nec.</p>\r\n\r\n<p>Id curabitur interdum hac, ultricies malesuada maecenas, curae ornare risus tellus leo lacinia massa. Volutpat tincidunt dictumst, fermentum felis, enim tortor congue lorem fringilla. Sit feugiat arcu facilisis, aenean fusce accumsan, nunc auctor non quam eros dolor proin. Viverra nam luctus, hac cras, etiam eget duis sociosqu fringilla. Mi rutrum, lobortis id pellentesque. Ultrices potenti, convallis odio erat suscipit. Euismod nec dapibus tortor, dui nostra mauris, scelerisque dictum arcu ut facilisis mattis posuere condimentum. Curabitur pretium tempus suscipit, ante a quisque, amet lectus magna lacinia iaculis fames. Consectetur feugiat, himenaeos urna fames.</p>\r\n\r\n<p>Phasellus aptent himenaeos aliquam, velit aliquet nibh, venenatis commodo ut id fringilla arcu porttitor in. Lorem egestas sit, curabitur arcu imperdiet mi vestibulum. Tristique turpis mauris platea, donec tortor sapien, elit nostra hendrerit dictum arcu sagittis malesuada quisque. Himenaeos vivamus aliquet, consequat ante quisque pulvinar lectus. Ante nunc dolor, vel condimentum lacus quisque interdum. Cras molestie sem et, interdum tristique consectetur, nisi nunc aenean massa pellentesque litora. Fames scelerisque consectetur maecenas, eleifend tempor varius, condimentum ultricies tortor eget ligula urna. Donec sem velit ad, nam cras etiam fames lorem.</p>\r\n\r\n<p>Id feugiat, hac velit luctus curabitur. Risus pellentesque, vehicula bibendum ante. Tincidunt ac lorem, sociosqu aliquam integer sed. Sociosqu cras adipiscing aliquam, potenti proin eleifend, viverra habitasse nostra molestie vulputate facilisis urna nisi. Quam ipsum molestie felis, taciti pellentesque lectus, fringilla nec litora consectetur nunc ac interdum. Aenean ullamcorper ante cubilia, hac aptent velit, sollicitudin ipsum aenean sem morbi quisque mollis. Praesent blandit donec, commodo eros, eleifend sem at imperdiet mi.</p>\r\n\r\n<p>Placerat adipiscing facilisis hac, vestibulum tempus viverra, nunc euismod neque mollis varius augue laoreet hendrerit. Orci vitae cursus, pretium per, proin eu dui aliquam justo. Augue donec aenean, eget suscipit, sagittis netus scelerisque per malesuada. Sagittis habitasse, bibendum condimentum potenti egestas. Dictum cursus conubia, dapibus cras, amet metus cubilia malesuada mauris.</p>', 'laravel,javascript,Vue js', '1710935113_java-logo.png', '2024-03-20 10:45:14', '2024-03-20 10:55:37'),
(20, 1, 7, 'Apply Security on CakePHP project', 'apply-security-on-cakephp-project', '<p>Morbi pulvinar dictum, condimentum sapien, elementum metus leo risus augue. Enim ipsum aliquam, lorem nisl varius libero. Etiam pellentesque adipiscing habitant, risus nisi torquent, odio eleifend dui cursus donec orci. Nec viverra dui eleifend, commodo sagittis justo, non augue placerat lacus pretium metus cubilia. Proin iaculis mollis felis, condimentum maecenas vehicula, urna adipiscing aptent porttitor nullam sodales magna. Pellentesque est a habitasse, scelerisque ad etiam, sed at bibendum congue rutrum orci aliquam aenean. Taciti lorem, aliquam sem varius vulputate. Curabitur commodo, nostra cubilia condimentum pellentesque. Nulla quis neque, litora duis vel potenti. Litora lobortis sollicitudin curae, fringilla auctor orci, class pellentesque metus conubia eget tempor cras accumsan.</p>\r\n\r\n<p>A porta nam, morbi vehicula, mollis faucibus velit litora laoreet lobortis. Gravida malesuada in, mauris netus, sapien sodales nisl faucibus mi lacus purus. Eleifend eros, consectetur aliquam integer nisl. Eu nunc lacinia quisque, vivamus dictumst nisi, et donec nullam faucibus at consequat a rutrum. Libero consectetur lobortis, tellus etiam, himenaeos enim nec nullam donec pulvinar. Etiam curabitur nulla, ante mauris, consectetur venenatis lacinia nostra potenti diam tortor. Proin nec justo eget, molestie magna purus, sollicitudin a aliquam mattis curabitur donec porta aenean. Vivamus commodo, sagittis etiam quam. Etiam odio, ac pellentesque bibendum. Rhoncus inceptos porttitor, condimentum fames egestas conubia tellus.</p>\r\n\r\n<p>Iaculis lacinia lectus, torquent non, posuere nisl justo sit tincidunt. Vel sodales lacus, consectetur nibh tristique euismod lacinia. Mollis congue tortor rhoncus, vel vivamus fusce, eu vehicula lacinia himenaeos ornare lorem cubilia ante. Luctus scelerisque ut vivamus, vitae nibh nunc sodales quisque. Tortor nisi curae, laoreet rhoncus, velit viverra taciti cras ante inceptos. Commodo quis, lacinia dui tincidunt bibendum. Mi neque odio, non tellus, aenean pellentesque litora conubia interdum netus mauris.</p>\r\n\r\n<p>Fusce platea elit, tempus himenaeos, maecenas senectus per vivamus sapien posuere. Vivamus posuere quisque nec, morbi aliquam nullam, taciti eros pulvinar ullamcorper ante rhoncus odio lobortis. Laoreet nibh tincidunt, porta mi mattis vel ad. Mattis lacus elit, semper quisque, lorem amet id nunc eget ut at. Feugiat non, diam mauris orci tristique.</p>\r\n\r\n<p>Rutrum aliquet orci lorem, accumsan cubilia vel, fermentum leo nisi donec felis sed venenatis nunc. Placerat nibh odio et, enim hendrerit interdum vivamus habitasse. Faucibus hendrerit, gravida lacus mi. Luctus accumsan convallis, massa rutrum auctor ultricies. Porta proin bibendum, aliquam sociosqu habitant accumsan neque. Sed facilisis posuere purus, ut inceptos integer, congue himenaeos potenti tempor aenean euismod. Facilisis duis ultricies, morbi nam, mauris velit enim sodales lacinia quisque.</p>', 'laravel,javascript,Vue js', '1710935137_nuxt-js-logo.png', '2024-03-20 10:45:38', '2024-03-20 10:55:18'),
(21, 1, 9, 'How to upgrade Laptop ROM using three ways', 'how-to-upgrade-laptop-rom-using-three-ways', '<p>Morbi pulvinar dictum, condimentum sapien, elementum metus leo risus augue. Enim ipsum aliquam, lorem nisl varius libero. Etiam pellentesque adipiscing habitant, risus nisi torquent, odio eleifend dui cursus donec orci. Nec viverra dui eleifend, commodo sagittis justo, non augue placerat lacus pretium metus cubilia. Proin iaculis mollis felis, condimentum maecenas vehicula, urna adipiscing aptent porttitor nullam sodales magna. Pellentesque est a habitasse, scelerisque ad etiam, sed at bibendum congue rutrum orci aliquam aenean. Taciti lorem, aliquam sem varius vulputate. Curabitur commodo, nostra cubilia condimentum pellentesque. Nulla quis neque, litora duis vel potenti. Litora lobortis sollicitudin curae, fringilla auctor orci, class pellentesque metus conubia eget tempor cras accumsan.</p>\r\n\r\n<p>A porta nam, morbi vehicula, mollis faucibus velit litora laoreet lobortis. Gravida malesuada in, mauris netus, sapien sodales nisl faucibus mi lacus purus. Eleifend eros, consectetur aliquam integer nisl. Eu nunc lacinia quisque, vivamus dictumst nisi, et donec nullam faucibus at consequat a rutrum. Libero consectetur lobortis, tellus etiam, himenaeos enim nec nullam donec pulvinar. Etiam curabitur nulla, ante mauris, consectetur venenatis lacinia nostra potenti diam tortor. Proin nec justo eget, molestie magna purus, sollicitudin a aliquam mattis curabitur donec porta aenean. Vivamus commodo, sagittis etiam quam. Etiam odio, ac pellentesque bibendum. Rhoncus inceptos porttitor, condimentum fames egestas conubia tellus.</p>\r\n\r\n<p>Iaculis lacinia lectus, torquent non, posuere nisl justo sit tincidunt. Vel sodales lacus, consectetur nibh tristique euismod lacinia. Mollis congue tortor rhoncus, vel vivamus fusce, eu vehicula lacinia himenaeos ornare lorem cubilia ante. Luctus scelerisque ut vivamus, vitae nibh nunc sodales quisque. Tortor nisi curae, laoreet rhoncus, velit viverra taciti cras ante inceptos. Commodo quis, lacinia dui tincidunt bibendum. Mi neque odio, non tellus, aenean pellentesque litora conubia interdum netus mauris.</p>\r\n\r\n<p>Fusce platea elit, tempus himenaeos, maecenas senectus per vivamus sapien posuere. Vivamus posuere quisque nec, morbi aliquam nullam, taciti eros pulvinar ullamcorper ante rhoncus odio lobortis. Laoreet nibh tincidunt, porta mi mattis vel ad. Mattis lacus elit, semper quisque, lorem amet id nunc eget ut at. Feugiat non, diam mauris orci tristique.</p>\r\n\r\n<p>Rutrum aliquet orci lorem, accumsan cubilia vel, fermentum leo nisi donec felis sed venenatis nunc. Placerat nibh odio et, enim hendrerit interdum vivamus habitasse. Faucibus hendrerit, gravida lacus mi. Luctus accumsan convallis, massa rutrum auctor ultricies. Porta proin bibendum, aliquam sociosqu habitant accumsan neque. Sed facilisis posuere purus, ut inceptos integer, congue himenaeos potenti tempor aenean euismod. Facilisis duis ultricies, morbi nam, mauris velit enim sodales lacinia quisque.</p>', 'laravel,javascript,Vue js', '1710935236_django.png', '2024-03-20 10:47:16', '2024-03-20 10:55:06');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `post_title`, `post_slug`, `post_content`, `post_tags`, `featured_image`, `created_at`, `updated_at`) VALUES
(22, 1, 9, 'Earn money by using free online platforms', 'earn-money-by-using-free-online-platforms', '<p>Interdum urna auctor, libero nunc nam aliquam. Eros pellentesque odio fermentum, leo tempor nulla neque purus. Convallis laoreet fames primis, dolor risus gravida, praesent nibh posuere euismod elit dictumst. Curabitur donec, gravida vehicula tristique. Facilisis sodales, duis tempus morbi. Laoreet pharetra nisl, ultricies cubilia hac praesent vulputate.</p>\r\n\r\n<p>Fermentum nunc orci, justo inceptos, sagittis feugiat habitasse venenatis sociosqu quam mollis. Viverra sodales quisque rutrum, ante bibendum habitasse gravida taciti. Lectus praesent tempor mollis, duis curabitur a eleifend sed. Hac orci, elit proin faucibus volutpat. Etiam pellentesque maecenas, feugiat primis accumsan a mollis. Ut quis donec, tellus enim, per lacus maecenas elementum habitasse eget vestibulum. Sollicitudin interdum ultricies, malesuada facilisis, magna curabitur mauris massa condimentum tellus libero.</p>\r\n\r\n<p>Tempor platea curae, ipsum integer, sed urna aliquam ligula nullam. Facilisis iaculis vel litora, morbi suspendisse at, laoreet eget suscipit ligula magna hac scelerisque taciti. Velit fames, sociosqu ipsum donec. Venenatis scelerisque, semper sodales primis mattis. Malesuada ante, platea massa elit aliquet. Porttitor sed libero, ac placerat, inceptos lobortis blandit ante maecenas habitant vehicula.</p>\r\n\r\n<p>Nunc feugiat, platea fermentum sapien. Blandit iaculis condimentum, dictumst aliquet, lorem curabitur vehicula congue quam. Commodo feugiat elementum primis, dolor sollicitudin dui, class sociosqu consectetur tempor integer platea. Conubia cras tincidunt, mollis semper, interdum luctus tristique rutrum dui. Ut orci adipiscing mollis, convallis odio lacinia semper scelerisque. Conubia ipsum nunc, dapibus vel etiam habitasse mauris. Venenatis tellus ligula, interdum sapien eros eleifend. Mauris et, aenean consequat nibh. Netus elit habitasse metus, mattis a venenatis praesent suspendisse.</p>\r\n\r\n<p>Lectus nibh, vestibulum venenatis fermentum. Torquent donec eget, vulputate suscipit, rhoncus molestie consectetur utut. Mauris himenaeos, litora phasellus enim convallis. Neque curae vitae, molestie suspendisse semper donec convallis. Ornare luctus curae molestie, condimentum morbi hac, feugiat quisque maecenas tortor vulputate commodo himenaeos accumsan. Non fermentum etiam, tellus pretium, fames dolor porta viverra at pulvinar dui. Cursus aptent, libero bibendum nibh elit. Litora nec congue rhoncus, taciti accumsan metus, ultricies donec integer ante lacus odio. Curabitur tincidunt ut, dictumst pellentesque, nostra interdum at purus adipiscing. Vulputate tellus maecenas ligula, in ut litora, condimentum commodo leo orci porta praesent rutrum.</p>', 'laravel,javascript,Vue js', '1710935285_css-logo.png', '2024-03-20 10:48:05', '2024-03-20 10:54:55'),
(23, 1, 9, 'How to replace crashed Hard disk on your computer', 'how-to-replace-crashed-hard-disk-on-your-computer', '<p>Interdum urna auctor, libero nunc nam aliquam. Eros pellentesque odio fermentum, leo tempor nulla neque purus. Convallis laoreet fames primis, dolor risus gravida, praesent nibh posuere euismod elit dictumst. Curabitur donec, gravida vehicula tristique. Facilisis sodales, duis tempus morbi. Laoreet pharetra nisl, ultricies cubilia hac praesent vulputate.</p>\r\n\r\n<p>Fermentum nunc orci, justo inceptos, sagittis feugiat habitasse venenatis sociosqu quam mollis. Viverra sodales quisque rutrum, ante bibendum habitasse gravida taciti. Lectus praesent tempor mollis, duis curabitur a eleifend sed. Hac orci, elit proin faucibus volutpat. Etiam pellentesque maecenas, feugiat primis accumsan a mollis. Ut quis donec, tellus enim, per lacus maecenas elementum habitasse eget vestibulum. Sollicitudin interdum ultricies, malesuada facilisis, magna curabitur mauris massa condimentum tellus libero.</p>\r\n\r\n<p>Tempor platea curae, ipsum integer, sed urna aliquam ligula nullam. Facilisis iaculis vel litora, morbi suspendisse at, laoreet eget suscipit ligula magna hac scelerisque taciti. Velit fames, sociosqu ipsum donec. Venenatis scelerisque, semper sodales primis mattis. Malesuada ante, platea massa elit aliquet. Porttitor sed libero, ac placerat, inceptos lobortis blandit ante maecenas habitant vehicula.</p>\r\n\r\n<p>Nunc feugiat, platea fermentum sapien. Blandit iaculis condimentum, dictumst aliquet, lorem curabitur vehicula congue quam. Commodo feugiat elementum primis, dolor sollicitudin dui, class sociosqu consectetur tempor integer platea. Conubia cras tincidunt, mollis semper, interdum luctus tristique rutrum dui. Ut orci adipiscing mollis, convallis odio lacinia semper scelerisque. Conubia ipsum nunc, dapibus vel etiam habitasse mauris. Venenatis tellus ligula, interdum sapien eros eleifend. Mauris et, aenean consequat nibh. Netus elit habitasse metus, mattis a venenatis praesent suspendisse.</p>\r\n\r\n<p>Lectus nibh, vestibulum venenatis fermentum. Torquent donec eget, vulputate suscipit, rhoncus molestie consectetur utut. Mauris himenaeos, litora phasellus enim convallis. Neque curae vitae, molestie suspendisse semper donec convallis. Ornare luctus curae molestie, condimentum morbi hac, feugiat quisque maecenas tortor vulputate commodo himenaeos accumsan. Non fermentum etiam, tellus pretium, fames dolor porta viverra at pulvinar dui. Cursus aptent, libero bibendum nibh elit. Litora nec congue rhoncus, taciti accumsan metus, ultricies donec integer ante lacus odio. Curabitur tincidunt ut, dictumst pellentesque, nostra interdum at purus adipiscing. Vulputate tellus maecenas ligula, in ut litora, condimentum commodo leo orci porta praesent rutrum.</p>', 'laravel,javascript,Vue js', '1710935328_react-logo.jpg', '2024-03-20 10:48:49', '2024-03-20 10:54:42'),
(24, 1, 9, 'How to start learning any programming language today', 'how-to-start-learning-any-programming-language-today', '<p>Interdum urna auctor, libero nunc nam aliquam. Eros pellentesque odio fermentum, leo tempor nulla neque purus. Convallis laoreet fames primis, dolor risus gravida, praesent nibh posuere euismod elit dictumst. Curabitur donec, gravida vehicula tristique. Facilisis sodales, duis tempus morbi. Laoreet pharetra nisl, ultricies cubilia hac praesent vulputate.</p>\r\n\r\n<p>Fermentum nunc orci, justo inceptos, sagittis feugiat habitasse venenatis sociosqu quam mollis. Viverra sodales quisque rutrum, ante bibendum habitasse gravida taciti. Lectus praesent tempor mollis, duis curabitur a eleifend sed. Hac orci, elit proin faucibus volutpat. Etiam pellentesque maecenas, feugiat primis accumsan a mollis. Ut quis donec, tellus enim, per lacus maecenas elementum habitasse eget vestibulum. Sollicitudin interdum ultricies, malesuada facilisis, magna curabitur mauris massa condimentum tellus libero.</p>\r\n\r\n<p>Tempor platea curae, ipsum integer, sed urna aliquam ligula nullam. Facilisis iaculis vel litora, morbi suspendisse at, laoreet eget suscipit ligula magna hac scelerisque taciti. Velit fames, sociosqu ipsum donec. Venenatis scelerisque, semper sodales primis mattis. Malesuada ante, platea massa elit aliquet. Porttitor sed libero, ac placerat, inceptos lobortis blandit ante maecenas habitant vehicula.</p>\r\n\r\n<p>Nunc feugiat, platea fermentum sapien. Blandit iaculis condimentum, dictumst aliquet, lorem curabitur vehicula congue quam. Commodo feugiat elementum primis, dolor sollicitudin dui, class sociosqu consectetur tempor integer platea. Conubia cras tincidunt, mollis semper, interdum luctus tristique rutrum dui. Ut orci adipiscing mollis, convallis odio lacinia semper scelerisque. Conubia ipsum nunc, dapibus vel etiam habitasse mauris. Venenatis tellus ligula, interdum sapien eros eleifend. Mauris et, aenean consequat nibh. Netus elit habitasse metus, mattis a venenatis praesent suspendisse.</p>\r\n\r\n<p>Lectus nibh, vestibulum venenatis fermentum. Torquent donec eget, vulputate suscipit, rhoncus molestie consectetur utut. Mauris himenaeos, litora phasellus enim convallis. Neque curae vitae, molestie suspendisse semper donec convallis. Ornare luctus curae molestie, condimentum morbi hac, feugiat quisque maecenas tortor vulputate commodo himenaeos accumsan. Non fermentum etiam, tellus pretium, fames dolor porta viverra at pulvinar dui. Cursus aptent, libero bibendum nibh elit. Litora nec congue rhoncus, taciti accumsan metus, ultricies donec integer ante lacus odio. Curabitur tincidunt ut, dictumst pellentesque, nostra interdum at purus adipiscing. Vulputate tellus maecenas ligula, in ut litora, condimentum commodo leo orci porta praesent rutrum.</p>', 'laravel,javascript,Vue js', '1710935355_Ruby_on_Rails-Logo.png', '2024-03-20 10:49:16', '2024-03-20 10:54:28'),
(25, 1, 9, 'What is SEO', 'what-is-seo', '<p>Interdum urna auctor, libero nunc nam aliquam. Eros pellentesque odio fermentum, leo tempor nulla neque purus. Convallis laoreet fames primis, dolor risus gravida, praesent nibh posuere euismod elit dictumst. Curabitur donec, gravida vehicula tristique. Facilisis sodales, duis tempus morbi. Laoreet pharetra nisl, ultricies cubilia hac praesent vulputate.</p>\r\n\r\n<p>Fermentum nunc orci, justo inceptos, sagittis feugiat habitasse venenatis sociosqu quam mollis. Viverra sodales quisque rutrum, ante bibendum habitasse gravida taciti. Lectus praesent tempor mollis, duis curabitur a eleifend sed. Hac orci, elit proin faucibus volutpat. Etiam pellentesque maecenas, feugiat primis accumsan a mollis. Ut quis donec, tellus enim, per lacus maecenas elementum habitasse eget vestibulum. Sollicitudin interdum ultricies, malesuada facilisis, magna curabitur mauris massa condimentum tellus libero.</p>\r\n\r\n<p>Tempor platea curae, ipsum integer, sed urna aliquam ligula nullam. Facilisis iaculis vel litora, morbi suspendisse at, laoreet eget suscipit ligula magna hac scelerisque taciti. Velit fames, sociosqu ipsum donec. Venenatis scelerisque, semper sodales primis mattis. Malesuada ante, platea massa elit aliquet. Porttitor sed libero, ac placerat, inceptos lobortis blandit ante maecenas habitant vehicula.</p>\r\n\r\n<p>Nunc feugiat, platea fermentum sapien. Blandit iaculis condimentum, dictumst aliquet, lorem curabitur vehicula congue quam. Commodo feugiat elementum primis, dolor sollicitudin dui, class sociosqu consectetur tempor integer platea. Conubia cras tincidunt, mollis semper, interdum luctus tristique rutrum dui. Ut orci adipiscing mollis, convallis odio lacinia semper scelerisque. Conubia ipsum nunc, dapibus vel etiam habitasse mauris. Venenatis tellus ligula, interdum sapien eros eleifend. Mauris et, aenean consequat nibh. Netus elit habitasse metus, mattis a venenatis praesent suspendisse.</p>\r\n\r\n<p>Lectus nibh, vestibulum venenatis fermentum. Torquent donec eget, vulputate suscipit, rhoncus molestie consectetur utut. Mauris himenaeos, litora phasellus enim convallis. Neque curae vitae, molestie suspendisse semper donec convallis. Ornare luctus curae molestie, condimentum morbi hac, feugiat quisque maecenas tortor vulputate commodo himenaeos accumsan. Non fermentum etiam, tellus pretium, fames dolor porta viverra at pulvinar dui. Cursus aptent, libero bibendum nibh elit. Litora nec congue rhoncus, taciti accumsan metus, ultricies donec integer ante lacus odio. Curabitur tincidunt ut, dictumst pellentesque, nostra interdum at purus adipiscing. Vulputate tellus maecenas ligula, in ut litora, condimentum commodo leo orci porta praesent rutrum.</p>', 'laravel,javascript,Vue js', '1710935371_tailwindcss.png', '2024-03-20 10:49:31', '2024-03-20 10:54:18'),
(26, 1, 9, 'How to make decision before destroying your computer', 'how-to-make-decision-before-destroying-your-computer', '<p>Ligula aenean interdum, maecenas vulputate, ac pharetra odio dictum consectetur turpis. Ad rhoncus, aliquet volutpat at leo. Ultrices adipiscing curabitur ligula, dapibus nostra elit, eros nisl vel dolor hac erat metus et. Libero fermentum velit, ut venenatis, purus augue commodo ipsum lacus. Quam inceptos, mi ad nostra luctus. Per mauris libero, torquent blandit, porttitor fringilla elit egestas non. Feugiat amet varius aliquam, dictum velit nec, lacinia augue faucibus conubia lorem purus. Erat eleifend, cursus fringilla nisl auctor. Tincidunt nullam taciti, iaculis tortor, nam nunc hendrerit odio porttitor.</p>\r\n\r\n<p>Curae dictum libero, risus urna quisque auctor donec. Vestibulum aenean scelerisque mi, aliquam enim est, nostra curabitur mauris feugiat nec a. Interdum himenaeos turpis fringilla, curabitur netus posuere, quisque enim in fusce ligula accumsan porta tempor. Semper etiam duis, senectus posuere, enim netus nibh inceptos feugiat. Ut mauris vehicula, tincidunt varius, pretium diam lorem suspendisse sed placerat ligula. Volutpat ut, quis elit ligula pulvinar. Amet ad pretium, porttitor suscipit, conubia sodales rutrum condimentum fringilla. Vestibulum mi, condimentum vel iaculis ante.</p>\r\n\r\n<p>Purus odio, ut elit torquent conubia. Libero suspendisse consectetur a, nisi molestie ultricies, faucibus dictumst primis pretium donec praesent tempus. Platea est quisque scelerisque, feugiat habitant litora, augue sollicitudin cras blandit eros sem consequat. Vulputate justo, primis nec sapien. Et eget ante, purus himenaeos cubilia euismod.</p>\r\n\r\n<p>Fermentum mi nibh posuere, lectus magna vitae massa fringilla. Vehicula justo massa, felis arcu, mollis blandit vivamus volutpat scelerisque maecenas rhoncus. Curae convallis, fermentum pretium egestas lorem. Eleifend interdum, sem consectetur donec. Elit curae integer lacus, velit volutpat rhoncus nec etiam. Etiam condimentum potenti integer, odio massa nulla turpis egestas. Dui aliquam, felis tincidunt egestas ut. Porta eget pellentesque vivamus, fusce quisque metus, fermentum lobortis feugiat fames augue venenatis. Eros suscipit lacinia, lobortis senectus, libero aeneanmorbi aliquet aenean.</p>\r\n\r\n<p>Habitasse himenaeos proin, arcu rutrum, sapien nunc per congue mattis quisque elit. Vivamus volutpat aliquet, ut nunc luctus potenti. Congue pellentesque porttitor, enim lorem, curabitur varius primis vivamus imperdiet etiam. Nam platea elit tincidunt, nostra imperdiet himenaeos, erat potenti vitae consequat pretium magna. Elementum class, tristique sed per. Aenean torquent orci vulputate, ultrices conubia habitant, tellus leo cras etiam hac potenti bibendum. Tristique auctor scelerisque volutpat, fermentum bibendum tempus, lorem non nullam orci nisl taciti. Litora ad laoreet dui, dictum quisque erat molestie sociosqu. Quis placerat nisi, netus etiam, ante aenean fames viverra molestie adipiscing est.</p>', 'laravel,javascript,Vue js', '1710935400_wordpress-logo.png', '2024-03-20 10:50:00', '2024-03-20 10:54:01'),
(27, 1, 9, 'How to buy responsive HTML template online in 5 minutes', 'how-to-buy-responsive-html-template-online-in-5-minutes', '<p>Nam sollicitudin erat, felis quis, sed tempor duis aptent ut tellus. Quisque lobortis tempor, quis mi, iaculis massa platea habitant nibh. Augue ante euismod, sem morbi ad torquent vivamus. Suscipit egestas lectus, integer nisi, condimentum aenean curabitur curae ut varius. Vestibulum dictumst tempor conubia, vitae libero vehicula mattis cubilia. Netus malesuada in, eleifend congue, integer conubia pellentesque elit interdum rhoncus. Hendrerit hac metus, aliquam morbi tincidunt luctus dapibus. Class potenti elementum, nullam vel, cubilia phasellus faucibus tortor aptent mattis dictumst. Taciti per litora, justo ullamcorper adipiscing massa. Class scelerisque habitasse, ac euismod etiam proin tortor.</p>\r\n\r\n<p>Tincidunt sollicitudin aenean, integer magna, ac felis conubia maecenas erat quisque sit. Morbi hac sapien cubilia, inceptos cursus augue platea curae. Est morbi cras, tortor vulputate posuere rutrum. Ante porta mattis, turpis nisl, luctus eget proin odio molestie. Eros dolor nunc, vivamus elementum, placerat nulla varius est morbi orci nec.</p>\r\n\r\n<p>Blandit duis praesent, accumsan quisque, nibh at dolor phasellus etiam. Urna lectus vivamus, dapibus ultrices dui elit aliquet. Odio sociosqu sagittis aptent, vehicula libero eget, fermentum bibendum cursus dui est integer nec. Turpis gravida ullamcorper, purus neque adipiscing dictum. Quisque sed sociosqu diam, etiam litora mauris, torquent fusce sagittis tincidunt aliquam fringilla. Orci enim fringilla, neque nam tortor sed sollicitudin.</p>\r\n\r\n<p>Sollicitudin porttitor risus diam, pretium per quisque, duis consectetur dolor netus sociosqu metus vulputate. Venenatis aenean maecenas, ad vehicula, proin congue bibendum blandit a donec. Id blandit gravida inceptos, ullamcorper sit et, elementum dui metus ut nec iaculis. Egestas luctus placerat, rhoncus hendrerit, habitant dui sollicitudin fames laoreet. Augue bibendum litora dolor, rhoncus quam diam, tristique faucibus nibh consequat praesent nisi inceptos.</p>\r\n\r\n<p>Tortor quisque taciti, cubilia turpis, orci iaculis ut nam aliquam fringilla congue. Scelerisque laoreet, quisque potenti sapien tellus. Inceptos lorem at interdum, volutpat proin himenaeos, velit netus scelerisque bibendum pharetra massa tortor habitasse. Amet ac aenean, facilisis bibendum, ullamcorper tortor morbi platea mi massa neque. Libero mollis diam, adipiscing vulputate, nulla cursus justo fermentum massa quisque. Porttitor morbi varius a, convallis velit consectetur, lectus dictum nibh semper lacinia etiam. Suscipit habitasse nostra pellentesque, lobortis mollis etiam, taciti risus lectus bibendum libero curabitur. Velit accumsan, vehicula sed tempus.</p>', 'laravel,javascript,Vue js', '1710935448_yii2.jpeg', '2024-03-20 10:50:48', '2024-03-20 10:53:48'),
(28, 1, 9, 'Selling HTML templates online', 'selling-html-templates-online', '<p>Bibendum venenatis donec, pulvinar at, leo egestas nibh faucibus placerat. Aliquam ut sagittis, urna fermentum, facilisis leo praesent suspendisse ante. Laoreet elit sed purus, venenatis amet id, sagittis tempus luctus placerat urna phasellus pulvinar. Velit nunc, placerat bibendum interdum ante. Eleifend himenaeos nostra, ullamcorper egestas, pulvinar ac rhoncus tellus mauris. Per iaculis convallis, mollis nulla, interdum vulputate egestas litora tempor aliquam. Magna tincidunt varius, elementum ante, habitasse nullam egestas sollicitudin fames. Ornare nisi enim egestas, bibendum ipsum congue, sed quisque aenean litora felis id aptent at. Lectus tincidunt fringilla nostra, primis litora imperdiet, est cubilia ad condimentum aenean lobortis ac.</p>\r\n\r\n<p>Sapien nisi duis viverra, nullam tortor nostra, nulla conubia ullamcorper ornare libero nisl. Fusce a habitant praesent, cras mollis vel tempus ut. Ipsum tempor, cursus pretium dictumst. Arcu malesuada leo, adipiscing odio, ligula nostra morbi dictumst urna pulvinar. Enim ullamcorper luctus habitasse, mattis donec posuere, tempus ut egestas vivamus turpis adipiscing nisi.</p>\r\n\r\n<p>Conubia scelerisque, fringilla tortor phasellus nisl. Praesent mattis, porttitor facilisis lacus. Nisl a pharetra, eleifend massa amet laoreet. Litora sapien mi dictumst, dui sed leo, viverra a placerat pulvinar et luctus mattis. Id ultricies senectus consectetur, odio molestie sapien, aptent magna lectus hac nullam eros viverra sagittis.</p>\r\n\r\n<p>Tortor cras, potenti nisl senectus venenatis. Nullam potenti, blandit diam cubilia. Turpis aenean, ante iaculis volutpat. Ultrices luctus habitasse, suscipit libero, urna litora laoreet convallis quis orci metus. Purus nec tortor sodales, duis sollicitudin odio ut suscipit.</p>\r\n\r\n<p>Ultrices congue arcu potenti, purus risus semper, donec mi quisque molestie convallis rhoncus egestas. Cursus ut nisi pulvinar, faucibus et magna, elementum justo dapibus etiam nostra sed feugiat. Leo lacinia consequat, arcu ac felis tellus eleifend. Elementum commodo quam, massa ut, conubia lectus tempus lacus mattis aliquet semper. Integer gravida auctor platea, purus interdum tortor, viverra ut vel dictum vitae luctus. Quisque nam nisl, erat iaculis, tempus venenatis cras fusce aenean netus. Maecenas lorem facilisis pretium, netus quam et, fermentum fusce phasellus nullam euismod sagittis sodales. Hac gravida orci egestas, amet lorem suspendisse, feugiat platea cursus nostra integer ac.</p>', 'laravel,javascript,Vue js', '1710935479_t6.jpg', '2024-03-20 10:51:19', '2024-03-20 10:53:35'),
(29, 1, 9, 'How to install windows 11 on a laptop', 'how-to-install-windows-11-on-a-laptop', '<p>Lectus quisque, maecenas leo curabitur. Volutpat posuere per, cursus eget facilisis ornare congue. Eu nec quam vulputate, vel volutpat quis, dolor tristique blandit consequat phasellus duis cras elit. Curabitur venenatis congue, vestibulum fames euismod quisque. Purus posuere auctor risus, porta iaculis platea, est curabitur tristique ultricies eu ornare. Feugiat tristique volutpat pharetra, gravida donec aptent, cubilia euismod massa imperdiet mauris condimentum tincidunt.</p>\r\n\r\n<p>Nec inceptos dapibus, urna congue, nulla suspendisse lacinia mattis nisl porta condimentum. Dictum tempus habitant egestas, turpis quisque velit, non eu est aliquam aenean blandit mi. Nunc consequat velit, condimentum per tincidunt elementum integer. Porttitor cursus, ullamcorper bibendum malesuada. Pharetra faucibus donec ad, nullam ultricies cubilia, etiam condimentum litora quis proin varius.</p>\r\n\r\n<p>Suspendisse imperdiet morbi, velit ipsum felis blandit. Integer semper mollis, netus metus, etiam aliquam lobortis gravida hac duis. Taciti gravida amet non, torquent elit aliquam at mauris. Nec eleifend ultrices, risus facilisis, luctus felis orci aliquam vivamus dolor condimentum. Inceptos urna suscipit neque, quisque posuere feugiat, ultricies nisi malesuada id donec gravida libero. Aliquam proin dui integer, porta curae senectus ad felis.</p>\r\n\r\n<p>Quisque sociosqu ornare posuere, euismod vulputate dictumst, taciti risus aptent inceptos nostra fusce eget magna. Iaculis tellus magna pharetra, at dictum commodo, ornare venenatis ullamcorper molestie curae etiam. Orci dui vitae, quisque arcu in auctor. Ad torquent etiam, in maecenas consectetur convallis quis. Molestie consequat elit, lacus semper, consectetur scelerisque viverra ligula sit. Consequat dui lacus, quisque malesuada, posuere blandit morbi aenean ultrices ligula. Lacinia molestie hendrerit, vulputate netus, aenean tellus quis morbi magna tortor feugiat. Ultricies justo velit, cras elit vitae fermentum platea. Id neque interdum nisi, viverra vitae accumsan, nibh pharetra vivamus vel lorem faucibus aliquet vulputate. Diam ad fermentum, eleifend habitasse dolor massa netus.</p>\r\n\r\n<p>Massa vestibulum magna fames, id donec maecenas, inceptos pulvinar dictum rhoncus duis sapien platea. Ad per faucibus, quam scelerisque, libero iaculis eleifend tempus lobortis. Dolor lacus at, tincidunt morbi, turpis metus id fames rutrum curae luctus. Euismod aptent, habitant inceptos tellus litora. Ullamcorper gravida aenean platea, praesent malesuada urna, enim class molestie suscipit consectetur volutpat.</p>', 'laravel,javascript,Vue js', '1710935502_male10.jpg', '2024-03-20 10:51:42', '2024-03-20 10:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `blog_name`, `blog_email`, `blog_description`, `blog_logo`, `blog_favicon`, `created_at`, `updated_at`) VALUES
(1, 'Larablog', 'info@larablogdev.com', 'This is a larablog site', '1710674445_86838_larablog_logo.png', '1710674537_574_larablog_favicon.png', NULL, '2024-03-17 10:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 10000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_name`, `slug`, `parent_category`, `ordering`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '4', 3, '2024-03-19 11:43:16', '2024-03-20 10:19:45'),
(2, 'Kotlin', 'kotlin', '2', 5, '2024-03-19 11:43:46', '2024-03-20 10:20:13'),
(6, 'CodeIgniter', 'codeigniter', '4', 1, '2024-03-20 09:42:52', '2024-03-20 10:19:45'),
(7, 'CakePHP', 'cakephp', '4', 2, '2024-03-20 09:43:17', '2024-03-20 10:19:45'),
(8, 'Flutter', 'flutter', '2', 4, '2024-03-20 09:43:31', '2024-03-20 10:20:13'),
(9, 'Computer', 'computer', '0', 6, '2024-03-20 09:54:41', '2024-03-20 10:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin/Super Author', NULL, NULL),
(2, 'Author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 2,
  `blocked` int(11) NOT NULL DEFAULT 0,
  `direct_publish` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `picture`, `biography`, `type`, `blocked`, `direct_publish`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Larablogger', 'jason.smith7654312@gmail.com', NULL, '$2y$10$oeLO7WU/qh/ylqq7hO3X6.1aKiTSZ4Mea.pA6R4awQnOm/RSdJl9m', 'larablog250', 'AIMG1171060473293620.jpg', 'Hi, I\'m a blogger.', 1, 0, 1, NULL, NULL, '2024-03-16 14:58:52'),
(7, 'Ineza Kevine', 'ineza@email.com', NULL, '$2a$12$WvsZZ3sYVbpeop4/3pVR6.lZWUHM/rb0pktkXUN/iT6EfxjcI0y2i', 'ineza250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:27:25', '2024-03-17 15:27:25'),
(8, 'Juvenale Enok', 'enok@email.com', NULL, '$2y$10$qyzglzWpd04F1ZlpVIH04eCmx5iLdVjWj/xcvBYo5F.GrfoTUXKLS', 'enok250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:27:45', '2024-03-17 15:27:45'),
(9, 'Cyusa Jules', 'jules@email.com', NULL, '$2y$10$H4oLr.XuSncjD2lbnItnqukgslbzGBfoY8QzEjDi8GsJZ0QPj/OH6', 'jules250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:28:10', '2024-03-17 15:28:10'),
(10, 'Akamana Wilson', 'akamana@email.com', NULL, '$2y$10$VYL1IYflqz48mjaN3oNJDO/cIur3AzWvOMvCde.g.QwnKgb8FvIWq', 'akamana250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:28:40', '2024-03-17 15:28:40'),
(11, 'Joe Smith', 'joesmith@email.com', NULL, '$2y$10$ocw1ZFuAcLrgZaj.BFJD1OOo6fZd1FG.Y9f1OuLkN68v2DvVvKfQK', 'smith250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:29:09', '2024-03-17 15:29:09'),
(12, 'Hambley Julius', 'hajule@email.com', NULL, '$2y$10$yo32QzWWK1MWYVBU9pXaCO4LgkPyzX/zwbJCZYJeWb20hUlrWE1O.', 'hajule250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:29:36', '2024-03-17 15:29:36'),
(13, 'Ibanga Donath', 'idonath@email.com', NULL, '$2y$10$RNlqi8hiuOC74/Kg5jlnk.v/xBodfIgg0UnDz6.huWwq3AGeDpL9m', 'idonath250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:29:58', '2024-03-17 15:29:58'),
(14, 'Paway Hamilton', 'paway@email.com', NULL, '$2y$10$6yWqb2XWJVp.so4uccqhZOe3zieIhmJhA1lUuX/diJKJw5/JYNNyG', 'paway250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:30:31', '2024-03-17 15:30:31'),
(15, 'Shumbusho Charles', 'charles@email.com', NULL, '$2y$10$UnXj86.Spi9hdNX2XjhS1.IDKy8CgVRLDfDh.4jrPElUWoxGypx/2', 'charles250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:30:55', '2024-03-17 15:30:55'),
(16, 'Ihame Fatuma', 'fatuma@email.com', NULL, '$2y$10$be1puUVNPNnMTS.oyBLTWOJ8OTK8NQinOdaEt1LhkmYP85Il8nm1K', 'fatuma250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:31:14', '2024-03-17 15:31:14'),
(17, 'Ishusho Arts', 'ishusho@email.com', NULL, '$2y$10$usHAkB36d7uo0.oRkr7HpO97.C6ZLt9RwFX3TMHAMvcI0.a4Wn1IO', 'ishusho250', NULL, NULL, 2, 0, 0, NULL, '2024-03-17 15:31:35', '2024-03-17 15:31:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_social_media`
--
ALTER TABLE `blog_social_media`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
-- AUTO_INCREMENT for table `blog_social_media`
--
ALTER TABLE `blog_social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
