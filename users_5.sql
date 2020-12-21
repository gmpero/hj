-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 21 2020 г., 21:11
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(10) UNSIGNED NOT NULL,
  `brand` varchar(64) NOT NULL,
  `wheel_drive` int(1) UNSIGNED DEFAULT 0,
  `number_of_passengers` int(3) UNSIGNED DEFAULT 0,
  `trunk_volume` int(10) DEFAULT -1,
  `img_path` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id_brand`, `brand`, `wheel_drive`, `number_of_passengers`, `trunk_volume`, `img_path`) VALUES
(1, 'MERSEDES', 1, 4, 50, 'uploads/Mercedes.jpg'),
(2, 'LOGAN', 1, 5, 250, 'uploads/LOGAN.jpg'),
(3, 'Jiguli', 3, 10, 1000, 'uploads/jiguli.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `car`
--

CREATE TABLE `car` (
  `id_car` int(11) NOT NULL,
  `id_brand` int(10) UNSIGNED NOT NULL,
  `release_date` varchar(10) NOT NULL,
  `car_cost` bigint(12) UNSIGNED NOT NULL,
  `car_display` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `car`
--

INSERT INTO `car` (`id_car`, `id_brand`, `release_date`, `car_cost`, `car_display`) VALUES
(1, 1, '20.10.2020', 3000000, 1),
(2, 1, '11.10.2019', 2500000, 1),
(3, 2, '20.12.2020', 500000, 1),
(4, 3, '01.02.2001', 20000, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name_user` varchar(64) NOT NULL,
  `text_comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`comment_id`, `page_id`, `name_user`, `text_comment`) VALUES
(8, 1, 'klara', '****  какой  классный  сайт'),
(9, 1, 'klara', 'Блинчики  были  ****  падери  какие  вкусные'),
(10, 1, 'Karl', '****  ну  вы  вообще');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`) VALUES
(1, 'Admin', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'klara', 'd93591bdf7860e1e4ee2fca799911215');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`),
  ADD UNIQUE KEY `brand` (`brand`);

--
-- Индексы таблицы `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id_car`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `car`
--
ALTER TABLE `car`
  MODIFY `id_car` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
