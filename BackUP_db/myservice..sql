-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 11 2021 г., 15:44
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `myservice`
--

-- --------------------------------------------------------

--
-- Структура таблицы `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `mark` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `gos_number` varchar(50) DEFAULT NULL,
  `year_production` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `car`
--

INSERT INTO `car` (`id`, `mark`, `color`, `owner`, `gos_number`, `year_production`, `state`) VALUES
(1, 'Alfa Romeo', 'Зеленый', 'Владелец', 'o 326 ye', 2016, 1),
(2, 'Audi', 'Синий', 'Доверенность', 'y 564 ye', 2013, 1),
(3, 'Lanos', 'Серый', 'Владелец', 'a 435 ae', 1999, 1),
(4, 'Volkswagen', 'Зеленый', 'Доверенность', 'o 326 ye', 2010, 1),
(5, 'Opel', 'Черный', 'Доверенность', 'e 567 ye', 1989, 1),
(6, 'Datsun', 'Красный', 'Владелец', 'a 321 ye', 2016, 1),
(7, 'Honda', 'Синий', 'Владелец', 'e 243 ye', 2000, 1),
(8, 'Dacia', 'Серый', 'Доверенность', 'y 432 ae', 2005, 1),
(9, 'Fiat', 'Зеленый', 'Владелец', 'y 234 oe', 2010, 1),
(10, 'Ford', 'Черный', 'Доверенность', 'o 435 ye', 1989, 1),
(11, 'Honda', 'Синий', 'Владелец', 'e 240 nc', 1993, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `patronamic` varchar(50) DEFAULT NULL,
  `pass_id` varchar(50) DEFAULT NULL,
  `date_born` date DEFAULT current_timestamp(),
  `habitation` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id`, `surname`, `name`, `patronamic`, `pass_id`, `date_born`, `habitation`, `state`) VALUES
(1, 'Петров', 'Сергей', 'Семенович', 'ОО 753621', '2000-12-15', 'г. Донецк бул. Шевченко 73/29', 1),
(2, 'Печка', 'Маргарита', 'Павловна', 'OO 476243', '1990-02-13', 'Донецк, бул. Шевченко 73/29', 1),
(3, 'Петров', 'Иван', 'Николаевич', 'HH 423786', '1980-03-03', 'Донецк, бул. Пушкина 15/31', 1),
(4, 'Смирнов', 'Валентин', 'Семенович', 'OO 324786', '1970-04-23', 'Донецк, ул. Щорса 13/29', 1),
(5, 'Сидоров', 'Сергей', 'Сергеевич', 'OO 746328', '1960-05-14', 'Донецк, ул. Луганская 41/2', 1),
(6, 'Кошкин', 'Леонид', 'Викторович', 'OO 678342', '1965-06-18', 'Донецк, бул. Пушкина 11', 1),
(7, 'Юшкин', 'Николай', 'Петрович', 'OO 673284', '1977-07-21', 'Донецк, ул. Буденева 29', 1),
(8, 'Самойлов', 'Семен', 'Александрович', 'OO 249308', '1986-08-27', 'Донецк, бул. Шевченко 2/22', 1),
(9, 'Печной', 'Августин', 'Юрьевич', 'OO 478932', '1986-03-15', 'Донецк, бул. Шевченко 32/41', 1),
(10, 'Речной', 'Чапай', 'Олегович', 'OO 478432', '1957-02-06', 'Донецк, бул. Шевченко 1/23', 1),
(11, 'Зяблов', 'Сергей', 'Николаевич', 'OO 287943', '1987-03-11', 'Донецк, бул. Пушкина 12/29', 1),
(12, 'Егоров', 'Виктор', 'Михайлович', 'оо 764932', '1990-08-21', 'Донецк бул. Шевченко 73/29', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `patronamic` varchar(50) DEFAULT NULL,
  `expirience` int(11) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id`, `surname`, `name`, `patronamic`, `expirience`, `specialization`, `rank`, `state`) VALUES
(1, 'Мамонов', 'Сергей', 'Владимирович', 20, 'Сварщик', 10, 1),
(2, 'Чайка', 'Маргарита', 'Леонидовна', 12, 'Слесарь', 7, 1),
(3, 'Владимиров', 'Иван', 'Николаевич', 7, 'Моторист', 5, 1),
(4, 'Смирнов', 'Валентин', 'Семенович', 5, 'Токарь', 3, 1),
(5, 'Ушко', 'Петр', 'Юрьевич', 2, 'Диагностик', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `price_list`
--

CREATE TABLE `price_list` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `price_list`
--

INSERT INTO `price_list` (`id`, `title`, `price`) VALUES
(1, 'Проверка лакокрасочного покрытия толщиномером', 100),
(2, 'Диагностика ходовой части (на подъемнике)', 100),
(3, 'Диагностика ходовой части на диагностической линии (компьютерная)', 100),
(4, 'Диагностика электрооборудования автомобиля', 150),
(5, 'Компьютерная диагностика электронных систем (считывание ошибок из блока управления автомобиля)', 300),
(6, 'Компьютерная диагностика электронных систем углубленная', 50),
(7, 'Осмотр освещения световой сигнализации', 550),
(8, 'Замена шаровой опоры (крепления заклепками)', 425),
(9, 'Замена сайлентблока подрамника (на снятом подрамнике)', 345),
(10, 'Диагностика системы охлаждения', 3876),
(11, 'Диагностика ситемы кондиционирования', 425),
(12, 'Снятие и установка тормозных дисков (1к-т на ось)', 2768),
(13, 'Проточка тормозных дисков (1к-т на ось)', 2687),
(14, 'Замена ремкомплекта направляющих суппорта тормозного', 3768),
(15, 'Замена поршня суппорта тормозного', 6423),
(16, 'Замена ремкомплекта суппорта с электрическим механизмом ручника', 7368),
(17, 'Снятие и установка главного тормозного цилиндра', 465),
(18, 'Снятие и установка рычага верхнего передней подвески', 768),
(19, 'Снятие и установка рабочего цилиндра сцепления', 68),
(20, 'Прокачка гидропривода сцепления', 786),
(21, 'Снятие и установка троса сцепления', 703),
(22, 'Замена комплекта сцепления (без снятия подрамника)', 453),
(23, 'Замена комплекта сцепления (со снятием подрамника)', 246),
(24, 'Замена комплекта сцепления (полный привод)', 254),
(25, 'Снятие и установка кулисы КПП, АКПП', 345),
(26, 'Разборка и сборка автоматической коробки переключения скоростей (АКПП)', 415),
(27, 'Ремонт гидроблока', 277),
(28, 'Ремонт гидротрансформатора', 782),
(29, 'Разборка и сборка роботизированной аба полуавтоматической КПП (например DSG, Power Shift)', 245),
(30, 'Ремонт актуатора роботизированной аба полуавтоматической КПП', 728),
(31, 'Адаптация роботизированной КПП', 321),
(32, 'Снятие и установка раздаточной коробки', 243),
(33, 'Разборка и сборка раздаточной коробки', 534),
(34, 'Снятие и установка подвесного подшипника карданного вала', 645),
(35, 'Снятие и установка полуоси заднего (разрезного) моста', 243),
(36, 'Снятие и установка полуоси заднего (неразрезного) моста', 564),
(37, 'Замена сальника хвостовика редуктора', 967),
(38, 'Замена сальника полуоси заднего (неразрезного) моста (при снятой полуоси)', 632),
(39, 'Замена подшипка подвесного (опорного) полуоси', 372);

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `date_start_repairs` date DEFAULT current_timestamp(),
  `date_finish_repairs` date DEFAULT current_timestamp(),
  `price_list_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`price_list_id`)),
  `state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`id`, `car_id`, `client_id`, `employee_id`, `date_start_repairs`, `date_finish_repairs`, `price_list_id`, `state`) VALUES
(1, 1, 6, 1, '2021-01-11', '2021-01-16', '[1,5,3,7]', 1),
(2, 1, 1, 3, '2020-12-26', '2020-12-14', '[1,3,4,7]', 1),
(3, 2, 2, 5, '2020-12-26', '2020-12-20', '[10,12,21,2]', 1),
(4, 3, 3, 1, '2020-12-12', '2020-12-01', '[22,25,32,1]', 1),
(5, 4, 4, 4, '2020-12-17', '2020-12-01', '[31,12,13,15]', 1),
(6, 5, 5, 5, '2020-12-19', '2020-12-01', '[9,5,2,8]', 1),
(7, 6, 6, 5, '2020-12-24', '2020-12-07', '[31,12,9,17]', 1),
(8, 7, 7, 2, '2020-12-12', '2020-12-13', '[13,21,31,26]', 1),
(9, 8, 8, 3, '2020-12-19', '2020-12-02', '[4,12,15]', 1),
(10, 9, 9, 1, '2020-12-25', '2020-12-14', '[3, 2, 5]', 1),
(11, 10, 10, 3, '2021-01-04', '2021-01-17', '[22,23,24,25]', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
