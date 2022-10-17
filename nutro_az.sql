-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 17 Eki 2022, 07:56:45
-- Sunucu sürümü: 5.7.38
-- PHP Sürümü: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `nutro_az`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actionable_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext COLLATE utf8_unicode_ci,
  `changes` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '94b11248-de7f-4592-825b-16ae59da239d', 1, 'Create', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-22 01:59:28', '2021-10-22 01:59:28', NULL, '{\"address\":\"Baku\",\"email\":\"ilkin_mov22@mail.ru\",\"phone\":\"0519267503\",\"Fax\":\"34\",\"lngt\":\"444\",\"lgt\":\"32\",\"updated_at\":\"2021-10-22T05:59:28.000000Z\",\"created_at\":\"2021-10-22T05:59:28.000000Z\",\"id\":1}'),
(2, '94b11280-37a1-4fd6-be19-10173746c3db', 1, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-22 02:00:05', '2021-10-22 02:00:05', '{\"fax\":\"34\"}', '{\"fax\":\"111111\"}'),
(3, '94b11883-921c-49bb-a758-407884e960bd', 1, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-22 02:16:53', '2021-10-22 02:16:53', '{\"address\":\"Baku\"}', '{\"address\":\"{\\\"az\\\":444,\\\"en\\\":455555,\\\"ru\\\":7777777}\"}'),
(4, '94b122b4-9103-453b-b586-70ee6706fffa', 1, 'Create', 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, '', 'finished', '', '2021-10-22 02:45:23', '2021-10-22 02:45:23', NULL, '{\"title\":{\"az\":\"Haqqiizda\",\"en\":\"wer\",\"ru\":\"wer\"},\"description\":{\"az\":\"<div>sdf<\\/div>\",\"en\":\"<div>wer<\\/div>\",\"ru\":\"<div>wer<\\/div>\"},\"updated_at\":\"2021-10-22T06:45:23.000000Z\",\"created_at\":\"2021-10-22T06:45:23.000000Z\",\"id\":1}'),
(5, '94b7353b-1d5c-4a90-87cd-b17a691e9b21', 1, 'Update', 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, '', 'finished', '', '2021-10-25 03:12:10', '2021-10-25 03:12:10', '{\"title\":\"{\\\"az\\\":\\\"Haqqiizda\\\",\\\"en\\\":\\\"wer\\\",\\\"ru\\\":\\\"wer\\\"}\"}', '{\"title\":\"{\\\"az\\\":\\\"Haqqimizda\\\",\\\"en\\\":\\\"wer\\\",\\\"ru\\\":\\\"wer\\\"}\"}'),
(6, '94b735d6-0348-4e63-9f6f-0900ad5e58f3', 1, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-25 03:13:51', '2021-10-25 03:13:51', '{\"address\":\"{\\\"az\\\":444,\\\"en\\\":455555,\\\"ru\\\":7777777}\"}', '{\"address\":\"{\\\"az\\\":\\\"Azerbaijan, AZ1143, Baku, H.Javid avenue 119 Institute of Geology and                         Geophysics of ANAS\\\",\\\"en\\\":455555,\\\"ru\\\":7777777}\"}'),
(7, '94b74e49-d60b-45d8-8e34-a002d671faf6', 1, 'Create', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2021-10-25 04:22:13', '2021-10-25 04:22:13', NULL, '{\"updated_at\":\"2021-10-25T08:22:13.000000Z\",\"created_at\":\"2021-10-25T08:22:13.000000Z\",\"id\":1}'),
(8, '94b74e59-5a91-4ccc-8779-bcbcc9b215da', 1, 'Create', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2021-10-25 04:22:24', '2021-10-25 04:22:24', NULL, '{\"updated_at\":\"2021-10-25T08:22:24.000000Z\",\"created_at\":\"2021-10-25T08:22:24.000000Z\",\"id\":2}'),
(9, '94b74e93-fcac-4a33-9bbf-334672e9e485', 1, 'Create', 'App\\Models\\Slider', 3, 'App\\Models\\Slider', 3, 'App\\Models\\Slider', 3, '', 'finished', '', '2021-10-25 04:23:02', '2021-10-25 04:23:02', NULL, '{\"updated_at\":\"2021-10-25T08:23:02.000000Z\",\"created_at\":\"2021-10-25T08:23:02.000000Z\",\"id\":3}'),
(10, '967e446a-c555-4c47-bf5f-dbd979ccd5f2', 2, 'Update', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '', 'finished', '', '2022-06-08 08:16:18', '2022-06-08 08:16:18', '{\"name\":\"Kamil\"}', '{\"name\":\"Fira\"}'),
(11, '96840864-1883-4dfe-b724-823895870ab0', 2, 'Create', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2022-06-11 05:03:26', '2022-06-11 05:03:26', NULL, '{\"email\":\"info@nutro.az\",\"phone\":\"070-888-45-81\",\"address\":\"Azerbaijan,Baku city,Nerimanov\",\"updated_at\":\"2022-06-11T09:03:26.000000Z\",\"created_at\":\"2022-06-11T09:03:26.000000Z\",\"id\":1}'),
(12, '968418e8-8142-4e24-996a-d3041206550a', 2, 'Create', 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, '', 'finished', '', '2022-06-11 05:49:37', '2022-06-11 05:49:37', NULL, '{\"name\":\"Hazelnut\",\"updated_at\":\"2022-06-11T09:49:37.000000Z\",\"created_at\":\"2022-06-11T09:49:37.000000Z\",\"id\":1}'),
(13, '968418f1-9e88-4e8d-b1cc-d720db25614d', 2, 'Create', 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, '', 'finished', '', '2022-06-11 05:49:43', '2022-06-11 05:49:43', NULL, '{\"name\":\"Sweet\",\"updated_at\":\"2022-06-11T09:49:43.000000Z\",\"created_at\":\"2022-06-11T09:49:43.000000Z\",\"id\":2}'),
(14, '96842906-5516-4966-b523-a84a3a75d670', 2, 'Create', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, '', 'finished', '', '2022-06-11 06:34:41', '2022-06-11 06:34:41', NULL, '{\"category_id\":1,\"name\":\"Hazelnut Product 1\",\"short_desc\":\"Reference site about Lorem Ipsum, giving information on its origins, as\",\"desc\":\"Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.\",\"updated_at\":\"2022-06-11T10:34:41.000000Z\",\"created_at\":\"2022-06-11T10:34:41.000000Z\",\"id\":1}'),
(15, '96842ba9-9c42-4395-9a42-99603f91bd47', 2, 'Create', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 06:42:03', '2022-06-11 06:42:03', NULL, '{\"category_id\":2,\"name\":\"Sweet Product\",\"short_desc\":\"@endforeach   @endforeach\",\"desc\":\"@endforeach   @endforeach   @endforeach   @endforeach   @endforeach   @endforeach\",\"updated_at\":\"2022-06-11T10:42:03.000000Z\",\"created_at\":\"2022-06-11T10:42:03.000000Z\",\"id\":2}'),
(16, '96842bc7-dfda-4c13-be1b-592a4e06324b', 2, 'Update', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 06:42:23', '2022-06-11 06:42:23', '{\"name\":\"Sweet Product\"}', '{\"name\":\"Sweet Product 1\"}'),
(17, '968430d1-d643-4961-bda8-dac6a230181a', 2, 'Update', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, '', 'finished', '', '2022-06-11 06:56:29', '2022-06-11 06:56:29', '[]', '[]'),
(18, '9684312f-f2a2-4a91-94ce-248086985950', 2, 'Update', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 06:57:30', '2022-06-11 06:57:30', '[]', '[]'),
(19, '968432e8-0162-4152-9a43-1ec1963429ad', 2, 'Update', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 07:02:19', '2022-06-11 07:02:19', '[]', '[]'),
(20, '968433ac-d311-4398-bc01-68be91b6fe56', 2, 'Create', 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, '', 'finished', '', '2022-06-11 07:04:28', '2022-06-11 07:04:28', NULL, '{\"category_id\":1,\"name\":\"Hazelnut 2\",\"short_desc\":\"Tasty and delicious\",\"desc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"updated_at\":\"2022-06-11T11:04:28.000000Z\",\"created_at\":\"2022-06-11T11:04:28.000000Z\",\"id\":3}'),
(21, '968433bb-a02b-4e8f-9345-637e0d69c444', 2, 'Update', 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, '', 'finished', '', '2022-06-11 07:04:37', '2022-06-11 07:04:37', '[]', '[]'),
(24, '96843cb8-aab9-468c-8d21-bce15f47c335', 2, 'Update', 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, '', 'finished', '', '2022-06-11 07:29:45', '2022-06-11 07:29:45', '[]', '[]'),
(25, '96843ce3-6970-49a9-92f4-7e920c2ea3c1', 2, 'Update', 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, '', 'finished', '', '2022-06-11 07:30:13', '2022-06-11 07:30:13', '{\"slug\":\"\"}', '{\"slug\":\"hazelnut\"}'),
(26, '96843f22-a9f4-4a65-ad35-e5766410766a', 2, 'Update', 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, '', 'finished', '', '2022-06-11 07:36:30', '2022-06-11 07:36:30', '{\"slug\":\"\"}', '{\"slug\":\"sweet\"}'),
(27, '96843fe6-4ada-4c7c-b82f-147091e0f757', 2, 'Update', 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, '', 'finished', '', '2022-06-11 07:38:39', '2022-06-11 07:38:39', '{\"slug\":\"\"}', '{\"slug\":\"hazelnut-2\"}'),
(28, '96843ff2-55bf-48a4-a36b-05b65b916093', 2, 'Update', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 07:38:46', '2022-06-11 07:38:46', '{\"slug\":\"\"}', '{\"slug\":\"sweet-product-1\"}'),
(29, '96843ffe-56bb-4218-b53f-2c7ba9e2f570', 2, 'Update', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, '', 'finished', '', '2022-06-11 07:38:54', '2022-06-11 07:38:54', '{\"slug\":\"\"}', '{\"slug\":\"hazelnut-product-1\"}'),
(30, '968446d4-64d9-404d-855f-92f4ba73736c', 2, 'Delete', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '', 'finished', '', '2022-06-11 07:58:01', '2022-06-11 07:58:01', NULL, NULL),
(31, '9684470e-996c-43c1-9c9d-9f805e6bbbb8', 2, 'Update', 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, '', 'finished', '', '2022-06-11 07:58:39', '2022-06-11 07:58:39', '{\"description\":\"{\\\"az\\\":\\\"<div>sdf<\\\\\\/div>\\\",\\\"en\\\":\\\"<div>wer<\\\\\\/div>\\\",\\\"ru\\\":\\\"<div>wer<\\\\\\/div>\\\"}\"}', '{\"description\":\"{\\\"az\\\":\\\"<div>s<strong>df<\\\\\\/strong><\\\\\\/div>\\\",\\\"en\\\":\\\"<div>wer<\\\\\\/div>\\\",\\\"ru\\\":\\\"<div>wer<\\\\\\/div>\\\"}\"}'),
(32, '96844eff-adb1-49f7-81f2-d7a8930e896f', 2, 'Create', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-11 08:20:52', '2022-06-11 08:20:52', NULL, '{\"title\":\"Nutro az\",\"desc1\":\"Slider 1 desc 1.1\",\"desc2\":\"Slider 1 desc 2.1\",\"link\":\"link any\",\"updated_at\":\"2022-06-11T12:20:52.000000Z\",\"created_at\":\"2022-06-11T12:20:52.000000Z\",\"id\":1}'),
(33, '96844f37-b5ea-47ed-b25c-bcb5aa2a2895', 2, 'Create', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-11 08:21:29', '2022-06-11 08:21:29', NULL, '{\"title\":\"Nutro Az slider 2\",\"desc1\":\"slider 2 desc 1.2\",\"desc2\":\"slider 2 desc 2.1\",\"link\":\"linkayns2\",\"updated_at\":\"2022-06-11T12:21:29.000000Z\",\"created_at\":\"2022-06-11T12:21:29.000000Z\",\"id\":2}'),
(34, '96845093-a54d-4af6-a8d1-6060f0d5f86a', 2, 'Update', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-11 08:25:17', '2022-06-11 08:25:17', '[]', '[]'),
(35, '96845383-2a5f-4e4e-825c-0587122ccdb4', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-11 08:33:29', '2022-06-11 08:33:29', '[]', '[]'),
(36, '96882a57-844f-4602-add7-889dd898da8d', 2, 'Update', 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, '', 'finished', '', '2022-06-13 06:21:40', '2022-06-13 06:21:40', '{\"meta_title\":\"\",\"meta_description\":\"\",\"meta_keyword\":\"\"}', '{\"meta_title\":\"Product 1\",\"meta_description\":\"Product 1\",\"meta_keyword\":\"Product 1\"}'),
(37, '968e240f-df45-481c-915c-5a43ff3fb997', 2, 'Create', 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, '', 'finished', '', '2022-06-16 06:39:05', '2022-06-16 06:39:05', NULL, '{\"category_id\":2,\"name\":\"Name 2\",\"short_desc\":\"short\",\"desc\":\"short\",\"meta_title\":\"sdsd\",\"meta_description\":\"sdfdf\",\"meta_keyword\":\"sdfsdf\",\"slug\":\"name-2\",\"updated_at\":\"2022-06-16T09:39:05.000000Z\",\"created_at\":\"2022-06-16T09:39:05.000000Z\",\"id\":4}'),
(38, '968e247f-bc05-4e72-8db6-01e9d15b9409', 2, 'Update', 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, '', 'finished', '', '2022-06-16 06:40:18', '2022-06-16 06:40:18', '{\"name\":\"Sweet\",\"slug\":\"sweet\"}', '{\"name\":\"Dried fruits\",\"slug\":\"dried-fruits\"}'),
(39, '968e2492-d5f9-4114-b78c-073c4aa08533', 2, 'Update', 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, '', 'finished', '', '2022-06-16 06:40:31', '2022-06-16 06:40:31', '{\"name\":\"Hazelnut\",\"slug\":\"hazelnut\"}', '{\"name\":\"Nuts\",\"slug\":\"nuts\"}'),
(40, '968e250d-c41f-4e68-ac41-68bf0751af32', 2, 'Update', 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, '', 'finished', '', '2022-06-16 06:41:51', '2022-06-16 06:41:51', '[]', '[]'),
(41, '968e25b3-93f7-47e7-898f-e9a923219a8b', 2, 'Update', 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, '', 'finished', '', '2022-06-16 06:43:40', '2022-06-16 06:43:40', '[]', '[]'),
(42, '968e2611-e024-43b7-b723-5a3602292fca', 2, 'Update', 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, '', 'finished', '', '2022-06-16 06:44:42', '2022-06-16 06:44:42', '[]', '[]'),
(43, '968e26b6-df68-4bb6-9ec1-fe7469750ce4', 2, 'Delete', 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, 'App\\Models\\Product', 4, '', 'finished', '', '2022-06-16 06:46:30', '2022-06-16 06:46:30', NULL, NULL),
(44, '968e26eb-658e-4990-90da-8e3b6f3e2803', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-16 06:47:04', '2022-06-16 06:47:04', '[]', '[]'),
(45, '968fcf11-06f8-42e1-9dd2-d9c6a60fa46d', 2, 'Update', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-17 02:33:05', '2022-06-17 02:33:05', '{\"title\":\"Nutro Az slider 2\",\"desc1\":\"slider 2 desc 1.2\",\"desc2\":\"slider 2 desc 2.1\",\"link\":\"linkayns2\"}', '{\"title\":\"Dried fruits\",\"desc1\":\"Dried fruits description\",\"desc2\":\"Dried fruits desc 2\",\"link\":\"http:\\/\\/nutro.testjed.me\\/products\"}'),
(46, '968fcf93-6008-4ec8-86ab-67b47f8cfc44', 2, 'Update', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-17 02:34:30', '2022-06-17 02:34:30', '{\"desc1\":\"Dried fruits description\",\"desc2\":\"Dried fruits desc 2\"}', '{\"desc1\":\"Specially selected and processed finest Azerbaijani: Dried Mulberry, Dried Persimmon, Grape Molasses\",\"desc2\":\"Specially selected and processed finest Azerbaijani: Dried Mulberry, Dried Persimmon, Grape Molasses\"}'),
(47, '968fd032-28fd-44a5-9898-ccd762fa6fe5', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-17 02:36:14', '2022-06-17 02:36:14', '{\"desc1\":\"Slider 1 desc 1.1\",\"desc2\":\"Slider 1 desc 2.1\",\"link\":\"link any\"}', '{\"desc1\":\"Specially selected and processed finest Azerbaijani: Hazelnut, Walnut, Chestnut, Almond\",\"desc2\":\"Specially selected and processed finest Azerbaijani: Hazelnut, Walnut, Chestnut, Almond\",\"link\":\"http:\\/\\/nutro.testjed.me\\/products\"}'),
(49, '968fdf9b-1e3b-4caa-b0e3-8c053f6c6d70', 2, 'Update', 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, '', 'finished', '', '2022-06-17 03:19:19', '2022-06-17 03:19:19', '{\"meta_title\":null,\"meta_description\":null,\"meta_keyword\":null}', '{\"meta_title\":\"Dried Fruits\",\"meta_description\":\"Dried Fruits\",\"meta_keyword\":\"Dried Fruits\"}'),
(50, '968fdfac-8c31-4673-b959-5e531672afe5', 2, 'Update', 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, '', 'finished', '', '2022-06-17 03:19:31', '2022-06-17 03:19:31', '{\"meta_title\":null,\"meta_description\":null,\"meta_keyword\":null}', '{\"meta_title\":\"Dried Fruits\",\"meta_description\":\"Dried Fruits\",\"meta_keyword\":\"Dried Fruits\"}'),
(51, '968fee4e-5993-4d94-8320-3375515b9e6b', 2, 'Create', 'App\\Models\\Product', 5, 'App\\Models\\Product', 5, 'App\\Models\\Product', 5, '', 'finished', '', '2022-06-17 04:00:26', '2022-06-17 04:00:26', NULL, '{\"category_id\":2,\"name\":\"Mulberry berry\",\"short_desc\":\"Mulberry berry, which has a lot of vitamin C and iron in it, can be consumed during summer and winter.\",\"desc\":\"Mulberry berry, which has a lot of vitamin C and iron in it, can be consumed during summer and winter. When eaten alone, mulberry is an excellent source of antioxidants. \\r\\nMulberry is one of the superfood which contains natural organic compound Cyanidin. Its nutrition feeds human brain and considered quite effective natural ingredient in fight against Alzheimer. We source only sun-dried mulberry which is the depot of natural energy and carbohydrate. \\r\\nOur product does not content any sunflower oil or sugar additives.\",\"meta_title\":\"Mulberry berry. The health benefits of mulberry berry\",\"meta_description\":\"Mulberry berry has a lot of vitamin C and iron in. This berry can be consumed during summer and winter. Mulberry is an excellent source of antioxidants.\",\"meta_keyword\":\"mulberry berry, mulberry\",\"slug\":\"mulberry-berry\",\"updated_at\":\"2022-06-17T07:00:25.000000Z\",\"created_at\":\"2022-06-17T07:00:25.000000Z\",\"id\":5}'),
(52, '96900e11-9201-4e18-ba78-e2eabd98c207', 2, 'Create', 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, '', 'finished', '', '2022-06-17 05:29:14', '2022-06-17 05:29:14', NULL, '{\"category_id\":1,\"name\":\"Hazelnut\",\"short_desc\":\"Hazelnut. We offer you different types of hazelnuts for your choice.\",\"desc\":\"Shelled raw\\r\\n\\r\\nCaliber: 13-15 mm, 11-13 mm, 9-11 mm, 9-15 mm\\r\\n\\r\\nPhysical indicators:\\r\\nSuitable to the Turkish quality standards\\r\\nTS-3075, TS-1917 and Azerbaijan standard AZS077.2003\\r\\nGOST 16835, acting in territory \\u0421IS\\r\\nChemical indicators:\\r\\nFat content - 60 \\u00b1 5 %\\r\\nAcid date (FFA) - max 1 %\\r\\nPeroxide date (PV) - max 1m.e.q. O2\\/kg\\r\\nHumidity:\\r\\nNatural kernels - max 6 %\\r\\nRoasted kernels - max 3 %\\r\\n\\r\\nStorage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity\\r\\nShelf Life: 1 year\\r\\n\\r\\n\\r\\nBlanched \\/ Roasted kernels\\r\\n\\r\\nCaliber: 13-15 mm, 11-13 mm, 9-11 mm\\r\\n\\r\\nPhysical indicators:\\r\\nSuitable to the Turkish quality standards\\r\\nTS-3075, TS-1917 and Azerbaijan standard AZS077.2003\\r\\nGOST 16835, acting in territory \\u0421IS\\r\\nChemical indicators:\\r\\nFat content - 60 \\u00b1 5 %\\r\\nAcid date (FFA) - max 1 %\\r\\nPeroxide date (PV) - max 1m.e.q. O2\\/kg\\r\\nHumidity:\\r\\nNatural kernels - max 6 %\\r\\nRoasted kernels - max 3 %\\r\\n\\r\\nStorage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity\\r\\nShelf Life: 1 year\\r\\n\\r\\n\\r\\n\\r\\nChopped hazelnuts\\r\\n\\r\\nFraction: 2-4 mm, 4-6 mm, 6-8 mm\\r\\nPhysical indicators:\\r\\nSuitable to the Turkish quality standards\\r\\nTS-3075, TS-1917 and Azerbaijan standard AZS077.2003\\r\\nGOST 16835, acting in territory \\u0421IS\\r\\nChemical indicators:\\r\\nFat content - 60 \\u00b1 5 %\\r\\nAcid date (FFA) - max 1 %\\r\\nPeroxide date (PV) - max 1m.e.q. O2\\/kg\\r\\nHumidity:\\r\\nNatural kernels - max 6 %\\r\\nRoasted kernels - max 3 %\\r\\n\\r\\nStorage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity\\r\\nShelf Life: 1 year\",\"meta_title\":\"Hazelnut. Different types of hazelnut: chopped, shelled\",\"meta_description\":\"Hazelnut. Nutro company offers you a choice of hazelnuts: shelled raw, blanched kernels, roasted kernels, chopped hazelnuts.\",\"meta_keyword\":\"hazelnut. chopped, shelled, blanched, roasted\",\"slug\":\"hazelnut\",\"updated_at\":\"2022-06-17T08:29:14.000000Z\",\"created_at\":\"2022-06-17T08:29:14.000000Z\",\"id\":6}'),
(53, '96900e38-d149-4998-9f5c-ff398998eeec', 2, 'Delete', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, '', 'finished', '', '2022-06-17 05:29:40', '2022-06-17 05:29:40', NULL, NULL),
(54, '96900e38-d6e0-4c20-82bc-b731e2041eae', 2, 'Delete', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-17 05:29:40', '2022-06-17 05:29:40', NULL, NULL),
(55, '96900e38-dbd8-48dd-acde-98fea3eb9ae5', 2, 'Delete', 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, '', 'finished', '', '2022-06-17 05:29:40', '2022-06-17 05:29:40', NULL, NULL),
(56, '96900f92-2be2-40de-b844-c4acfb3be292', 2, 'Create', 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, '', 'finished', '', '2022-06-17 05:33:26', '2022-06-17 05:33:26', NULL, '{\"category_id\":2,\"name\":\"Dried Persimmon\",\"short_desc\":\"Persimmon is one of the wide grown fruit in Azerbaijan.\",\"desc\":\"Persimmon is one of the wide grown fruit in Azerbaijan. Its flavor and rich vitamin content can be considered as a superfood as well. Our company delivers only sun-dried persimmon which increases its minerals and intensive flavor. Nutro\\u2019s current facility can deliver up to 1000 tones of dried persimmon yearly.\",\"meta_title\":\"Dried persimmon is the wide grown fruit in Azerbaijan.\",\"meta_description\":\"Dried persimmon is the wide grown fruit in Azerbaijan.\",\"meta_keyword\":\"dried persimmon, persimmon\",\"slug\":\"dried-persimmon\",\"updated_at\":\"2022-06-17T08:33:26.000000Z\",\"created_at\":\"2022-06-17T08:33:26.000000Z\",\"id\":7}'),
(57, '969010ac-7b46-42c2-89ce-71fe5f516af1', 2, 'Update', 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, '', 'finished', '', '2022-06-17 05:36:31', '2022-06-17 05:36:31', '[]', '[]'),
(58, '9690125a-4dcc-4977-8066-94cf5eed7b31', 2, 'Update', 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, '', 'finished', '', '2022-06-17 05:41:13', '2022-06-17 05:41:13', '[]', '[]'),
(59, '9690129f-79d4-497a-933a-1bfa221d1646', 2, 'Update', 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, '', 'finished', '', '2022-06-17 05:41:58', '2022-06-17 05:41:58', '[]', '[]'),
(60, '96904d87-ba2d-421b-9451-be20c86443c4', 2, 'Update', 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, '', 'finished', '', '2022-06-17 08:26:41', '2022-06-17 08:26:41', '{\"desc\":\"Persimmon is one of the wide grown fruit in Azerbaijan. Its flavor and rich vitamin content can be considered as a superfood as well. Our company delivers only sun-dried persimmon which increases its minerals and intensive flavor. Nutro\\u2019s current facility can deliver up to 1000 tones of dried persimmon yearly.\"}', '{\"desc\":\"<div>Pe<strong>rsimm<\\/strong>on is one of the wide grown fruit in Azerbaijan. Its flavor and rich vitamin content can be considered as a superfood as well. Our company delivers only sun-dried persimmon which increases its minerals and intensive flavor. Nutro\\u2019s current facility can deliver up to 1000 tones of dried persimmon yearly.<\\/div>\"}'),
(61, '96904e02-6d1a-4f11-8ce4-0a1ef3b33aff', 2, 'Update', 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, '', 'finished', '', '2022-06-17 08:28:02', '2022-06-17 08:28:02', '{\"desc\":\"<div>Pe<strong>rsimm<\\/strong>on is one of the wide grown fruit in Azerbaijan. Its flavor and rich vitamin content can be considered as a superfood as well. Our company delivers only sun-dried persimmon which increases its minerals and intensive flavor. Nutro\\u2019s current facility can deliver up to 1000 tones of dried persimmon yearly.<\\/div>\"}', '{\"desc\":\"<div>Persimmon is one of the wide grown fruit in Azerbaijan. Its flavor and rich vitamin content can be considered as a superfood as well. Our company delivers only sun-dried persimmon which increases its minerals and intensive flavor. Nutro\\u2019s current facility can deliver up to 1000 tones of dried persimmon yearly.<\\/div>\"}'),
(62, '96905220-c96b-4f1f-8ee2-16fccfe29414', 2, 'Update', 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, '', 'finished', '', '2022-06-17 08:39:33', '2022-06-17 08:39:33', '{\"desc\":\"Shelled raw\\r\\n\\r\\nCaliber: 13-15 mm, 11-13 mm, 9-11 mm, 9-15 mm\\r\\n\\r\\nPhysical indicators:\\r\\nSuitable to the Turkish quality standards\\r\\nTS-3075, TS-1917 and Azerbaijan standard AZS077.2003\\r\\nGOST 16835, acting in territory \\u0421IS\\r\\nChemical indicators:\\r\\nFat content - 60 \\u00b1 5 %\\r\\nAcid date (FFA) - max 1 %\\r\\nPeroxide date (PV) - max 1m.e.q. O2\\/kg\\r\\nHumidity:\\r\\nNatural kernels - max 6 %\\r\\nRoasted kernels - max 3 %\\r\\n\\r\\nStorage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity\\r\\nShelf Life: 1 year\\r\\n\\r\\n\\r\\nBlanched \\/ Roasted kernels\\r\\n\\r\\nCaliber: 13-15 mm, 11-13 mm, 9-11 mm\\r\\n\\r\\nPhysical indicators:\\r\\nSuitable to the Turkish quality standards\\r\\nTS-3075, TS-1917 and Azerbaijan standard AZS077.2003\\r\\nGOST 16835, acting in territory \\u0421IS\\r\\nChemical indicators:\\r\\nFat content - 60 \\u00b1 5 %\\r\\nAcid date (FFA) - max 1 %\\r\\nPeroxide date (PV) - max 1m.e.q. O2\\/kg\\r\\nHumidity:\\r\\nNatural kernels - max 6 %\\r\\nRoasted kernels - max 3 %\\r\\n\\r\\nStorage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity\\r\\nShelf Life: 1 year\\r\\n\\r\\n\\r\\n\\r\\nChopped hazelnuts\\r\\n\\r\\nFraction: 2-4 mm, 4-6 mm, 6-8 mm\\r\\nPhysical indicators:\\r\\nSuitable to the Turkish quality standards\\r\\nTS-3075, TS-1917 and Azerbaijan standard AZS077.2003\\r\\nGOST 16835, acting in territory \\u0421IS\\r\\nChemical indicators:\\r\\nFat content - 60 \\u00b1 5 %\\r\\nAcid date (FFA) - max 1 %\\r\\nPeroxide date (PV) - max 1m.e.q. O2\\/kg\\r\\nHumidity:\\r\\nNatural kernels - max 6 %\\r\\nRoasted kernels - max 3 %\\r\\n\\r\\nStorage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity\\r\\nShelf Life: 1 year\"}', '{\"desc\":\"<div><strong>Shelled raw<\\/strong><\\/div><div>&nbsp;<\\/div><div>Caliber: 13-15 mm, 11-13 mm, 9-11 mm, 9-15 mm<\\/div><div>&nbsp;<\\/div><div>Physical indicators:<br>&nbsp;Suitable to the Turkish quality standards<br>&nbsp;TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<br>&nbsp;GOST 16835, acting in territory \\u0421IS<br>&nbsp;Chemical indicators:<br>&nbsp;Fat content - 60 \\u00b1 5 %<br>&nbsp;Acid date (FFA) - max 1 %<br>&nbsp;Peroxide date (PV) - max 1m.e.q. O2\\/kg<br>&nbsp;Humidity:<br>&nbsp;Natural kernels - max 6 %<br>&nbsp;Roasted kernels - max 3 %<\\/div><div>&nbsp;<\\/div><div>Storage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity<\\/div><div>Shelf Life: 1 year<\\/div><div>&nbsp;<\\/div><div>&nbsp;<br><strong>Blanched \\/ Roasted kernels<\\/strong><\\/div><div><strong>&nbsp;<\\/strong><\\/div><div>Caliber: 13-15 mm, 11-13 mm, 9-11 mm<\\/div><div>&nbsp;<\\/div><div>Physical indicators:<\\/div><div>Suitable to the Turkish quality standards<\\/div><div>TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<\\/div><div>GOST 16835, acting in territory \\u0421IS<\\/div><div>Chemical indicators:<\\/div><div>Fat content - 60 \\u00b1 5 %<\\/div><div>Acid date (FFA) - max 1 %<\\/div><div>Peroxide date (PV) - max 1m.e.q. O2\\/kg<\\/div><div>Humidity:<\\/div><div>Natural kernels - max 6 %<\\/div><div>Roasted kernels - max 3 %<\\/div><div>&nbsp;<\\/div><div>Storage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity<\\/div><div>Shelf Life: 1 year<\\/div><div>&nbsp;<\\/div><div>&nbsp;<\\/div><div>&nbsp;<\\/div><div><strong>Chopped hazelnuts<\\/strong><\\/div><div>&nbsp;<\\/div><div>Fraction: 2-4 mm, 4-6 mm, 6-8 mm<\\/div><div>Physical indicators:<br>&nbsp;Suitable to the Turkish quality standards<br>&nbsp;TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<br>&nbsp;GOST 16835, acting in territory \\u0421IS<br>&nbsp;Chemical indicators:<br>&nbsp;Fat content - 60 \\u00b1 5 %<br>&nbsp;Acid date (FFA) - max 1 %<br>&nbsp;Peroxide date (PV) - max 1m.e.q. O2\\/kg<br>&nbsp;Humidity:<br>&nbsp;Natural kernels - max 6 %<br>&nbsp;Roasted kernels - max 3 %<\\/div><div>&nbsp;<\\/div><div>Storage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity<\\/div><div>Shelf Life: 1 year<\\/div>\"}'),
(63, '9695d833-befb-4441-b052-a3f71f835a81', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-20 02:33:35', '2022-06-20 02:33:35', '{\"title\":\"Nutro az\"}', '{\"title\":\"Nutro\"}'),
(64, '9696448e-13e8-4681-a4ed-2b39c62fb65b', 2, 'Create', 'App\\Models\\Category', 3, 'App\\Models\\Category', 3, 'App\\Models\\Category', 3, '', 'finished', '', '2022-06-20 07:36:34', '2022-06-20 07:36:34', NULL, '{\"category_id\":1,\"name\":\"Hazelnut\",\"slug\":\"hazelnut\",\"meta_title\":\"Hazelnut\",\"meta_description\":\"Hazelnut desc\",\"meta_keyword\":\"Hazelnut keyw\",\"updated_at\":\"2022-06-20T10:36:34.000000Z\",\"created_at\":\"2022-06-20T10:36:34.000000Z\",\"id\":3}'),
(65, '969645b5-6dfe-4a5e-829e-2ae469f2514a', 2, 'Update', 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, '', 'finished', '', '2022-06-20 07:39:47', '2022-06-20 07:39:47', '{\"name\":\"Hazelnut\",\"short_desc\":\"Hazelnut. We offer you different types of hazelnuts for your choice.\",\"category_id\":1,\"slug\":\"hazelnut\"}', '{\"name\":\"Dried Hazelnut\",\"short_desc\":\"Dried Hazelnut. We offer you different types of hazelnuts for your choice.\",\"category_id\":3,\"slug\":\"dried-hazelnut\"}'),
(66, '9697d229-7fc9-4ad7-9c25-1e2d1765bd3c', 2, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2022-06-21 02:08:21', '2022-06-21 02:08:21', '{\"address\":\"Azerbaijan,Baku city,Nerimanov\",\"phone\":\"070-888-45-81\"}', '{\"address\":\"Zaqatala Rayon, Yuxar\\u0131 Tala, F\\u0131nd\\u0131q zavodu\",\"phone\":\"+994 50 281 19 91\"}'),
(67, '9697d76b-4613-4b7f-a3ab-786a1aaf8703', 2, 'Update', 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, '', 'finished', '', '2022-06-21 02:23:03', '2022-06-21 02:23:03', '{\"name\":\"Dried Hazelnut\",\"desc\":\"<div><strong>Shelled raw<\\/strong><\\/div><div>&nbsp;<\\/div><div>Caliber: 13-15 mm, 11-13 mm, 9-11 mm, 9-15 mm<\\/div><div>&nbsp;<\\/div><div>Physical indicators:<br>&nbsp;Suitable to the Turkish quality standards<br>&nbsp;TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<br>&nbsp;GOST 16835, acting in territory \\u0421IS<br>&nbsp;Chemical indicators:<br>&nbsp;Fat content - 60 \\u00b1 5 %<br>&nbsp;Acid date (FFA) - max 1 %<br>&nbsp;Peroxide date (PV) - max 1m.e.q. O2\\/kg<br>&nbsp;Humidity:<br>&nbsp;Natural kernels - max 6 %<br>&nbsp;Roasted kernels - max 3 %<\\/div><div>&nbsp;<\\/div><div>Storage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity<\\/div><div>Shelf Life: 1 year<\\/div><div>&nbsp;<\\/div><div>&nbsp;<br><strong>Blanched \\/ Roasted kernels<\\/strong><\\/div><div><strong>&nbsp;<\\/strong><\\/div><div>Caliber: 13-15 mm, 11-13 mm, 9-11 mm<\\/div><div>&nbsp;<\\/div><div>Physical indicators:<\\/div><div>Suitable to the Turkish quality standards<\\/div><div>TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<\\/div><div>GOST 16835, acting in territory \\u0421IS<\\/div><div>Chemical indicators:<\\/div><div>Fat content - 60 \\u00b1 5 %<\\/div><div>Acid date (FFA) - max 1 %<\\/div><div>Peroxide date (PV) - max 1m.e.q. O2\\/kg<\\/div><div>Humidity:<\\/div><div>Natural kernels - max 6 %<\\/div><div>Roasted kernels - max 3 %<\\/div><div>&nbsp;<\\/div><div>Storage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity<\\/div><div>Shelf Life: 1 year<\\/div><div>&nbsp;<\\/div><div>&nbsp;<\\/div><div>&nbsp;<\\/div><div><strong>Chopped hazelnuts<\\/strong><\\/div><div>&nbsp;<\\/div><div>Fraction: 2-4 mm, 4-6 mm, 6-8 mm<\\/div><div>Physical indicators:<br>&nbsp;Suitable to the Turkish quality standards<br>&nbsp;TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<br>&nbsp;GOST 16835, acting in territory \\u0421IS<br>&nbsp;Chemical indicators:<br>&nbsp;Fat content - 60 \\u00b1 5 %<br>&nbsp;Acid date (FFA) - max 1 %<br>&nbsp;Peroxide date (PV) - max 1m.e.q. O2\\/kg<br>&nbsp;Humidity:<br>&nbsp;Natural kernels - max 6 %<br>&nbsp;Roasted kernels - max 3 %<\\/div><div>&nbsp;<\\/div><div>Storage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity<\\/div><div>Shelf Life: 1 year<\\/div>\",\"slug\":\"dried-hazelnut\"}', '{\"name\":\"Shelled raw\",\"desc\":\"<div><strong>Shelled raw<\\/strong><\\/div><div>&nbsp;<\\/div><div>Caliber: 13-15 mm, 11-13 mm, 9-11 mm, 9-15 mm<\\/div><div>&nbsp;<\\/div><div>Physical indicators:<br>&nbsp;Suitable to the Turkish quality standards<br>&nbsp;TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<br>&nbsp;GOST 16835, acting in territory \\u0421IS<br>&nbsp;Chemical indicators:<br>&nbsp;Fat content - 60 \\u00b1 5 %<br>&nbsp;Acid date (FFA) - max 1 %<br>&nbsp;Peroxide date (PV) - max 1m.e.q. O2\\/kg<br>&nbsp;Humidity:<br>&nbsp;Natural kernels - max 6 %<br>&nbsp;Roasted kernels - max 3 %<\\/div><div>&nbsp;<\\/div><div>Storage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity<\\/div><div>Shelf Life: 1 year<\\/div>\",\"slug\":\"shelled-raw\"}'),
(68, '9697da90-3a35-47d0-8e2e-4241cd590691', 2, 'Create', 'App\\Models\\Product', 8, 'App\\Models\\Product', 8, 'App\\Models\\Product', 8, '', 'finished', '', '2022-06-21 02:31:51', '2022-06-21 02:31:51', NULL, '{\"category_id\":3,\"name\":\"Blanched Roasted kernels\",\"short_desc\":\"Caliber: 13-15 mm, 11-13 mm, 9-11 mm\",\"desc\":\"<div>Caliber: 13-15 mm, 11-13 mm, 9-11 mm<\\/div><div>&nbsp;<\\/div><div>Physical indicators:<\\/div><div>Suitable to the Turkish quality standards<\\/div><div>TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<\\/div><div>GOST 16835, acting in territory \\u0421IS<\\/div><div>Chemical indicators:<\\/div><div>Fat content - 60 \\u00b1 5 %<\\/div><div>Acid date (FFA) - max 1 %<\\/div><div>Peroxide date (PV) - max 1m.e.q. O2\\/kg<\\/div><div>Humidity:<\\/div><div>Natural kernels - max 6 %<\\/div><div>Roasted kernels - max 3 %<\\/div><div>&nbsp;<\\/div><div>Storage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity<\\/div><div>Shelf Life: 1 year<\\/div>\",\"meta_title\":\"test\",\"meta_description\":\"test\",\"meta_keyword\":\"blanched, roasted, kernels\",\"slug\":\"blanched-roasted-kernels\",\"updated_at\":\"2022-06-21T05:31:51.000000Z\",\"created_at\":\"2022-06-21T05:31:51.000000Z\",\"id\":8}'),
(69, '9697daaa-d9d7-4625-8f73-3d6e96cb286a', 2, 'Update', 'App\\Models\\Product', 8, 'App\\Models\\Product', 8, 'App\\Models\\Product', 8, '', 'finished', '', '2022-06-21 02:32:08', '2022-06-21 02:32:08', '{\"name\":\"Blanched Roasted kernels\"}', '{\"name\":\"Blanched\\/Roasted kernels\"}'),
(70, '9697e53f-6ea5-4504-9c38-688f7723c442', 2, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2022-06-21 03:01:43', '2022-06-21 03:01:43', '{\"email2\":null}', '{\"email2\":\"info@nutro.az\"}'),
(71, '9697e55c-7624-4786-81c3-2b70ef8558d9', 2, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2022-06-21 03:02:02', '2022-06-21 03:02:02', '{\"email2\":\"info@nutro.az\"}', '{\"email2\":null}'),
(72, '9697fd02-5d05-48f5-b1c3-d4f2eaa9eab4', 2, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2022-06-21 04:08:10', '2022-06-21 04:08:10', '{\"email2\":null,\"phone2\":null}', '{\"email2\":\"sales@nutro.az\",\"phone2\":\"+49 15774807368\"}'),
(73, '9697fed1-b305-46af-93f8-9ed959cf5684', 2, 'Update', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-21 04:13:13', '2022-06-21 04:13:13', '[]', '[]'),
(74, '9697fefb-1bea-4bb3-aa76-ff75621e62f3', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-21 04:13:40', '2022-06-21 04:13:40', '[]', '[]'),
(75, '96980063-69fd-44be-88ec-5dbc4a4668c2', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-21 04:17:37', '2022-06-21 04:17:37', '[]', '[]'),
(76, '96980074-314b-443c-98bf-5ecf17685073', 2, 'Update', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-21 04:17:48', '2022-06-21 04:17:48', '[]', '[]'),
(77, '969800d2-0bd9-4590-a4be-b5530d6579ce', 2, 'Update', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-21 04:18:49', '2022-06-21 04:18:49', '[]', '[]'),
(78, '96980301-586c-4de5-a498-57e66f40e685', 2, 'Create', 'App\\Models\\Product', 9, 'App\\Models\\Product', 9, 'App\\Models\\Product', 9, '', 'finished', '', '2022-06-21 04:24:56', '2022-06-21 04:24:56', NULL, '{\"category_id\":3,\"name\":\"Chopped hazelnuts\",\"short_desc\":\"Suitable to the Turkish quality standards\",\"desc\":\"<div>Fraction: 2-4 mm, 4-6 mm, 6-8 mm<\\/div><div>Physical indicators:<br>&nbsp;Suitable to the Turkish quality standards<br>&nbsp;TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<br>&nbsp;GOST 16835, acting in territory \\u0421IS<br>&nbsp;Chemical indicators:<br>&nbsp;Fat content - 60 \\u00b1 5 %<br>&nbsp;Acid date (FFA) - max 1 %<br>&nbsp;Peroxide date (PV) - max 1m.e.q. O2\\/kg<br>&nbsp;Humidity:<br>&nbsp;Natural kernels - max 6 %<br>&nbsp;Roasted kernels - max 3 %<\\/div><div>&nbsp;<\\/div><div>Storage Conditions: +10\\u00b0C...+15\\u00b0C temperature, up to 65% relative humidity<\\/div><div>Shelf Life: 1 year<\\/div>\",\"meta_title\":\"Chopped hazelnuts\",\"meta_description\":\"Chopped hazelnuts\",\"meta_keyword\":\"chopped hazelnuts\",\"slug\":\"chopped-hazelnuts\",\"updated_at\":\"2022-06-21T07:24:56.000000Z\",\"created_at\":\"2022-06-21T07:24:56.000000Z\",\"id\":9}'),
(79, '96982a05-0d56-4259-ad07-d1f82d56b8ff', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-21 06:14:01', '2022-06-21 06:14:01', '{\"title\":\"Nutro\",\"desc1\":\"Specially selected and processed finest Azerbaijani: Hazelnut, Walnut, Chestnut, Almond\",\"desc2\":\"Specially selected and processed finest Azerbaijani: Hazelnut, Walnut, Chestnut, Almond\"}', '{\"title\":\"Hazelnut\",\"desc1\":\"Specially selected and processed finest Azerbaijani Hazelnut\",\"desc2\":null}'),
(80, '96982a33-1b07-4970-9db2-f5fd48b6b1c2', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-21 06:14:31', '2022-06-21 06:14:31', '{\"desc2\":null}', '{\"desc2\":\"Specially selected and processed finest Azerbaijani Hazelnut\"}'),
(81, '96984093-6ac5-449f-b5d0-05c03e1a07c7', 2, 'Delete', 'App\\Models\\Messages', 5, 'App\\Models\\Messages', 5, 'App\\Models\\Messages', 5, '', 'finished', '', '2022-06-21 07:17:05', '2022-06-21 07:17:05', NULL, NULL),
(82, '96984096-18ec-4a1d-95e6-9096ba01a8cf', 2, 'Delete', 'App\\Models\\Messages', 4, 'App\\Models\\Messages', 4, 'App\\Models\\Messages', 4, '', 'finished', '', '2022-06-21 07:17:07', '2022-06-21 07:17:07', NULL, NULL),
(83, '96984099-a26c-4474-aa6e-a9afd949d527', 2, 'Delete', 'App\\Models\\Messages', 3, 'App\\Models\\Messages', 3, 'App\\Models\\Messages', 3, '', 'finished', '', '2022-06-21 07:17:10', '2022-06-21 07:17:10', NULL, NULL),
(84, '9698409c-801e-4f0f-a057-3195c422b0f3', 2, 'Delete', 'App\\Models\\Messages', 2, 'App\\Models\\Messages', 2, 'App\\Models\\Messages', 2, '', 'finished', '', '2022-06-21 07:17:11', '2022-06-21 07:17:11', NULL, NULL),
(85, '9698409f-5154-4d2d-a89a-4b7513cfbca2', 2, 'Delete', 'App\\Models\\Messages', 1, 'App\\Models\\Messages', 1, 'App\\Models\\Messages', 1, '', 'finished', '', '2022-06-21 07:17:13', '2022-06-21 07:17:13', NULL, NULL),
(86, '9698617e-96d5-4d74-a160-7f909c5fb9d2', 2, 'Create', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-21 08:49:08', '2022-06-21 08:49:08', NULL, '{\"category_id\":1,\"name\":\"Walnut\",\"short_desc\":\"Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\",\"desc\":\"<div>Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals. There are 654kcal calories in 100gr walnuts. It plays a major role in the treatment of many diseases, from brain health to heart health.<\\/div><div>Nutro supplies high quality Azerbaijani walnut in different quality grades. We deliver walnut kernels in either carton boxes or in 5\\/10 kg vacuum packaging.&nbsp;<\\/div><div><strong>&nbsp;<\\/strong><\\/div><div><strong>Superior grade<\\/strong><\\/div><div>Highest quality, light color without any admixture of dark straw or brown stain.<\\/div><div>&nbsp;<\\/div><div><strong>First Grade<\\/strong><\\/div><div>This kind of walnuts has kernels no darker than light brown in color.<\\/div><div>&nbsp;<\\/div><div><strong>Second Grade<\\/strong><\\/div><div>Dark brown color, however there may be darker half and quarter kernels in package&nbsp;<\\/div>\",\"meta_title\":\"Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\",\"meta_description\":\"Walnut\",\"meta_keyword\":\"Walnut\",\"slug\":\"walnut\",\"updated_at\":\"2022-06-21T11:49:08.000000Z\",\"created_at\":\"2022-06-21T11:49:08.000000Z\",\"id\":10}'),
(87, '969864e5-30f5-4d0b-b0fe-b4ec60eb1e65', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-21 08:58:39', '2022-06-21 08:58:39', '{\"link\":\"http:\\/\\/nutro.testjed.me\\/products\"}', '{\"link\":\"http:\\/\\/nutro.testjed.me\\/category\\/hazelnut\"}'),
(88, '969865d6-f3cb-48d1-9005-92749ab1fdcc', 2, 'Update', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-21 09:01:17', '2022-06-21 09:01:17', '{\"title\":\"Dried fruits\",\"desc2\":\"Specially selected and processed finest Azerbaijani: Dried Mulberry, Dried Persimmon, Grape Molasses\",\"link\":\"http:\\/\\/nutro.testjed.me\\/products\"}', '{\"title\":\"Walnut\",\"desc2\":\"Specially selected and processed finest Azerbaijani Walnut\",\"link\":\"http:\\/\\/nutro.testjed.me\\/products\\/nuts\\/walnut\"}'),
(89, '969869b8-3631-4ea7-9784-9e21a8b7892e', 2, 'Create', 'App\\Models\\Slider', 3, 'App\\Models\\Slider', 3, 'App\\Models\\Slider', 3, '', 'finished', '', '2022-06-21 09:12:08', '2022-06-21 09:12:08', NULL, '{\"title\":\"Chestnut\",\"desc2\":\"Specially selected and processed finest Azerbaijani Chestnut\",\"link\":\"http:\\/\\/nutro.testjed.me\\/\",\"updated_at\":\"2022-06-21T12:12:08.000000Z\",\"created_at\":\"2022-06-21T12:12:08.000000Z\",\"id\":3}'),
(90, '96986abe-968c-482c-be75-2e4a347b0816', 2, 'Create', 'App\\Models\\Slider', 4, 'App\\Models\\Slider', 4, 'App\\Models\\Slider', 4, '', 'finished', '', '2022-06-21 09:15:00', '2022-06-21 09:15:00', NULL, '{\"title\":\"Almond\",\"desc2\":\"Specially selected and processed finest Azerbaijani Almond\",\"link\":null,\"updated_at\":\"2022-06-21T12:15:00.000000Z\",\"created_at\":\"2022-06-21T12:15:00.000000Z\",\"id\":4}'),
(91, '96986ba5-0512-44a6-99f8-1c8a1a39757a', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-21 09:17:31', '2022-06-21 09:17:31', '[]', '[]'),
(92, '96986db5-0971-4e22-9d98-1b92c20d6a57', 2, 'Create', 'App\\Models\\Slider', 5, 'App\\Models\\Slider', 5, 'App\\Models\\Slider', 5, '', 'finished', '', '2022-06-21 09:23:17', '2022-06-21 09:23:17', NULL, '{\"title\":\"Logistics\",\"desc2\":\"Delivery of nuts to any place you need\",\"link\":null,\"updated_at\":\"2022-06-21T12:23:17.000000Z\",\"created_at\":\"2022-06-21T12:23:17.000000Z\",\"id\":5}'),
(93, '96986f0e-36b3-4db7-a857-6efdc1fa4d6e', 2, 'Update', 'App\\Models\\Slider', 5, 'App\\Models\\Slider', 5, 'App\\Models\\Slider', 5, '', 'finished', '', '2022-06-21 09:27:03', '2022-06-21 09:27:03', '[]', '[]'),
(94, '9699ecbb-3473-440d-a029-e4408b679015', 2, 'Update', 'App\\Models\\Product', 5, 'App\\Models\\Product', 5, 'App\\Models\\Product', 5, '', 'finished', '', '2022-06-22 03:14:18', '2022-06-22 03:14:18', '{\"name\":\"Mulberry berry\",\"desc\":\"Mulberry berry, which has a lot of vitamin C and iron in it, can be consumed during summer and winter. When eaten alone, mulberry is an excellent source of antioxidants. \\r\\nMulberry is one of the superfood which contains natural organic compound Cyanidin. Its nutrition feeds human brain and considered quite effective natural ingredient in fight against Alzheimer. We source only sun-dried mulberry which is the depot of natural energy and carbohydrate. \\r\\nOur product does not content any sunflower oil or sugar additives.\",\"slug\":\"mulberry-berry\"}', '{\"name\":\"Dried Mulberry\",\"desc\":\"<div>Mulberry berry, which has a lot of vitamin C and iron in it, can be consumed during summer and winter. When eaten alone, mulberry is an excellent source of antioxidants. Mulberry is one of the superfood which contains natural organic compound Cyanidin. Its nutrition feeds human brain and considered quite effective natural ingredient in fight against Alzheimer. We source only sun-dried mulberry which is the depot of natural energy and carbohydrate. Our product does not content any sunflower oil or sugar additives.<\\/div>\",\"slug\":\"dried-mulberry\"}'),
(96, '969a6aa8-1294-481c-abf2-033b4957b38d', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:06:25', '2022-06-22 09:06:25', '{\"name\":\"Walnut\",\"slug\":\"walnut\"}', '{\"name\":\"Walnut2\",\"slug\":\"walnut2\"}'),
(97, '969a6aca-f718-4699-84a2-acfdda4090e2', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:06:48', '2022-06-22 09:06:48', '{\"name\":\"Walnut2\",\"slug\":\"walnut2\"}', '{\"name\":\"Walnut\",\"slug\":\"walnut\"}'),
(98, '969a6bca-722c-4b89-8e8a-6a2376de48af', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:09:35', '2022-06-22 09:09:35', '{\"name\":\"Walnut\",\"desc\":\"<div>Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals. There are 654kcal calories in 100gr walnuts. It plays a major role in the treatment of many diseases, from brain health to heart health.<\\/div><div>Nutro supplies high quality Azerbaijani walnut in different quality grades. We deliver walnut kernels in either carton boxes or in 5\\/10 kg vacuum packaging.&nbsp;<\\/div><div><strong>&nbsp;<\\/strong><\\/div><div><strong>Superior grade<\\/strong><\\/div><div>Highest quality, light color without any admixture of dark straw or brown stain.<\\/div><div>&nbsp;<\\/div><div><strong>First Grade<\\/strong><\\/div><div>This kind of walnuts has kernels no darker than light brown in color.<\\/div><div>&nbsp;<\\/div><div><strong>Second Grade<\\/strong><\\/div><div>Dark brown color, however there may be darker half and quarter kernels in package&nbsp;<\\/div>\",\"slug\":\"walnut\"}', '{\"name\":\"Walnut23\",\"desc\":\"<div>Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals. There are 654kcal calories in 100gr walnuts. It plays a major role in the treatment of many diseases, from brain health to heart health.<\\/div><div>Nutro supplies high quality Azerbaijani walnut in different quality grades. We deliver walnut kernels in either carton boxes or in 5\\/10 kg vacuum packaging.&nbsp;<\\/div><div><strong>&nbsp;<\\/strong><\\/div><div><strong>Superior grade<\\/strong><\\/div><div>Highest quality, light color without any admixture of dark straw or brown stain.<\\/div><div>&nbsp;<\\/div><div><strong>First Grade<\\/strong><\\/div><div>This kind of walnuts has kernels no darker than light brown in color.<\\/div><div>&nbsp;<\\/div><div><strong>Second Grade<\\/strong><\\/div><div>Dark brown color, however there may be darker half and quarter kernels in package&nbsp; 23<\\/div>\",\"slug\":\"walnut23\"}');
INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(100, '969a6d95-aa12-4b5a-a001-d09e1373b599', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:14:36', '2022-06-22 09:14:36', '{\"name\":\"Walnut23\",\"desc\":\"<div>Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals. There are 654kcal calories in 100gr walnuts. It plays a major role in the treatment of many diseases, from brain health to heart health.<\\/div><div>Nutro supplies high quality Azerbaijani walnut in different quality grades. We deliver walnut kernels in either carton boxes or in 5\\/10 kg vacuum packaging.&nbsp;<\\/div><div><strong>&nbsp;<\\/strong><\\/div><div><strong>Superior grade<\\/strong><\\/div><div>Highest quality, light color without any admixture of dark straw or brown stain.<\\/div><div>&nbsp;<\\/div><div><strong>First Grade<\\/strong><\\/div><div>This kind of walnuts has kernels no darker than light brown in color.<\\/div><div>&nbsp;<\\/div><div><strong>Second Grade<\\/strong><\\/div><div>Dark brown color, however there may be darker half and quarter kernels in package&nbsp; 23<\\/div>\",\"slug\":\"walnut23\"}', '{\"name\":\"Walnut\",\"desc\":\"<div>Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals. There are 654kcal calories in 100gr walnuts. It plays a major role in the treatment of many diseases, from brain health to heart health.<\\/div><div>Nutro supplies high quality Azerbaijani walnut in different quality grades. We deliver walnut kernels in either carton boxes or in 5\\/10 kg vacuum packaging.&nbsp;<\\/div><div><strong>&nbsp;<\\/strong><\\/div><div><strong>Superior grade<\\/strong><\\/div><div>Highest quality, light color without any admixture of dark straw or brown stain.<\\/div><div>&nbsp;<\\/div><div><strong>First Grade<\\/strong><\\/div><div>This kind of walnuts has kernels no darker than light brown in color.<\\/div><div>&nbsp;<\\/div><div><strong>Second Grade<\\/strong><\\/div><div>Dark brown color, however there may be darker half and quarter kernels in package<\\/div>\",\"slug\":\"walnut\"}'),
(101, '969a6ddd-08ac-4b06-9cb1-ed25681e1741', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:15:23', '2022-06-22 09:15:23', '{\"name\":\"Walnut\",\"slug\":\"walnut\"}', '{\"name\":\"Walnut12\",\"slug\":\"walnut12\"}'),
(102, '969a6de6-0020-4c58-b84f-c39c0673a7f6', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:15:29', '2022-06-22 09:15:29', '{\"name\":\"Walnut12\",\"slug\":\"walnut12\"}', '{\"name\":\"Walnut\",\"slug\":\"walnut\"}'),
(103, '969a6f57-c53f-4bde-b30e-f05db5a6879b', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:19:31', '2022-06-22 09:19:31', '{\"name\":\"Walnut\",\"slug\":\"walnut\"}', '{\"name\":\"Walnut 12\",\"slug\":\"walnut-12\"}'),
(104, '969a6f77-c54d-4489-bf5c-3096fb5ea2eb', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:19:52', '2022-06-22 09:19:52', '{\"name\":\"Walnut 12\",\"short_desc\":\"Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\",\"slug\":\"walnut-12\"}', '{\"name\":\"Walnut\",\"short_desc\":\"12Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\",\"slug\":\"walnut\"}'),
(105, '969a6f89-8366-446c-af69-1ff25aa94777', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:20:04', '2022-06-22 09:20:04', '{\"short_desc\":\"12Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\"}', '{\"short_desc\":\"Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\"}'),
(106, '969a6fdc-b0e8-4546-b3d5-f05e5f8dc88e', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:20:58', '2022-06-22 09:20:58', '{\"short_desc\":\"Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\"}', '{\"short_desc\":\"12Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\"}'),
(107, '969a6ff9-591a-409a-966e-d940b4428b30', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-22 09:21:17', '2022-06-22 09:21:17', '{\"short_desc\":\"12Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\"}', '{\"short_desc\":\"Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\"}'),
(108, '969bd16f-6a74-439e-b11e-40f22854d82c', 2, 'Delete', 'App\\Models\\Slider', 5, 'App\\Models\\Slider', 5, 'App\\Models\\Slider', 5, '', 'finished', '', '2022-06-23 01:49:38', '2022-06-23 01:49:38', NULL, NULL),
(109, '969bf995-c3a6-4cea-9b1c-9a13e731f171', 2, 'Create', 'App\\Models\\Product', 11, 'App\\Models\\Product', 11, 'App\\Models\\Product', 11, '', 'finished', '', '2022-06-23 03:41:54', '2022-06-23 03:41:54', NULL, '{\"category_id\":1,\"name\":\"Almond\",\"short_desc\":\"Nutro offers its partners high quality Spanish almond varieties like Avijor, Belona and Quara cultivated and processed in Azerbaijan\",\"desc\":\"<div>Nutro offers its partners high quality Spanish almond varieties like Avijor, Belona and Quara cultivated and processed in Azerbaijan.<br>Spanish varieties differentiate themselves in terms of their taste and oil content. It is considered the ideal varieties for use by pastry, chocolate, and processing industry.<br>At the moment we offer only two types of almond products: unshelled and shelled.<br><br><strong>Specifications<\\/strong><br>Moisture: Less than or equal to 6.0%<br><br><\\/div><ul><li>Product Description&nbsp;<\\/li><li>Raw&nbsp;<\\/li><li>Non-GMO&nbsp;<\\/li><li>Vegan&nbsp;<\\/li><li>Process and stored in the ISO 22000 and FSSC 22000 Certified Facility<\\/li><\\/ul><div><br><strong>Suggested Storage Condition<\\/strong><br>Product shelf life is dependent on storage conditions and is highly variable. Almonds should be stored under cool, dry conditions and in a humidity controlled environment. The industry standard for shelf life, when stored under optimum conditions, is 18 months from date of manufacture.<\\/div>\",\"meta_title\":\"Almond Nutro.az\",\"meta_description\":\"Nutro offers its partners high quality Spanish almond varieties like Avijor, Belona and Quara cultivated and processed in Azerbaijan.\",\"meta_keyword\":\"almond\",\"slug\":\"almond\",\"updated_at\":\"2022-06-23T06:41:54.000000Z\",\"created_at\":\"2022-06-23T06:41:54.000000Z\",\"id\":11}'),
(110, '969bf9dd-0094-4c1e-9c79-f14697be2316', 2, 'Update', 'App\\Models\\Slider', 4, 'App\\Models\\Slider', 4, 'App\\Models\\Slider', 4, '', 'finished', '', '2022-06-23 03:42:41', '2022-06-23 03:42:41', '{\"link\":null}', '{\"link\":\"http:\\/\\/nutro.testjed.me\\/products\\/nuts\\/almond\"}'),
(111, '969c1115-1b17-476a-9b5e-afc3c7f25958', 2, 'Update', 'App\\Models\\Product', 8, 'App\\Models\\Product', 8, 'App\\Models\\Product', 8, '', 'finished', '', '2022-06-23 04:47:36', '2022-06-23 04:47:36', '[]', '[]'),
(112, '969c2f36-83a9-43af-9697-e4a335239fee', 2, 'Create', 'App\\Models\\Product', 12, 'App\\Models\\Product', 12, 'App\\Models\\Product', 12, '', 'finished', '', '2022-06-23 06:11:51', '2022-06-23 06:11:51', NULL, '{\"category_id\":1,\"name\":\"sa\",\"short_desc\":\"sa\",\"desc\":\"<div>sa<\\/div>\",\"meta_title\":\"sa\",\"slug\":\"sa\",\"updated_at\":\"2022-06-23T09:11:51.000000Z\",\"created_at\":\"2022-06-23T09:11:51.000000Z\",\"id\":12}'),
(113, '969c2f3c-91e6-4dc3-b26a-3ad7456ba684', 2, 'Delete', 'App\\Models\\Product', 12, 'App\\Models\\Product', 12, 'App\\Models\\Product', 12, '', 'finished', '', '2022-06-23 06:11:55', '2022-06-23 06:11:55', NULL, NULL),
(114, '96a461ee-be71-4957-8a0b-3296d941025a', 2, 'Create', 'App\\Models\\User', 3, 'App\\Models\\User', 3, 'App\\Models\\User', 3, '', 'finished', '', '2022-06-27 08:00:18', '2022-06-27 08:00:18', NULL, '{\"name\":\"User\",\"email\":\"info@nutro.az\",\"admin_active\":\"1\",\"updated_at\":\"2022-06-27T11:00:18.000000Z\",\"created_at\":\"2022-06-27T11:00:18.000000Z\",\"id\":3}'),
(115, '96a464d9-1d2c-427b-a919-28dfabeb58cc', 2, 'Update', 'App\\Models\\Product', 11, 'App\\Models\\Product', 11, 'App\\Models\\Product', 11, '', 'finished', '', '2022-06-27 08:08:27', '2022-06-27 08:08:27', '{\"meta_title\":\"Almond Nutro.az\"}', '{\"meta_title\":\"Almond | Nutro.az\"}'),
(116, '96a466ab-a14c-47c6-8a83-f07c5c050173', 2, 'Update', 'App\\Models\\Slider', 4, 'App\\Models\\Slider', 4, 'App\\Models\\Slider', 4, '', 'finished', '', '2022-06-27 08:13:33', '2022-06-27 08:13:33', '{\"link\":\"http:\\/\\/nutro.testjed.me\\/products\\/nuts\\/almond\"}', '{\"link\":\"https:\\/\\/nutro.az\\/products\\/nuts\\/almond\"}'),
(117, '96a466d6-7805-4681-b18e-8297f89550df', 2, 'Update', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-27 08:14:01', '2022-06-27 08:14:01', '{\"link\":\"http:\\/\\/nutro.testjed.me\\/products\\/nuts\\/walnut\"}', '{\"link\":null}'),
(118, '96a466fa-7a6d-49f8-a0a2-a7cdb1639ef9', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-27 08:14:24', '2022-06-27 08:14:24', '{\"link\":\"http:\\/\\/nutro.testjed.me\\/category\\/hazelnut\"}', '{\"link\":\"https:\\/\\/nutro.az\\/category\\/hazelnut\"}'),
(119, '96a47993-d6b1-44fb-b6f5-1a222e86f72d', 3, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2022-06-27 09:06:25', '2022-06-27 09:06:25', '[]', '[]'),
(120, '96a47a78-b65f-402c-807a-28b46b8bbe81', 3, 'Update', 'App\\Models\\Slider', 4, 'App\\Models\\Slider', 4, 'App\\Models\\Slider', 4, '', 'finished', '', '2022-06-27 09:08:55', '2022-06-27 09:08:55', '[]', '[]'),
(121, '96a9f6d0-0f7c-4ab3-bcd8-c86d88a4a53b', 2, 'Create', 'App\\Models\\Product', 13, 'App\\Models\\Product', 13, 'App\\Models\\Product', 13, '', 'finished', '', '2022-06-30 02:35:44', '2022-06-30 02:35:44', NULL, '{\"category_id\":1,\"name\":\"Chestnut\",\"short_desc\":\"Chestnuts contain rich unsaturated fatty acids, vitamins and minerals.\",\"desc\":\"<div>Chestnuts contain rich unsaturated fatty acids, vitamins and minerals. These materials can prevent hypertension, coronary heart disease, arteriosclerosis, osteoporosis and other diseases. Chestnuts contain a lot of protein and carbohydrates, low in fiber. We provide fresh and dried chestnuts.<\\/div>\",\"meta_title\":\"Chestnut | Nutro.az\",\"slug\":\"chestnut\",\"updated_at\":\"2022-06-30T05:35:44.000000Z\",\"created_at\":\"2022-06-30T05:35:44.000000Z\",\"id\":13}'),
(122, '96a9f711-ec6c-4107-ade6-d70d3a7edf83', 2, 'Update', 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, 'App\\Models\\Product', 10, '', 'finished', '', '2022-06-30 02:36:27', '2022-06-30 02:36:27', '{\"meta_title\":\"Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.\"}', '{\"meta_title\":\"Walnut | Nutro.az\"}'),
(123, '96a9f731-b94b-4af9-af77-0f930a873e2e', 2, 'Update', 'App\\Models\\Product', 9, 'App\\Models\\Product', 9, 'App\\Models\\Product', 9, '', 'finished', '', '2022-06-30 02:36:48', '2022-06-30 02:36:48', '{\"meta_title\":\"Chopped hazelnuts\"}', '{\"meta_title\":\"Chopped hazelnuts | Nutro.az\"}'),
(124, '96a9f763-8366-4415-be13-77bc14ded39f', 2, 'Update', 'App\\Models\\Product', 8, 'App\\Models\\Product', 8, 'App\\Models\\Product', 8, '', 'finished', '', '2022-06-30 02:37:21', '2022-06-30 02:37:21', '{\"meta_title\":\"test\"}', '{\"meta_title\":\"Blanched\\/Roasted kernels | Nutro.az\"}'),
(125, '96a9f77c-3095-4bdd-a827-0aca986e8291', 2, 'Update', 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, 'App\\Models\\Product', 7, '', 'finished', '', '2022-06-30 02:37:37', '2022-06-30 02:37:37', '{\"meta_title\":\"Dried persimmon is the wide grown fruit in Azerbaijan.\"}', '{\"meta_title\":\"Dried Persimmon | Nutro.az\"}'),
(126, '96a9f798-5573-464c-8228-0779f808b5cd', 2, 'Update', 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, 'App\\Models\\Product', 6, '', 'finished', '', '2022-06-30 02:37:55', '2022-06-30 02:37:55', '{\"meta_title\":\"Hazelnut. Different types of hazelnut: chopped, shelled\"}', '{\"meta_title\":\"Shelled raw | Nutro.az\"}'),
(127, '96a9f7aa-1c79-4f75-ac66-abcd3fc36fa5', 2, 'Update', 'App\\Models\\Product', 5, 'App\\Models\\Product', 5, 'App\\Models\\Product', 5, '', 'finished', '', '2022-06-30 02:38:07', '2022-06-30 02:38:07', '{\"meta_title\":\"Mulberry berry. The health benefits of mulberry berry\"}', '{\"meta_title\":\"Dried Mulberry | Nutro.az\"}'),
(128, '96a9fbb2-2116-41ef-b583-b044a680411e', 2, 'Update', 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, '', 'finished', '', '2022-06-30 02:49:23', '2022-06-30 02:49:23', '{\"meta_title\":\"Dried Fruits\"}', '{\"meta_title\":\"Nuts\"}'),
(129, '97355ca3-86b1-45e3-b53f-4108b4a2cc6e', 2, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2022-09-07 09:40:32', '2022-09-07 09:40:32', '{\"phone\":\"+994 50 281 19 91\"}', '{\"phone\":\"+994 99 899 28 28\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `category_id`, `created_at`, `updated_at`, `slug`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 'Nuts', NULL, '2022-06-11 05:49:37', '2022-06-30 02:49:23', 'nuts', 'Nuts', 'Dried Fruits', 'Dried Fruits'),
(2, 'Dried fruits', NULL, '2022-06-11 05:49:43', '2022-06-17 03:19:19', 'dried-fruits', 'Dried Fruits', 'Dried Fruits', 'Dried Fruits'),
(3, 'Hazelnut', '1', '2022-06-20 07:36:34', '2022-06-20 07:36:34', 'hazelnut', 'Hazelnut', 'Hazelnut desc', 'Hazelnut keyw');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `email2`, `address`, `phone`, `phone2`, `created_at`, `updated_at`) VALUES
(1, 'info@nutro.az', 'sales@nutro.az', 'Zaqatala Rayon, Yuxarı Tala, Fındıq zavodu', '+994 99 899 28 28', '+49 15774807368', '2022-06-11 05:03:26', '2022-09-07 09:40:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `languages`
--

INSERT INTO `languages` (`id`, `name`, `language`, `created_at`, `updated_at`) VALUES
(1, NULL, 'az', '2021-10-22 01:36:08', '2021-10-22 01:36:08'),
(2, NULL, 'en', '2021-10-22 01:36:08', '2021-10-22 01:36:08'),
(3, NULL, 'ru', '2021-10-22 01:36:08', '2021-10-22 01:36:08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Slider', 1, 'aa4ff4c4-b7e5-4802-b57d-1087fb149b70', 'image', 'slider_01', 'slider_01.jpg', 'image/jpeg', 'public', 'public', 138978, '[]', '[]', '{\"preview\": true}', '[]', 1, '2021-10-25 04:22:14', '2021-10-25 04:22:18'),
(2, 'App\\Models\\Slider', 2, '4aed3573-8bea-4dee-a13f-99ebbde35947', 'image', 'slider_02', 'slider_02.jpg', 'image/jpeg', 'public', 'public', 142664, '[]', '[]', '{\"preview\": true}', '[]', 1, '2021-10-25 04:22:24', '2021-10-25 04:22:24'),
(3, 'App\\Models\\Slider', 3, 'c98376e0-ebaf-44ff-8761-e8b0f5c75ff5', 'image', 'subheader_img', 'subheader_img.jpg', 'image/jpeg', 'public', 'public', 120967, '[]', '[]', '{\"preview\": true}', '[]', 1, '2021-10-25 04:23:02', '2021-10-25 04:23:02'),
(21, 'App\\Models\\Slider', 2, '98d7c5ae-e23f-4780-920e-aef627b240b7', 'images', 'png-transparent-black-mulberry-white-mulberry-graphy-mulberry-miscellaneous-natural-foods-frutti-di-bosco-removebg-preview', 'png-transparent-black-mulberry-white-mulberry-graphy-mulberry-miscellaneous-natural-foods-frutti-di-bosco-removebg-preview.png', 'image/png', 'public', 'public', 129450, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-17 02:33:05', '2022-06-17 02:33:07'),
(22, 'App\\Models\\Product', 5, '817e9d11-1a21-4f3b-8350-99599b2a3fb3', 'images', 'dried-mulberries-dried-fruit-gourmeturca-3303-91-B', 'dried-mulberries-dried-fruit-gourmeturca-3303-91-B.jpg', 'image/jpeg', 'public', 'public', 107074, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-17 04:00:26', '2022-06-17 04:00:26'),
(26, 'App\\Models\\Product', 7, 'b94d67e9-dcfc-4715-ba65-d04fec0f1102', 'images', '4V7A5768-1', '4V7A5768-1.jpg', 'image/jpeg', 'public', 'public', 352051, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-17 05:41:13', '2022-06-17 05:41:14'),
(27, 'App\\Models\\Product', 7, '746985ca-e3ba-44ad-8d87-7cc145b623e7', 'images', 'xurma_qurusu', 'xurma_qurusu.jpg', 'image/jpeg', 'public', 'public', 300394, '[]', '[]', '{\"preview\":true}', '[]', 2, '2022-06-17 05:41:13', '2022-06-17 05:41:14'),
(28, 'App\\Models\\Product', 7, 'd23825e3-e3ad-474d-badd-df92dba1f8d0', 'images', 'dried-persimmon-g8463a01b2_1920', 'dried-persimmon-g8463a01b2_1920.jpg', 'image/jpeg', 'public', 'public', 165887, '[]', '[]', '{\"preview\":true}', '[]', 3, '2022-06-17 05:41:14', '2022-06-17 05:41:14'),
(29, 'App\\Models\\Product', 6, '42f5c2e8-409e-4562-a8a0-9796a4406d78', 'images', 'ExternalLink_shutterstock_524345230 (1)', 'ExternalLink_shutterstock_524345230-(1).jpg', 'image/jpeg', 'public', 'public', 105990, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-17 05:41:58', '2022-06-17 05:41:59'),
(30, 'App\\Models\\Slider', 1, '0e02f2ba-fb47-4bbd-af6c-6dbf69a55625', 'images', 'png-transparent-hazelnut-nut-dried-fruit-food-removebg-preview', 'png-transparent-hazelnut-nut-dried-fruit-food-removebg-preview.png', 'image/png', 'public', 'public', 188915, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-20 02:33:35', '2022-06-20 02:33:36'),
(37, 'App\\Models\\Product', 9, '33c63c18-c544-41de-a08f-37f50e7e249d', 'images', 'Diced-Hazelnut-Findik', 'Diced-Hazelnut-Findik.jpg', 'image/jpeg', 'public', 'public', 170415, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-21 04:24:56', '2022-06-21 04:24:56'),
(38, 'App\\Models\\Product', 9, '789f86d6-c44f-48d8-830b-be481d173757', 'images', '600x600', '600x600.jpg', 'image/jpeg', 'public', 'public', 32336, '[]', '[]', '{\"preview\":true}', '[]', 2, '2022-06-21 04:24:56', '2022-06-21 04:24:56'),
(40, 'App\\Models\\Product', 10, '5aa5ccb9-697b-4243-8332-e9a55d217c17', 'images', 'walnut2', 'walnut2.jpg', 'image/jpeg', 'public', 'public', 185664, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-21 08:49:08', '2022-06-21 08:49:09'),
(41, 'App\\Models\\Slider', 2, '0dde84c5-604c-4de3-954c-4171ea2ebf92', 'thumbnail', 'walnut slider1', 'walnut-slider1.jpeg', 'image/jpeg', 'public', 'public', 258083, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-21 09:01:17', '2022-06-21 09:01:17'),
(42, 'App\\Models\\Slider', 3, 'c9199ec7-3682-4b9e-b6a3-25e14e437c19', 'thumbnail', 'chestnut', 'chestnut.jpg', 'image/jpeg', 'public', 'public', 185496, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-21 09:12:08', '2022-06-21 09:12:08'),
(43, 'App\\Models\\Slider', 4, '2fa53817-c7e4-4cfb-bdc8-ee1ef4f6cc41', 'thumbnail', 'almond (3)', 'almond-(3).jpg', 'image/jpeg', 'public', 'public', 111997, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-21 09:15:00', '2022-06-21 09:15:00'),
(44, 'App\\Models\\Slider', 1, 'b3c09d23-9db5-4be3-ab4f-88abb79c389a', 'thumbnail', 'hazelnut slider', 'hazelnut-slider.jpg', 'image/jpeg', 'public', 'public', 73760, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-21 09:17:31', '2022-06-21 09:17:31'),
(47, 'App\\Models\\Product', 11, 'e186b60a-17ff-4d35-a456-8848ea4fee0a', 'images', 'shutterstock_192078080_med (1)', 'shutterstock_192078080_med-(1).jpg', 'image/jpeg', 'public', 'public', 240487, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-23 03:41:54', '2022-06-23 03:41:54'),
(48, 'App\\Models\\Product', 8, '5b2cf369-3249-4029-ab10-f1e7ebb787a5', 'images', 'Avvenice nocciole', 'Avvenice-nocciole.jpg', 'image/jpeg', 'public', 'public', 338725, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-23 04:47:36', '2022-06-23 04:47:36'),
(50, 'App\\Models\\Product', 13, '378b9faf-2ca8-489a-94f5-d14c71a2ea9b', 'images', 'chestnut', 'chestnut.jpg', 'image/jpeg', 'public', 'public', 179911, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-30 02:35:44', '2022-06-30 02:35:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(6, 'test2', 'test2@gmail.com', 'test2', '2022-06-21 07:17:47', '2022-06-21 07:17:47'),
(7, 'last test', 'lastest@gmail.com', 'last test', '2022-06-21 07:25:28', '2022-06-21 07:25:28');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_01_000000_create_action_events_table', 1),
(4, '2018_08_29_200844_create_languages_table', 1),
(5, '2018_08_29_205156_create_translations_table', 1),
(6, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2021_06_14_122719_create_media_table', 1),
(9, '2021_06_25_103419_add_to_users', 1),
(10, '2021_06_25_115527_add_to_users_admin_active', 1),
(11, '2021_10_22_054411_create_contact_table', 2),
(12, '2021_10_22_060702_create_pages_table', 3),
(13, '2021_10_25_081202_create_sliders_table', 4),
(14, '2021_10_25_091629_create_country_and_locations_table', 5),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 6),
(16, '2022_06_11_085511_create_contacts_table', 7),
(17, '2022_06_11_092509_create_messages_table', 8),
(18, '2022_06_11_094741_create_categories_table', 9),
(19, '2022_06_11_101643_create_products_table', 10),
(20, '2022_06_11_112000_add_column_to_slug_products_table', 11),
(21, '2022_06_11_112145_add_slug_to_categories_table', 11),
(22, '2022_06_11_121213_create_sliders_table', 12),
(23, '2022_06_11_121703_add_column_to_sliders_table', 13),
(24, '2022_06_13_101634_add_column_to_products_table', 14);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `sort_number`, `created_at`, `updated_at`) VALUES
(1, '{\"az\":\"Haqqimizda\",\"en\":\"wer\",\"ru\":\"wer\"}', '{\"az\":\"<div>s<strong>df<\\/strong><\\/div>\",\"en\":\"<div>wer<\\/div>\",\"ru\":\"<div>wer<\\/div>\"}', 0, '2021-10-22 02:45:23', '2022-06-11 07:58:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `short_desc`, `desc`, `category_id`, `created_at`, `updated_at`, `slug`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 'Dried Mulberry', 'Mulberry berry, which has a lot of vitamin C and iron in it, can be consumed during summer and winter.', '<div>Mulberry berry, which has a lot of vitamin C and iron in it, can be consumed during summer and winter. When eaten alone, mulberry is an excellent source of antioxidants. Mulberry is one of the superfood which contains natural organic compound Cyanidin. Its nutrition feeds human brain and considered quite effective natural ingredient in fight against Alzheimer. We source only sun-dried mulberry which is the depot of natural energy and carbohydrate. Our product does not content any sunflower oil or sugar additives.</div>', 2, '2022-06-17 04:00:25', '2022-06-30 02:38:07', 'dried-mulberry', 'Dried Mulberry | Nutro.az', 'Mulberry berry has a lot of vitamin C and iron in. This berry can be consumed during summer and winter. Mulberry is an excellent source of antioxidants.', 'mulberry berry, mulberry'),
(6, 'Shelled raw', 'Dried Hazelnut. We offer you different types of hazelnuts for your choice.', '<div><strong>Shelled raw</strong></div><div>&nbsp;</div><div>Caliber: 13-15 mm, 11-13 mm, 9-11 mm, 9-15 mm</div><div>&nbsp;</div><div>Physical indicators:<br>&nbsp;Suitable to the Turkish quality standards<br>&nbsp;TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<br>&nbsp;GOST 16835, acting in territory СIS<br>&nbsp;Chemical indicators:<br>&nbsp;Fat content - 60 ± 5 %<br>&nbsp;Acid date (FFA) - max 1 %<br>&nbsp;Peroxide date (PV) - max 1m.e.q. O2/kg<br>&nbsp;Humidity:<br>&nbsp;Natural kernels - max 6 %<br>&nbsp;Roasted kernels - max 3 %</div><div>&nbsp;</div><div>Storage Conditions: +10°C...+15°C temperature, up to 65% relative humidity</div><div>Shelf Life: 1 year</div>', 3, '2022-06-17 05:29:14', '2022-06-30 02:37:55', 'shelled-raw', 'Shelled raw | Nutro.az', 'Hazelnut. Nutro company offers you a choice of hazelnuts: shelled raw, blanched kernels, roasted kernels, chopped hazelnuts.', 'hazelnut. chopped, shelled, blanched, roasted'),
(7, 'Dried Persimmon', 'Persimmon is one of the wide grown fruit in Azerbaijan.', '<div>Persimmon is one of the wide grown fruit in Azerbaijan. Its flavor and rich vitamin content can be considered as a superfood as well. Our company delivers only sun-dried persimmon which increases its minerals and intensive flavor. Nutro’s current facility can deliver up to 1000 tones of dried persimmon yearly.</div>', 2, '2022-06-17 05:33:26', '2022-06-30 02:37:37', 'dried-persimmon', 'Dried Persimmon | Nutro.az', 'Dried persimmon is the wide grown fruit in Azerbaijan.', 'dried persimmon, persimmon'),
(8, 'Blanched/Roasted kernels', 'Caliber: 13-15 mm, 11-13 mm, 9-11 mm', '<div>Caliber: 13-15 mm, 11-13 mm, 9-11 mm</div><div>&nbsp;</div><div>Physical indicators:</div><div>Suitable to the Turkish quality standards</div><div>TS-3075, TS-1917 and Azerbaijan standard AZS077.2003</div><div>GOST 16835, acting in territory СIS</div><div>Chemical indicators:</div><div>Fat content - 60 ± 5 %</div><div>Acid date (FFA) - max 1 %</div><div>Peroxide date (PV) - max 1m.e.q. O2/kg</div><div>Humidity:</div><div>Natural kernels - max 6 %</div><div>Roasted kernels - max 3 %</div><div>&nbsp;</div><div>Storage Conditions: +10°C...+15°C temperature, up to 65% relative humidity</div><div>Shelf Life: 1 year</div>', 3, '2022-06-21 02:31:51', '2022-06-30 02:37:21', 'blanched-roasted-kernels', 'Blanched/Roasted kernels | Nutro.az', 'test', 'blanched, roasted, kernels'),
(9, 'Chopped hazelnuts', 'Suitable to the Turkish quality standards', '<div>Fraction: 2-4 mm, 4-6 mm, 6-8 mm</div><div>Physical indicators:<br>&nbsp;Suitable to the Turkish quality standards<br>&nbsp;TS-3075, TS-1917 and Azerbaijan standard AZS077.2003<br>&nbsp;GOST 16835, acting in territory СIS<br>&nbsp;Chemical indicators:<br>&nbsp;Fat content - 60 ± 5 %<br>&nbsp;Acid date (FFA) - max 1 %<br>&nbsp;Peroxide date (PV) - max 1m.e.q. O2/kg<br>&nbsp;Humidity:<br>&nbsp;Natural kernels - max 6 %<br>&nbsp;Roasted kernels - max 3 %</div><div>&nbsp;</div><div>Storage Conditions: +10°C...+15°C temperature, up to 65% relative humidity</div><div>Shelf Life: 1 year</div>', 3, '2022-06-21 04:24:56', '2022-06-30 02:36:48', 'chopped-hazelnuts', 'Chopped hazelnuts | Nutro.az', 'Chopped hazelnuts', 'chopped hazelnuts'),
(10, 'Walnut', 'Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals.', '<div>Walnuts are a rich source of folic acid, vitamin E, iron, phosphorus, magnesium, potassium and zinc minerals. There are 654kcal calories in 100gr walnuts. It plays a major role in the treatment of many diseases, from brain health to heart health.</div><div>Nutro supplies high quality Azerbaijani walnut in different quality grades. We deliver walnut kernels in either carton boxes or in 5/10 kg vacuum packaging.&nbsp;</div><div><strong>&nbsp;</strong></div><div><strong>Superior grade</strong></div><div>Highest quality, light color without any admixture of dark straw or brown stain.</div><div>&nbsp;</div><div><strong>First Grade</strong></div><div>This kind of walnuts has kernels no darker than light brown in color.</div><div>&nbsp;</div><div><strong>Second Grade</strong></div><div>Dark brown color, however there may be darker half and quarter kernels in package</div>', 1, '2022-06-21 08:49:08', '2022-06-30 02:36:27', 'walnut', 'Walnut | Nutro.az', 'Walnut', 'Walnut'),
(11, 'Almond', 'Nutro offers its partners high quality Spanish almond varieties like Avijor, Belona and Quara cultivated and processed in Azerbaijan', '<div>Nutro offers its partners high quality Spanish almond varieties like Avijor, Belona and Quara cultivated and processed in Azerbaijan.<br>Spanish varieties differentiate themselves in terms of their taste and oil content. It is considered the ideal varieties for use by pastry, chocolate, and processing industry.<br>At the moment we offer only two types of almond products: unshelled and shelled.<br><br><strong>Specifications</strong><br>Moisture: Less than or equal to 6.0%<br><br></div><ul><li>Product Description&nbsp;</li><li>Raw&nbsp;</li><li>Non-GMO&nbsp;</li><li>Vegan&nbsp;</li><li>Process and stored in the ISO 22000 and FSSC 22000 Certified Facility</li></ul><div><br><strong>Suggested Storage Condition</strong><br>Product shelf life is dependent on storage conditions and is highly variable. Almonds should be stored under cool, dry conditions and in a humidity controlled environment. The industry standard for shelf life, when stored under optimum conditions, is 18 months from date of manufacture.</div>', 1, '2022-06-23 03:41:54', '2022-06-27 08:08:27', 'almond', 'Almond | Nutro.az', 'Nutro offers its partners high quality Spanish almond varieties like Avijor, Belona and Quara cultivated and processed in Azerbaijan.', 'almond'),
(13, 'Chestnut', 'Chestnuts contain rich unsaturated fatty acids, vitamins and minerals.', '<div>Chestnuts contain rich unsaturated fatty acids, vitamins and minerals. These materials can prevent hypertension, coronary heart disease, arteriosclerosis, osteoporosis and other diseases. Chestnuts contain a lot of protein and carbohydrates, low in fiber. We provide fresh and dried chestnuts.</div>', 1, '2022-06-30 02:35:44', '2022-06-30 02:35:44', 'chestnut', 'Chestnut | Nutro.az', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `desc2`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Hazelnut', 'Specially selected and processed finest Azerbaijani Hazelnut', '2022-06-11 08:20:52', '2022-06-27 08:14:24', 'https://nutro.az/category/hazelnut'),
(2, 'Walnut', 'Specially selected and processed finest Azerbaijani Walnut', '2022-06-11 08:21:29', '2022-06-27 08:14:01', NULL),
(3, 'Chestnut', 'Specially selected and processed finest Azerbaijani Chestnut', '2022-06-21 09:12:08', '2022-06-21 09:12:08', 'http://nutro.testjed.me/'),
(4, 'Almond', 'Specially selected and processed finest Azerbaijani Almond', '2022-06-21 09:15:00', '2022-06-27 08:13:33', 'https://nutro.az/products/nuts/almond');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(1, 'test@gmail.com', '2022-06-22 09:00:15', '2022-06-22 09:00:15', NULL, 'Test'),
(4, 'firengizsariyeva77@gmail.com', '2022-06-22 09:13:43', '2022-06-22 09:13:43', NULL, 'Test'),
(5, 'gasymovafira@gmail.com', '2022-06-22 09:15:14', '2022-06-22 09:15:14', NULL, 'Fira');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `basket_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `phone_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`, `domain_id`, `basket_token`, `admin_active`) VALUES
(2, 'Admin', 'admin@a.a', NULL, NULL, NULL, '$2y$10$pmKfklw0fZB4BqIC2k5dm.LOB/vJgcBNCJ/dqjB.84q/JvDY9QxSq', '3rDait14paWkCtAtPQh2E2axliez4az06bXiY4RGF75yK5gpnaSv1dHg93Ro', NULL, '2022-06-08 08:13:03', '2022-06-08 08:13:03', NULL, NULL, 1),
(3, 'User', 'info@nutro.az', NULL, NULL, NULL, '$2y$10$HFbR//h4g9N.tYPQulrwPOOLELwZNsCcv2WTbSIghvwTvDliAgD0S', 'Xqv8eNtXx0zNruFCCTRpUXNdfluNviej3hwVaNfZkp2Pxx1QxKsxFmzVHRJl', NULL, '2022-06-27 08:00:18', '2022-06-27 08:00:18', NULL, NULL, 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
