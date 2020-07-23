-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 23 2020 г., 20:56
-- Версия сервера: 8.0.12
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
-- База данных: `viva`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_22_202328_create_posts_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0818cc4ce4e6f69c168775364ac81c0bd295bca16c4bde762b5d869d4467a82e9acc8cd036e24b56', 5, 1, 'viva', '[]', 0, '2020-07-23 06:48:54', '2020-07-23 06:48:54', '2021-07-23 09:48:54'),
('083ee6700c58fd695620b50b0bcc9479508132f6fd24fd0e0a1bdf830e09c992460bec1abfe83fca', 5, 1, 'viva', '[]', 0, '2020-07-23 13:31:45', '2020-07-23 13:31:45', '2021-07-23 16:31:45'),
('0d969e41ac4b4494595e839682ae09e854bb01a72d936670e103f4869dc60ee5956a46c4262db14d', 5, 1, 'viva', '[]', 0, '2020-07-23 06:27:21', '2020-07-23 06:27:21', '2021-07-23 09:27:21'),
('1752fb4b5aa752fdd7eb8ab67a37f8ee4b6109ab5f8e0fae36f6bfeb57e835218f6962e9185dfb38', 5, 1, 'viva', '[]', 0, '2020-07-23 12:48:54', '2020-07-23 12:48:54', '2021-07-23 15:48:54'),
('19e7b31de98dba0a5216bd2dfa7581a8eafebecc9c23c204535003f3661c471217198d9ca00fd5d0', 5, 1, 'viva', '[]', 0, '2020-07-23 14:01:08', '2020-07-23 14:01:08', '2021-07-23 17:01:08'),
('1ea04618123310981fe6aa930e6604aab23a9af6a4aa227ba0523febce42767f16dd68b57692e2af', 5, 1, 'viva', '[]', 0, '2020-07-23 12:27:46', '2020-07-23 12:27:46', '2021-07-23 15:27:46'),
('20a79a6d275c699615559f9702d68553a64813c4f56d3bb67681599b4445c8f06c6e1c5f4fe63643', 11, 1, 'viva', '[]', 0, '2020-07-23 14:52:14', '2020-07-23 14:52:14', '2021-07-23 17:52:14'),
('25190de4c48b71a08e42a6696cd274eed5a4c54ae0603a1b04b169f2d39b32297f45b13d8f3bf6aa', 5, 1, 'viva', '[]', 0, '2020-07-23 06:26:31', '2020-07-23 06:26:31', '2021-07-23 09:26:31'),
('297899b485eb2a1b00f76610c22307fc95931925592b81e079f0c2238fdbe436bdd1541e7198be29', 5, 1, 'viva', '[]', 0, '2020-07-23 06:24:56', '2020-07-23 06:24:56', '2021-07-23 09:24:56'),
('2cb22dd4c33e897d5c6fde1b2e82d5dd1e04c324ab50d43b18b57fa0a7ee5e8bca15e6f7360b39ba', 5, 1, 'viva', '[]', 0, '2020-07-23 13:00:29', '2020-07-23 13:00:29', '2021-07-23 16:00:29'),
('2d570114011e86df5aed59e4e69fa4bec192d9bad3728acffd025c4bc7abdaf16fb371144a1d8081', 5, 1, 'viva', '[]', 0, '2020-07-23 06:26:05', '2020-07-23 06:26:05', '2021-07-23 09:26:05'),
('3477549412ffc2406151fd49cd806aef160ddf61af0ecfdf46be7db4eec17f7ce2a64e7baa932deb', 5, 1, 'viva', '[]', 0, '2020-07-23 10:38:32', '2020-07-23 10:38:32', '2021-07-23 13:38:32'),
('399adcc9c56caf300a0ffed3a01b669fb82200d81fa7e60abe88785ea41db62bffdb9a8c6d084f7b', 5, 1, 'viva', '[]', 0, '2020-07-23 06:47:19', '2020-07-23 06:47:19', '2021-07-23 09:47:19'),
('462dbd211c93adf8e9ba8d89674d9643b318f22b805a80fb2b6132ea278efbd971765d00aebad4fc', 5, 1, 'viva', '[]', 0, '2020-07-23 12:43:30', '2020-07-23 12:43:30', '2021-07-23 15:43:30'),
('4b304412c17f2324c20a6eb40c9a8a366c2e3c5ef68f735704ca9c5f8c3c24c49fe552fb6d8227c4', 8, 1, 'viva', '[]', 0, '2020-07-23 10:34:28', '2020-07-23 10:34:28', '2021-07-23 13:34:28'),
('4f044f543e10f797a7939e590625877fde5610f4ccc0271e17c96f4b102292c3f00e43f897d6bbab', 5, 1, 'viva', '[]', 0, '2020-07-23 10:35:07', '2020-07-23 10:35:07', '2021-07-23 13:35:07'),
('501ee8404b40237b0420cd8499dfe15a601a29c53e4a87136677df66d57a1230fcab12687ba5bbac', 5, 1, 'viva', '[]', 0, '2020-07-23 12:56:44', '2020-07-23 12:56:44', '2021-07-23 15:56:44'),
('51a9402b0530ff15879eca0779ff1ce027976cace9adcbecca9da6c5c3c032e6a21e8e1e41deac9e', 5, 1, 'viva', '[]', 0, '2020-07-23 12:47:19', '2020-07-23 12:47:19', '2021-07-23 15:47:19'),
('51d20cecb1b9347d7f8d1e48c1b5ed43782b61aebe24ad7dbc62f6914ba24f466b0522f8c88790fe', 11, 1, 'viva', '[]', 0, '2020-07-23 14:39:57', '2020-07-23 14:39:57', '2021-07-23 17:39:57'),
('566796e9c1734c963e52a810572833c718aaca7fe494e544cdb98198d564d1d7e233631583da8a2b', 11, 1, 'viva', '[]', 0, '2020-07-23 14:49:34', '2020-07-23 14:49:34', '2021-07-23 17:49:34'),
('58e6e04458789c1ce03bf4f2094c7d204240e4cf07041b49fa1d62746802116ae72e13c7891030e1', 5, 1, 'viva', '[]', 0, '2020-07-23 06:48:24', '2020-07-23 06:48:24', '2021-07-23 09:48:24'),
('5a3a052b96a87143a169d8595e5e2636bb5d4332f2ff8054c8bebb912eca97ff205b00fb73b2addd', 5, 1, 'viva', '[]', 0, '2020-07-23 14:37:17', '2020-07-23 14:37:17', '2021-07-23 17:37:17'),
('664f2e2951611332a300114d93aca859a9075fef6b0af72dc5f84afdb4aadeb50d1b6206bb28089b', 5, 1, 'viva', '[]', 0, '2020-07-23 12:43:49', '2020-07-23 12:43:49', '2021-07-23 15:43:49'),
('79c849f75032610deecf9f4830a5e62db394ef475fc8d972e39fa0e0a0c2b2bd2b3f93e62cb67467', 5, 1, 'viva', '[]', 0, '2020-07-23 14:32:15', '2020-07-23 14:32:15', '2021-07-23 17:32:15'),
('8b1a0e11c3f46bcc2058b7db7a330e8bff8d2431ea86a172d318ca50058611d4c292a7de57e08c2e', 5, 1, 'viva', '[]', 0, '2020-07-23 06:51:05', '2020-07-23 06:51:05', '2021-07-23 09:51:05'),
('a443a58ffb9640a64c4171598ef33a1b1f7b8aecbb52a3ab09eecab12208c9f39df0bfeb61f01db2', 5, 1, 'viva', '[]', 0, '2020-07-23 06:51:59', '2020-07-23 06:51:59', '2021-07-23 09:51:59'),
('aa802e95a2c2f0832648ca1dc58dbaafeae773ea7fbad9bb4a8896e38e8eee0f42d53031d830af9d', 5, 1, 'viva', '[]', 0, '2020-07-23 06:52:41', '2020-07-23 06:52:41', '2021-07-23 09:52:41'),
('c00a068859053dba59f55f251bbf2b9497f0aaaef8753ab61d0b574fe60c6abaee3ddc87eadd64a7', 5, 1, 'viva', '[]', 0, '2020-07-23 06:03:35', '2020-07-23 06:03:35', '2021-07-23 09:03:35'),
('cfbce053e96a287e7ae3f59b0bca4264670efc45d788dca16a1853a829c53d0d24358197da275142', 5, 1, 'viva', '[]', 0, '2020-07-23 13:07:40', '2020-07-23 13:07:40', '2021-07-23 16:07:40'),
('d60ebf7a800cb148b37ea57a5c58d0422b8f6e4c295d6d5d1d11552225ce3cf3a58e4daa217c2bfb', 5, 1, 'viva', '[]', 0, '2020-07-23 10:36:51', '2020-07-23 10:36:51', '2021-07-23 13:36:51'),
('d7d932431eef28e1beca378dff694d94ecbc64a7e1962241da48ff173a345b7e4a8534862d736ea0', 5, 1, 'viva', '[]', 0, '2020-07-23 06:48:00', '2020-07-23 06:48:00', '2021-07-23 09:48:00'),
('f258fc2f6c3f071bb9493f60155d516a86250093966571c22e9c09d18661434909f6391742eeb805', 5, 1, 'viva', '[]', 0, '2020-07-23 10:17:57', '2020-07-23 10:17:57', '2021-07-23 13:17:57');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'cKHvZN9jlwQuFp4a3109VZdbT3eqAxiktq7JsPFD', NULL, 'http://localhost', 1, 0, 0, '2020-07-23 03:55:45', '2020-07-23 03:55:45'),
(2, NULL, 'Laravel Password Grant Client', '7pBchKkCBIHz8DcUOUA1EsIRpApLf58fyv9tJ8zE', 'users', 'http://localhost', 0, 1, 0, '2020-07-23 03:55:45', '2020-07-23 03:55:45');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-23 03:55:45', '2020-07-23 03:55:45');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Автовикрадач в Полтаві взяв в заручники поліцейського і їде до Києва', 'Місцеві вибори, призначені на 25 жовтня, пройдуть за новим законом. Виборчий кодекс, який набрав чинності цього року, змінює процес висування кандидатів і саму процедуру голосування. Про те, як українці будуть вибирати владу на місцях – в матеріалі РБК-Україна.\n\nЧерез три місяці українці вирушать на виборчі дільниці, де їм видадуть по кілька бюлетенів для голосування за місцеву владу. Правила, за якими пройдуть вибори сільських, селищних та міських голів, за великим рахунком залишилися без змін. Як і форма бюлетенів. Змінилася хіба що умова для проведення двотурового голосування.\n\nУ містах з понад 75 тисяч виборців жителі будуть обирати мера у два тури, якщо жоден із кандидатів не набере в першому турі більше ніж 50% голосів. Раніше ця вимога стосувалася міст, де проживало від 90 тисяч виборців. Кандидати на посаду сільських, селищних і міських голів можуть бути як самовисуванцями, так і висуватися від партій – як і раніше. Крім того, Рада вирішила скасувати обрання старост.\n\n\"Не всі депутати поділяли цю норму. По суті їх тепер будуть вибирати ради, а не виборці. Це можна назвати переворотом у місцевому самоврядуванні, оскільки він буде обиратися не в результаті довіри громадян, а в результаті договорняків між депутатами сільської ради\", – сказав РБК-Україна заступник голови комітету з питань державної влади Олександр Качура (\"Слуга народу\").\n\nКуди більше змін передбачено для виборів у місцеві ради. У селах, селищах і містах із населенням до 10 тисяч виборців громадяни будуть обирати депутатів за мажоритарною системою. Виборець має право віддати свій голос за одного кандидата. Але від одного округу депутатами стануть від двох до чотирьох осіб, а не по одному, як було заведено. Самих округів буде менше, але їхня площа збільшиться втричі.\n\nТреба сказати, що до змін, прийнятих парламентом минулого тижня, така багатомандатна мажоритарка була передбачена для всіх рад, що мають до 90 тисяч виборців. Але після тривалих дискусій як у депутатському корпусі, так і в експертному середовищі парламентарі все ж вирішили знизити цей поріг.', '2020-07-23 11:41:00', '2020-07-23 13:58:26'),
(4, 'Луческу проведет пресс-конференцию на следующей неделе', 'Новоиспеченный главный тренер киевского Динамо Мирча Луческу проведет пресс-конференцию 30 июля. Об этом сообщает официальный сайт Динамо.\nРумынский специалист пообщается с журналистами после выхода Динамо из отпуска, о деталях пресс-конференции будет сообщено позднее.\n\nНапомним, сегодня, 23 июля, президент киевского клуба Игорь Суркис представил Мирчу Луческу в качестве главного тренера Динамо. Ультрас и болельщики весьма болезненно восприняли эту информацию.', '2020-07-23 13:56:44', '2020-07-23 14:37:58');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'alex', 'alex@alex.com', NULL, '$2y$10$bLWmvq1XJz01wHjgDt5VyudOf8VX78i6xXSgbmCNTx4kAUcZGPr0W', NULL, '2020-07-23 05:24:34', '2020-07-23 14:32:51');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Индексы таблицы `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Индексы таблицы `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Индексы таблицы `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
