-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 22 Wrz 2015, 20:34
-- Wersja serwera: 5.5.9
-- Wersja PHP: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `admin_trippro`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trackable_id` int(11) DEFAULT NULL,
  `trackable_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `owner_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_polish_ci,
  `recipient_id` int(11) DEFAULT NULL,
  `recipient_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_activities_on_trackable_id_and_trackable_type` (`trackable_id`,`trackable_type`),
  KEY `index_activities_on_owner_id_and_owner_type` (`owner_id`,`owner_type`),
  KEY `index_activities_on_recipient_id_and_recipient_type` (`recipient_id`,`recipient_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=42 ;

--
-- Zrzut danych tabeli `activities`
--

INSERT INTO `activities` (`id`, `trackable_id`, `trackable_type`, `owner_id`, `owner_type`, `key`, `parameters`, `recipient_id`, `recipient_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'L::News', 1, 'User', 'l_news.update', '--- {}\n', NULL, NULL, '2014-10-21 11:14:28', '2014-10-21 11:14:28'),
(2, 1, 'L::News', 1, 'User', 'l_news.update', '--- {}\n', NULL, NULL, '2014-10-21 11:14:34', '2014-10-21 11:14:34'),
(3, 1, 'L::News', 1, 'User', 'l_news.update', '--- {}\n', NULL, NULL, '2014-10-21 11:18:19', '2014-10-21 11:18:19'),
(4, 1, 'L::News', 1, 'User', 'l_news.update', '--- {}\n', NULL, NULL, '2014-10-21 11:22:23', '2014-10-21 11:22:23'),
(5, 1, 'L::News', 1, 'User', 'l_news.update', '--- {}\n', NULL, NULL, '2014-10-21 11:23:06', '2014-10-21 11:23:06'),
(6, 1, 'L::News', 1, 'User', 'l_news.update', '--- {}\n', NULL, NULL, '2014-10-21 11:23:53', '2014-10-21 11:23:53'),
(7, 1, 'L::News', 1, 'User', 'l_news.update', '--- {}\n', NULL, NULL, '2014-10-21 11:24:59', '2014-10-21 11:24:59'),
(8, 1, 'Screenshot', 1, 'User', 'screenshot.create', '--- {}\n', NULL, NULL, '2014-11-16 18:14:29', '2014-11-16 18:14:29'),
(9, 1, 'Video', 1, 'User', 'video.create', '--- {}\n', NULL, NULL, '2014-11-16 18:21:34', '2014-11-16 18:21:34'),
(10, 2, 'Video', 1, 'User', 'video.create', '--- {}\n', NULL, NULL, '2014-11-16 18:22:14', '2014-11-16 18:22:14'),
(11, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2014-11-16 18:22:33', '2014-11-16 18:22:33'),
(12, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-01-30 11:02:49', '2015-01-30 11:02:49'),
(13, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-01-30 13:06:27', '2015-01-30 13:06:27'),
(14, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-01-30 13:16:29', '2015-01-30 13:16:29'),
(15, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-01-30 13:16:44', '2015-01-30 13:16:44'),
(16, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-01-30 13:20:39', '2015-01-30 13:20:39'),
(17, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-02-02 09:48:27', '2015-02-02 09:48:27'),
(18, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-02-13 14:14:32', '2015-02-13 14:14:32'),
(19, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-02-16 10:47:25', '2015-02-16 10:47:25'),
(20, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-02-18 08:09:05', '2015-02-18 08:09:05'),
(21, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-02-19 10:53:32', '2015-02-19 10:53:32'),
(22, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-02-19 10:53:48', '2015-02-19 10:53:48'),
(23, 1, 'Video', 1, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-02-20 10:13:18', '2015-02-20 10:13:18'),
(24, 6, 'Webinar', 2, 'User', 'webinar.destroy', '--- {}\n', NULL, NULL, '2015-07-10 21:21:51', '2015-07-10 21:21:51'),
(25, 7, 'Webinar', 2, 'User', 'webinar.destroy', '--- {}\n', NULL, NULL, '2015-07-10 21:21:51', '2015-07-10 21:21:51'),
(26, 8, 'Webinar', 2, 'User', 'webinar.destroy', '--- {}\n', NULL, NULL, '2015-07-10 21:21:51', '2015-07-10 21:21:51'),
(27, 9, 'Webinar', 2, 'User', 'webinar.destroy', '--- {}\n', NULL, NULL, '2015-07-10 21:21:51', '2015-07-10 21:21:51'),
(28, 1, 'Video', 3, 'User', 'video.update', '--- {}\n', NULL, NULL, '2015-08-17 12:40:32', '2015-08-17 12:40:32'),
(29, 1, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-25 22:40:25', '2015-08-25 22:40:25'),
(30, 2, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-25 22:40:25', '2015-08-25 22:40:25'),
(31, 3, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-25 22:40:25', '2015-08-25 22:40:25'),
(32, 4, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-25 22:40:25', '2015-08-25 22:40:25'),
(33, 5, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-25 22:40:25', '2015-08-25 22:40:25'),
(34, 6, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-25 22:40:25', '2015-08-25 22:40:25'),
(35, 7, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-25 22:40:25', '2015-08-25 22:40:25'),
(36, 8, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-25 22:40:25', '2015-08-25 22:40:25'),
(37, 11, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-26 18:57:19', '2015-08-26 18:57:19'),
(38, 9, 'Signup', 2, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-08-26 18:57:25', '2015-08-26 18:57:25'),
(39, 10, 'Contact', 3, 'User', 'contact.destroy', '--- {}\n', NULL, NULL, '2015-09-01 10:13:20', '2015-09-01 10:13:20'),
(40, 14, 'Signup', 3, 'User', 'signup.destroy', '--- {}\n', NULL, NULL, '2015-09-01 10:13:30', '2015-09-01 10:13:30'),
(41, 2, 'Request', 3, 'User', 'request.destroy', '--- {}\n', NULL, NULL, '2015-09-01 10:13:48', '2015-09-01 10:13:48');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `message` text COLLATE utf8_polish_ci,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contacts_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tomek', 'tomasz.rupik@gmail.com', '123', 'Hello', NULL, '2014-10-13 08:08:26', '2014-10-13 08:08:26'),
(2, 'Tomek', 'tomasz.rupik@gmail.com', '123', 'Hello', NULL, '2014-10-13 08:08:31', '2014-10-13 08:08:31'),
(3, 'Tomek', 'tomasz.rupik@gmail.com', '123', 'Hello', NULL, '2014-10-13 08:08:34', '2014-10-13 08:08:34'),
(4, 'Tomek', 'tomasz.rupik@gmail.com', '234245345', 'ASf', NULL, '2014-10-30 10:08:06', '2014-10-30 10:08:06'),
(5, 'name', 'email@trippro.com', '6506463325', 'test', NULL, '2015-08-21 17:23:44', '2015-08-21 17:23:44'),
(6, 'contact us test', 'ameron@trippro.com', '4157027727', 'test', NULL, '2015-08-25 22:11:59', '2015-08-25 22:11:59'),
(7, 'contact us test', 'ameron@trippro.com', '4157027727', 'test', NULL, '2015-08-25 22:12:10', '2015-08-25 22:12:10'),
(8, 'contact us test', 'ameron@trippro.com', '4157027727', 'test', NULL, '2015-08-25 22:12:10', '2015-08-25 22:12:10'),
(9, 'Adam - Contact Us', 'ameron@mondee.com', '415702727', 'test', NULL, '2015-08-26 18:53:06', '2015-08-26 18:53:06'),
(10, 'sadw', 'aaaa@one.pl', '654324789', 'csdfdewfwed', '2015-09-01 10:13:20', '2015-09-01 10:11:15', '2015-09-01 10:13:20'),
(11, 'test contact', 'ameron@mondee.com', '7777777777', 'test', NULL, '2015-09-03 23:51:28', '2015-09-03 23:51:28'),
(12, 'asdasdasdsa', 'sdasdasddasds@sas.pl', '123123123123', 'dsadsaddsad', NULL, '2015-09-08 07:03:56', '2015-09-08 07:03:56');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `value` text COLLATE utf8_polish_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  UNIQUE KEY `index_contents_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `contents`
--

INSERT INTO `contents` (`id`, `value`, `created_at`, `updated_at`) VALUES
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:30', '2014-10-03 14:20:30'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:20:31', '2014-10-03 14:20:31'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:24:40', '2014-10-03 14:24:40'),
(NULL, NULL, '2014-10-03 14:26:56', '2014-10-03 14:26:56'),
('home-button-1', 'Request a Demo', '2014-10-14 15:08:02', '2014-10-21 09:40:42'),
('home-button-2', 'Take the Tour', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('home-content-1', 'Turbocharge your agency with power of TripPro®', '2014-10-14 15:08:02', '2015-09-16 12:14:15'),
('home-content-2', 'Discover revolutionary next generation shop, book<br>and ticketing technology providing the lowest&nbsp;international fares.', '2014-10-14 15:08:02', '2015-09-16 12:14:39'),
('home-content-3', '<h3><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a></h3><h3><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices">Global Content &amp; Low&nbsp;Price Guarantee</a></h3>', '2014-10-14 15:08:02', '2015-09-16 12:14:15'),
('home-content-4', '<h3><a href="/tour"></a></h3><h3><a href="/tour"></a><a href="/tour"></a></h3><h3><a href="/tour"></a><a href="/tour"></a></h3><h3><a href="/tour"></a><a href="/tour">Automated Ticketing</a></h3>', '2014-10-14 15:08:02', '2015-07-09 11:58:45'),
('home-content-5', '<h3><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a></h3><h3><a href="/tour#profit-manager"></a><a href="/tour#profit-manager">Robotic&nbsp;Ticketing &amp; Self-Servicing</a></h3>', '2014-10-14 15:08:02', '2015-09-16 12:14:15'),
('home-content-6', '<h3><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"><h3></h3></a></h3><h3><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics">Customer Analytics &amp; Dashboards</a></h3>', '2014-10-14 15:08:02', '2015-09-16 12:14:15'),
('home-content-7', '<a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices"></a><a href="/tour#lowest-prices">Access global content from multiple travel suppliers&nbsp;with the lowest price guaranteed.</a>', '2014-10-14 15:08:02', '2015-09-16 12:14:15'),
('home-content-8', '<a href="/tour"></a><a href="/tour"></a><a href="/tour"></a><a href="/tour">Confirm and ticket instantly. It’s that simple.</a>', '2014-10-14 15:08:02', '2015-07-09 11:58:45'),
('home-content-9', '<a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager"></a><a href="/tour#profit-manager">One click instant ticketing with&nbsp;seamless refunds, voids, and reissues.</a>', '2014-10-14 15:08:02', '2015-09-16 12:14:15'),
('home-content-10', '<a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a href="/tour#reporting-and-analytics"></a><a style="" href="/tour#reporting-and-analytics">Gain insight into your business, make smart decisions, &nbsp;maximize profit.<br></a>', '2014-10-14 15:08:02', '2015-09-16 12:14:15'),
('home-content-11', 'More savings for customers, more profit for you.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('home-content-12', 'TripPro delivers the lowest priced travel content, while reducing search and ticketing time,&nbsp;', '2014-10-14 15:08:02', '2015-09-11 13:10:03'),
('home-content-13', '<span class="hide-for-small-only">helping drive new sales, increased&nbsp;profits and happy customers.</span>', '2014-10-14 15:08:02', '2015-09-11 13:11:01'),
('home-content-14', 'Global Content', '2014-10-14 15:08:02', '2015-07-09 12:00:32'),
('home-content-15', 'Save Time', '2014-10-14 15:08:02', '2015-07-09 12:00:32'),
('home-content-16', 'Increase Profits', '2014-10-14 15:08:02', '2015-07-09 12:00:32'),
('home-content-17', 'Lowest Fares Fast', '2014-10-14 15:08:02', '2015-07-09 12:00:32'),
('home-content-18', '', '2014-10-14 15:08:02', '2015-07-09 12:00:32'),
('home-content-19', '', '2014-10-14 15:08:02', '2015-07-09 12:00:32'),
('home-content-20', '', '2014-10-14 15:08:02', '2015-07-09 12:00:32'),
('home-content-21', '', '2014-10-14 15:08:02', '2015-07-09 12:00:32'),
('home-content-22', 'Benefits at your service', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('home-content-23', 'Maximize Profits', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('home-content-24', 'Easy to Use', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('home-content-25', 'Saves Time', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('home-content-26', 'Price Assurance', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('home-content-27', 'Experience and Trust', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('home-content-28', 'Complete control over commission and profit with one click access to the lowest fares, hotel and car content.', '2014-10-14 15:08:02', '2015-09-15 10:23:20'),
('home-content-29', 'Content displayed seamlessly alongside<br>your favorite GDS including Sabre,<br>Amadeus, Worldspan, and Apollo<br>or via web browser interface.', '2014-10-14 15:08:02', '2015-09-14 13:02:48'),
('home-content-30', 'One-click ticketing and reservations<br>eliminates manual processing time,<br>reduces new agent training,<br>and increases profits.', '2014-10-14 15:08:02', '2015-09-14 13:04:19'),
('home-content-31', 'Lowest fares, hotel, and car content<br>from the world’s leading suppliers,<br>guaranteed.', '2014-10-14 15:08:02', '2015-09-14 13:05:39'),
('home-content-32', 'Trusted global brands and travel experts<br>with over 120 years of combined<br>experience helping agencies grow.', '2014-10-14 15:08:02', '2015-09-14 13:10:36'),
('home-content-33', 'Sign up for TripPro:', '2014-10-14 15:08:02', '2014-10-21 09:40:42'),
('home-content-34', 'Download TripPro From Sabre Red App Centre', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('tour-content-video-1', 'Discover the power behind TripPro', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('tour-content-video-2', 'Global Content &amp; Low Price Guarantee', '2014-10-14 15:08:02', '2015-08-18 08:57:38'),
('tour-content-video-3', 'Shop global content from multiple suppliers with no new commands to learn. TripPro finds the lowest prices guaranteed.', '2014-10-14 15:08:02', '2015-09-11 13:29:38'),
('tour-content-video-4', '<li>Lowest price guaranteed</li>\n        <li>Works alongside any GDS</li>\n        <li>No new commands to learn</li>\n        <li><span style="font-family: inherit; font-size: 1rem; line-height: 1.6;">+/- 3 day calendar</span></li><li>Global content from world''s leading travel suppliers</li><li>Unique itineraries available with TripPro</li><li>Published, net, and commissionable fares</li>', '2014-10-14 15:08:02', '2015-09-14 12:46:29'),
('tour-content-video-5', 'Self Servicing Tool', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('tour-content-video-6', 'Connect to TripPro in real-time and take advantage of instant \n													ticketing technology. Confirm seats and \n													ticket instantly with one click. It’s that simple!', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('tour-content-video-7', 'Discover the power behind TripPro', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('tour-content-video-8', 'Customer Dashboards &amp; Analytics', '2014-10-14 15:08:02', '2015-08-18 09:02:50'),
('tour-content-video-9', 'Gain insight into your business, make smart decisions, and maximize profit with powerful tools to manage your agency.', '2014-10-14 15:08:02', '2015-09-11 13:33:55'),
('tour-content-video-10', 'Discover the power behind TripPro', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('tour-content-video-11', 'Robotic Ticketing &amp; Self-Servicing', '2014-10-14 15:08:02', '2015-09-11 13:32:25'),
('tour-content-video-12', 'One click instant ticketing with 800 internal quality checks that reduce fraud, waiting, and phone calls, allowing agents to focus on customer service and agency profit.', '2014-10-14 15:08:02', '2015-09-11 13:32:25'),
('tour-content-video-13', 'Discover the power behind TripPro', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('tour-content-video-14', 'Cross-platform Availability', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('tour-content-video-15', 'TripPro is available on all major platforms', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('tour-content-video-16', 'Platinum Level Service Excellence', '2014-10-14 15:08:02', '2015-09-11 13:23:14'),
('tour-content-video-17', '<div style="text-align: center;">The highest levels of 24/7 customer support to&nbsp;<span style="font-family: inherit; line-height: 1.6;">solve problems quickly, with robust multi-step&nbsp;</span><span style="font-family: inherit; line-height: 1.6;">ticket QC, integrated CRM, case management,&nbsp;</span></div><div style="text-align: center;"><span style="font-family: inherit; line-height: 1.6;"></span><span style="font-family: inherit; line-height: 1.6;">and 3-tier service levels.</span></div>', '2014-10-14 15:08:02', '2015-09-14 12:53:21'),
('tour-content-video-18', 'Start using TripPro today, boost sales immediately', '2014-10-14 15:08:02', '2015-09-11 13:18:50'),
('learn_book-content-1', 'The Lowest Fares, Fast', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('learn_book-content-2', 'More itineraries from multiple consolidators delivered\n via the next-generation TripPro technology platform.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('learn_book-content-3', 'Simple Interface', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('learn_book-content-4', 'Works seamlessly delivering multiple consolidator fares\n alongside your GDS screen or web browser', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('learn_book-content-5', 'Instant Ticketing', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('learn_book-content-6', 'Connect to TripPro and book and ticket instantly with one click. It''s that simple!', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('learn_book-content-7', 'Agent Controlled Markup', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('learn_book-content-8', 'Fares from the world’s leading consolidators, available instantly.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('learn_book-content-9', 'Single Source Platform', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('learn_book-content-10', 'Directly control commissions and markup to stay competitive and increase profits', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('quote-content-1', '“We are partnering with TripPro® because their technologically advanced \nplatform and agent-focused design enables us to provide our member agencies \nairfares to destinations worldwide presented as one-stop shopping, TripPro® enhances \nour already robust air program in an easy and smart way.”', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-1', 'Our product, your benefits', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-2', 'Maximize Profits', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-3', 'Complete control over commission and profit with one click access<br/>to the lowest fares.', '2014-10-14 15:08:02', '2015-07-14 09:41:44'),
('benefits-content-4', 'Easy to Use', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-5', 'Fares displayed seamlessly via browser\n or with anypreferred GDS partner on the same screen, no training needed.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-6', 'Saves Time', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-7', 'One-click booking eliminates manual\nprocessing time and reduces new agent training time.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-8', 'Price Assurance', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-9', 'Fares from the world’s leading\nconsolidators, available instantly.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-10', 'Experience and Trust', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('benefits-content-11', 'Built for travel professionals by travel experts with \nover 120 years of experience helping agencies grow.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-1', '30%', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-2', 'Increased productivity', '2014-10-14 15:08:02', '2014-10-21 09:50:37'),
('qc-content-3', '20%', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-4', 'reduction of errors', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-5', '120', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-6', 'years of industry', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-7', '24/7', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-8', 'Support', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-9', 'Instant Ticketing', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-10', 'Connect to TripPro and \nticket instantly with one click. It’s that simple!', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-11', 'Intuitive Interface', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-12', 'Works seamlessly delivering multiple consolidator \nfares alongside your GDS screen or web browser.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-13', 'Single Source Platform', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-14', 'Search exclusive global content from your choice of Mondee’s four leading\n consolidators and multiple GDS from a single screen.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-15', '24/7 support', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-16', 'Customer support available around \nthe clock to solve problems quickly.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-17', 'Maximize profits', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-18', 'Wasteful ticketing processing time \nis reduced, allowing agents to focus on increasing ticket sales', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-19', 'Satisfied Customers', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-20', 'More time with customers creates happier, \nloyal customers that return', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-21', 'Time Savings', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-22', 'Agencies can focus on building strong customer \nrelationship instead of manually processing tickets', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-23', 'Experience and Trust', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('qc-content-24', 'Built for travel professionals by travel experts with\n over 120 years of experience helping agencies grow', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('report-content-1', 'Cross-platform Availability', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('report-content-2', 'TripPro is available on all major platforms', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('report-content-3', 'TripPro ® API', '2014-10-14 15:08:02', '2014-10-21 09:50:37'),
('report-content-4', 'Access TripPro’s low fares and content seamlessly with the flexibility to build your own customized travel shopping, booking, and ticketing capabilities.', '2014-10-14 15:08:02', '2015-09-14 14:42:11'),
('report-content-5', 'TripPro® DESKTOP', '2014-10-14 15:08:02', '2014-10-21 09:50:37'),
('report-content-6', 'Automates the entire shopping, booking, and ticketing process. Works alongside any GDS screen with no change in workflow and no new commands to learn.', '2014-10-14 15:08:02', '2015-09-14 14:43:52'),
('report-content-7', 'TripPro® Cloud', '2014-10-14 15:08:02', '2015-09-14 14:39:53'),
('report-content-8', '(Internet Booking Engine) &amp; White Label', '2014-10-14 15:08:02', '2014-10-21 09:50:37'),
('report-content-9', 'All the global content and low fares available in TripPro Desktop, in an easy to use web-based interface with native GDS screens for Sabre, Worldspan, Amadeus, and Apollo.', '2014-10-14 15:08:02', '2015-09-14 14:43:28'),
('report-content-10', '30% increase', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('report-content-11', '30% increase', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('report-content-12', '30% increase', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('report-content-13', '30% increase', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('report-content-14', '30% increase', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('contact-content-1', 'Contact Us', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('contact-content-2', 'We’d love to hear from you. We have a team who are ready to help you.<br> If you need immediate help, you can simply contact one of our product experts', '2014-10-14 15:08:02', '2015-08-21 14:00:09'),
('contact-mail-1', 'reservations@trippro.com', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('contact-phone-1', '+1 866-855-9630', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('contact-content-5', 'Contact Us', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('contact-content-6', 'Contact Us', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('contact-content-7', 'Contact Us', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('get_started-content-1', 'Sign up for TripPro ', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('get_started-content-2', 'Please fill out the application form. You will be given a unique name, password,\n and link to our member site, and you can start using TripPro right away. ', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('get_started-content-3', 'Request a Demo ', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('get_started-content-4', 'Our expert will be right back in touch to \nfind the best time for you to show you the TripPro features.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('get_started-content-5', 'Take part in a webinar', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('get_started-content-6', 'Join our free webinar to learn more about TripPro. ', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('sign_up-content-1', 'Sign Up', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('sign_up-content-2', 'Please fill out the application form below.\n You should hear back from us within 1-2 business days and you can start using TripPro right away.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('sign_up-content-3', '', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('demo-content-1', 'Request a Demo', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('demo-content-2', 'Please fill out the application form below. \nOur expert will be right back in touch to find the best time for you to show you the TripPro features.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-content-1', 'FAQ', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-content-2', 'TripPro® is a revolutionary next generation search, book\nand ticketing technology providing the best international fares.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-content-4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute\n irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-content-5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute\n irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-content-6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute\n irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-content-7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute\n irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-content-8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute\n irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-content-9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute\n irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-content-10', 'Start using TripPro today, boost sales within weeks', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-question-1', 'Lorem ipsum dolor sit amet', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-question-2', 'Lorem ipsum dolor sit amet', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-question-3', 'Lorem ipsum dolor sit amet', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-question-4', 'Lorem ipsum dolor sit amet', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-question-5', 'Lorem ipsum dolor sit amet', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-question-6', 'Lorem ipsum dolor sit amet', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('faq-button-1', 'Get Started', '2014-10-14 15:08:02', '2014-10-14 15:08:02'),
('api report-content-4', 'Access Trippro’s low fares seamlessly with the flexibility to build your own customized travel  search and ticketing capabilities.', '2014-10-21 09:50:37', '2015-08-13 10:46:51'),
('desktop report-content-6', 'cdsacfdsafdscfdw', '2014-10-21 09:50:37', '2015-09-14 13:45:26'),
('web', 'All the power, global content, and low fares  available in Trippro Desktop, in an easy to use web-based  interface.', '2014-10-21 09:50:37', '2015-07-15 17:27:49'),
('link-1', '&nbsp;', '2014-10-31 21:27:32', '2014-10-31 21:27:32'),
('settings:recipent-email', 'krzysztof@1000i.pl', '2014-11-04 12:05:33', '2015-08-25 16:16:18'),
('tour-content-video-19', '<li>Real-time access to statements and invoices<br></li>\n        <li>Dashboards to manage the business<br></li>\n        <li>Seamless invoicing<br></li>\n        <li><span style="font-family: inherit; font-size: 1rem; line-height: 1.6;">Markup management</span><br></li><li>Increase per ticket earnings<br></li><li>Profit maximization via recommendations and guided selling platform<br></li>', '2014-10-14 15:08:02', '2015-09-14 12:47:57'),
('tour-content-video-20', '<li>One click instant ticketing<br></li>\n        <li>Self-servicing<br></li>\n        <li>Seamless reissues, refunds, and voids<br></li>\n        <li>Automated settlement<br></li><li>24/7 ticketing live chat support<br></li><li>Eliminate waiting and phone calls<br></li><li>Drastically reduce ticketing errors and fraud</li>', '2015-07-14 00:00:00', '2015-09-14 12:47:21'),
('layout-content-phone', '+1 844-483-8884&nbsp;', '2015-07-14 00:00:00', '2015-07-15 17:27:49'),
('report-content-15', '', '2015-07-20 07:48:12', '2015-07-20 07:48:12'),
('report-content-16', '', '2015-07-20 07:48:12', '2015-07-20 07:48:12'),
('report-content-17', '', '2015-07-20 07:48:12', '2015-07-20 07:48:12'),
('report-content-18', 'TripPro ® API', '2015-09-14 14:35:43', '2015-09-14 14:35:43'),
('report-content-19', 'Easy to download from the Sabre app center, integrates seamlessly with Sabre Red workspace.', '2015-09-14 14:35:43', '2015-09-14 14:43:28'),
('report-content-20', '', '2015-09-14 14:35:43', '2015-09-14 14:35:43'),
('report-content-21', 'Sabre Red App', '2015-09-15 10:22:21', '2015-09-15 10:22:21');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_polish_ci,
  `title` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_news_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `content`, `title`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`, `published_at`, `deleted_at`, `created_at`, `updated_at`, `category_id`) VALUES
(1, '<h2 style="text-align: left;"><strong>Fast Fares, Fast</strong></h2>\r\n<p style="text-align: left;">Sequi nihil et voluptate voluptatem sed saepe dolores est nostrum qui ipsam est consequatur et adipisci impedit aperiam cumque vel nemo molestiae consectetur inventore necessitatibus incidunt et reiciendis in quia et reprehenderit sunt corporis perferendis voluptates officia ut dolorum veritatis enim sit nobis maiores a beatae aspernatur quae tempore soluta aut non velit sint in perspiciatis optio explicabo dolorem ut sunt est possimus et accusantium non aut molestias quaerat sit amet quia sed asperiores alias et eligendi cupiditate praesentium nesciunt totam debitis illum quis animi cum unde aut ipsum dolorem eaque qui delectus ex</p>\r\n<h2 style="text-align: left;">Lorem ipsum dolor, sit amet</h2>\r\n<p style="text-align: left;">autem aut qui ut quasi odit hic repudiandae blanditiis et et sapiente quia ut architecto odio aut porro minus eveniet harum consequatur magni doloremque aliquid esse voluptatibus nisi nulla iste voluptatum quidem qui enim exercitationem autem omnis nam placeat rem eum velit eum illo fuga quod eos vero sit eos id doloribus aliquam vel occaecati dolor earum suscipit quis culpa provident expedita fugiat consequatur dolore corrupti dicta qui laudantium pariatur recusandae quo vitae dolor omnis libero qui laboriosam tenetur natus repellendus maxime rerum id ducimus molestiae fugit tempora veniam rerum est ut iusto quam ad quo similique ea modi voluptas eius labore ipsa itaque error repellat voluptatem quia ratione iure assumenda et atque at dolores quibusdam facilis et commodi sint et non deserunt ut sed voluptas facere temporibus</p>\r\n<h2 style="text-align: left;">Lorem ipsum dolor, sit amet</h2>\r\n<p style="text-align: left;">accusamus deleniti voluptatem quos dignissimos numquam ea quas ullam magnam officiis neque minima mollitia voluptas est nihil consequuntur omnis rerum voluptatem laborum ab aut quisquam distinctio excepturi.</p>\r\n<p style="text-align: left;">accusamus deleniti voluptatem quos dignissimos numquam ea quas ullam magnam officiis neque minima mollitia voluptas est nihil consequuntur omnis rerum voluptatem laborum ab aut quisquam distinctio excepturi.</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '1.jpg', 'image/jpeg', 25104, '2014-10-14 15:07:52', '2014-10-21 11:18:00', NULL, '2014-10-14 15:07:52', '2014-10-21 11:24:59', NULL),
(2, 'Possimus quia facere dolore velit aut dolorem a maxime quibusdam minima velit sunt nulla sit consequatur ut nostrum aut ut blanditiis rerum asperiores similique esse odio placeat et cupiditate qui occaecati nesciunt repellat quisquam sequi id perferendis ea dolorum sit recusandae impedit aut quo enim eum sapiente quae quidem quam consectetur enim et nobis dolor omnis est hic corporis quia incidunt alias sed est quas tempora ab et pariatur eius voluptas nam consequatur natus harum aspernatur optio porro officiis perspiciatis et et explicabo nisi aut ad quo dignissimos aut voluptatem repellendus voluptate nemo deleniti quia exercitationem cum officia sed in beatae voluptatem eligendi reprehenderit autem aperiam ut nihil deserunt voluptatem vel quia omnis et ratione est vitae ex et ullam minus dolores modi labore totam sint earum distinctio laborum illo in quos culpa mollitia est atque provident est molestiae dolor qui corrupti animi voluptates et necessitatibus fuga aut commodi tempore error id suscipit ipsam vel rem autem fugit et accusamus laudantium nihil qui architecto sint delectus unde dolorem inventore saepe praesentium assumenda vero non ducimus iusto quod cumque eos voluptatem eveniet ea tenetur aliquam dicta magnam doloremque facilis expedita eum consequatur dolores ut molestiae libero neque adipisci sit iste quasi numquam rerum ipsum voluptatibus molestias maiores eos aliquid ipsa voluptatum consequuntur ut quaerat itaque excepturi omnis sed qui quis qui laboriosam et veritatis odit voluptas non voluptas quis veniam repudiandae accusantium at doloribus ut debitis eaque rerum non soluta et qui iure illum reiciendis fugiat amet sunt magni temporibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2.jpg', 'image/jpeg', 11924, '2014-10-14 15:07:52', NULL, NULL, '2014-10-14 15:07:53', '2014-10-14 15:07:53', NULL),
(3, 'Atque non eaque placeat accusantium rerum magnam in aut qui animi facilis a qui officia quas non molestiae laboriosam doloribus omnis ut sint quis voluptas necessitatibus fuga aperiam quos vel libero aliquam sunt alias ea recusandae quae dolor commodi corrupti et consequatur ducimus velit pariatur aspernatur dignissimos vitae voluptatem et rem et itaque dolorem sed unde culpa quo veniam optio et quia hic soluta molestias repellat totam exercitationem minima corporis cumque accusamus et ipsa deserunt quia ut impedit occaecati dolores amet quasi nobis odio id harum repudiandae eum autem iste molestiae suscipit voluptate omnis voluptatem debitis fugiat esse enim praesentium vel reiciendis possimus voluptates sit tenetur et ea saepe quo tempore distinctio sint cupiditate ut consequuntur voluptatem dolorem ut dicta aut ipsum provident ex consectetur est dolore sapiente eligendi ratione id numquam sed consequatur architecto deleniti qui ad nostrum nulla et et aut laborum illo temporibus eveniet tempora fugit delectus odit doloremque eum at voluptatum quis neque dolor sit nesciunt qui qui incidunt voluptatem ab veritatis nihil est autem quisquam mollitia ut asperiores quod maxime et voluptatibus quam adipisci est qui quibusdam officiis ullam explicabo nemo similique eius dolores excepturi enim perferendis vero aut facere quidem omnis quia nam rerum sed beatae porro expedita et eos in iure velit quia aliquid est assumenda illum minus magni blanditiis dolorum sit nisi reprehenderit consequatur natus error perspiciatis sequi non est laudantium aut eos nihil et iusto modi inventore cum voluptas labore earum voluptas sunt rerum maiores ipsam aut repellendus quaerat ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '3.jpg', 'image/jpeg', 12929, '2014-10-14 15:07:53', NULL, NULL, '2014-10-14 15:07:53', '2014-10-14 15:07:53', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news_translations`
--

CREATE TABLE IF NOT EXISTS `news_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `content` text COLLATE utf8_polish_ci,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_news_translations_on_news_id` (`news_id`),
  KEY `index_news_translations_on_locale` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `news_translations`
--

INSERT INTO `news_translations` (`id`, `news_id`, `locale`, `created_at`, `updated_at`, `title`, `content`, `deleted_at`) VALUES
(1, 1, 'en', '2014-10-14 15:07:52', '2014-10-21 11:23:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '<h2 style="text-align: left;"><strong>Fast Fares, Fast</strong></h2>\r\n<p style="text-align: left;">Sequi nihil et voluptate voluptatem sed saepe dolores est nostrum qui ipsam est consequatur et adipisci impedit aperiam cumque vel nemo molestiae consectetur inventore necessitatibus incidunt et reiciendis in quia et reprehenderit sunt corporis perferendis voluptates officia ut dolorum veritatis enim sit nobis maiores a beatae aspernatur quae tempore soluta aut non velit sint in perspiciatis optio explicabo dolorem ut sunt est possimus et accusantium non aut molestias quaerat sit amet quia sed asperiores alias et eligendi cupiditate praesentium nesciunt totam debitis illum quis animi cum unde aut ipsum dolorem eaque qui delectus ex</p>\r\n<h2 style="text-align: left;">Lorem ipsum dolor, sit amet</h2>\r\n<p style="text-align: left;">autem aut qui ut quasi odit hic repudiandae blanditiis et et sapiente quia ut architecto odio aut porro minus eveniet harum consequatur magni doloremque aliquid esse voluptatibus nisi nulla iste voluptatum quidem qui enim exercitationem autem omnis nam placeat rem eum velit eum illo fuga quod eos vero sit eos id doloribus aliquam vel occaecati dolor earum suscipit quis culpa provident expedita fugiat consequatur dolore corrupti dicta qui laudantium pariatur recusandae quo vitae dolor omnis libero qui laboriosam tenetur natus repellendus maxime rerum id ducimus molestiae fugit tempora veniam rerum est ut iusto quam ad quo similique ea modi voluptas eius labore ipsa itaque error repellat voluptatem quia ratione iure assumenda et atque at dolores quibusdam facilis et commodi sint et non deserunt ut sed voluptas facere temporibus</p>\r\n<h2 style="text-align: left;">Lorem ipsum dolor, sit amet</h2>\r\n<p style="text-align: left;">accusamus deleniti voluptatem quos dignissimos numquam ea quas ullam magnam officiis neque minima mollitia voluptas est nihil consequuntur omnis rerum voluptatem laborum ab aut quisquam distinctio excepturi.</p>\r\n<p style="text-align: left;">accusamus deleniti voluptatem quos dignissimos numquam ea quas ullam magnam officiis neque minima mollitia voluptas est nihil consequuntur omnis rerum voluptatem laborum ab aut quisquam distinctio excepturi.</p>', NULL),
(2, 2, 'en', '2014-10-14 15:07:53', '2014-10-14 15:07:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Possimus quia facere dolore velit aut dolorem a maxime quibusdam minima velit sunt nulla sit consequatur ut nostrum aut ut blanditiis rerum asperiores similique esse odio placeat et cupiditate qui occaecati nesciunt repellat quisquam sequi id perferendis ea dolorum sit recusandae impedit aut quo enim eum sapiente quae quidem quam consectetur enim et nobis dolor omnis est hic corporis quia incidunt alias sed est quas tempora ab et pariatur eius voluptas nam consequatur natus harum aspernatur optio porro officiis perspiciatis et et explicabo nisi aut ad quo dignissimos aut voluptatem repellendus voluptate nemo deleniti quia exercitationem cum officia sed in beatae voluptatem eligendi reprehenderit autem aperiam ut nihil deserunt voluptatem vel quia omnis et ratione est vitae ex et ullam minus dolores modi labore totam sint earum distinctio laborum illo in quos culpa mollitia est atque provident est molestiae dolor qui corrupti animi voluptates et necessitatibus fuga aut commodi tempore error id suscipit ipsam vel rem autem fugit et accusamus laudantium nihil qui architecto sint delectus unde dolorem inventore saepe praesentium assumenda vero non ducimus iusto quod cumque eos voluptatem eveniet ea tenetur aliquam dicta magnam doloremque facilis expedita eum consequatur dolores ut molestiae libero neque adipisci sit iste quasi numquam rerum ipsum voluptatibus molestias maiores eos aliquid ipsa voluptatum consequuntur ut quaerat itaque excepturi omnis sed qui quis qui laboriosam et veritatis odit voluptas non voluptas quis veniam repudiandae accusantium at doloribus ut debitis eaque rerum non soluta et qui iure illum reiciendis fugiat amet sunt magni temporibus.', NULL),
(3, 3, 'en', '2014-10-14 15:07:53', '2014-10-14 15:07:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Atque non eaque placeat accusantium rerum magnam in aut qui animi facilis a qui officia quas non molestiae laboriosam doloribus omnis ut sint quis voluptas necessitatibus fuga aperiam quos vel libero aliquam sunt alias ea recusandae quae dolor commodi corrupti et consequatur ducimus velit pariatur aspernatur dignissimos vitae voluptatem et rem et itaque dolorem sed unde culpa quo veniam optio et quia hic soluta molestias repellat totam exercitationem minima corporis cumque accusamus et ipsa deserunt quia ut impedit occaecati dolores amet quasi nobis odio id harum repudiandae eum autem iste molestiae suscipit voluptate omnis voluptatem debitis fugiat esse enim praesentium vel reiciendis possimus voluptates sit tenetur et ea saepe quo tempore distinctio sint cupiditate ut consequuntur voluptatem dolorem ut dicta aut ipsum provident ex consectetur est dolore sapiente eligendi ratione id numquam sed consequatur architecto deleniti qui ad nostrum nulla et et aut laborum illo temporibus eveniet tempora fugit delectus odit doloremque eum at voluptatum quis neque dolor sit nesciunt qui qui incidunt voluptatem ab veritatis nihil est autem quisquam mollitia ut asperiores quod maxime et voluptatibus quam adipisci est qui quibusdam officiis ullam explicabo nemo similique eius dolores excepturi enim perferendis vero aut facere quidem omnis quia nam rerum sed beatae porro expedita et eos in iure velit quia aliquid est assumenda illum minus magni blanditiis dolorum sit nisi reprehenderit consequatur natus error perspiciatis sequi non est laudantium aut eos nihil et iusto modi inventore cum voluptas labore earum voluptas sunt rerum maiores ipsam aut repellendus quaerat ut.', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `requests`
--

INSERT INTO `requests` (`id`, `name`, `phone_number`, `email`, `company`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Krzysztof Kosman', 515187325, 'krzysztof.kosman@gmail.com', 'KOSMAN Krzysztof Kosman', '2015-08-31 15:32:44', '2015-08-31 15:32:44', NULL),
(2, 'adsaw', 9999999, 'casdfs@onet.pl', 'csfwef', '2015-09-01 10:10:47', '2015-09-01 10:13:48', '2015-09-01 10:13:48'),
(3, 'adam', 2147483647, 'ameron@mondd.com', 'mondee', '2015-09-03 23:51:56', '2015-09-03 23:51:56', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20140827121810'),
('20140827121812'),
('20140827121817'),
('20140908114837'),
('20141001120922'),
('20141002080401'),
('20141002110856'),
('20141003064658'),
('20141016122245'),
('20141016122819'),
('20141106135355'),
('20141115180053'),
('20141115180130'),
('20141115181950'),
('20141116161629'),
('20141116174723'),
('20141116174750'),
('20150831115130'),
('20150831125535');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `screenshots`
--

CREATE TABLE IF NOT EXISTS `screenshots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_polish_ci,
  `order` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `file_file_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `file_content_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `file_file_size` int(11) DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_screenshots_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `screenshots`
--

INSERT INTO `screenshots` (`id`, `description`, `order`, `deleted_at`, `created_at`, `updated_at`, `file_file_name`, `file_content_type`, `file_file_size`, `file_updated_at`) VALUES
(1, 'Desktop tool integrated seamlessly into the GDS', 1, NULL, '2014-11-16 18:14:29', '2014-11-16 18:14:29', 'example-slide.png', 'image/png', 182104, '2014-11-16 18:14:29');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `signups`
--

CREATE TABLE IF NOT EXISTS `signups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `retype_password` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `fax_number` int(11) DEFAULT NULL,
  `referrer` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `agency_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `agency_phone` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `president` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `diff_adress` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `diff_city` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `diff_country` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `diff_state` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `diff_zip` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `arc` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `iata` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `ttt` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `clia` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `webiste` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `business_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `hba` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `affiliate` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `asta` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `sabre_pcc` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `galileo_pcc` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `worldspan_pcc` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `amadeus_pcc` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `apollo_pcc` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_signups_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=15 ;

--
-- Zrzut danych tabeli `signups`
--

INSERT INTO `signups` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `password`, `retype_password`, `job_title`, `fax_number`, `referrer`, `agency_name`, `agency_phone`, `president`, `adress`, `city`, `country`, `state`, `zip`, `diff_adress`, `diff_city`, `diff_country`, `diff_state`, `diff_zip`, `arc`, `iata`, `ttt`, `clia`, `webiste`, `business_type`, `hba`, `host`, `affiliate`, `asta`, `sabre_pcc`, `galileo_pcc`, `worldspan_pcc`, `amadeus_pcc`, `apollo_pcc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'adam', 'meron', 415777777, 'emmail', 'password', 'pass', 'job title', 0, '', '', '', '', '', 'city', 'country', 'state', 'zip code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-25 22:40:25', '2015-08-21 17:19:26', '2015-08-25 22:40:25'),
(2, 'adam', 'meron', 415777777, 'emmail', 'password', 'pass', 'job title', 0, '', '', '', '', '', 'city', 'country', 'state', 'zip code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-25 22:40:25', '2015-08-21 17:19:30', '2015-08-25 22:40:25'),
(3, 'adam', 'meron', 415777777, 'emmail', 'password', 'pass', 'job title', 0, '', '', '', '', '', 'city', 'country', 'state', 'zip code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-25 22:40:25', '2015-08-21 17:19:40', '2015-08-25 22:40:25'),
(4, 'adam', 'meron', 415777777, 'emmail', 'password', 'pass', 'job title', 0, '', '', '', '', '', 'city', 'country', 'state', 'zip code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-25 22:40:25', '2015-08-21 17:19:47', '2015-08-25 22:40:25'),
(5, 'adam', 'meron', 415777777, 'emmail', 'password', 'pass', 'job title', 0, '', '', '', '', '', 'city', 'country', 'state', 'zip code', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-25 22:40:25', '2015-08-21 17:21:29', '2015-08-25 22:40:25'),
(6, 'sdfge', 'ger', 123123123, 'sdfe', '123', '123', '', NULL, '', '', '', '', '', 'sdf', 'werg', 'weg', 'weg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-25 22:40:25', '2015-08-25 16:14:12', '2015-08-25 22:40:25'),
(7, 'sdfge', 'ger', 123123123, 'sdfe@sdf.pl', '123', '123', '', NULL, '', '', '', '', '', 'sdf', 'werg', 'weg', 'weg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-25 22:40:25', '2015-08-25 16:16:51', '2015-08-25 22:40:25'),
(8, 'sdfge', 'ger', 123123123, 'sdf3e@sdf.pl', '123', '123', '', NULL, '', '', '', '', '', 'sdf', 'werg', 'weg', 'weg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-25 22:40:25', '2015-08-25 16:20:18', '2015-08-25 22:40:25'),
(9, 'sdfge', 'ger', 123123123, 'sdf33e@sdf.pl', '123', '123', '', NULL, '', '', '', '', '', 'sdf', 'werg', 'weg', 'weg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-26 18:57:25', '2015-08-25 16:21:11', '2015-08-26 18:57:25'),
(10, 'Krzysztof', 'Kosman', 515187325, 'krzysztof.kosman@gmail.com', 'test', 'test', '', NULL, '', '', '515187325', '', 'Milczańska 30/7', 'Szczecin', 'Poland', 'Poland', '70-107', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2015-08-25 16:24:33', '2015-08-25 16:24:33'),
(11, 'singup ', 'meron', 415777777, 'ameron@mondee.com', 'mondee2013', 'mondee2013', '', NULL, '', '', '', '', '', 'san francisco', 'ca', '94110', 'ca', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-26 18:57:19', '2015-08-25 22:13:03', '2015-08-26 18:57:19'),
(12, 'Krzysztof', 'Kosman', 515187325, 'admin@admin.pl', 'admin', 'admin', '', NULL, '', '', '', '', 'Odrowąża 26/3', 'Kraków', 'Poland', 'fwewef', '30-009', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2015-08-26 15:15:18', '2015-08-26 15:15:18'),
(13, 'adam', 'meron', 415777777, 'ameron@trippro.com', 'denali1987', 'denali1987', '', NULL, '', '', '', '', '', 'sf', 'usa', 'ca', '94110', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2015-08-26 18:52:16', '2015-08-26 18:52:16'),
(14, 'ssfdw', 'sadfwef', 2147483647, 'dasdaq@onet.pl', 'zdjęcia produktów o szerokości min. 2000 px', 'zdjęcia produktów o szerokości min. 2000 px', '', NULL, '', '', '', '', '', 'dswdqw', 'dswqdwqdwqd', 'dasd', '38-200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-09-01 10:13:30', '2015-09-01 10:12:22', '2015-09-01 10:13:30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_file_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `content` text COLLATE utf8_polish_ci,
  `name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_testimonials_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`, `content`, `name`, `position`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', '2014-10-03 14:29:51', '2014-10-03 14:20:39', '2014-10-03 14:29:51'),
(2, NULL, NULL, NULL, NULL, 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', '2014-10-03 14:29:51', '2014-10-03 14:20:39', '2014-10-03 14:29:51'),
(3, NULL, NULL, NULL, NULL, 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', '2014-10-03 14:29:51', '2014-10-03 14:20:39', '2014-10-03 14:29:51'),
(4, NULL, NULL, NULL, NULL, 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', '2014-10-13 07:44:34', '2014-10-03 14:29:51', '2014-10-13 07:44:34'),
(5, NULL, NULL, NULL, NULL, 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', '2014-10-13 07:44:34', '2014-10-03 14:29:51', '2014-10-13 07:44:34'),
(6, NULL, NULL, NULL, NULL, 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', '2014-10-13 07:44:34', '2014-10-03 14:29:51', '2014-10-13 07:44:34'),
(7, NULL, NULL, NULL, NULL, 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', '2014-10-14 15:07:45', '2014-10-13 07:44:34', '2014-10-14 15:07:45'),
(8, NULL, NULL, NULL, NULL, 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', '2014-10-14 15:07:45', '2014-10-13 07:44:34', '2014-10-14 15:07:45'),
(9, NULL, NULL, NULL, NULL, 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', '2014-10-14 15:07:45', '2014-10-13 07:44:34', '2014-10-14 15:07:45'),
(10, '1.png', 'image/png', 45523, '2014-10-14 15:07:45', 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', NULL, '2014-10-14 15:07:45', '2014-10-14 15:07:45'),
(11, '2.png', 'image/png', 56577, '2014-10-14 15:07:45', 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', NULL, '2014-10-14 15:07:45', '2014-10-14 15:07:45'),
(12, '3.png', 'image/png', 35254, '2014-10-14 15:07:45', 'We are partnering with TripPro® because their technologically \nadvanced platform and agent-focused design enables us to provide our member agencies airfares \nto destinations worldwide presented as one-stop shopping,\nTripPro® enhances our already robust air program in an easy and smart way.', 'Chris Dane', 'President of Hickory Global Partners ', NULL, '2014-10-14 15:07:45', '2014-10-14 15:07:45');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tinymce_folders`
--

CREATE TABLE IF NOT EXISTS `tinymce_folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tinymce_folders_on_parent_id` (`parent_id`),
  KEY `index_tinymce_folders_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tinymce_uploads`
--

CREATE TABLE IF NOT EXISTS `tinymce_uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `file_file_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `file_content_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `file_file_size` int(11) DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tinymce_uploads_on_folder_id` (`folder_id`),
  KEY `index_tinymce_uploads_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `roles_mask` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  KEY `index_users_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `roles_mask`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'ameron@mondee.com', '$2a$10$f9.yM2.REDy0Z2ogSAZTee6MZhl9NjOWd73O2NZ9vZS2QCZZ.UVpG', NULL, 11, '2015-08-27 18:19:23', '2015-08-26 22:07:42', '209.58.193.250', '209.58.193.250', 1, NULL, '2014-10-24 18:21:52', '2015-08-27 18:19:23'),
(3, 'admin@admin.pl', '$2a$10$yJifME9SZc42becFKxrRiuH90UzqjkU9IjFlJdV0LLSbZmS.6Mzza', NULL, 38, '2015-09-16 12:13:44', '2015-09-15 10:21:35', '89.69.61.185', '192.162.146.76', 1, NULL, '2015-07-14 09:01:24', '2015-09-16 12:13:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `file_file_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `file_content_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `file_file_size` int(11) DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `cover_photo_file_name` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `cover_photo_content_type` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `cover_photo_file_size` int(11) DEFAULT NULL,
  `cover_photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_videos_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `videos`
--

INSERT INTO `videos` (`id`, `page_name`, `deleted_at`, `created_at`, `updated_at`, `file_file_name`, `file_content_type`, `file_file_size`, `file_updated_at`, `order`, `cover_photo_file_name`, `cover_photo_content_type`, `cover_photo_file_size`, `cover_photo_updated_at`) VALUES
(1, 'homepage', NULL, '2014-11-16 18:21:34', '2015-08-17 12:40:32', 'Amadeus_long.mp4', 'video/mp4', 11708413, '2015-08-17 12:40:32', 1, 'desktop_cover.jpg', 'image/jpeg', 57435, '2015-01-30 13:20:39'),
(2, 'homepage', NULL, '2014-11-16 18:22:14', '2014-11-16 18:22:14', 'home-signup.mp4', 'video/mp4', 11444079, '2014-11-16 18:22:14', 2, 'prev_post.jpg', 'image/jpeg', 362588, '2014-11-16 18:22:14');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `webinars`
--

CREATE TABLE IF NOT EXISTS `webinars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `when` datetime DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_webinars_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=15 ;

--
-- Zrzut danych tabeli `webinars`
--

INSERT INTO `webinars` (`id`, `language`, `when`, `link`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'English', '2014-10-02 22:00:00', 'www.google.pl', '2014-10-13 07:38:15', '2014-10-03 14:20:45', '2014-10-13 07:38:15'),
(2, 'English', '2014-10-02 22:00:00', 'www.google.pl', '2014-10-13 07:38:15', '2014-10-03 14:20:45', '2014-10-13 07:38:15'),
(3, 'English', '2014-10-02 22:00:00', 'www.google.pl', '2014-10-13 07:38:15', '2014-10-03 14:20:45', '2014-10-13 07:38:15'),
(4, 'English', '2014-10-02 22:00:00', 'www.google.pl', '2014-10-13 07:38:15', '2014-10-03 14:20:45', '2014-10-13 07:38:15'),
(5, 'English', '2014-10-02 22:00:00', 'www.google.pl', '2014-10-13 07:38:15', '2014-10-03 14:20:45', '2014-10-13 07:38:15'),
(6, 'English', '2014-10-12 22:00:00', 'www.google.pl', '2015-07-10 21:21:51', '2014-10-13 07:38:15', '2015-07-10 21:21:51'),
(7, 'English', '2014-10-12 22:00:00', 'www.google.pl', '2015-07-10 21:21:51', '2014-10-13 07:38:15', '2015-07-10 21:21:51'),
(8, 'English', '2014-10-12 22:00:00', 'www.google.pl', '2015-07-10 21:21:51', '2014-10-13 07:38:15', '2015-07-10 21:21:51'),
(9, 'English', '2014-10-12 22:00:00', 'www.google.pl', '2015-07-10 21:21:51', '2014-10-13 07:38:15', '2015-07-10 21:21:51'),
(10, 'English', '2014-10-12 22:00:00', 'www.google.pl', NULL, '2014-10-13 07:38:15', '2014-10-13 07:38:15'),
(11, 'English', '2014-12-06 21:00:00', 'www.google.pl', NULL, '2014-10-13 07:38:15', '2014-10-13 07:38:15'),
(12, 'English', '2014-12-06 21:00:00', 'www.google.pl', NULL, '2014-10-13 07:38:15', '2014-10-13 07:38:15'),
(13, 'English', '2014-12-06 21:00:00', 'www.google.pl', NULL, '2014-10-13 07:38:15', '2014-10-13 07:38:15'),
(14, 'English', '2014-11-06 21:00:00', 'www.google.pl', NULL, '2014-10-13 07:38:15', '2014-10-13 07:38:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
