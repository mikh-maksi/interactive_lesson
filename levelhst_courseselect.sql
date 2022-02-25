-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: levelhst.mysql.ukraine.com.ua
-- Время создания: Фев 26 2022 г., 01:13
-- Версия сервера: 5.7.33-36-log
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `levelhst_courseselect`
--

-- --------------------------------------------------------

--
-- Структура таблицы `action`
--

CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(30) NOT NULL,
  `task_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `action`
--

INSERT INTO `action` (`id`, `student_id`, `lesson_id`, `name`, `task_id`, `datetime`) VALUES
(1, 1, 1, 'max', 1, '2022-02-18 22:13:03'),
(2, 1, 1, 'max', 2, '2022-02-18 22:13:20'),
(3, 1, 1, 'max', 3, '2022-02-18 22:14:44'),
(4, 1, 1, 'max', 4, '2022-02-18 22:15:41'),
(5, 1, 1, 'max', 5, '2022-02-18 22:33:53'),
(6, 2, 1, 'Nill', 1, '2022-02-18 22:34:24'),
(7, 2, 1, 'Nill', 2, '2022-02-18 22:34:25'),
(8, 2, 1, 'Nill', 3, '2022-02-18 22:34:26'),
(9, 2, 1, 'Nill', 4, '2022-02-18 22:34:48'),
(10, 2, 1, 'Nill', 5, '2022-02-18 22:34:49'),
(11, 3, 1, 'Mark', 1, '2022-02-18 22:34:50'),
(12, 3, 1, 'Mark', 2, '2022-02-18 22:35:30'),
(13, 3, 1, 'Mark', 3, '2022-02-18 22:35:48'),
(14, 3, 2, 'Mark', 4, '2022-02-18 22:35:50'),
(15, 7, 1, 'Gram', 5, '2022-02-18 22:36:39'),
(95, 0, 1, 'name', 0, '2022-02-24 17:59:16'),
(94, 4, 1, '', 3, '2022-02-24 17:09:51'),
(93, 4, 1, '', 2, '2022-02-24 17:09:43'),
(92, 4, 1, '', 1, '2022-02-24 17:09:35'),
(91, 1, 1, '', 3, '2022-02-24 16:55:49'),
(90, 1, 1, '', 2, '2022-02-24 16:55:48'),
(89, 1, 1, '', 1, '2022-02-24 16:55:45'),
(88, 0, 1, '', 1, '2022-02-24 16:52:32'),
(87, 1, 2, 'max', 1, '2022-02-22 23:12:06');

-- --------------------------------------------------------

--
-- Структура таблицы `choise`
--

CREATE TABLE `choise` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `grp` varchar(15) NOT NULL,
  `strng` varchar(15) NOT NULL,
  `s1` int(11) NOT NULL,
  `s2` int(11) NOT NULL,
  `s3` int(11) NOT NULL,
  `s4` int(11) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `choise`
--

INSERT INTO `choise` (`id`, `name`, `grp`, `strng`, `s1`, `s2`, `s3`, `s4`, `tel`, `datetime`) VALUES
(1, '', '', '1', 0, 0, 0, 0, '38012345678', '0000-00-00 00:00:00'),
(2, '', '', '1', 0, 0, 0, 0, '38012345678', '0000-00-00 00:00:00'),
(3, '', '', '1', 0, 0, 0, 0, '38012345678', '0000-00-00 00:00:00'),
(4, '', '', '1', 0, 0, 0, 0, '38012345678', '0000-00-00 00:00:00'),
(5, '', '', '1', 0, 0, 0, 0, '38012345678', '0000-00-00 00:00:00'),
(6, '', '', '1', 0, 0, 0, 0, '38012345678', '0000-00-00 00:00:00'),
(7, '', '', '1', 0, 0, 0, 0, '38012345678', '0000-00-00 00:00:00'),
(8, '', '', '1', 0, 0, 0, 0, '38012345678', '0000-00-00 00:00:00'),
(9, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:37:28'),
(10, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:39:06'),
(11, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:39:34'),
(12, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:39:38'),
(13, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:41:26'),
(14, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:41:48'),
(15, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:44:08'),
(16, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:44:47'),
(17, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:45:27'),
(18, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:45:30'),
(19, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:45:52'),
(20, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:45:56'),
(21, '', '', '1', 0, 0, 0, 0, '38012345678', '2022-02-11 17:46:31'),
(22, 'name', '', 'string', 0, 0, 0, 0, '+380631312876', '2022-02-11 18:24:34'),
(23, 'Имя', '', '1', 0, 0, 0, 0, '123654', '2022-02-11 19:05:05'),
(24, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-12 14:18:02'),
(25, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-12 14:19:14'),
(26, 'name', '', '1', 0, 0, 0, 0, '+38012345678', '2022-02-12 14:19:25'),
(27, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-12 14:23:04'),
(28, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-12 14:23:13'),
(29, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-12 14:23:39'),
(30, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-12 14:28:03'),
(31, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-13 09:15:06'),
(32, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-13 09:18:22'),
(33, 'name', '', '1', 0, 0, 0, 0, '+38012345678', '2022-02-14 07:38:54'),
(34, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-14 07:41:59'),
(35, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-14 08:47:08'),
(36, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-14 08:47:48'),
(37, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-14 08:48:15'),
(38, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-17 10:44:53'),
(39, 'name', '', '1', 0, 0, 0, 0, '+38012345678', '2022-02-17 10:45:28'),
(40, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-18 20:21:49'),
(41, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-18 20:21:51'),
(42, 'name', '', '1', 0, 0, 0, 0, '+38012345678', '2022-02-18 20:32:18'),
(43, 'name', '', '1', 0, 0, 0, 0, '1234567', '2022-02-18 20:34:57'),
(44, 'max', '', '1', 0, 0, 0, 0, '1234567', '2022-02-18 20:59:36'),
(45, 'name', '', '1', 0, 0, 0, 0, '+38012345678', '2022-02-21 17:48:02'),
(46, 'name', '', '1', 0, 0, 0, 0, '+38012345678', '2022-02-21 20:53:22'),
(47, 'name', '', '1', 0, 0, 0, 0, '+38012345678', '2022-02-24 12:06:03');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `zoho` varchar(30) NOT NULL,
  `tel` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `zoho`, `tel`) VALUES
(1, 'max', '', '+380631312876');

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `name`) VALUES
(1, 'Roblox');

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `task_number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `description`, `task_number`) VALUES
(1, 'Roblox_probe', 'Пробное занятие по Roblox.', 5),
(2, 'FE_probe', 'FE', 5),
(3, 'GameDev_probe', 'GameDev', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `course_id`, `datetime`) VALUES
(1, 'Nill', 1, '2022-02-21 20:12:00'),
(2, 'Nick', 1, '2022-02-21 20:12:02'),
(3, 'Max', 1, '2022-02-21 20:50:02'),
(4, 'Vladislav', 1, '2022-02-22 10:16:13'),
(5, 'name', 0, '2022-02-24 18:02:48');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `choise`
--
ALTER TABLE `choise`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `action`
--
ALTER TABLE `action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT для таблицы `choise`
--
ALTER TABLE `choise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
