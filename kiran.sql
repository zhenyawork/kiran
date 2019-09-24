-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 24 2019 г., 19:26
-- Версия сервера: 5.7.25
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kiran`
--

-- --------------------------------------------------------

--
-- Структура таблицы `advantages`
--

CREATE TABLE `advantages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcategory_id` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `advantages`
--

INSERT INTO `advantages` (`id`, `name`, `href`, `image`, `pcategory_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Комплектующие от мировых производителей, гарантирующее качество', 'google.com', 'advantages\\September2019\\e79NDPqhuXurrPxjJ36O.png', 0, 'ru', '2019-09-20 15:59:00', '2019-09-23 05:29:25'),
(2, 'Значительный запас прочности безотказная служба от 5 лет', 'google.com', 'advantages\\September2019\\QUJEmwjbACAXIWlMRxYi.png', 0, 'ru', '2019-09-20 16:02:00', '2019-09-23 05:03:50'),
(3, 'Значительный запас прочности безотказная служба от 5 лет', NULL, 'advantages\\September2019\\S0ez83veRUspsulJSkNH.png', 0, 'ru', '2019-09-23 05:31:00', '2019-09-23 05:31:14');

-- --------------------------------------------------------

--
-- Структура таблицы `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blocks`
--

INSERT INTO `blocks` (`id`, `title`, `block`, `body`, `page`, `lang`, `ico`, `created_at`, `updated_at`) VALUES
(1, 'DALGAKIRAN – БОЛЕЕ ПОЛУВЕКОВОЙ ОПЫТ', 'block-1', '<div class=\"container\">\r\n            <section class=\"mainpage__note\">\r\n                <a href=\"en/about-factory.html\" class=\"mainpage__note-link\">\r\n                    О заводе\r\n                </a>\r\n                <div class=\"mainpage__note-text\">DALGAKIRAN – БОЛЕЕ ПОЛУВЕКОВОЙ ОПЫТ</div>\r\n                <a href=\"en/dalgakiran-russia.html\" class=\"mainpage__note-link\">\r\n                    DALGAKIRAN - RUSSIA\r\n                </a>\r\n            </section>\r\n        </div>\r\n\r\n        <div class=\"container\">\r\n            <section class=\"mainpage__tours tours\">\r\n                <a href=\"en/3d-tour-factory.html\" class=\"tours__link\">\r\n                    <img src=\"/img/tmp/3dtour1.jpg\" alt=\"\"/>\r\n                    <span class=\"tours__text\">\r\n                        3-D ТУР ПО ЗАВОДУ\r\n                    </span>\r\n                </a>\r\n                <a href=\"en/3d-tour-company.html\" class=\"tours__link\">\r\n                    <img src=\"/img/tmp/3dtour2.jpg\" alt=\"\"/>\r\n                    <span class=\"tours__text\">\r\n                        3-D ТУР ПО КОМПАНИИ\r\n                    </span>\r\n                </a>\r\n            </section>\r\n        </div>', 'home', 'ru', NULL, '2019-09-17 03:48:37', '2019-09-17 03:48:37');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `image`) VALUES
(6, NULL, 1, 'Турбокомпрессоры', 'turbokompressory', '2019-09-20 10:16:37', '2019-09-20 10:16:37', 'categories\\September2019\\k2F5R9b8A0R0I1xSowuY.png'),
(7, NULL, 1, 'Винтовые маслянные компрессоры', 'vintovye-maslyannye-kompressory', '2019-09-20 10:16:57', '2019-09-20 10:16:57', 'categories\\September2019\\A1xyVhKTnR5aUewUtDP9.png'),
(8, NULL, 1, 'Винтовые безмасляные компрессоры', 'vintovye-bezmaslyanye-kompressory', '2019-09-20 10:17:44', '2019-09-20 10:17:44', 'categories\\September2019\\2ZzxGjrDvyV25tnK4zz5.png'),
(9, NULL, 1, 'тест1', 'test1', '2019-09-20 10:27:43', '2019-09-20 10:27:43', 'categories\\September2019\\JP54k88VyNCCBzTZgtiV.png'),
(10, NULL, 1, 'тест2', 'test2', '2019-09-20 10:27:52', '2019-09-20 10:27:52', 'categories\\September2019\\AKY0AhaDWKIc61VTnqjz.png'),
(11, NULL, 1, 'фів', 'fiv', '2019-09-20 10:28:15', '2019-09-20 10:28:15', 'categories\\September2019\\XsS0xCV7MvZGepS5H0FO.png');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 6),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 7),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slider', 'text', 'Идентификатор', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'lang', 'text', 'Язык', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'title', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 8, 'block', 'text', 'Идентификатор блока', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 8, 'body', 'text_area', 'Контент', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 8, 'page', 'text', 'Страница Блока', 0, 1, 1, 1, 1, 1, '{}', 5),
(68, 8, 'lang', 'text', 'Язык', 0, 1, 1, 1, 1, 1, '{}', 7),
(69, 8, 'ico', 'image', 'Изображение (если есть)', 0, 1, 1, 1, 1, 1, '{}', 6),
(70, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(71, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(72, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(73, 9, 'title', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(74, 9, 'slug', 'text', 'Урл', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:products,slug\"}}', 3),
(75, 9, 'art', 'text', 'Артикул', 0, 1, 1, 1, 1, 1, '{}', 4),
(76, 9, 'description', 'rich_text_box', 'Описание', 0, 0, 1, 1, 1, 1, '{}', 6),
(77, 9, 'price', 'text', 'Цена', 0, 1, 1, 1, 1, 1, '{}', 7),
(78, 9, 'photo', 'image', 'Главное фото', 0, 0, 1, 1, 1, 1, '{}', 9),
(79, 9, 'photos', 'multiple_images', 'Дополнительные фото', 0, 0, 1, 1, 1, 1, '{}', 10),
(80, 9, 'stock', 'select_dropdown', 'В наличии', 0, 0, 1, 1, 1, 1, '{\"default\":1,\"options\":{\"0\":\"\\u041d\\u0435\\u0442\",\"1\":\"\\u0414\\u0430\"}}', 11),
(81, 9, 'active', 'select_dropdown', 'Товар активен?', 0, 0, 1, 1, 1, 1, '{\"default\":1,\"options\":{\"0\":\"\\u041d\\u0435\\u0442\",\"1\":\"\\u0414\\u0430\"}}', 12),
(82, 9, 'stars', 'text', 'Оценка товара', 0, 0, 0, 0, 0, 0, '{}', 13),
(84, 9, 'manufacture', 'text', 'Производитель', 0, 0, 1, 1, 1, 1, '{}', 15),
(85, 9, 'country', 'text', 'Страна производитель', 0, 0, 1, 1, 1, 1, '{}', 16),
(86, 9, 'vid_compresora', 'text', 'Вид компрессора', 0, 0, 1, 1, 1, 1, '{}', 17),
(87, 9, 'tip_compresora', 'text', 'Тип компрессора', 0, 0, 1, 1, 1, 1, '{}', 18),
(88, 9, 'tip_privoda', 'text', 'Тип привода', 0, 0, 1, 1, 1, 1, '{}', 19),
(89, 9, 'proizvoditelnost', 'text', 'Производительность', 0, 0, 1, 1, 1, 1, '{}', 20),
(90, 9, 'davlenie', 'text', 'Давление', 0, 0, 1, 1, 1, 1, '{}', 21),
(91, 9, 'moshnost_dvigatela', 'text', 'Мощность двигателя', 0, 0, 1, 1, 1, 1, '{}', 22),
(92, 9, 'napravlenie', 'text', 'Направление', 0, 0, 1, 1, 1, 1, '{}', 23),
(93, 9, 'uroven_shuma', 'text', 'Уровень шума', 0, 0, 1, 1, 1, 1, '{}', 24),
(94, 9, 'massa', 'text', 'Масса', 0, 0, 1, 1, 1, 1, '{}', 25),
(95, 9, 'dlinna', 'text', 'Длинна', 0, 0, 1, 1, 1, 1, '{}', 26),
(96, 9, 'shirina', 'text', 'Ширина', 0, 0, 1, 1, 1, 1, '{}', 27),
(97, 9, 'visota', 'text', 'Высота', 0, 0, 1, 1, 1, 1, '{}', 28),
(98, 9, 'garantia', 'text', 'Срок Гарантии', 0, 0, 1, 1, 1, 1, '{}', 29),
(99, 9, 'prosmotry', 'text', 'К-во просмотров', 0, 1, 0, 0, 0, 0, '{}', 30),
(100, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 31),
(101, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 32),
(102, 9, 'lang', 'select_dropdown', 'Язык', 1, 1, 1, 1, 1, 1, '{\"default\":\"ru\",\"options\":{\"ru\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"en\":\"English\"}}', 33),
(105, 4, 'image', 'image', 'Изображение категории', 0, 1, 1, 1, 1, 1, '{}', 5),
(106, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 10, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(108, 10, 'slug', 'text', 'УРЛ', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:product_categories,slug\"}}', 4),
(109, 10, 'description', 'text_area', 'Описание категории', 0, 0, 1, 1, 1, 1, '{}', 5),
(110, 10, 'description2', 'text_area', 'О категории', 0, 0, 1, 1, 1, 1, '{}', 6),
(111, 10, 'image', 'image', 'Изображение категории', 0, 1, 1, 1, 1, 1, '{}', 7),
(112, 10, 'image_inside', 'image', 'Изображение внутри категории (большое)', 0, 0, 1, 1, 1, 1, '{}', 8),
(113, 10, 'active', 'select_dropdown', 'Категория активна?', 1, 1, 1, 1, 1, 1, '{\"default\":1,\"options\":{\"0\":\"\\u041d\\u0435\\u0442\",\"1\":\"\\u0414\\u0430\"}}', 9),
(114, 10, 'lang', 'select_dropdown', 'Lang', 0, 1, 1, 1, 1, 1, '{\"default\":\"ru\",\"options\":{\"ru\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"en\":\"English\"}}', 10),
(115, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(116, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(122, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(123, 12, 'name', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(124, 12, 'href', 'text', 'Ссылка на статью', 0, 0, 1, 1, 1, 1, '{}', 3),
(125, 12, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{}', 4),
(126, 12, 'lang', 'select_dropdown', 'Lang', 0, 1, 1, 1, 1, 1, '{\"default\":\"ru\",\"options\":{\"ru\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"en\":\"English\"}}', 5),
(127, 12, 'product_categories_id', 'text', 'категория', 0, 0, 0, 0, 0, 0, '{}', 6),
(128, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(129, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(131, 10, 'title2', 'text', 'Название в cклонении \'Кого?\', например `Маслянных Компрессоров`', 0, 0, 1, 1, 1, 1, '{}', 3),
(132, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 13, 'name', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(134, 13, 'slug', 'text', 'УРЛ', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:lines,slug\"}}', 3),
(135, 13, 'images', 'multiple_images', 'Изображения', 0, 0, 1, 1, 1, 1, '{}', 4),
(137, 13, 'description', 'text_area', 'Описание серии', 0, 0, 1, 1, 1, 1, '{}', 6),
(138, 13, 'moshnost', 'text', 'Мощьность От До', 0, 0, 1, 1, 1, 1, '{}', 7),
(139, 13, 'davlenie', 'text', 'Давление От До', 0, 0, 1, 1, 1, 1, '{}', 8),
(140, 13, 'proizvoditelnost', 'text', 'Производительность От До', 0, 1, 1, 1, 1, 1, '{}', 9),
(141, 13, 'lang', 'select_dropdown', 'Язык', 0, 1, 1, 1, 1, 1, '{\"default\":\"ru\",\"options\":{\"ru\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"en\":\"English\"}}', 10),
(142, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(143, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(145, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(146, 14, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(147, 14, 'title2', 'text', 'Название в cклонении \'Кого?\', например `Маслянных Компрессоров`', 1, 0, 1, 1, 1, 1, '{}', 3),
(148, 14, 'slug', 'text', 'УРЛ', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:pcategories,slug\"}}', 4),
(149, 14, 'description', 'text_area', 'Описание категории', 0, 0, 1, 1, 1, 1, '{}', 5),
(150, 14, 'description2', 'text_area', 'О категории', 0, 0, 1, 1, 1, 1, '{}', 6),
(151, 14, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{}', 7),
(152, 14, 'image_inside', 'image', 'Изображение внутри категории (большое)', 0, 0, 1, 1, 1, 1, '{}', 8),
(153, 14, 'active', 'select_dropdown', 'Категория активна?', 1, 1, 1, 1, 1, 1, '{\"default\":1,\"options\":{\"0\":\"\\u041d\\u0435\\u0442\",\"1\":\"\\u0414\\u0430\"}}', 9),
(154, 14, 'lang', 'select_dropdown', 'Язык', 0, 1, 1, 1, 1, 1, '{\"default\":\"ru\",\"options\":{\"ru\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"en\":\"English\"}}', 10),
(155, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(156, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(157, 13, 'line_belongsto_pcategory_relationship', 'relationship', 'pcategories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Pcategory\",\"table\":\"pcategories\",\"type\":\"belongsTo\",\"column\":\"pcategory_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"advantages\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(158, 13, 'pcategory_id', 'text', 'Pcategory Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(159, 9, 'line_id', 'text', 'Line Id', 0, 0, 0, 0, 0, 0, '{}', 14),
(160, 9, 'product_belongsto_line_relationship', 'relationship', 'lines', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Line\",\"table\":\"lines\",\"type\":\"belongsTo\",\"column\":\"line_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"advantages\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(161, 9, 'oldprice', 'text', 'Старая цена (зачеркнутая)', 0, 0, 1, 1, 1, 1, '{}', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-09-17 02:30:40', '2019-09-20 10:13:37'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(7, 'sliders', 'sliders', 'Слайдер', 'Слайдеры', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-17 03:16:24', '2019-09-17 03:17:32'),
(8, 'blocks', 'blocks', 'Блок', 'Блоки', NULL, 'App\\Block', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-17 03:44:23', '2019-09-17 03:47:36'),
(9, 'products', 'products', 'Товар', 'Товары', 'voyager-shop', 'App\\Product', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-17 05:51:21', '2019-09-24 12:34:39'),
(10, 'product_categories', 'product-categories', 'Категория товаров', 'Категории товаров', NULL, 'App\\ProductCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-20 13:42:17', '2019-09-23 05:55:34'),
(12, 'advantages', 'advantages', 'Преимущество', 'Преимущества', NULL, 'App\\Advantage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-20 15:43:52', '2019-09-20 16:05:40'),
(13, 'lines', 'lines', 'Сирия товаров', 'Серии товаров', NULL, 'App\\Line', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-23 13:19:28', '2019-09-24 10:59:58'),
(14, 'pcategories', 'pcategories', 'Категория товаров', 'Категории товаров', NULL, 'App\\Pcategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-24 08:24:47', '2019-09-24 08:37:31');

-- --------------------------------------------------------

--
-- Структура таблицы `lines`
--

CREATE TABLE `lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `pcategory_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `moshnost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `davlenie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proizvoditelnost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lines`
--

INSERT INTO `lines` (`id`, `name`, `slug`, `images`, `pcategory_id`, `description`, `moshnost`, `davlenie`, `proizvoditelnost`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Серия TIDY', 'seriya-tidy', '[\"lines\\\\September2019\\\\jB9rqcvccFR3TyNIrVx7.png\",\"lines\\\\September2019\\\\h5p0X7OsMUEMbFjbyO4i.png\"]', 2, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero modi ex adipisci ipsum impedit sit perferendis debitis illum distinctio in perspiciatis eos magni facilis, nostrum, optio explicabo ullam nam ipsa maxime fuga voluptas rem! Voluptatibus esse tenetur expedita necessitatibus pariatur, quidem vitae laborum sed neque nam. Facere, aut error alias reprehenderit provident modi officiis eveniet sed atque vero doloremque ipsum, id commodi quisquam? Consequatur incidunt rem iste delectus, vitae corporis ducimus impedit mollitia suscipit aliquid fugiat eveniet dolorum ea assumenda numquam sit dolores! Recusandae impedit at aspernatur amet alias! Doloribus omnis suscipit exercitationem deleniti placeat at natus modi saepe nisi.', 'От 10 До 20 Квт', 'От 1 да 2 Бар', 'От 1 До 10 куб.м', 'ru', '2019-09-23 13:34:00', '2019-09-24 11:00:19'),
(2, 'Серия DVK', 'seriya-dvk', '[\"lines\\\\September2019\\\\dZWDMWwG0mhYhjsrNNwY.png\",\"lines\\\\September2019\\\\HfXtdBVUnVxrXVLgRqiI.png\"]', 2, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero modi ex adipisci ipsum impedit sit perferendis debitis illum distinctio in perspiciatis eos magni facilis, nostrum, optio explicabo ullam nam ipsa maxime fuga voluptas rem! Voluptatibus esse tenetur expedita necessitatibus pariatur, quidem vitae laborum sed neque nam. Facere, aut error alias reprehenderit provident modi officiis eveniet sed atque vero doloremque ipsum, id commodi quisquam? Consequatur incidunt rem iste delectus, vitae corporis ducimus impedit mollitia suscipit aliquid fugiat eveniet dolorum ea assumenda numquam sit dolores! Recusandae impedit at aspernatur amet alias! Doloribus omnis suscipit exercitationem deleniti placeat at natus modi saepe nisi.', 'От 10 До 20 Квт', 'От 1 да 2 Бар', 'От 1 До 10 куб.м', 'ru', '2019-09-23 13:36:00', '2019-09-24 11:00:10');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-09-17 02:30:39', '2019-09-17 02:30:39');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-09-17 02:30:39', '2019-09-17 02:30:39', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 3, '2019-09-17 02:30:39', '2019-09-17 03:15:24', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 5, 2, '2019-09-17 02:30:39', '2019-09-17 03:15:21', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 1, '2019-09-17 02:30:39', '2019-09-17 03:15:21', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-09-17 02:30:39', '2019-09-23 05:59:19', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, NULL, 7, '2019-09-17 02:30:39', '2019-09-23 05:59:19', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, NULL, 6, '2019-09-17 02:30:39', '2019-09-23 05:59:19', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2019-09-17 02:30:39', '2019-09-17 03:15:24', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2019-09-17 02:30:39', '2019-09-17 03:15:24', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2019-09-17 02:30:39', '2019-09-23 05:59:19', 'voyager.settings.index', NULL),
(11, 1, 'Категории Блога', '', '_self', 'voyager-categories', '#000000', 22, 2, '2019-09-17 02:30:40', '2019-09-23 05:59:42', 'voyager.categories.index', 'null'),
(12, 1, 'Блог', '', '_self', 'voyager-news', '#000000', 22, 1, '2019-09-17 02:30:40', '2019-09-23 05:59:31', 'voyager.posts.index', 'null'),
(13, 1, 'Страницы', '', '_self', 'voyager-file-text', '#000000', 22, 3, '2019-09-17 02:30:40', '2019-09-23 05:59:53', 'voyager.pages.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 6, '2019-09-17 02:30:40', '2019-09-17 03:15:24', 'voyager.hooks', NULL),
(15, 1, 'Слайдеры', '', '_self', NULL, NULL, 17, 2, '2019-09-17 03:16:24', '2019-09-17 03:45:24', 'voyager.sliders.index', NULL),
(16, 1, 'Блоки', '', '_self', NULL, NULL, 17, 1, '2019-09-17 03:44:23', '2019-09-17 03:45:22', 'voyager.blocks.index', NULL),
(17, 1, 'Структура', '', '_self', 'voyager-browser', '#000000', NULL, 5, '2019-09-17 03:45:15', '2019-09-23 06:00:06', NULL, ''),
(18, 1, 'Товары', '', '_self', 'voyager-shop', '#000000', NULL, 2, '2019-09-17 05:51:21', '2019-09-20 13:46:59', 'voyager.products.index', 'null'),
(20, 1, 'Категории', '', '_self', 'voyager-categories', '#000000', NULL, 3, '2019-09-20 13:44:34', '2019-09-20 13:44:56', NULL, ''),
(21, 1, 'Преимущества Товаров', '', '_self', NULL, '#000000', 20, 4, '2019-09-20 15:43:52', '2019-09-24 11:00:57', 'voyager.advantages.index', 'null'),
(22, 1, 'Контент', '', '_self', 'voyager-news', '#000000', NULL, 4, '2019-09-23 05:59:05', '2019-09-23 06:00:06', NULL, ''),
(23, 1, 'Серии товаров', '', '_self', NULL, NULL, 20, 3, '2019-09-23 13:19:28', '2019-09-24 11:00:57', 'voyager.lines.index', NULL),
(24, 1, 'Категории товаров', '', '_self', NULL, NULL, 20, 1, '2019-09-24 08:24:47', '2019-09-24 11:00:57', 'voyager.pcategories.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2019_09_17_055750_create_blocks_table', 3),
(29, '2019_09_17_061249_slider_migr', 4),
(30, '2019_09_17_082257_create_products_table', 5),
(31, '2019_09_20_124027_add_lang_fields', 6),
(32, '2019_09_20_131233_add_image_to_cats', 7),
(34, '2019_09_20_162449_create_product_categories_table', 8),
(35, '2019_09_20_183920_create_advantages_table', 9),
(36, '2019_09_23_084329_field_to_category_title2', 10),
(38, '2019_09_23_092219_create_lines_table', 11),
(39, '2019_09_24_065052_pcategory', 12),
(40, '2019_09_24_153232_add_price_field_to_prods', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-09-17 02:30:40', '2019-09-17 02:30:40');

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
-- Структура таблицы `pcategories`
--

CREATE TABLE `pcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description2` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_inside` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ru',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pcategories`
--

INSERT INTO `pcategories` (`id`, `name`, `title2`, `slug`, `description`, `description2`, `image`, `image_inside`, `active`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Турбокомпрессоры', 'Турбокомпрессоров', 'turbokompressory', 'На сегодняшний воздушные компрессоры представляют собой широкий выбор установок, различающихся между собой по принципу действия, оснащению и устройству, рабочим и другим характеристикам. Каждый тип оборудования имеет свои преимущества и особенности, которые делают выбор той или иной установки наиболее оптимальным. Однако при этом наиболее популярными являются винтовые компрессоры, устройство которых обеспечивает высокую эффективность и надежность работы оборудования.', 'Компания \"Далгакиран\" предлагает поставку, монтаж, пуско-наладку, сервисное и постгарантийное обслуживание винтовых компрессорных станций для промышленного применения в энергетической, химической, аграрной, медицинской, пищевой, автомобильной и строительной отраслях хозяйства. Одновременно с компрессорами компания может предоставить системы управления и мониторинга своего промышленного оборудования.', 'pcategories\\September2019\\4KZ9PktWjOfNLdnSorgJ.png', 'pcategories\\September2019\\BK6wPZS72N3sN3mgzRFa.png', 1, 'ru', '2019-09-24 08:36:00', '2019-09-24 08:37:13'),
(2, 'Винтовые маслянные компрессоры', 'Маслянных Компрессоров', 'vintovye-maslyannye-kompressory', 'На сегодняшний воздушные компрессоры представляют собой широкий выбор установок, различающихся между собой по принципу действия, оснащению и устройству, рабочим и другим характеристикам. Каждый тип оборудования имеет свои преимущества и особенности, которые делают выбор той или иной установки наиболее оптимальным. Однако при этом наиболее популярными являются винтовые компрессоры, устройство которых обеспечивает высокую эффективность и надежность работы оборудования.', 'Компания \"Далгакиран\" предлагает поставку, монтаж, пуско-наладку, сервисное и постгарантийное обслуживание винтовых компрессорных станций для промышленного применения в энергетической, химической, аграрной, медицинской, пищевой, автомобильной и строительной отраслях хозяйства. Одновременно с компрессорами компания может предоставить системы управления и мониторинга своего промышленного оборудования.', 'pcategories\\September2019\\0BX2em1ix3hUc3k6hpzt.png', 'pcategories\\September2019\\kg9jr9PjpD7GEbkrgKgB.png', 1, 'ru', '2019-09-24 08:38:17', '2019-09-24 08:38:17');

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(2, 'browse_bread', NULL, '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(3, 'browse_database', NULL, '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(4, 'browse_media', NULL, '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(5, 'browse_compass', NULL, '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(6, 'browse_menus', 'menus', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(7, 'read_menus', 'menus', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(8, 'edit_menus', 'menus', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(9, 'add_menus', 'menus', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(10, 'delete_menus', 'menus', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(11, 'browse_roles', 'roles', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(12, 'read_roles', 'roles', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(13, 'edit_roles', 'roles', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(14, 'add_roles', 'roles', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(15, 'delete_roles', 'roles', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(16, 'browse_users', 'users', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(17, 'read_users', 'users', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(18, 'edit_users', 'users', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(19, 'add_users', 'users', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(20, 'delete_users', 'users', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(21, 'browse_settings', 'settings', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(22, 'read_settings', 'settings', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(23, 'edit_settings', 'settings', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(24, 'add_settings', 'settings', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(25, 'delete_settings', 'settings', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(26, 'browse_categories', 'categories', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(27, 'read_categories', 'categories', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(28, 'edit_categories', 'categories', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(29, 'add_categories', 'categories', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(30, 'delete_categories', 'categories', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(31, 'browse_posts', 'posts', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(32, 'read_posts', 'posts', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(33, 'edit_posts', 'posts', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(34, 'add_posts', 'posts', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(35, 'delete_posts', 'posts', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(36, 'browse_pages', 'pages', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(37, 'read_pages', 'pages', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(38, 'edit_pages', 'pages', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(39, 'add_pages', 'pages', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(40, 'delete_pages', 'pages', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(41, 'browse_hooks', NULL, '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(42, 'browse_sliders', 'sliders', '2019-09-17 03:16:24', '2019-09-17 03:16:24'),
(43, 'read_sliders', 'sliders', '2019-09-17 03:16:24', '2019-09-17 03:16:24'),
(44, 'edit_sliders', 'sliders', '2019-09-17 03:16:24', '2019-09-17 03:16:24'),
(45, 'add_sliders', 'sliders', '2019-09-17 03:16:24', '2019-09-17 03:16:24'),
(46, 'delete_sliders', 'sliders', '2019-09-17 03:16:24', '2019-09-17 03:16:24'),
(47, 'browse_blocks', 'blocks', '2019-09-17 03:44:23', '2019-09-17 03:44:23'),
(48, 'read_blocks', 'blocks', '2019-09-17 03:44:23', '2019-09-17 03:44:23'),
(49, 'edit_blocks', 'blocks', '2019-09-17 03:44:23', '2019-09-17 03:44:23'),
(50, 'add_blocks', 'blocks', '2019-09-17 03:44:23', '2019-09-17 03:44:23'),
(51, 'delete_blocks', 'blocks', '2019-09-17 03:44:23', '2019-09-17 03:44:23'),
(52, 'browse_products', 'products', '2019-09-17 05:51:21', '2019-09-17 05:51:21'),
(53, 'read_products', 'products', '2019-09-17 05:51:21', '2019-09-17 05:51:21'),
(54, 'edit_products', 'products', '2019-09-17 05:51:21', '2019-09-17 05:51:21'),
(55, 'add_products', 'products', '2019-09-17 05:51:21', '2019-09-17 05:51:21'),
(56, 'delete_products', 'products', '2019-09-17 05:51:21', '2019-09-17 05:51:21'),
(57, 'browse_product_categories', 'product_categories', '2019-09-20 13:42:17', '2019-09-20 13:42:17'),
(58, 'read_product_categories', 'product_categories', '2019-09-20 13:42:17', '2019-09-20 13:42:17'),
(59, 'edit_product_categories', 'product_categories', '2019-09-20 13:42:17', '2019-09-20 13:42:17'),
(60, 'add_product_categories', 'product_categories', '2019-09-20 13:42:17', '2019-09-20 13:42:17'),
(61, 'delete_product_categories', 'product_categories', '2019-09-20 13:42:17', '2019-09-20 13:42:17'),
(62, 'browse_advantages', 'advantages', '2019-09-20 15:43:52', '2019-09-20 15:43:52'),
(63, 'read_advantages', 'advantages', '2019-09-20 15:43:52', '2019-09-20 15:43:52'),
(64, 'edit_advantages', 'advantages', '2019-09-20 15:43:52', '2019-09-20 15:43:52'),
(65, 'add_advantages', 'advantages', '2019-09-20 15:43:52', '2019-09-20 15:43:52'),
(66, 'delete_advantages', 'advantages', '2019-09-20 15:43:52', '2019-09-20 15:43:52'),
(67, 'browse_lines', 'lines', '2019-09-23 13:19:28', '2019-09-23 13:19:28'),
(68, 'read_lines', 'lines', '2019-09-23 13:19:28', '2019-09-23 13:19:28'),
(69, 'edit_lines', 'lines', '2019-09-23 13:19:28', '2019-09-23 13:19:28'),
(70, 'add_lines', 'lines', '2019-09-23 13:19:28', '2019-09-23 13:19:28'),
(71, 'delete_lines', 'lines', '2019-09-23 13:19:28', '2019-09-23 13:19:28'),
(72, 'browse_pcategories', 'pcategories', '2019-09-24 08:24:47', '2019-09-24 08:24:47'),
(73, 'read_pcategories', 'pcategories', '2019-09-24 08:24:47', '2019-09-24 08:24:47'),
(74, 'edit_pcategories', 'pcategories', '2019-09-24 08:24:47', '2019-09-24 08:24:47'),
(75, 'add_pcategories', 'pcategories', '2019-09-24 08:24:47', '2019-09-24 08:24:47'),
(76, 'delete_pcategories', 'pcategories', '2019-09-24 08:24:47', '2019-09-24 08:24:47');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(76, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-17 02:30:40', '2019-09-17 02:30:40');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `art` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photos` text COLLATE utf8mb4_unicode_ci,
  `stock` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `stars` double(8,2) DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `manufacture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vid_compresora` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tip_compresora` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tip_privoda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proizvoditelnost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `davlenie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moshnost_dvigatela` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `napravlenie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uroven_shuma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `massa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dlinna` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shirina` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garantia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prosmotry` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ru',
  `oldprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `art`, `description`, `price`, `photo`, `photos`, `stock`, `active`, `stars`, `line_id`, `manufacture`, `country`, `vid_compresora`, `tip_compresora`, `tip_privoda`, `proizvoditelnost`, `davlenie`, `moshnost_dvigatela`, `napravlenie`, `uroven_shuma`, `massa`, `dlinna`, `shirina`, `visota`, `garantia`, `prosmotry`, `created_at`, `updated_at`, `lang`, `oldprice`) VALUES
(6, 'Компрессор серии tidy', 'kompressor-serii-tidy', '80-3030', '<p>Наши компрессоры самые компрессорные...&nbsp;</p>\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Distinctio voluptas recusandae nesciunt consectetur? Neque est fugiat magnam quae possimus sequi explicabo, dignissimos quisquam minus, amet, exercitationem atque doloribus aut qui non. Iusto magnam, quisquam quasi debitis ducimus iste ullam consequuntur fuga dolore voluptatem necessitatibus cupiditate facere sit, odit ea expedita error vitae nisi animi impedit sunt ipsa? Obcaecati dicta magni ducimus et vero non libero nostrum deserunt illo neque laboriosam laudantium, recusandae atque temporibus eius sequi, ex doloremque? Eveniet nam exercitationem laboriosam, nulla quod dolor neque saepe id odio praesentium itaque enim.</p>\r\n<p>Molestiae ullam nam repellendus nulla corrupti recusandae accusamus, laboriosam nemo at dolor sequi dolore nostrum, unde ea sint id tempora amet, possimus aliquid enim. Ut voluptatibus soluta dicta commodi provident, quis dolor distinctio enim et odit impedit esse saepe voluptas natus sequi ipsa voluptates ex sed placeat quaerat reprehenderit laborum delectus? Quasi, natus quas odit veritatis sequi hic magnam laborum alias obcaecati reiciendis esse commodi voluptatem beatae minima eligendi minus quisquam neque libero doloremque tempora iure maiores! Voluptatum dolores aliquam repellat ex iste iure maiores commodi ducimus, voluptatibus distinctio veritatis, impedit culpa laboriosam veniam perferendis illo ipsam quaerat molestias nesciunt temporibus qui accusamus voluptate quas? Dolore officiis sapiente labore doloremque nobis repellat provident veniam quae deserunt minima iusto nesciunt unde iure autem dolorem accusantium, in quod? Corporis sunt cum nemo, enim quo molestias animi! Cum, ipsa! Incidunt assumenda nisi fugit amet, quaerat sequi veritatis nostrum, omnis quia error at?</p>\r\n<p>Neque fugiat ipsa quam, eum non voluptas culpa doloremque, cumque ipsam a laudantium ipsum nam consequuntur impedit quis illum dicta quisquam soluta, temporibus molestias. Nihil, sunt corporis perferendis explicabo qui vel labore vero assumenda laboriosam maxime cupiditate quia, minima nostrum? Quae tempore iure laborum quia! Delectus natus dolorum magnam odit vel inventore neque. Non iste assumenda explicabo atque recusandae dolore nemo mollitia, facere eius fugit eos omnis labore commodi qui dolores animi praesentium sequi ad beatae? Minus labore molestias inventore mollitia ratione obcaecati assumenda esse error consequatur facilis similique, veritatis, reprehenderit nulla fugiat dolore? Quisquam, inventore voluptatem.</p>\r\n<p>Nesciunt unde omnis dolorum perspiciatis atque corporis consequuntur incidunt laborum repellendus maiores assumenda dicta quasi cupiditate aut quas, facere accusamus quia, excepturi dignissimos reiciendis. Dolore voluptate voluptas ea deserunt assumenda consequuntur totam consequatur, officiis iure qui iste illo non id ullam magni perspiciatis vero praesentium reprehenderit natus accusamus architecto. Cum necessitatibus repellat nesciunt quaerat dignissimos quibusdam, labore voluptates perferendis minus assumenda harum quia cumque earum nihil, dolore voluptatum ipsam alias sapiente iste doloribus itaque eaque! Veritatis dolore pariatur accusantium in error molestias, debitis at assumenda quia! Nostrum aliquam maxime quaerat dolor. Iure, recusandae laborum similique impedit odio dolorum incidunt repellendus consectetur culpa iusto eligendi quo, numquam asperiores accusamus aliquam, cumque sint obcaecati optio consequuntur doloribus est ipsam laboriosam! Qui, accusamus velit suscipit quod blanditiis et labore reprehenderit tempora, ducimus voluptates, illo nam.</p>\r\n<p>Cupiditate nulla laborum animi odit, modi et ad quae consectetur cum velit voluptatibus eveniet, fugiat maiores laboriosam laudantium ipsa quidem culpa obcaecati ratione hic, aliquid commodi quas! Est atque placeat, tenetur expedita sequi numquam dolore saepe cupiditate velit tempore, dolorem molestias dolores assumenda! Esse dicta necessitatibus dolore. Vel ad, voluptate iure officiis aliquid quia aliquam voluptas similique nam sed fuga est repellat neque enim, nostrum illo doloribus vitae delectus alias obcaecati consequuntur omnis in temporibus! Quas, cum sed expedita blanditiis alias perferendis enim veniam ea beatae numquam aliquid assumenda, nesciunt dolor quo vel reiciendis consectetur ex explicabo et totam exercitationem mollitia labore ad! Pariatur, vel quam tenetur repellat modi perferendis dignissimos laborum delectus sit consequuntur minus odit laudantium odio eius voluptatem quod obcaecati corporis quae dolore perspiciatis voluptatibus!</p>\r\n<p>Delectus repellendus blanditiis debitis! Nostrum quidem et rerum beatae incidunt suscipit aspernatur libero porro. Distinctio et incidunt quasi dolorem, quia laboriosam rem autem ullam illo iste at magnam voluptatem eius accusantium ipsam quis, rerum esse ipsum nostrum?&nbsp;</p>', 125000, 'products\\September2019\\SxZaBAb6KZn19El54Z4m.png', '[\"products\\\\September2019\\\\w6dTyIo9i0Mwz2SXqOG1.jpg\",\"products\\\\September2019\\\\A1S5fzFx7FFj2d32BZEH.jpg\",\"products\\\\September2019\\\\Z689WWWVKWq6FB5sT8Ct.jpg\"]', 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 09:55:00', '2019-09-24 12:35:30', 'ru', 190000),
(7, 'Компрессор тест', 'kompressor-test', '30-300', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n<p>Nobis ipsam, eaque corporis ducimus magni numquam doloremque temporibus perspiciatis minus, tempora quia. Sed, nemo, tempora perspiciatis numquam id reiciendis asperiores repellendus quam fuga porro quidem optio unde. Totam laudantium eius quos assumenda illo, deserunt natus perspiciatis recusandae hic maiores iusto facilis reprehenderit cupiditate. Expedita ut nemo vel ea eligendi facere dolore voluptatum soluta veniam non beatae placeat laborum, eveniet a quisquam dignissimos modi rem, optio assumenda sunt maiores doloremque vitae aliquam? Officiis placeat laborum quam iste quisquam? Ipsa exercitationem incidunt esse distinctio a fuga hic optio sit repudiandae perferendis odit dolorum nihil, facere suscipi</p>\r\n<p>t, laborum voluptatem aliquid saepe consectetur ullam inventore veritatis. Sapiente quae esse, quia voluptatem, dolor dicta placeat aliquid architecto quibusdam minima nihil laudantium illo accusamus omnis incidunt necessitatibus nisi? Corporis harum vel odio quibusdam quod voluptatibus placeat minima, possimus eos enim illum fuga nostrum perferendis distinctio ad commodi soluta dolore molestias blanditiis necessitatibus cupiditate pariatur qui. Delectus, facere a? Illo vero suscipit qui! Itaque ducimus excepturi tenetur at ad, doloremque iste suscipit. Cum aperiam repellendus quos debitis inventore animi praesentium, vitae repudiandae illum voluptate incidunt perspiciatis asperiores. Deleniti reprehenderit dolore laboriosam delectus nesciunt non voluptas accusamus quidem! Reprehenderit deleniti qui incidunt ab debitis tempora reiciendis vero commodi omnis corrupti velit perspiciatis fuga architecto, accusantium laborum ea. Voluptatum ab quo quibusdam repellat quae minus, at soluta consectetur amet ducimus laborum possimus voluptates tempore nobis. Nemo, quo omnis vel ex asp</p>\r\n<p>ernatur ullam neque minus. Eos magnam sapiente esse distinctio rerum eius provident? Corrupti dolore reprehenderit, fugiat, autem minima sed non maxime ratione quis, enim laboriosam blanditiis maiores magnam quasi perspiciatis id perferendis repellendus aspernatur doloremque hic! Voluptas in similique minima nihil placeat, ea architecto corrupti eum pariatur quas praesentium illo recusandae beatae, reiciendis laudantium aliquid, asperiores dolorem tempore nulla laborum!</p>', 122500, 'products\\September2019\\6ooOPh0tWpzxAH03KZnR.png', '[\"products\\\\September2019\\\\i3dhd0G1KowCN8RbEYwg.jpg\",\"products\\\\September2019\\\\X9hIA5Fp6QRfixIF5NFg.jpg\",\"products\\\\September2019\\\\k5JTk5EeOsILhlwfmtLp.jpg\"]', 1, 1, NULL, 1, 'BCD', 'Италия', 'Топлевный', 'Прямой', 'зубчатый', '1200', '300', '2000', '3х', '90', '360', '700', '600', '200', '24', NULL, '2019-09-20 10:10:00', '2019-09-24 12:35:13', 'ru', 200000);

-- --------------------------------------------------------

--
-- Структура таблицы `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description2` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_inside` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ru',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `description`, `description2`, `image`, `image_inside`, `active`, `lang`, `created_at`, `updated_at`, `title2`) VALUES
(1, 'Винтовые маслянные компрессоры', 'vintovye-maslyannye-kompressory', 'На сегодняшний воздушные компрессоры представляют собой широкий выбор установок, различающихся между собой по принципу действия, оснащению и устройству, рабочим и другим характеристикам. Каждый тип оборудования имеет свои преимущества и особенности, которые делают выбор той или иной установки наиболее оптимальным. Однако при этом наиболее популярными являются винтовые компрессоры, устройство которых обеспечивает высокую эффективность и надежность работы оборудования.', 'Компания \"Далгакиран\" предлагает поставку, монтаж, пуско-наладку, сервисное и постгарантийное обслуживание винтовых компрессорных станций для промышленного применения в энергетической, химической, аграрной, медицинской, пищевой, автомобильной и строительной отраслях хозяйства. Одновременно с компрессорами компания может предоставить системы управления и мониторинга своего промышленного оборудования.', 'product-categories\\September2019\\x4Pr8CjKVBWwxP6vOcZU.png', 'product-categories\\September2019\\pZuTTDbbMsUCV1kvsK2Q.png', 1, 'ru', '2019-09-20 13:53:00', '2019-09-23 05:57:11', 'Маслянных Компрессоров'),
(2, 'Турбокомпрессоры', 'turbokompressory', 'На сегодняшний воздушные компрессоры представляют собой широкий выбор установок, различающихся между собой по принципу действия, оснащению и устройству, рабочим и другим характеристикам. Каждый тип оборудования имеет свои преимущества и особенности, которые делают выбор той или иной установки наиболее оптимальным. Однако при этом наиболее популярными являются винтовые компрессоры, устройство которых обеспечивает высокую эффективность и надежность работы оборудования.', 'Компания \"Далгакиран\" предлагает поставку, монтаж, пуско-наладку, сервисное и постгарантийное обслуживание винтовых компрессорных станций для промышленного применения в энергетической, химической, аграрной, медицинской, пищевой, автомобильной и строительной отраслях хозяйства. Одновременно с компрессорами компания может предоставить системы управления и мониторинга своего промышленного оборудования.', 'product-categories\\September2019\\DBWowX7XWJg39P8VtOww.png', 'product-categories\\September2019\\FApH2TCrIrmEWEKkEUQF.png', 1, 'ru', '2019-09-20 13:54:00', '2019-09-23 05:55:58', 'Турбокомпрессоров');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-09-17 02:30:39', '2019-09-17 02:30:39'),
(2, 'user', 'Normal User', '2019-09-17 02:30:39', '2019-09-17 02:30:39');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Dalgakiran', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'DALGAKIRAN', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Вход в админ панель', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'kontakty.phone', 'Телефон', '8 (495) 461-62-35', NULL, 'text', 6, 'Контакты'),
(12, 'kontakty.email', 'email', 'info@dalgakiran.su', NULL, 'text', 7, 'Контакты');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slider`, `image`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Слайдер на главной', 'main_slider', 'sliders\\September2019\\8Cm47y9aH5n0fVX5t4Kk.png', 'ru', '2019-09-17 03:18:16', '2019-09-17 03:18:16');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-09-17 02:30:40', '2019-09-17 02:30:40'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-09-17 02:30:40', '2019-09-17 02:30:40');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$aeMA9vGT262P.dMdBgwMj.bQ9EjchF2kLGTDBeHooB4klZqYVyEPm', 'HzQK1NzOuQullizqKHJ77nv9wW66ASktCkO9DkB5t0rx0q3AxBmJK7xj3RWS', NULL, '2019-09-17 02:30:40', '2019-09-17 02:30:40');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `lines`
--
ALTER TABLE `lines`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `advantages`
--
ALTER TABLE `advantages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `lines`
--
ALTER TABLE `lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
