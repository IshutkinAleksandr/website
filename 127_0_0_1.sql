-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 22 2021 г., 17:33
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `medallist`
--
CREATE DATABASE IF NOT EXISTS `medallist` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `medallist`;

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(7) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Россия'),
(2, 'США'),
(3, 'Украина'),
(4, 'Беларусь'),
(5, 'Украина'),
(6, 'Казахстан'),
(7, 'Германия'),
(8, 'Польша'),
(9, 'Франция'),
(10, 'Чехия'),
(11, 'Грузия'),
(12, 'Литва'),
(13, 'Китай'),
(14, 'Япония'),
(15, 'Индия'),
(34, 'Якутия'),
(35, 'Занзибар'),
(36, 'Иван'),
(37, 'Мордовия');

-- --------------------------------------------------------

--
-- Структура таблицы `medals`
--

CREATE TABLE `medals` (
  `id` int(7) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `medals`
--

INSERT INTO `medals` (`id`, `name`) VALUES
(1, 'Золотая'),
(2, 'Серебрянная'),
(3, 'Бронзовая');

-- --------------------------------------------------------

--
-- Структура таблицы `medal standings`
--

CREATE TABLE `medal standings` (
  `medal_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sports`
--

CREATE TABLE `sports` (
  `id` int(7) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sports`
--

INSERT INTO `sports` (`id`, `name`) VALUES
(1, 'Бег'),
(2, 'Прыжки'),
(3, 'Бокс'),
(4, 'Многоборье'),
(5, 'Стрельба'),
(6, 'Борьба'),
(7, 'Теннис'),
(8, 'Волейбол'),
(9, 'Баскетбол'),
(10, 'Метание копья'),
(22, 'турник'),
(23, 'usa'),
(24, 'usa'),
(25, 'бег');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `name` varchar(100) NOT NULL,
  `age` int(7) NOT NULL,
  `height` int(7) NOT NULL,
  `date_of_birth` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`name`, `age`, `height`, `date_of_birth`) VALUES
('Колян', 29, 190, '1992-03-05 21:15:11'),
('Русланчик', 24, 183, '1997-07-03 21:15:11'),
('Илюха', 23, 188, '1998-01-06 21:16:35'),
('Владик', 25, 200, '1996-09-23 21:16:35'),
('Виталий', 24, 170, '1997-09-10 21:18:52'),
('Лёха', 23, 180, '1998-02-14 21:18:52'),
('Камиль', 19, 188, '2002-06-19 21:20:51'),
('Денис', 21, 187, '2001-07-19 21:20:51'),
('Арман', 21, 178, '2001-04-09 21:23:14'),
('Ренат', 25, 185, '1996-05-07 21:23:14'),
('Артём', 27, 191, '1994-02-03 21:25:45'),
('Максимка', 24, 168, '1997-09-18 21:25:45');

-- --------------------------------------------------------

--
-- Структура таблицы `us`
--

CREATE TABLE `us` (
  `id` int(7) NOT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `us`
--

INSERT INTO `us` (`id`, `surname`, `name`) VALUES
(1, 'колисов', 'том'),
(12, '', 'Иван'),
(13, '', 'турник'),
(14, 'РАВ', 'турник'),
(15, 'Иванов', 'Занзибар');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(7) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_id` int(7) DEFAULT NULL,
  `sport_id` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `surname`, `name`, `country_id`, `sport_id`) VALUES
(1, 'Петьков', 'Синдр', 1, 2),
(2, 'Зурбаган', 'Бермуд', 1, 5),
(92, 'Иванов', 'Иван', 1, 1),
(93, 'Иванов', 'Иван', 3, 2),
(94, 'чуприк', 'ком', 13, 9),
(95, 'Иванов', 'Иван', 3, 2),
(96, 'Иванов', 'Иван', 3, 2),
(97, 'Иванов', 'Иван', 3, 2),
(98, 'Иванов', 'Иван', 3, 2),
(99, 'Иванов', 'Иван', 3, 2),
(100, 'Иванов', 'Иван', 3, 2),
(101, 'Иванов', 'Иван', 3, 2),
(102, 'n njk', 'b nbb', 11, 22),
(103, 'петька', 'wfwef', 4, 2),
(104, 'петька', 'wfwef', 4, 2),
(105, 'петька', 'wfwef', 4, 2),
(106, 'петька', 'wfwef', 4, 2),
(107, 'петька', 'wfwef', 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(7) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_id` int(7) NOT NULL,
  `sport_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `surname`, `name`, `country_id`, `sport_id`) VALUES
(1, 'Владик', 'Сердцеед', 1, 1),
(2, 'Владок', 'Хряпин', 2, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `medals`
--
ALTER TABLE `medals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `us`
--
ALTER TABLE `us`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `medals`
--
ALTER TABLE `medals`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `us`
--
ALTER TABLE `us`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
