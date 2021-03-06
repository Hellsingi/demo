-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Ноя 01 2018 г., 14:29
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `body`, `picture`, `parent_id`, `vip`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'TV', 'Описание данного товара тут будет много текста TV', 'pictyre.png', 0, 0, 0, NULL, NULL),
(2, 'laptop', 'Описание данного товара тут будет много текста laptop', 'pictyre.png', 0, 0, 0, NULL, NULL),
(7, 'ПК', 'Тут будет описание товара ПК', 'pictyre3.png', 0, 0, 0, NULL, NULL),
(8, 'СД', 'Описание', 'pictyre.png', 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'TV', '<p>тут будет описание категории, много текста</p>', '2018-10-27 06:03:29', '2018-10-27 06:03:29', NULL),
(2, 'Новости как категории могут быть', '<p>тут должно быть много текста новостей</p>', '2018-10-27 06:04:02', '2018-10-27 06:04:02', NULL),
(3, 'Еще категория', '<p>много текста, категория , много текста в категории</p>', '2018-10-27 06:04:39', '2018-10-27 06:04:39', NULL),
(4, 'Еще категория 2', '<p>много много текста в категории</p>', '2018-10-27 06:05:24', '2018-10-27 06:05:24', NULL),
(5, 'Default category', 'HTML Text', '2018-10-27 09:35:08', '2018-10-27 09:35:08', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `body`, `showhide`, `url`, `created_at`, `updated_at`) VALUES
(1, 2, '<p>Первый отзыв</p>\r\n', 'show', NULL, '2018-10-25 12:17:50', '2018-10-25 12:17:50'),
(2, 2, '<p>gthdsq jnpsd</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'show', NULL, '2018-10-25 12:17:59', '2018-10-25 12:17:59');

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE `maintexts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Добро пожаловать на сайта', '<div id=\"Panes\"><div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div><div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<form method=\"post\" action=\"/feed/html\"><table style=\"width:100%\"><tbody><tr><td rowspan=\"2\"><input name=\"amount\" value=\"5\" size=\"3\" id=\"amount\" type=\"text\"></td><td rowspan=\"2\"><table style=\"text-align:left\"><tbody><tr><td style=\"width:20px\"><input name=\"what\" value=\"paras\" id=\"paras\" checked=\"checked\" type=\"radio\"></td><td><label for=\"paras\">paragraphs</label></td></tr><tr><td style=\"width:20px\"><input name=\"what\" value=\"words\" id=\"words\" type=\"radio\"></td><td><label for=\"words\">words</label></td></tr><tr><td style=\"width:20px\"><input name=\"what\" value=\"bytes\" id=\"bytes\" type=\"radio\"></td><td><label for=\"bytes\">bytes</label></td></tr><tr><td style=\"width:20px\"><input name=\"what\" value=\"lists\" id=\"lists\" type=\"radio\"></td><td><label for=\"lists\">lists</label></td></tr></tbody></table></td><td style=\"width:20px\"><input name=\"start\" id=\"start\" value=\"yes\" checked=\"checked\" type=\"checkbox\"></td><td style=\"text-align:left\"><label for=\"start\">Start with \'Lorem<br>ipsum dolor sit amet...\'</label></td></tr><tr><td></td><td style=\"text-align:left\"><input name=\"generate\" id=\"generate\" value=\"Generate Lorem Ipsum\" type=\"submit\"></td></tr></tbody></table></form></div></div><hr><div class=\"boxedTight\"><a href=\"/116/1540280142/https://ding.io\" target=\"_blank\" rel=\"nofollow\"><img src=\"/banners/ding.png\" alt=\"Time tracking for freelancers\" style=\"width:100%\"></a></div>\r\n<hr><div class=\"boxed\" style=\"color:#ff0000;\"><strong>Translations:</strong> Can you help translate this site into a foreign language ? Please email us with details if you can help.</div>\r\n\r\n<hr><div class=\"boxed\">There are now a set of mock banners available <a href=\"/banners\" class=\"lnk\">here</a> in three colours and in a range of standard banner sizes:<br><a href=\"/banners\"><img src=\"/images/banners/black_234x60.gif\" alt=\"Banners\" width=\"234\" height=\"60\"></a><a href=\"/banners\"><img src=\"/images/banners/grey_234x60.gif\" alt=\"Banners\" width=\"234\" height=\"60\"></a><a href=\"/banners\"><img src=\"/images/banners/white_234x60.gif\" alt=\"Banners\" width=\"234\" height=\"60\"></a></div>\r\n\r\n<hr><div class=\"boxed\"><strong>Donate:</strong> If you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill. There is no minimum donation, any sum is appreciated - click <a target=\"_blank\" href=\"/donate\" class=\"lnk\">here</a> to donate using PayPal. Thank you for your support.</div>\r\n\r\n<hr><div class=\"boxed\" id=\"Packages\">\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"https://chrome.google.com/extensions/detail/jkkggolejkaoanbjnmkakgjcdcnpfkgi\">Chrome</a>\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"https://addons.mozilla.org/en-US/firefox/addon/dummy-lipsum/\">Firefox Add-on</a>\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"https://github.com/traviskaufman/node-lipsum\">NodeJS</a>\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"http://ftp.ktug.or.kr/tex-archive/help/Catalogue/entries/lipsum.html\">TeX Package</a>\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"http://code.google.com/p/pypsum/\">Python Interface</a>\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"http://gtklipsum.sourceforge.net/\">GTK Lipsum</a>\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"http://github.com/gsavage/lorem_ipsum/tree/master\">Rails</a>\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"https://github.com/cerkit/LoremIpsum/\">.NET</a>\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"http://groovyconsole.appspot.com/script/64002\">Groovy</a>\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.layerhero.com/lorem-ipsum-generator/\">Adobe Plugin</a></div>\r\n\r\n<hr><div id=\"Translation\">\r\n\r\n<h3>The standard Lorem Ipsum passage, used since the 1500s</h3><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\r\n<h3>1914 translation by H. Rackham</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 translation by H. Rackham</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>\r\n</div>', 'index', NULL, NULL, NULL),
(2, 'О компании', 'О компании тут будет все рассказываться', 'about', NULL, NULL, NULL),
(3, 'Контакты', 'контакты для связи', 'contact', NULL, NULL, NULL),
(4, 'Услуги', 'тут будут некоторые услуги', 'service', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(3, 0, 1, 'fa-database', 'Category', 'Categories', NULL, '2018-10-27 06:02:24', '2018-10-27 06:02:24'),
(4, 0, 1, 'fa-database', 'Product', 'Products', NULL, '2018-10-27 06:18:28', '2018-10-27 06:18:28'),
(5, 0, 3, 'fa-database', 'Order', 'Orders', NULL, '2018-11-01 08:56:36', '2018-11-01 08:56:36');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_25_121851_create_maintexts_table', 2),
(4, '2018_10_25_145118_create_feedback_table', 3),
(5, '2018_10_26_154535_create_catalogs_table', 4),
(6, '2015_10_10_000000_create_menus_table', 5),
(7, '2015_10_10_000000_create_roles_table', 5),
(8, '2015_10_10_000000_update_users_table', 5),
(9, '2015_12_11_000000_create_users_logs_table', 5),
(10, '2016_03_14_000000_update_menus_table', 5),
(11, '2018_10_27_090224_create_category_table', 6),
(12, '2018_10_27_091828_create_product_table', 7),
(14, '2018_10_31_155704_create_orders_table', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `body`, `fio`, `email`, `phone`, `adress`, `type`, `pay`, `comment`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'a:1:{i:1;s:1:\"1\";}', 'qw', 'aa@mail', '12345', 'dfgdfg', 'Доставка почтой по РБ', 'Предоплата через ЕРИП', NULL, 0, NULL, '2018-11-01 07:27:48', '2018-11-01 07:27:48'),
(2, 'a:0:{}', 'qw', 'aa@mail', '12345', 'dfgdfg', 'Доставка курьером', 'Оплата наличными курьеру или при самовывозе', NULL, 0, NULL, '2018-11-01 08:00:45', '2018-11-01 08:00:45'),
(3, 'a:1:{i:2;s:1:\"1\";}', 'qw', 'asd@mail', '12345', 'dfgdfg', 'Доставка курьером', 'Оплата наличными курьеру или при самовывозе', NULL, 0, NULL, '2018-11-01 08:18:58', '2018-11-01 08:18:58'),
(4, 'a:0:{}', '1333', 'asd@mail', '12345', 'dzxfd', 'Доставка курьером', 'Оплата наличными курьеру или при самовывозе', NULL, 0, NULL, '2018-11-01 08:25:32', '2018-11-01 08:25:32'),
(5, 'a:1:{i:3;s:1:\"1\";}', '1333', 'aa@mail', '12345', 'dfgdfg', 'Доставка почтой по РБ', 'Оплата по карте', NULL, 0, NULL, '2018-11-01 08:38:08', '2018-11-01 08:38:08'),
(6, 'a:0:{}', 'sdsa', 'aa@mail', '12345', 'fgfsdfg', 'Доставка почтой по РБ', 'Оплата по карте', NULL, 0, NULL, '2018-11-01 08:53:14', '2018-11-01 08:53:14'),
(7, 'a:3:{i:1;s:1:\"1\";i:3;s:1:\"1\";i:5;s:1:\"1\";}', 'test', 'test@test', '123456', 'test', 'Доставка почтой по РБ', 'Оплата по карте', NULL, 4, NULL, '2018-11-01 09:21:44', '2018-11-01 09:21:44'),
(8, 'a:0:{}', 'qw', 'aa@mail', '12345', 'dfgdfg', 'Самовывоз', 'Предоплата через ЕРИП', NULL, 4, NULL, '2018-11-01 09:22:51', '2018-11-01 09:22:51'),
(9, 'a:0:{}', 'qw', 'aa@mail', '123456', 'dzxfd', 'Самовывоз', 'Оплата наличными курьеру или при самовывозе', NULL, 4, NULL, '2018-11-01 09:24:13', '2018-11-01 09:24:13'),
(10, 'a:2:{i:1;s:1:\"1\";i:3;s:1:\"1\";}', 'qw', 'aa@mail', '12345', 'dfgdfg', 'Самовывоз', 'Предоплата через ЕРИП', NULL, 4, NULL, '2018-11-01 10:00:42', '2018-11-01 10:00:42'),
(11, 'a:1:{i:3;s:1:\"1\";}', 'qw', 'aa@mail', '12345', 'dfgdfg', 'Доставка курьером', 'Оплата наличными курьеру или при самовывозе', NULL, 4, NULL, '2018-11-01 11:06:42', '2018-11-01 11:06:42'),
(12, 'a:1:{i:1;s:1:\"1\";}', 'qw', 'aa@mail', '12345', 'dfgdfg', 'Доставка курьером', 'Оплата наличными курьеру или при самовывозе', NULL, 4, NULL, '2018-11-01 11:08:36', '2018-11-01 11:08:36');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `body`, `price`, `picture`, `category_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Телевизор Lg', '<p>Описание телевизора LG</p>', '123', '1540621281-Снимок экрана (1).png', 1, 0, '2018-10-27 06:21:24', '2018-10-27 06:21:24', NULL),
(2, 'laptop sony', '<p>Описание laptop sony</p>', '345', '1540621351-Снимок экрана (1).png', 3, 0, '2018-10-27 06:22:33', '2018-10-27 06:22:33', NULL),
(3, 'Новость 1', '<p>Тут много текста новостей</p>', NULL, '1540622597-3808357.JPG', 2, 0, '2018-10-27 06:24:46', '2018-10-27 06:43:17', NULL),
(4, 'Новость 2', '<p>кегнкеапго ангег еанеан апрпвов</p>', NULL, '1540622606-smeh-18.png', 2, 0, '2018-10-27 06:36:32', '2018-10-27 06:43:26', NULL),
(5, 'Новый2', '<p>апвапрварва</p>', '1234', NULL, 4, 0, '2018-10-27 08:24:03', '2018-10-27 08:24:03', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2018-10-27 05:48:07', '2018-10-27 05:48:07'),
(2, 'User', '2018-10-27 05:48:07', '2018-10-27 05:48:07'),
(3, 'Модератор', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Nastia', 'm@mail.ru', NULL, '$2y$10$GA84ZZ60skwpeanVZxIIOeRWexLDCL/X/iAIzzIG2azfa1b9UVFKW', '8Kxqd2ZaTkXre2g4RKOqxqQFPxBmG8VZpwo5JmnenHr5pQyte73ZGHPu3eWs', '2018-10-25 07:42:55', '2018-10-25 07:42:55'),
(2, NULL, 'new', 'm1@mail.ru', NULL, '$2y$10$3ZiwutOPnMYYZi.rRfqVCeo2uNknuvMgrC66OVba14hcIE9R.2MeG', '0VzXU8Gy1HMpqGW1MdzTzIpZV7OBBR4x6XPeW8BhoIv9peSoXmlAyQ2gBy0g', '2018-10-25 08:14:34', '2018-10-25 08:14:34'),
(3, 1, 'Demchenko', 'NastiaLagenia@mail.ru', NULL, '$2y$10$MorvFdIitxudr8ptII8LjOPhtqw6P4bSjAu.izEMItcQujWxu3eAW', 'Xu67XvLOPrK8zTztMncsyICzKFb9L3ATJBwXPTqXcJSMTGgmQDgb4NfbTDON', '2018-10-27 05:49:40', '2018-10-27 05:49:40'),
(4, 1, '123456', 'm123456@mail.ru', NULL, '$2y$10$LnDY.CZ0VjlS9U7BoSCQKOHgjgQxwCHqMyYNOvjAZr771jrns3mq6', 'Y1xchMvkhnjlcfo0MBFt0vZDmBRghufuMklWKrXppcn0IUR7nDEfzcjEHs2k', '2018-10-27 10:41:27', '2018-10-27 10:41:27');

-- --------------------------------------------------------

--
-- Структура таблицы `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 3, 'created', 'category', 1, '2018-10-27 06:03:29', '2018-10-27 06:03:29'),
(2, 3, 'created', 'category', 2, '2018-10-27 06:04:02', '2018-10-27 06:04:02'),
(3, 3, 'created', 'category', 3, '2018-10-27 06:04:39', '2018-10-27 06:04:39'),
(4, 3, 'created', 'category', 4, '2018-10-27 06:05:24', '2018-10-27 06:05:24'),
(5, 3, 'created', 'product', 1, '2018-10-27 06:21:24', '2018-10-27 06:21:24'),
(6, 3, 'created', 'product', 2, '2018-10-27 06:22:33', '2018-10-27 06:22:33'),
(7, 3, 'created', 'product', 3, '2018-10-27 06:24:46', '2018-10-27 06:24:46'),
(8, 3, 'created', 'product', 4, '2018-10-27 06:36:32', '2018-10-27 06:36:32'),
(9, 3, 'updated', 'product', 4, '2018-10-27 06:37:07', '2018-10-27 06:37:07'),
(10, 3, 'updated', 'product', 3, '2018-10-27 06:39:19', '2018-10-27 06:39:19'),
(11, 3, 'updated', 'product', 3, '2018-10-27 06:43:17', '2018-10-27 06:43:17'),
(12, 3, 'updated', 'product', 4, '2018-10-27 06:43:26', '2018-10-27 06:43:26'),
(13, 3, 'updated', 'product', 2, '2018-10-27 08:22:56', '2018-10-27 08:22:56'),
(14, 3, 'updated', 'product', 2, '2018-10-27 08:23:18', '2018-10-27 08:23:18'),
(15, 3, 'created', 'product', 5, '2018-10-27 08:24:03', '2018-10-27 08:24:03'),
(16, 3, 'updated', 'users', 3, '2018-10-27 10:01:06', '2018-10-27 10:01:06'),
(17, 3, 'updated', 'users', 3, '2018-10-27 10:09:56', '2018-10-27 10:09:56'),
(18, 3, 'updated', 'users', 3, '2018-10-27 10:29:10', '2018-10-27 10:29:10'),
(19, 3, 'updated', 'users', 3, '2018-10-27 10:32:54', '2018-10-27 10:32:54'),
(20, 4, 'updated', 'users', 4, '2018-10-27 10:41:30', '2018-10-27 10:41:30'),
(21, 4, 'updated', 'users', 4, '2018-10-27 10:43:43', '2018-10-27 10:43:43'),
(22, 1, 'updated', 'users', 1, '2018-10-27 10:59:54', '2018-10-27 10:59:54'),
(23, 3, 'updated', 'users', 3, '2018-10-27 11:02:08', '2018-10-27 11:02:08'),
(24, 4, 'updated', 'users', 4, '2018-11-01 11:27:30', '2018-11-01 11:27:30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
