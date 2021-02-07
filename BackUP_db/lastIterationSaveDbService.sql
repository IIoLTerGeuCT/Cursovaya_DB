-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 14 2021 г., 16:44
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
-- База данных: `servicedb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `gos_number` varchar(30) DEFAULT NULL,
  `mark` varchar(30) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `state` int(1) DEFAULT NULL,
  `year_production` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `car`
--

INSERT INTO `car` (`id`, `color`, `gos_number`, `mark`, `owner_id`, `state`, `year_production`) VALUES
(1, 'Зеленый', 'o 326 ye', 'Alfa Romeo', 1, 1, 2016),
(2, 'Синий', 'y 564 ye', 'Audi a 8', 1, 1, 2013),
(3, 'Серый', 'a 435 ae', 'Lanos', 2, 1, 1999),
(4, 'Зеленый', 'o 326 ye', 'Volkswagen', 1, 1, 2010),
(5, 'Черный', 'e 567 ye', 'Opel', 2, 1, 1989),
(6, 'Красный', 'a 321 ye', 'Datsun', 1, 1, 2016),
(7, 'Синий', 'e 243 ye', 'Honda', 2, 1, 2000),
(8, 'Серый', 'y 432 ae', 'Dacia', 1, 1, 2005),
(9, 'Зеленый', 'y 234 oe', 'Fiat', 2, 1, 2010),
(10, 'Черный', 'o 435 ye', 'Ford', 1, 1, 1989),
(11, 'Синий', 'e 240 nc', 'Honda', 1, 1, 1993),
(12, 'Бежевый', 'o 763 j', 'Lada', 1, 1, 1950);

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `patronamic` varchar(50) NOT NULL,
  `date_born` date DEFAULT current_timestamp(),
  `habitation` varchar(100) DEFAULT NULL,
  `pass_id` varchar(20) DEFAULT NULL,
  `state` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id`, `surname`, `name`, `patronamic`, `date_born`, `habitation`, `pass_id`, `state`) VALUES
(1, 'Петров', 'Сергей', 'Семенович', '2000-12-15', 'г. Донецк бул. Шевченко 73/29', 'ОО 753621', 1),
(2, 'Печка', 'Маргарита', 'Павловна', '1990-02-13', 'Донецк, бул. Шевченко 73/29', 'OO 476243', 1),
(3, 'Петров', 'Иван', 'Николаевич', '1980-03-03', 'Донецк, бул. Пушкина 15/31', 'HH 423786', 1),
(4, 'Смирнов', 'Валентин', 'Семенович', '1970-04-23', 'Донецк, ул. Щорса 13/29', 'OO 324786', 1),
(5, 'Сидоров', 'Сергей', 'Сергеевич', '1960-05-14', 'Донецк, ул. Луганская 41/2', 'OO 746328', 1),
(6, 'Кошкин', 'Леонид', 'Викторович', '1965-06-18', 'Донецк, бул. Пушкина 11', 'OO 678342', 1),
(7, 'Юшкин', 'Николай', 'Петрович', '1977-07-21', 'Донецк, ул. Буденева 29', 'OO 673284', 1),
(8, 'Самойлов', 'Семен', 'Александрович', '1986-08-27', 'Донецк, бул. Шевченко 2/22', 'OO 249308', 1),
(9, 'Печной', 'Августин', 'Юрьевич', '1986-03-15', 'Донецк, бул. Шевченко 32/41', 'OO 478932', 1),
(10, 'Речной', 'Чапай', 'Олегович', '1957-02-06', 'Донецк, бул. Шевченко 1/23', 'OO 478432', 1),
(11, 'Зяблов', 'Сергей', 'Николаевич', '1987-03-11', 'Донецк, бул. Пушкина 12/29', 'OO 287943', 1),
(12, 'Егоров', 'Виктор', 'Михайлович', '1990-08-21', 'Донецк бул. Шевченко 73/29', 'оо 764932', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `patronamic` varchar(50) NOT NULL,
  `expirience` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id`, `surname`, `name`, `patronamic`, `expirience`, `rank`, `specialization`, `state`) VALUES
(1, 'Васильев', 'Сергей', 'Семенович', 20, 10, 'Сварщик', 1),
(2, 'Сидоров', 'Семен', 'Петрович', 12, 7, 'Слесарь', 1),
(3, 'Смирнов', 'Константин', 'Валентинович', 7, 5, 'Моторист', 1),
(4, 'Дробот', 'Аркадий', 'Семенович', 5, 3, 'Токарь', 1),
(5, 'Юсупов', 'Павел', 'Иудович', 2, 1, 'Диагностик', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `owner`
--

INSERT INTO `owner` (`id`, `type`) VALUES
(1, 'Владелец'),
(2, 'Доверенность');

-- --------------------------------------------------------

--
-- Структура таблицы `price_list`
--

CREATE TABLE `price_list` (
  `id` int(11) NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `price_list`
--

INSERT INTO `price_list` (`id`, `type`, `price`) VALUES
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
  `date_finish_repairs` date DEFAULT current_timestamp(),
  `date_start_repairs` date DEFAULT current_timestamp(),
  `employee_id` int(11) DEFAULT NULL,
  `price_list_id` longtext NOT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`id`, `car_id`, `client_id`, `date_finish_repairs`, `date_start_repairs`, `employee_id`, `price_list_id`, `state`) VALUES
(1, 6, 1, '2020-12-14', '2020-12-26', 3, '[1,3,4,7]', 1),
(2, 1, 2, '2020-12-20', '2020-12-26', 5, '[10,12,21,2]', 2),
(3, 9, 3, '2020-12-01', '2020-12-12', 1, '[22,25,32,1]', 1),
(4, 4, 4, '2020-12-01', '2020-12-17', 4, '[31,12,13,15]', 2),
(5, 7, 5, '2020-12-01', '2020-12-19', 5, '[9,5,2,8]', 1),
(6, 2, 6, '2020-12-07', '2020-12-24', 5, '[31,12,9,17]', 1),
(7, 10, 7, '2020-12-13', '2020-12-12', 1, '[13,21,31,26]', 3),
(8, 5, 8, '2020-12-02', '2020-12-19', 3, '[4,12,15]', 1),
(9, 9, 9, '2020-12-14', '2020-12-25', 1, '[3, 2, 5]', 3),
(10, 11, 10, '2021-01-17', '2021-01-04', 3, '[22,23,24,25]', 2),

(11, 3, 8, '2020-12-13', '2020-12-12', 1, '[13,21,31,26]', 3),
(12, 4, 6, '2020-12-02', '2020-12-19', 3, '[4,12,15]', 1),
(13, 4, 5, '2020-12-14', '2020-12-25', 1, '[3, 2, 5]', 3),
(14, 5, 2, '2021-01-17', '2021-01-04', 3, '[22,23,24,25]', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`),
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
-- Индексы таблицы `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `price_list_id` (`price_list_id`(768));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE SET NULL,
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
