-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 26 2016 г., 20:45
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dima`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accaunts`
--

CREATE TABLE IF NOT EXISTS `accaunts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar` tinytext CHARACTER SET utf8mb4 NOT NULL,
  `phone` text NOT NULL,
  `address` tinytext NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL,
  `class` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `class`
--

INSERT INTO `class` (`id`, `class`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE IF NOT EXISTS `maintexts` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `url` tinytext NOT NULL,
  `lang` enum('ru','en') NOT NULL DEFAULT 'ru',
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `putdate` date NOT NULL,
  `leftmenu` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `lang`, `showhide`, `putdate`, `leftmenu`) VALUES
(1, 'Добро пожаловать!\r\n', 'Eще 15-20 лет назад все школы были скучными и унылыми снаружи и внутри. одинакового цвета стены, одинаковые окна, и побелка везде одна и та же.\r\nСейчас все изменилось! В большинстве современных школ отличный ремонт, в коридорах висят картины-репродукции, во многих школах есть бассейны, комнаты отдыха. Оборудование современных классов существенно отличается от того, что было раньше, все чаще можно увидеть интерактивные дочки, компьютеры в любом кабинете.\r\nНо есть и проблемы - учебного материала столько много, что учитель использует по 2-3 учебника, т.к. один не вмещает в себя всю подробную информацию, что очень неудобно для учащихся, кроме того, не хватает подготовленных кадров. В ряде школ предметы ведут не специалисты, потому что "больше некому". Да и, увы, среди тех, кто имеет пед. образование много людей случайных.\r\nИ все же школы продолжают развиваться, меняются к лучшему, что очень радует!', 'index', 'ru', 'show', '2016-12-16', '0'),
(3, 'Контакты', 'номер контакт', 'contacts', 'ru', 'show', '2016-12-16', '0'),
(4, 'Новости', 'В Республике Беларуси нашли золото.', 'news', 'ru', 'show', '2016-12-16', '0'),
(5, 'О Нас', 'Рассказ о себе', 'nas', 'ru', 'show', '2016-12-16', '0'),
(6, 'Предметы', 'Список предметы\r\nФизика\r\nХимия и т.д.', 'predmet', 'ru', 'show', '2016-12-16', '0'),
(7, 'Учителя', 'Руководителей\r\nУчителя\r\n', 'teacher', 'ru', 'show', '2016-12-16', '0'),
(8, 'Кружки', 'Список кружков', 'krushki', 'ru', 'show', '2016-12-16', '0'),
(9, 'Интересные факты', '1) Если жительница Гавайских островов кладёт цветы за правое ухо, она сообщает тем самым, что доступна. Чем больше цветов, тем сильнее её желание.\r\n2) В среднем дети смеются около 400 раз в день, взрослые смеются около 15 раз в день.\r\n3) 66% людей целуются с закрытыми глазами. Остальные любят наблюдать за эмоциональной реакцией своего партнёра на поцелуй.\r\n4) В среднем в своей жизни каждый человек целуется 20 160 минут, или 14 дней.\r\n5) Англичане пьют чая больше, чем жители любой другой страны. Например, в двадцать раз больше, чем американцы.', 'index', 'ru', 'show', '2016-12-19', '0'),
(10, 'Математика', 'Для приготовления обеда повару понадобилось 24 кг картошки, свеклы в 3 раза меньше, а лука в 2 раза меньше чем свеклы. Сколько килограмм лука потратил повар?\n\nРешение:\n1) 24 : 3 = 8\n2) 8 : 2 = 4\nВыражение: 24 : 8 : 2 = 4\nОтвет: 4 кг.', 'matematika', 'ru', 'show', '2016-12-19', '1'),
(11, 'Русский язык', 'После ж, ч, ш, щ не пишутся ю, я, ы, а пишутся у, а, и, например: чудо, щука, час, роща, жир, шить.\n\nБуквы ю и я допускаются после этих согласных только в иноязычных словах (преимущественно французских), например: жюри, парашют (в том числе — в именах собственных, например: Сен-Жюст), а также в сложносокращённых словах и буквенных аббревиатурах, в которых, по общему правилу, допускаются любые сочетания букв', 'russkii', 'ru', 'show', '2016-12-19', '1'),
(12, 'Биология', 'Плод со­сто­ит из семян и око­ло­плод­ни­ка.\n\nОко­ло­плод­ник – раз­рос­ши­е­ся и ви­до­из­ме­нив­ши­е­ся стен­ки за­вя­зи. Также в его об­ра­зо­ва­нии могут при­ни­мать уча­стие ос­но­ва­ния ты­чи­нок, ча­ше­ли­сти­ков, ле­пест­ков, цве­то­ло­же.\n\nСе­ме­на об­ра­зу­ют­ся из се­мя­за­чат­ков.', 'biologija', 'ru', 'show', '2016-12-19', '0'),
(13, 'Физика', 'Содержание по физике', 'fizika', 'ru', 'show', '2016-12-19', '1'),
(14, 'Химия', 'Содержание по химии', 'ximija', 'ru', 'show', '2016-12-19', '1'),
(15, 'География', 'Содержание по географии', 'geogrefija', 'ru', 'show', '2016-12-19', '0'),
(16, 'Труд', 'Содержание по труду', 'trud', 'ru', 'show', '2016-12-19', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `predmets`
--

CREATE TABLE IF NOT EXISTS `predmets` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `picture` tinytext NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `login` tinytext NOT NULL,
  `pass` tinytext NOT NULL,
  `datereg` date NOT NULL,
  `lastvisit` datetime NOT NULL,
  `blockunblock` enum('unblock','block') NOT NULL DEFAULT 'unblock'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `login`, `pass`, `datereg`, `lastvisit`, `blockunblock`) VALUES
(1, 'dima@dima', 'dima', '12345', '2016-12-23', '2016-12-23 20:19:43', 'unblock'),
(2, 'dima@dima', 'dima', '12345', '2016-12-23', '2016-12-23 20:20:13', 'unblock'),
(3, 'dima@dima', 'dima', '12345', '2016-12-23', '2016-12-23 20:21:25', 'unblock'),
(4, 'sss@sss', 'sss', '111', '2016-12-23', '2016-12-23 20:22:40', 'unblock'),
(5, 'a@a.com', 'erer', 'MD5(111)', '2016-12-23', '2016-12-23 20:27:41', 'unblock'),
(6, 'v@m.com', 'sf', '698d51a19d8a121ce581499d7b701668', '2016-12-23', '2016-12-23 20:33:12', 'unblock'),
(7, 'v@m.com', 'ssss', '111', '2016-12-23', '2016-12-23 20:58:13', 'unblock'),
(8, 'v@m.com', 'qweqw', '111', '2016-12-23', '2016-12-23 20:59:15', 'unblock'),
(9, 'sss@sss', 'sssqq', '111', '2016-12-23', '2016-12-23 21:29:53', 'unblock');

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL,
  `predmet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `url` tinytext NOT NULL,
  `picture` tinytext NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accaunts`
--
ALTER TABLE `accaunts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `predmets`
--
ALTER TABLE `predmets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accaunts`
--
ALTER TABLE `accaunts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `predmets`
--
ALTER TABLE `predmets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
