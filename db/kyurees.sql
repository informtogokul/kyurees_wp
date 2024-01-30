-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 01:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kyurees`
--

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_actionscheduler_actions`
--

CREATE TABLE `kyrs_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_actionscheduler_actions`
--

INSERT INTO `kyrs_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(79, 'forminator_daily_cron', 'complete', '2024-01-29 14:55:52', '2024-01-29 14:55:52', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1706540152;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1706540152;}', 1, 1, '2024-01-29 15:37:33', '2024-01-29 15:37:33', 0, NULL),
(83, 'action_scheduler/migration_hook', 'complete', '2024-01-28 13:56:53', '2024-01-28 13:56:53', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1706450213;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1706450213;}', 2, 1, '2024-01-28 13:57:19', '2024-01-28 13:57:19', 0, NULL),
(85, 'forminator_action_scheduler_cleanup', 'complete', '2024-01-28 15:55:57', '2024-01-28 15:55:57', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706457357;s:18:\"\0*\0first_timestamp\";i:1706450153;s:13:\"\0*\0recurrence\";i:7200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706457357;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:7200;}', 1, 1, '2024-01-29 15:37:32', '2024-01-29 15:37:32', 0, NULL),
(117, 'forminator_send_export', 'complete', '2024-01-29 15:37:00', '2024-01-29 15:37:00', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542620;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542620;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:37:34', '2024-01-29 15:37:34', 0, NULL),
(118, 'forminator_process_report', 'complete', '2024-01-29 15:38:30', '2024-01-29 15:38:30', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542710;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542710;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:38:37', '2024-01-29 15:38:37', 0, NULL),
(119, 'forminator_process_report', 'complete', '2024-01-29 15:38:30', '2024-01-29 15:38:30', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542710;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542710;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:38:38', '2024-01-29 15:38:38', 0, NULL),
(120, 'forminator_general_data_protection_cleanup', 'canceled', '2024-01-29 16:37:31', '2024-01-29 16:37:31', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706546251;s:18:\"\0*\0first_timestamp\";i:1706450152;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706546251;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(121, 'forminator_action_scheduler_cleanup', 'canceled', '2024-01-29 17:37:33', '2024-01-29 17:37:33', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706549853;s:18:\"\0*\0first_timestamp\";i:1706450153;s:13:\"\0*\0recurrence\";i:7200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706549853;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:7200;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(122, 'forminator_send_export', 'complete', '2024-01-29 15:38:34', '2024-01-29 15:38:34', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542714;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542714;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:38:40', '2024-01-29 15:38:40', 0, NULL),
(123, 'forminator_daily_cron', 'canceled', '2024-01-30 16:38:34', '2024-01-30 16:38:34', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1706632714;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1706632714;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(124, 'forminator_process_report', 'complete', '2024-01-29 15:39:37', '2024-01-29 15:39:37', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542777;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542777;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:40:37', '2024-01-29 15:40:37', 0, NULL),
(125, 'forminator_process_report', 'complete', '2024-01-29 15:39:38', '2024-01-29 15:39:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542778;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542778;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:40:38', '2024-01-29 15:40:38', 0, NULL),
(126, 'forminator_send_export', 'complete', '2024-01-29 15:39:40', '2024-01-29 15:39:40', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542780;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542780;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:40:38', '2024-01-29 15:40:38', 0, NULL),
(127, 'forminator_process_report', 'complete', '2024-01-29 15:41:37', '2024-01-29 15:41:37', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542897;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542897;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:42:40', '2024-01-29 15:42:40', 0, NULL),
(128, 'forminator_process_report', 'complete', '2024-01-29 15:41:38', '2024-01-29 15:41:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542898;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542898;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:42:40', '2024-01-29 15:42:40', 0, NULL),
(129, 'forminator_send_export', 'complete', '2024-01-29 15:41:38', '2024-01-29 15:41:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706542898;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706542898;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:42:41', '2024-01-29 15:42:41', 0, NULL),
(130, 'forminator_process_report', 'complete', '2024-01-29 15:43:40', '2024-01-29 15:43:40', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543020;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543020;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:44:38', '2024-01-29 15:44:38', 0, NULL),
(131, 'forminator_process_report', 'complete', '2024-01-29 15:43:40', '2024-01-29 15:43:40', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543020;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543020;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:44:38', '2024-01-29 15:44:38', 0, NULL),
(132, 'forminator_send_export', 'complete', '2024-01-29 15:43:41', '2024-01-29 15:43:41', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543021;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543021;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:44:39', '2024-01-29 15:44:39', 0, NULL),
(133, 'forminator_process_report', 'complete', '2024-01-29 15:45:38', '2024-01-29 15:45:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543138;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543138;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:46:38', '2024-01-29 15:46:38', 0, NULL),
(134, 'forminator_process_report', 'complete', '2024-01-29 15:45:39', '2024-01-29 15:45:39', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543139;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543139;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:46:38', '2024-01-29 15:46:38', 0, NULL),
(135, 'forminator_send_export', 'complete', '2024-01-29 15:45:39', '2024-01-29 15:45:39', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543139;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543139;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:46:38', '2024-01-29 15:46:38', 0, NULL),
(136, 'forminator_process_report', 'complete', '2024-01-29 15:47:38', '2024-01-29 15:47:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543258;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543258;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:48:39', '2024-01-29 15:48:39', 0, NULL),
(137, 'forminator_process_report', 'complete', '2024-01-29 15:47:38', '2024-01-29 15:47:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543258;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543258;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:48:39', '2024-01-29 15:48:39', 0, NULL),
(138, 'forminator_send_export', 'complete', '2024-01-29 15:47:38', '2024-01-29 15:47:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543258;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543258;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:48:39', '2024-01-29 15:48:39', 0, NULL),
(139, 'forminator_process_report', 'complete', '2024-01-29 15:49:39', '2024-01-29 15:49:39', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543379;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543379;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:49:45', '2024-01-29 15:49:45', 0, NULL),
(140, 'forminator_process_report', 'complete', '2024-01-29 15:49:39', '2024-01-29 15:49:39', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543379;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543379;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:49:45', '2024-01-29 15:49:45', 0, NULL),
(141, 'forminator_send_export', 'complete', '2024-01-29 15:49:39', '2024-01-29 15:49:39', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543379;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543379;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:49:46', '2024-01-29 15:49:46', 0, NULL),
(142, 'forminator_process_report', 'complete', '2024-01-29 15:50:45', '2024-01-29 15:50:45', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543445;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543445;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:51:01', '2024-01-29 15:51:01', 0, NULL),
(143, 'forminator_process_report', 'complete', '2024-01-29 15:50:46', '2024-01-29 15:50:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543446;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543446;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:51:02', '2024-01-29 15:51:02', 0, NULL),
(144, 'forminator_send_export', 'complete', '2024-01-29 15:50:46', '2024-01-29 15:50:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543446;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543446;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:51:02', '2024-01-29 15:51:02', 0, NULL),
(145, 'forminator_process_report', 'complete', '2024-01-29 15:52:02', '2024-01-29 15:52:02', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543522;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543522;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:52:43', '2024-01-29 15:52:43', 0, NULL),
(146, 'forminator_process_report', 'complete', '2024-01-29 15:52:02', '2024-01-29 15:52:02', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543522;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543522;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:52:44', '2024-01-29 15:52:44', 0, NULL),
(147, 'forminator_send_export', 'complete', '2024-01-29 15:52:03', '2024-01-29 15:52:03', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543523;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543523;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:52:44', '2024-01-29 15:52:44', 0, NULL),
(148, 'forminator_process_report', 'complete', '2024-01-29 15:53:43', '2024-01-29 15:53:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543623;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543623;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:54:43', '2024-01-29 15:54:43', 0, NULL),
(149, 'forminator_process_report', 'complete', '2024-01-29 15:53:44', '2024-01-29 15:53:44', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543624;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543624;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:54:43', '2024-01-29 15:54:43', 0, NULL),
(150, 'forminator_send_export', 'complete', '2024-01-29 15:53:44', '2024-01-29 15:53:44', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543624;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543624;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:54:43', '2024-01-29 15:54:43', 0, NULL),
(151, 'forminator_process_report', 'complete', '2024-01-29 15:55:43', '2024-01-29 15:55:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543743;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543743;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:55:43', '2024-01-29 15:55:43', 0, NULL),
(152, 'forminator_process_report', 'complete', '2024-01-29 15:55:43', '2024-01-29 15:55:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543743;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543743;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:55:43', '2024-01-29 15:55:43', 0, NULL),
(153, 'forminator_send_export', 'complete', '2024-01-29 15:55:43', '2024-01-29 15:55:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543743;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543743;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:55:43', '2024-01-29 15:55:43', 0, NULL),
(154, 'forminator_process_report', 'complete', '2024-01-29 15:56:43', '2024-01-29 15:56:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543803;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543803;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:57:42', '2024-01-29 15:57:42', 0, NULL),
(155, 'forminator_process_report', 'complete', '2024-01-29 15:56:43', '2024-01-29 15:56:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543803;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543803;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:57:43', '2024-01-29 15:57:43', 0, NULL),
(156, 'forminator_send_export', 'complete', '2024-01-29 15:56:43', '2024-01-29 15:56:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543803;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543803;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:57:43', '2024-01-29 15:57:43', 0, NULL),
(157, 'forminator_process_report', 'complete', '2024-01-29 15:58:42', '2024-01-29 15:58:42', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543922;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543922;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:58:42', '2024-01-29 15:58:42', 0, NULL),
(158, 'forminator_process_report', 'complete', '2024-01-29 15:58:43', '2024-01-29 15:58:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543923;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543923;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:59:43', '2024-01-29 15:59:43', 0, NULL),
(159, 'forminator_send_export', 'complete', '2024-01-29 15:58:43', '2024-01-29 15:58:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543923;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543923;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:59:44', '2024-01-29 15:59:44', 0, NULL),
(160, 'forminator_process_report', 'complete', '2024-01-29 15:59:42', '2024-01-29 15:59:42', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706543982;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706543982;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 15:59:45', '2024-01-29 15:59:45', 0, NULL),
(161, 'forminator_process_report', 'complete', '2024-01-29 16:00:43', '2024-01-29 16:00:43', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544043;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544043;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:00:53', '2024-01-29 16:00:53', 0, NULL),
(162, 'forminator_send_export', 'complete', '2024-01-29 16:00:45', '2024-01-29 16:00:45', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544045;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544045;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:00:56', '2024-01-29 16:00:56', 0, NULL),
(163, 'forminator_process_report', 'complete', '2024-01-29 16:00:45', '2024-01-29 16:00:45', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544045;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544045;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:00:59', '2024-01-29 16:00:59', 0, NULL),
(164, 'forminator_process_report', 'complete', '2024-01-29 16:01:53', '2024-01-29 16:01:53', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544113;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544113;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:02:48', '2024-01-29 16:02:48', 0, NULL),
(165, 'forminator_send_export', 'complete', '2024-01-29 16:01:57', '2024-01-29 16:01:57', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544117;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544117;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:02:49', '2024-01-29 16:02:49', 0, NULL),
(166, 'forminator_process_report', 'complete', '2024-01-29 16:02:00', '2024-01-29 16:02:00', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544120;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544120;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:02:50', '2024-01-29 16:02:50', 0, NULL),
(167, 'forminator_process_report', 'complete', '2024-01-29 16:03:48', '2024-01-29 16:03:48', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544228;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544228;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:03:52', '2024-01-29 16:03:52', 0, NULL),
(168, 'forminator_send_export', 'complete', '2024-01-29 16:03:49', '2024-01-29 16:03:49', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544229;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544229;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:03:54', '2024-01-29 16:03:54', 0, NULL),
(169, 'forminator_process_report', 'complete', '2024-01-29 16:03:50', '2024-01-29 16:03:50', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544230;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544230;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:03:54', '2024-01-29 16:03:54', 0, NULL),
(170, 'forminator_process_report', 'complete', '2024-01-29 16:04:53', '2024-01-29 16:04:53', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544293;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544293;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:05:45', '2024-01-29 16:05:45', 0, NULL),
(171, 'forminator_send_export', 'complete', '2024-01-29 16:04:54', '2024-01-29 16:04:54', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544294;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544294;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:05:46', '2024-01-29 16:05:46', 0, NULL),
(172, 'forminator_process_report', 'complete', '2024-01-29 16:04:54', '2024-01-29 16:04:54', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544294;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544294;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:05:47', '2024-01-29 16:05:47', 0, NULL),
(173, 'forminator_process_report', 'complete', '2024-01-29 16:06:46', '2024-01-29 16:06:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544406;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544406;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:07:04', '2024-01-29 16:07:04', 0, NULL),
(174, 'forminator_send_export', 'complete', '2024-01-29 16:06:46', '2024-01-29 16:06:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544406;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544406;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:07:06', '2024-01-29 16:07:06', 0, NULL),
(175, 'forminator_process_report', 'complete', '2024-01-29 16:06:47', '2024-01-29 16:06:47', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544407;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544407;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:07:07', '2024-01-29 16:07:07', 0, NULL),
(176, 'forminator_process_report', 'complete', '2024-01-29 16:08:05', '2024-01-29 16:08:05', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544485;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544485;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:08:16', '2024-01-29 16:08:16', 0, NULL),
(177, 'forminator_send_export', 'complete', '2024-01-29 16:08:06', '2024-01-29 16:08:06', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544486;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544486;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:08:17', '2024-01-29 16:08:17', 0, NULL),
(178, 'forminator_process_report', 'complete', '2024-01-29 16:08:07', '2024-01-29 16:08:07', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544487;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544487;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:08:17', '2024-01-29 16:08:17', 0, NULL),
(179, 'forminator_process_report', 'complete', '2024-01-29 16:09:17', '2024-01-29 16:09:17', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544557;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544557;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:10:18', '2024-01-29 16:10:18', 0, NULL),
(180, 'forminator_send_export', 'complete', '2024-01-29 16:09:17', '2024-01-29 16:09:17', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544557;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544557;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:10:18', '2024-01-29 16:10:18', 0, NULL),
(181, 'forminator_process_report', 'complete', '2024-01-29 16:09:18', '2024-01-29 16:09:18', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544558;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544558;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:10:18', '2024-01-29 16:10:18', 0, NULL),
(182, 'forminator_process_report', 'complete', '2024-01-29 16:11:18', '2024-01-29 16:11:18', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544678;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544678;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:12:18', '2024-01-29 16:12:18', 0, NULL),
(183, 'forminator_send_export', 'complete', '2024-01-29 16:11:18', '2024-01-29 16:11:18', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544678;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544678;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:12:19', '2024-01-29 16:12:19', 0, NULL),
(184, 'forminator_process_report', 'complete', '2024-01-29 16:11:18', '2024-01-29 16:11:18', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544678;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544678;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:12:19', '2024-01-29 16:12:19', 0, NULL),
(185, 'forminator_process_report', 'complete', '2024-01-29 16:13:18', '2024-01-29 16:13:18', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544798;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544798;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:13:21', '2024-01-29 16:13:21', 0, NULL),
(186, 'forminator_send_export', 'complete', '2024-01-29 16:13:19', '2024-01-29 16:13:19', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544799;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544799;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:13:22', '2024-01-29 16:13:22', 0, NULL),
(187, 'forminator_process_report', 'complete', '2024-01-29 16:13:19', '2024-01-29 16:13:19', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544799;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544799;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 1, '2024-01-29 16:13:23', '2024-01-29 16:13:23', 0, NULL),
(188, 'forminator_process_report', 'canceled', '2024-01-29 16:14:21', '2024-01-29 16:14:21', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544861;s:18:\"\0*\0first_timestamp\";i:1706450258;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544861;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(189, 'forminator_send_export', 'canceled', '2024-01-29 16:14:22', '2024-01-29 16:14:22', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544862;s:18:\"\0*\0first_timestamp\";i:1706450162;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544862;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(190, 'forminator_process_report', 'pending', '2024-01-29 16:14:23', '2024-01-29 16:14:23', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1706544863;s:18:\"\0*\0first_timestamp\";i:1706450172;s:13:\"\0*\0recurrence\";i:60;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1706544863;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:60;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_actionscheduler_claims`
--

CREATE TABLE `kyrs_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_actionscheduler_groups`
--

CREATE TABLE `kyrs_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_actionscheduler_groups`
--

INSERT INTO `kyrs_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'forminator'),
(2, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_actionscheduler_logs`
--

CREATE TABLE `kyrs_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_actionscheduler_logs`
--

INSERT INTO `kyrs_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(2, 79, 'action created', '2024-01-28 13:55:52', '2024-01-28 13:55:52'),
(6, 83, 'action created', '2024-01-28 13:55:53', '2024-01-28 13:55:53'),
(12, 85, 'action created', '2024-01-28 13:55:57', '2024-01-28 13:55:57'),
(20, 83, 'action started via WP Cron', '2024-01-28 13:57:19', '2024-01-28 13:57:19'),
(21, 83, 'action complete via WP Cron', '2024-01-28 13:57:19', '2024-01-28 13:57:19'),
(108, 117, 'action created', '2024-01-29 15:36:00', '2024-01-29 15:36:00'),
(111, 118, 'action created', '2024-01-29 15:37:30', '2024-01-29 15:37:30'),
(114, 119, 'action created', '2024-01-29 15:37:31', '2024-01-29 15:37:31'),
(117, 120, 'action created', '2024-01-29 15:37:31', '2024-01-29 15:37:31'),
(118, 85, 'action started via WP Cron', '2024-01-29 15:37:32', '2024-01-29 15:37:32'),
(119, 85, 'action complete via WP Cron', '2024-01-29 15:37:32', '2024-01-29 15:37:32'),
(120, 121, 'action created', '2024-01-29 15:37:33', '2024-01-29 15:37:33'),
(121, 79, 'action started via WP Cron', '2024-01-29 15:37:33', '2024-01-29 15:37:33'),
(122, 79, 'action complete via WP Cron', '2024-01-29 15:37:33', '2024-01-29 15:37:33'),
(123, 117, 'action started via WP Cron', '2024-01-29 15:37:34', '2024-01-29 15:37:34'),
(124, 117, 'action complete via WP Cron', '2024-01-29 15:37:34', '2024-01-29 15:37:34'),
(125, 122, 'action created', '2024-01-29 15:37:35', '2024-01-29 15:37:35'),
(126, 123, 'action created', '2024-01-29 15:38:34', '2024-01-29 15:38:34'),
(127, 118, 'action started via WP Cron', '2024-01-29 15:38:37', '2024-01-29 15:38:37'),
(128, 118, 'action complete via WP Cron', '2024-01-29 15:38:37', '2024-01-29 15:38:37'),
(129, 124, 'action created', '2024-01-29 15:38:38', '2024-01-29 15:38:38'),
(130, 119, 'action started via WP Cron', '2024-01-29 15:38:38', '2024-01-29 15:38:38'),
(131, 119, 'action complete via WP Cron', '2024-01-29 15:38:38', '2024-01-29 15:38:38'),
(132, 125, 'action created', '2024-01-29 15:38:39', '2024-01-29 15:38:39'),
(133, 122, 'action started via WP Cron', '2024-01-29 15:38:39', '2024-01-29 15:38:39'),
(134, 122, 'action complete via WP Cron', '2024-01-29 15:38:39', '2024-01-29 15:38:39'),
(135, 126, 'action created', '2024-01-29 15:38:40', '2024-01-29 15:38:40'),
(136, 124, 'action started via Async Request', '2024-01-29 15:40:37', '2024-01-29 15:40:37'),
(137, 124, 'action complete via Async Request', '2024-01-29 15:40:37', '2024-01-29 15:40:37'),
(138, 127, 'action created', '2024-01-29 15:40:37', '2024-01-29 15:40:37'),
(139, 125, 'action started via Async Request', '2024-01-29 15:40:37', '2024-01-29 15:40:37'),
(140, 125, 'action complete via Async Request', '2024-01-29 15:40:38', '2024-01-29 15:40:38'),
(141, 128, 'action created', '2024-01-29 15:40:38', '2024-01-29 15:40:38'),
(142, 126, 'action started via Async Request', '2024-01-29 15:40:38', '2024-01-29 15:40:38'),
(143, 126, 'action complete via Async Request', '2024-01-29 15:40:38', '2024-01-29 15:40:38'),
(144, 129, 'action created', '2024-01-29 15:40:38', '2024-01-29 15:40:38'),
(145, 127, 'action started via WP Cron', '2024-01-29 15:42:39', '2024-01-29 15:42:39'),
(146, 127, 'action complete via WP Cron', '2024-01-29 15:42:40', '2024-01-29 15:42:40'),
(147, 130, 'action created', '2024-01-29 15:42:40', '2024-01-29 15:42:40'),
(148, 128, 'action started via WP Cron', '2024-01-29 15:42:40', '2024-01-29 15:42:40'),
(149, 128, 'action complete via WP Cron', '2024-01-29 15:42:40', '2024-01-29 15:42:40'),
(150, 131, 'action created', '2024-01-29 15:42:40', '2024-01-29 15:42:40'),
(151, 129, 'action started via WP Cron', '2024-01-29 15:42:40', '2024-01-29 15:42:40'),
(152, 129, 'action complete via WP Cron', '2024-01-29 15:42:40', '2024-01-29 15:42:40'),
(153, 132, 'action created', '2024-01-29 15:42:41', '2024-01-29 15:42:41'),
(154, 130, 'action started via WP Cron', '2024-01-29 15:44:38', '2024-01-29 15:44:38'),
(155, 130, 'action complete via WP Cron', '2024-01-29 15:44:38', '2024-01-29 15:44:38'),
(156, 133, 'action created', '2024-01-29 15:44:38', '2024-01-29 15:44:38'),
(157, 131, 'action started via WP Cron', '2024-01-29 15:44:38', '2024-01-29 15:44:38'),
(158, 131, 'action complete via WP Cron', '2024-01-29 15:44:38', '2024-01-29 15:44:38'),
(159, 134, 'action created', '2024-01-29 15:44:39', '2024-01-29 15:44:39'),
(160, 132, 'action started via WP Cron', '2024-01-29 15:44:39', '2024-01-29 15:44:39'),
(161, 132, 'action complete via WP Cron', '2024-01-29 15:44:39', '2024-01-29 15:44:39'),
(162, 135, 'action created', '2024-01-29 15:44:39', '2024-01-29 15:44:39'),
(163, 133, 'action started via WP Cron', '2024-01-29 15:46:38', '2024-01-29 15:46:38'),
(164, 133, 'action complete via WP Cron', '2024-01-29 15:46:38', '2024-01-29 15:46:38'),
(165, 136, 'action created', '2024-01-29 15:46:38', '2024-01-29 15:46:38'),
(166, 134, 'action started via WP Cron', '2024-01-29 15:46:38', '2024-01-29 15:46:38'),
(167, 134, 'action complete via WP Cron', '2024-01-29 15:46:38', '2024-01-29 15:46:38'),
(168, 137, 'action created', '2024-01-29 15:46:38', '2024-01-29 15:46:38'),
(169, 135, 'action started via WP Cron', '2024-01-29 15:46:38', '2024-01-29 15:46:38'),
(170, 135, 'action complete via WP Cron', '2024-01-29 15:46:38', '2024-01-29 15:46:38'),
(171, 138, 'action created', '2024-01-29 15:46:38', '2024-01-29 15:46:38'),
(172, 136, 'action started via WP Cron', '2024-01-29 15:48:38', '2024-01-29 15:48:38'),
(173, 136, 'action complete via WP Cron', '2024-01-29 15:48:39', '2024-01-29 15:48:39'),
(174, 139, 'action created', '2024-01-29 15:48:39', '2024-01-29 15:48:39'),
(175, 137, 'action started via WP Cron', '2024-01-29 15:48:39', '2024-01-29 15:48:39'),
(176, 137, 'action complete via WP Cron', '2024-01-29 15:48:39', '2024-01-29 15:48:39'),
(177, 140, 'action created', '2024-01-29 15:48:39', '2024-01-29 15:48:39'),
(178, 138, 'action started via WP Cron', '2024-01-29 15:48:39', '2024-01-29 15:48:39'),
(179, 138, 'action complete via WP Cron', '2024-01-29 15:48:39', '2024-01-29 15:48:39'),
(180, 141, 'action created', '2024-01-29 15:48:39', '2024-01-29 15:48:39'),
(181, 139, 'action started via WP Cron', '2024-01-29 15:49:45', '2024-01-29 15:49:45'),
(182, 139, 'action complete via WP Cron', '2024-01-29 15:49:45', '2024-01-29 15:49:45'),
(183, 142, 'action created', '2024-01-29 15:49:45', '2024-01-29 15:49:45'),
(184, 140, 'action started via WP Cron', '2024-01-29 15:49:45', '2024-01-29 15:49:45'),
(185, 140, 'action complete via WP Cron', '2024-01-29 15:49:45', '2024-01-29 15:49:45'),
(186, 143, 'action created', '2024-01-29 15:49:46', '2024-01-29 15:49:46'),
(187, 141, 'action started via WP Cron', '2024-01-29 15:49:46', '2024-01-29 15:49:46'),
(188, 141, 'action complete via WP Cron', '2024-01-29 15:49:46', '2024-01-29 15:49:46'),
(189, 144, 'action created', '2024-01-29 15:49:46', '2024-01-29 15:49:46'),
(190, 142, 'action started via WP Cron', '2024-01-29 15:51:01', '2024-01-29 15:51:01'),
(191, 142, 'action complete via WP Cron', '2024-01-29 15:51:01', '2024-01-29 15:51:01'),
(192, 145, 'action created', '2024-01-29 15:51:02', '2024-01-29 15:51:02'),
(193, 143, 'action started via WP Cron', '2024-01-29 15:51:02', '2024-01-29 15:51:02'),
(194, 143, 'action complete via WP Cron', '2024-01-29 15:51:02', '2024-01-29 15:51:02'),
(195, 146, 'action created', '2024-01-29 15:51:02', '2024-01-29 15:51:02'),
(196, 144, 'action started via WP Cron', '2024-01-29 15:51:02', '2024-01-29 15:51:02'),
(197, 144, 'action complete via WP Cron', '2024-01-29 15:51:02', '2024-01-29 15:51:02'),
(198, 147, 'action created', '2024-01-29 15:51:03', '2024-01-29 15:51:03'),
(199, 145, 'action started via WP Cron', '2024-01-29 15:52:43', '2024-01-29 15:52:43'),
(200, 145, 'action complete via WP Cron', '2024-01-29 15:52:43', '2024-01-29 15:52:43'),
(201, 148, 'action created', '2024-01-29 15:52:43', '2024-01-29 15:52:43'),
(202, 146, 'action started via WP Cron', '2024-01-29 15:52:43', '2024-01-29 15:52:43'),
(203, 146, 'action complete via WP Cron', '2024-01-29 15:52:44', '2024-01-29 15:52:44'),
(204, 149, 'action created', '2024-01-29 15:52:44', '2024-01-29 15:52:44'),
(205, 147, 'action started via WP Cron', '2024-01-29 15:52:44', '2024-01-29 15:52:44'),
(206, 147, 'action complete via WP Cron', '2024-01-29 15:52:44', '2024-01-29 15:52:44'),
(207, 150, 'action created', '2024-01-29 15:52:44', '2024-01-29 15:52:44'),
(208, 148, 'action started via WP Cron', '2024-01-29 15:54:42', '2024-01-29 15:54:42'),
(209, 148, 'action complete via WP Cron', '2024-01-29 15:54:42', '2024-01-29 15:54:42'),
(210, 151, 'action created', '2024-01-29 15:54:43', '2024-01-29 15:54:43'),
(211, 149, 'action started via WP Cron', '2024-01-29 15:54:43', '2024-01-29 15:54:43'),
(212, 149, 'action complete via WP Cron', '2024-01-29 15:54:43', '2024-01-29 15:54:43'),
(213, 152, 'action created', '2024-01-29 15:54:43', '2024-01-29 15:54:43'),
(214, 150, 'action started via WP Cron', '2024-01-29 15:54:43', '2024-01-29 15:54:43'),
(215, 150, 'action complete via WP Cron', '2024-01-29 15:54:43', '2024-01-29 15:54:43'),
(216, 153, 'action created', '2024-01-29 15:54:43', '2024-01-29 15:54:43'),
(217, 151, 'action started via WP Cron', '2024-01-29 15:55:43', '2024-01-29 15:55:43'),
(218, 151, 'action complete via WP Cron', '2024-01-29 15:55:43', '2024-01-29 15:55:43'),
(219, 154, 'action created', '2024-01-29 15:55:43', '2024-01-29 15:55:43'),
(220, 152, 'action started via WP Cron', '2024-01-29 15:55:43', '2024-01-29 15:55:43'),
(221, 152, 'action complete via WP Cron', '2024-01-29 15:55:43', '2024-01-29 15:55:43'),
(222, 155, 'action created', '2024-01-29 15:55:43', '2024-01-29 15:55:43'),
(223, 153, 'action started via WP Cron', '2024-01-29 15:55:43', '2024-01-29 15:55:43'),
(224, 153, 'action complete via WP Cron', '2024-01-29 15:55:43', '2024-01-29 15:55:43'),
(225, 156, 'action created', '2024-01-29 15:55:43', '2024-01-29 15:55:43'),
(226, 154, 'action started via WP Cron', '2024-01-29 15:57:42', '2024-01-29 15:57:42'),
(227, 154, 'action complete via WP Cron', '2024-01-29 15:57:42', '2024-01-29 15:57:42'),
(228, 157, 'action created', '2024-01-29 15:57:42', '2024-01-29 15:57:42'),
(229, 155, 'action started via WP Cron', '2024-01-29 15:57:43', '2024-01-29 15:57:43'),
(230, 155, 'action complete via WP Cron', '2024-01-29 15:57:43', '2024-01-29 15:57:43'),
(231, 158, 'action created', '2024-01-29 15:57:43', '2024-01-29 15:57:43'),
(232, 156, 'action started via WP Cron', '2024-01-29 15:57:43', '2024-01-29 15:57:43'),
(233, 156, 'action complete via WP Cron', '2024-01-29 15:57:43', '2024-01-29 15:57:43'),
(234, 159, 'action created', '2024-01-29 15:57:43', '2024-01-29 15:57:43'),
(235, 157, 'action started via WP Cron', '2024-01-29 15:58:42', '2024-01-29 15:58:42'),
(236, 157, 'action complete via WP Cron', '2024-01-29 15:58:42', '2024-01-29 15:58:42'),
(237, 160, 'action created', '2024-01-29 15:58:42', '2024-01-29 15:58:42'),
(238, 158, 'action started via WP Cron', '2024-01-29 15:59:43', '2024-01-29 15:59:43'),
(239, 158, 'action complete via WP Cron', '2024-01-29 15:59:43', '2024-01-29 15:59:43'),
(240, 161, 'action created', '2024-01-29 15:59:43', '2024-01-29 15:59:43'),
(241, 159, 'action started via WP Cron', '2024-01-29 15:59:44', '2024-01-29 15:59:44'),
(242, 159, 'action complete via WP Cron', '2024-01-29 15:59:44', '2024-01-29 15:59:44'),
(243, 162, 'action created', '2024-01-29 15:59:45', '2024-01-29 15:59:45'),
(244, 160, 'action started via WP Cron', '2024-01-29 15:59:45', '2024-01-29 15:59:45'),
(245, 160, 'action complete via WP Cron', '2024-01-29 15:59:45', '2024-01-29 15:59:45'),
(246, 163, 'action created', '2024-01-29 15:59:45', '2024-01-29 15:59:45'),
(247, 161, 'action started via WP Cron', '2024-01-29 16:00:52', '2024-01-29 16:00:52'),
(248, 161, 'action complete via WP Cron', '2024-01-29 16:00:53', '2024-01-29 16:00:53'),
(249, 164, 'action created', '2024-01-29 16:00:54', '2024-01-29 16:00:54'),
(250, 162, 'action started via WP Cron', '2024-01-29 16:00:54', '2024-01-29 16:00:54'),
(251, 162, 'action complete via WP Cron', '2024-01-29 16:00:55', '2024-01-29 16:00:55'),
(252, 165, 'action created', '2024-01-29 16:00:59', '2024-01-29 16:00:59'),
(253, 163, 'action started via WP Cron', '2024-01-29 16:00:59', '2024-01-29 16:00:59'),
(254, 163, 'action complete via WP Cron', '2024-01-29 16:00:59', '2024-01-29 16:00:59'),
(255, 166, 'action created', '2024-01-29 16:01:00', '2024-01-29 16:01:00'),
(256, 164, 'action started via WP Cron', '2024-01-29 16:02:48', '2024-01-29 16:02:48'),
(257, 164, 'action complete via WP Cron', '2024-01-29 16:02:48', '2024-01-29 16:02:48'),
(258, 167, 'action created', '2024-01-29 16:02:49', '2024-01-29 16:02:49'),
(259, 165, 'action started via WP Cron', '2024-01-29 16:02:49', '2024-01-29 16:02:49'),
(260, 165, 'action complete via WP Cron', '2024-01-29 16:02:49', '2024-01-29 16:02:49'),
(261, 168, 'action created', '2024-01-29 16:02:49', '2024-01-29 16:02:49'),
(262, 166, 'action started via WP Cron', '2024-01-29 16:02:49', '2024-01-29 16:02:49'),
(263, 166, 'action complete via WP Cron', '2024-01-29 16:02:49', '2024-01-29 16:02:49'),
(264, 169, 'action created', '2024-01-29 16:02:50', '2024-01-29 16:02:50'),
(265, 167, 'action started via Async Request', '2024-01-29 16:03:52', '2024-01-29 16:03:52'),
(266, 167, 'action complete via Async Request', '2024-01-29 16:03:52', '2024-01-29 16:03:52'),
(267, 170, 'action created', '2024-01-29 16:03:53', '2024-01-29 16:03:53'),
(268, 168, 'action started via Async Request', '2024-01-29 16:03:53', '2024-01-29 16:03:53'),
(269, 168, 'action complete via Async Request', '2024-01-29 16:03:54', '2024-01-29 16:03:54'),
(270, 171, 'action created', '2024-01-29 16:03:54', '2024-01-29 16:03:54'),
(271, 169, 'action started via Async Request', '2024-01-29 16:03:54', '2024-01-29 16:03:54'),
(272, 169, 'action complete via Async Request', '2024-01-29 16:03:54', '2024-01-29 16:03:54'),
(273, 172, 'action created', '2024-01-29 16:03:54', '2024-01-29 16:03:54'),
(274, 170, 'action started via WP Cron', '2024-01-29 16:05:45', '2024-01-29 16:05:45'),
(275, 170, 'action complete via WP Cron', '2024-01-29 16:05:45', '2024-01-29 16:05:45'),
(276, 173, 'action created', '2024-01-29 16:05:46', '2024-01-29 16:05:46'),
(277, 171, 'action started via WP Cron', '2024-01-29 16:05:46', '2024-01-29 16:05:46'),
(278, 171, 'action complete via WP Cron', '2024-01-29 16:05:46', '2024-01-29 16:05:46'),
(279, 174, 'action created', '2024-01-29 16:05:46', '2024-01-29 16:05:46'),
(280, 172, 'action started via WP Cron', '2024-01-29 16:05:46', '2024-01-29 16:05:46'),
(281, 172, 'action complete via WP Cron', '2024-01-29 16:05:47', '2024-01-29 16:05:47'),
(282, 175, 'action created', '2024-01-29 16:05:47', '2024-01-29 16:05:47'),
(283, 173, 'action started via WP Cron', '2024-01-29 16:07:04', '2024-01-29 16:07:04'),
(284, 173, 'action complete via WP Cron', '2024-01-29 16:07:04', '2024-01-29 16:07:04'),
(285, 176, 'action created', '2024-01-29 16:07:05', '2024-01-29 16:07:05'),
(286, 174, 'action started via WP Cron', '2024-01-29 16:07:05', '2024-01-29 16:07:05'),
(287, 174, 'action complete via WP Cron', '2024-01-29 16:07:06', '2024-01-29 16:07:06'),
(288, 177, 'action created', '2024-01-29 16:07:06', '2024-01-29 16:07:06'),
(289, 175, 'action started via WP Cron', '2024-01-29 16:07:06', '2024-01-29 16:07:06'),
(290, 175, 'action complete via WP Cron', '2024-01-29 16:07:06', '2024-01-29 16:07:06'),
(291, 178, 'action created', '2024-01-29 16:07:07', '2024-01-29 16:07:07'),
(292, 176, 'action started via WP Cron', '2024-01-29 16:08:16', '2024-01-29 16:08:16'),
(293, 176, 'action complete via WP Cron', '2024-01-29 16:08:16', '2024-01-29 16:08:16'),
(294, 179, 'action created', '2024-01-29 16:08:17', '2024-01-29 16:08:17'),
(295, 177, 'action started via WP Cron', '2024-01-29 16:08:17', '2024-01-29 16:08:17'),
(296, 177, 'action complete via WP Cron', '2024-01-29 16:08:17', '2024-01-29 16:08:17'),
(297, 180, 'action created', '2024-01-29 16:08:17', '2024-01-29 16:08:17'),
(298, 178, 'action started via WP Cron', '2024-01-29 16:08:17', '2024-01-29 16:08:17'),
(299, 178, 'action complete via WP Cron', '2024-01-29 16:08:17', '2024-01-29 16:08:17'),
(300, 181, 'action created', '2024-01-29 16:08:18', '2024-01-29 16:08:18'),
(301, 179, 'action started via WP Cron', '2024-01-29 16:10:18', '2024-01-29 16:10:18'),
(302, 179, 'action complete via WP Cron', '2024-01-29 16:10:18', '2024-01-29 16:10:18'),
(303, 182, 'action created', '2024-01-29 16:10:18', '2024-01-29 16:10:18'),
(304, 180, 'action started via WP Cron', '2024-01-29 16:10:18', '2024-01-29 16:10:18'),
(305, 180, 'action complete via WP Cron', '2024-01-29 16:10:18', '2024-01-29 16:10:18'),
(306, 183, 'action created', '2024-01-29 16:10:18', '2024-01-29 16:10:18'),
(307, 181, 'action started via WP Cron', '2024-01-29 16:10:18', '2024-01-29 16:10:18'),
(308, 181, 'action complete via WP Cron', '2024-01-29 16:10:18', '2024-01-29 16:10:18'),
(309, 184, 'action created', '2024-01-29 16:10:18', '2024-01-29 16:10:18'),
(310, 182, 'action started via WP Cron', '2024-01-29 16:12:18', '2024-01-29 16:12:18'),
(311, 182, 'action complete via WP Cron', '2024-01-29 16:12:18', '2024-01-29 16:12:18'),
(312, 185, 'action created', '2024-01-29 16:12:19', '2024-01-29 16:12:19'),
(313, 183, 'action started via WP Cron', '2024-01-29 16:12:19', '2024-01-29 16:12:19'),
(314, 183, 'action complete via WP Cron', '2024-01-29 16:12:19', '2024-01-29 16:12:19'),
(315, 186, 'action created', '2024-01-29 16:12:19', '2024-01-29 16:12:19'),
(316, 184, 'action started via WP Cron', '2024-01-29 16:12:19', '2024-01-29 16:12:19'),
(317, 184, 'action complete via WP Cron', '2024-01-29 16:12:19', '2024-01-29 16:12:19'),
(318, 187, 'action created', '2024-01-29 16:12:19', '2024-01-29 16:12:19'),
(319, 185, 'action started via WP Cron', '2024-01-29 16:13:20', '2024-01-29 16:13:20'),
(320, 185, 'action complete via WP Cron', '2024-01-29 16:13:21', '2024-01-29 16:13:21'),
(321, 188, 'action created', '2024-01-29 16:13:22', '2024-01-29 16:13:22'),
(322, 186, 'action started via WP Cron', '2024-01-29 16:13:22', '2024-01-29 16:13:22'),
(323, 186, 'action complete via WP Cron', '2024-01-29 16:13:22', '2024-01-29 16:13:22'),
(324, 189, 'action created', '2024-01-29 16:13:22', '2024-01-29 16:13:22'),
(325, 187, 'action started via WP Cron', '2024-01-29 16:13:22', '2024-01-29 16:13:22'),
(326, 187, 'action complete via WP Cron', '2024-01-29 16:13:22', '2024-01-29 16:13:22'),
(327, 190, 'action created', '2024-01-29 16:13:23', '2024-01-29 16:13:23'),
(328, 121, 'action canceled', '2024-01-29 16:13:34', '2024-01-29 16:13:34'),
(329, 189, 'action canceled', '2024-01-29 16:13:34', '2024-01-29 16:13:34'),
(330, 123, 'action canceled', '2024-01-29 16:13:34', '2024-01-29 16:13:34'),
(331, 188, 'action canceled', '2024-01-29 16:13:34', '2024-01-29 16:13:34'),
(332, 120, 'action canceled', '2024-01-29 16:13:34', '2024-01-29 16:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_commentmeta`
--

CREATE TABLE `kyrs_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_comments`
--

CREATE TABLE `kyrs_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_comments`
--

INSERT INTO `kyrs_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-01-26 12:48:30', '2024-01-26 12:48:30', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_db7_forms`
--

CREATE TABLE `kyrs_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_frmt_form_entry`
--

CREATE TABLE `kyrs_frmt_form_entry` (
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `entry_type` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `draft_id` varchar(12) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `is_spam` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_frmt_form_entry_meta`
--

CREATE TABLE `kyrs_frmt_form_entry_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_frmt_form_reports`
--

CREATE TABLE `kyrs_frmt_form_reports` (
  `report_id` bigint(20) UNSIGNED NOT NULL,
  `report_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_frmt_form_reports`
--

INSERT INTO `kyrs_frmt_form_reports` (`report_id`, `report_value`, `status`, `date_created`, `date_updated`) VALUES
(1, 'a:5:{s:7:\"exclude\";a:1:{i:0;i:1;}s:8:\"settings\";a:3:{s:5:\"label\";s:12:\"Form reports\";s:6:\"module\";s:5:\"forms\";s:10:\"forms_type\";s:3:\"all\";}s:8:\"schedule\";a:3:{s:9:\"frequency\";s:7:\"monthly\";s:8:\"monthDay\";s:1:\"4\";s:9:\"monthTime\";s:8:\"04:00 AM\";}s:13:\"report_status\";s:8:\"inactive\";s:10:\"recipients\";a:1:{i:0;a:5:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:23:\"informtogokul@gmail.com\";s:4:\"role\";s:13:\"Administrator\";s:6:\"avatar\";s:75:\"http://1.gravatar.com/avatar/7c8be7e79c7a84ca98324550404343be?s=96&d=mm&r=g\";}}}', 'inactive', '2024-01-28 13:55:47', '2024-01-28 13:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_frmt_form_views`
--

CREATE TABLE `kyrs_frmt_form_views` (
  `view_id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_frmt_form_views`
--

INSERT INTO `kyrs_frmt_form_views` (`view_id`, `form_id`, `page_id`, `ip`, `count`, `date_created`, `date_updated`) VALUES
(1, 78, 7, NULL, 3, '2024-01-29 16:03:19', '2024-01-29 21:37:03'),
(2, 78, 1, NULL, 3, '2024-01-29 16:03:21', '2024-01-29 21:37:05'),
(3, 78, 0, NULL, 1, '2024-01-29 16:04:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_links`
--

CREATE TABLE `kyrs_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_options`
--

CREATE TABLE `kyrs_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_options`
--

INSERT INTO `kyrs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/kyurees', 'yes'),
(2, 'home', 'http://localhost/kyurees', 'yes'),
(3, 'blogname', 'Kyurees', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'informtogokul@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:109:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kyurees', 'yes'),
(41, 'stylesheet', 'kyurees', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1721825290', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'kyrs_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"manage_forminator\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:10:{i:1706575715;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1706575716;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1706576940;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1706618913;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1706620139;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1706620140;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1706620143;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1706881745;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1706964514;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.4.2\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1706277192;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(126, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1706547721;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1706547723;s:7:\"checked\";a:4:{s:7:\"kyurees\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.3\";s:15:\"twentytwentytwo\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.3.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.6.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(131, '_site_transient_timeout_browser_9c1ce27f08b16479d2e17743062b28ed', '1706879341', 'no'),
(132, '_site_transient_browser_9c1ce27f08b16479d2e17743062b28ed', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"120.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_8cf1643c50bfbac60523b23e1f6543c8', '1706879343', 'no'),
(134, '_site_transient_php_check_8cf1643c50bfbac60523b23e1f6543c8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(138, 'can_compress_scripts', '1', 'yes'),
(143, 'recently_activated', 'a:2:{s:25:\"forminator/forminator.php\";i:1706544814;s:19:\"html-wp/html-wp.php\";i:1706361218;}', 'yes'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(160, 'plugin_status', 'inactive', 'yes'),
(162, 'current_theme', 'kyurees', 'yes'),
(163, 'theme_mods_kyurees', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"menu-header\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(180, 'https_detection_errors', 'a:0:{}', 'yes'),
(181, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":4,\"critical\":2}', 'yes'),
(201, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(208, 'acf_version', '5.8.9', 'yes'),
(220, 'cptui_post_types', 'a:1:{s:12:\"testimonials\";a:34:{s:4:\"name\";s:12:\"testimonials\";s:5:\"label\";s:12:\"Testimonails\";s:14:\"singular_label\";s:11:\"Testimonail\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}', 'yes'),
(232, 'forminator_free_install_date', '1706450141', 'no'),
(233, 'wpmudev_recommended_plugins_registered', 'a:1:{s:25:\"forminator/forminator.php\";a:1:{s:13:\"registered_at\";i:1706450142;}}', 'no'),
(234, 'forminator_default_report_entry', '1', 'yes'),
(235, 'forminator_version', '1.28.1', 'yes'),
(236, 'widget_forminator_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(237, 'action_scheduler_hybrid_store_demarkation', '77', 'yes'),
(238, 'schema-ActionScheduler_StoreSchema', '7.0.1706450150', 'yes'),
(239, 'schema-ActionScheduler_LoggerSchema', '3.0.1706450151', 'yes'),
(246, 'action_scheduler_lock_async-request-runner', '65b7ce9fc31499.70334004|1706544859', 'no'),
(247, 'forminator_appearance_presets', 'a:1:{s:7:\"default\";s:14:\"Default Preset\";}', 'yes'),
(276, '_transient_timeout_action_scheduler_last_pastdue_actions_check', '1706565091', 'no'),
(277, '_transient_action_scheduler_last_pastdue_actions_check', '1706543491', 'no');
INSERT INTO `kyrs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(283, 'forminator_form_privacy_settings', 'a:0:{}', 'yes'),
(297, '_transient_timeout_acf_plugin_updates', '1706717632', 'no'),
(298, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.4.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20240116\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";}}', 'no'),
(303, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.8.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1706544957;s:7:\"version\";s:5:\"5.8.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(306, 'secret_key', 'Ek8-%@;[)%kBPsmD$5V},4nV2.2 +%CgRN)mP:=aWrFP;E6rgf~;]jM*N[]<PBjZ', 'no'),
(307, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1706558511', 'no'),
(308, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:6224;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4828;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2790;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2689;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2063;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1927;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1916;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1668;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1576;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1567;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1553;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1511;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1505;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1503;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1389;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1281;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1174;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1161;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1158;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1087;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1036;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1004;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:976;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:922;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:908;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:895;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:891;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:886;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:886;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:877;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:858;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:855;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:796;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:784;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:781;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:781;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:764;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:763;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:737;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:735;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:731;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:730;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:696;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:692;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:684;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:674;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:667;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:637;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:633;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:626;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:619;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:612;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:608;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:602;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:598;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:596;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:595;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:578;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:577;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:575;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:575;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:571;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:565;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:564;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:550;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:546;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:540;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:536;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:534;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:533;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:523;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:513;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:511;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:511;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:508;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:505;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:489;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:483;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:475;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:452;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:451;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:451;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:442;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:438;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:436;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:435;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:428;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:427;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:427;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:424;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:423;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:422;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:414;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:409;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:405;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:404;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:400;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:396;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:391;}}', 'no'),
(309, '_site_transient_timeout_theme_roots', '1706549519', 'no'),
(310, '_site_transient_theme_roots', 'a:4:{s:7:\"kyurees\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(312, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1706547725;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.4.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20240116\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.6.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.15.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.15.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:7:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.8.6\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.6.7\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.15.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(313, 'cfdb7_view_install_date', '2024-01-29 17:02:07', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_postmeta`
--

CREATE TABLE `kyrs_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_postmeta`
--

INSERT INTO `kyrs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_wp_page_template', 'hometemplate.php'),
(6, 7, '_html_tpl', 'index.html'),
(7, 7, '_edit_lock', '1706373320:1'),
(8, 8, 'footnotes', ''),
(11, 11, '_menu_item_type', 'custom'),
(12, 11, '_menu_item_menu_item_parent', '0'),
(13, 11, '_menu_item_object_id', '11'),
(14, 11, '_menu_item_object', 'custom'),
(15, 11, '_menu_item_target', ''),
(16, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 11, '_menu_item_xfn', ''),
(18, 11, '_menu_item_url', '#'),
(20, 12, '_menu_item_type', 'custom'),
(21, 12, '_menu_item_menu_item_parent', '11'),
(22, 12, '_menu_item_object_id', '12'),
(23, 12, '_menu_item_object', 'custom'),
(24, 12, '_menu_item_target', ''),
(25, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 12, '_menu_item_xfn', ''),
(27, 12, '_menu_item_url', '#'),
(29, 13, '_menu_item_type', 'custom'),
(30, 13, '_menu_item_menu_item_parent', '11'),
(31, 13, '_menu_item_object_id', '13'),
(32, 13, '_menu_item_object', 'custom'),
(33, 13, '_menu_item_target', ''),
(34, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 13, '_menu_item_xfn', ''),
(36, 13, '_menu_item_url', '#'),
(38, 14, '_menu_item_type', 'custom'),
(39, 14, '_menu_item_menu_item_parent', '11'),
(40, 14, '_menu_item_object_id', '14'),
(41, 14, '_menu_item_object', 'custom'),
(42, 14, '_menu_item_target', ''),
(43, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 14, '_menu_item_xfn', ''),
(45, 14, '_menu_item_url', '#'),
(47, 15, '_menu_item_type', 'custom'),
(48, 15, '_menu_item_menu_item_parent', '11'),
(49, 15, '_menu_item_object_id', '15'),
(50, 15, '_menu_item_object', 'custom'),
(51, 15, '_menu_item_target', ''),
(52, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 15, '_menu_item_xfn', ''),
(54, 15, '_menu_item_url', '#'),
(56, 16, '_menu_item_type', 'custom'),
(57, 16, '_menu_item_menu_item_parent', '11'),
(58, 16, '_menu_item_object_id', '16'),
(59, 16, '_menu_item_object', 'custom'),
(60, 16, '_menu_item_target', ''),
(61, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 16, '_menu_item_xfn', ''),
(63, 16, '_menu_item_url', '#'),
(65, 17, '_menu_item_type', 'custom'),
(66, 17, '_menu_item_menu_item_parent', '11'),
(67, 17, '_menu_item_object_id', '17'),
(68, 17, '_menu_item_object', 'custom'),
(69, 17, '_menu_item_target', ''),
(70, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 17, '_menu_item_xfn', ''),
(72, 17, '_menu_item_url', '#'),
(74, 18, '_menu_item_type', 'custom'),
(75, 18, '_menu_item_menu_item_parent', '0'),
(76, 18, '_menu_item_object_id', '18'),
(77, 18, '_menu_item_object', 'custom'),
(78, 18, '_menu_item_target', ''),
(79, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 18, '_menu_item_xfn', ''),
(81, 18, '_menu_item_url', '#'),
(83, 19, '_menu_item_type', 'custom'),
(84, 19, '_menu_item_menu_item_parent', '0'),
(85, 19, '_menu_item_object_id', '19'),
(86, 19, '_menu_item_object', 'custom'),
(87, 19, '_menu_item_target', ''),
(88, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 19, '_menu_item_xfn', ''),
(90, 19, '_menu_item_url', '#'),
(92, 20, '_menu_item_type', 'custom'),
(93, 20, '_menu_item_menu_item_parent', '0'),
(94, 20, '_menu_item_object_id', '20'),
(95, 20, '_menu_item_object', 'custom'),
(96, 20, '_menu_item_target', ''),
(97, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 20, '_menu_item_xfn', ''),
(99, 20, '_menu_item_url', '#'),
(101, 21, '_menu_item_type', 'custom'),
(102, 21, '_menu_item_menu_item_parent', '0'),
(103, 21, '_menu_item_object_id', '21'),
(104, 21, '_menu_item_object', 'custom'),
(105, 21, '_menu_item_target', ''),
(106, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 21, '_menu_item_xfn', ''),
(108, 21, '_menu_item_url', '#'),
(110, 7, '_edit_last', '1'),
(113, 23, '_edit_last', '1'),
(114, 23, '_edit_lock', '1706375406:1'),
(115, 7, 'banner_text_home', 'EMPOWER. PROTECT. LEAD.'),
(116, 7, '_banner_text_home', 'field_65b527b041368'),
(117, 7, 'banner_content_homepage', 'Delivering immersive, hands-on cybersecurity training to reskill talent pools and to help individuals transform their careers.'),
(118, 7, '_banner_content_homepage', 'field_65b527cc41369'),
(119, 7, 'link_text_hp', 'Explore Courses'),
(120, 7, '_link_text_hp', 'field_65b527ee4136a'),
(121, 7, 'url_link_hp', '#'),
(122, 7, '_url_link_hp', 'field_65b528064136b'),
(123, 7, 'products_hp', '3'),
(124, 7, '_products_hp', 'field_65b528af47c5a'),
(125, 9, 'banner_text_home', 'EMPOWER. PROTECT. LEAD.'),
(126, 9, '_banner_text_home', 'field_65b527b041368'),
(127, 9, 'banner_content_homepage', 'Delivering immersive, hands-on cybersecurity training to reskill talent pools and to help individuals transform their careers.'),
(128, 9, '_banner_content_homepage', 'field_65b527cc41369'),
(129, 9, 'link_text_hp', 'Explore Courses'),
(130, 9, '_link_text_hp', 'field_65b527ee4136a'),
(131, 9, 'url_link_hp', '#'),
(132, 9, '_url_link_hp', 'field_65b528064136b'),
(133, 9, 'products_hp', ''),
(134, 9, '_products_hp', 'field_65b528af47c5a'),
(135, 38, 'banner_text_home', 'EMPOWER. PROTECT. LEAD.'),
(136, 38, '_banner_text_home', 'field_65b527b041368'),
(137, 38, 'banner_content_homepage', 'Delivering immersive, hands-on cybersecurity training to reskill talent pools and to help individuals transform their careers.'),
(138, 38, '_banner_content_homepage', 'field_65b527cc41369'),
(139, 38, 'link_text_hp', 'Explore Courses'),
(140, 38, '_link_text_hp', 'field_65b527ee4136a'),
(141, 38, 'url_link_hp', '#'),
(142, 38, '_url_link_hp', 'field_65b528064136b'),
(143, 38, 'products_hp', ''),
(144, 38, '_products_hp', 'field_65b528af47c5a'),
(145, 40, '_wp_attached_file', '2024/01/home-hero.png'),
(146, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1190;s:6:\"height\";i:1190;s:4:\"file\";s:21:\"2024/01/home-hero.png\";s:8:\"filesize\";i:1276970;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 7, 'banner_image_hp', '40'),
(148, 7, '_banner_image_hp', 'field_65b52addb8212'),
(149, 38, 'banner_image_hp', '40'),
(150, 38, '_banner_image_hp', 'field_65b52addb8212'),
(151, 42, '_wp_attached_file', '2024/01/icon1.png'),
(152, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:98;s:6:\"height\";i:104;s:4:\"file\";s:17:\"2024/01/icon1.png\";s:8:\"filesize\";i:1644;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 43, '_wp_attached_file', '2024/01/icon2.png'),
(154, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:208;s:6:\"height\";i:208;s:4:\"file\";s:17:\"2024/01/icon2.png\";s:8:\"filesize\";i:4123;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 44, '_wp_attached_file', '2024/01/icon3.png'),
(156, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:212;s:6:\"height\";i:212;s:4:\"file\";s:17:\"2024/01/icon3.png\";s:8:\"filesize\";i:4774;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 7, 'products_hp_0_product_image_hp', '42'),
(158, 7, '_products_hp_0_product_image_hp', 'field_65b528c847c5b'),
(159, 7, 'products_hp_0_product_title_hp', 'For Individuals'),
(160, 7, '_products_hp_0_product_title_hp', 'field_65b528ec47c5c'),
(161, 7, 'products_hp_0_product_description_hp', 'Make your career goals a reality. Become a cybersecurity professional.'),
(162, 7, '_products_hp_0_product_description_hp', 'field_65b5290347c5d'),
(163, 7, 'products_hp_0_product_link_text_hp', 'Know More'),
(164, 7, '_products_hp_0_product_link_text_hp', 'field_65b5293c47c5e'),
(165, 7, 'products_hp_0_product_link_url_hp', '#'),
(166, 7, '_products_hp_0_product_link_url_hp', 'field_65b5294d47c5f'),
(167, 7, 'products_hp_1_product_image_hp', '43'),
(168, 7, '_products_hp_1_product_image_hp', 'field_65b528c847c5b'),
(169, 7, 'products_hp_1_product_title_hp', 'For Universities'),
(170, 7, '_products_hp_1_product_title_hp', 'field_65b528ec47c5c'),
(171, 7, 'products_hp_1_product_description_hp', 'Level up your offerings with holistic, hands-on cybersecurity education.'),
(172, 7, '_products_hp_1_product_description_hp', 'field_65b5290347c5d'),
(173, 7, 'products_hp_1_product_link_text_hp', 'Know More'),
(174, 7, '_products_hp_1_product_link_text_hp', 'field_65b5293c47c5e'),
(175, 7, 'products_hp_1_product_link_url_hp', '#'),
(176, 7, '_products_hp_1_product_link_url_hp', 'field_65b5294d47c5f'),
(177, 7, 'products_hp_2_product_image_hp', '44'),
(178, 7, '_products_hp_2_product_image_hp', 'field_65b528c847c5b'),
(179, 7, 'products_hp_2_product_title_hp', 'For Enterprise'),
(180, 7, '_products_hp_2_product_title_hp', 'field_65b528ec47c5c'),
(181, 7, 'products_hp_2_product_description_hp', 'Transform your workforce to build digital trust and cybersecurity resilience.'),
(182, 7, '_products_hp_2_product_description_hp', 'field_65b5290347c5d'),
(183, 7, 'products_hp_2_product_link_text_hp', 'Know More'),
(184, 7, '_products_hp_2_product_link_text_hp', 'field_65b5293c47c5e'),
(185, 7, 'products_hp_2_product_link_url_hp', '#'),
(186, 7, '_products_hp_2_product_link_url_hp', 'field_65b5294d47c5f'),
(187, 41, 'banner_text_home', 'EMPOWER. PROTECT. LEAD.'),
(188, 41, '_banner_text_home', 'field_65b527b041368'),
(189, 41, 'banner_content_homepage', 'Delivering immersive, hands-on cybersecurity training to reskill talent pools and to help individuals transform their careers.'),
(190, 41, '_banner_content_homepage', 'field_65b527cc41369'),
(191, 41, 'link_text_hp', 'Explore Courses'),
(192, 41, '_link_text_hp', 'field_65b527ee4136a'),
(193, 41, 'url_link_hp', '#'),
(194, 41, '_url_link_hp', 'field_65b528064136b'),
(195, 41, 'products_hp', '3'),
(196, 41, '_products_hp', 'field_65b528af47c5a'),
(197, 41, 'banner_image_hp', '40'),
(198, 41, '_banner_image_hp', 'field_65b52addb8212'),
(199, 41, 'products_hp_0_product_image_hp', '42'),
(200, 41, '_products_hp_0_product_image_hp', 'field_65b528c847c5b'),
(201, 41, 'products_hp_0_product_title_hp', 'For Individuals'),
(202, 41, '_products_hp_0_product_title_hp', 'field_65b528ec47c5c'),
(203, 41, 'products_hp_0_product_description_hp', 'Make your career goals a reality. Become a cybersecurity professional.'),
(204, 41, '_products_hp_0_product_description_hp', 'field_65b5290347c5d'),
(205, 41, 'products_hp_0_product_link_text_hp', 'Know More'),
(206, 41, '_products_hp_0_product_link_text_hp', 'field_65b5293c47c5e'),
(207, 41, 'products_hp_0_product_link_url_hp', '#'),
(208, 41, '_products_hp_0_product_link_url_hp', 'field_65b5294d47c5f'),
(209, 41, 'products_hp_1_product_image_hp', '43'),
(210, 41, '_products_hp_1_product_image_hp', 'field_65b528c847c5b'),
(211, 41, 'products_hp_1_product_title_hp', 'For Universities'),
(212, 41, '_products_hp_1_product_title_hp', 'field_65b528ec47c5c'),
(213, 41, 'products_hp_1_product_description_hp', 'Level up your offerings with holistic, hands-on cybersecurity education.'),
(214, 41, '_products_hp_1_product_description_hp', 'field_65b5290347c5d'),
(215, 41, 'products_hp_1_product_link_text_hp', 'Know More'),
(216, 41, '_products_hp_1_product_link_text_hp', 'field_65b5293c47c5e'),
(217, 41, 'products_hp_1_product_link_url_hp', '#'),
(218, 41, '_products_hp_1_product_link_url_hp', 'field_65b5294d47c5f'),
(219, 41, 'products_hp_2_product_image_hp', '44'),
(220, 41, '_products_hp_2_product_image_hp', 'field_65b528c847c5b'),
(221, 41, 'products_hp_2_product_title_hp', 'For Enterprise'),
(222, 41, '_products_hp_2_product_title_hp', 'field_65b528ec47c5c'),
(223, 41, 'products_hp_2_product_description_hp', 'Transform your workforce to build digital trust and cybersecurity resilience.'),
(224, 41, '_products_hp_2_product_description_hp', 'field_65b5290347c5d'),
(225, 41, 'products_hp_2_product_link_text_hp', 'Know More'),
(226, 41, '_products_hp_2_product_link_text_hp', 'field_65b5293c47c5e'),
(227, 41, 'products_hp_2_product_link_url_hp', '#'),
(228, 41, '_products_hp_2_product_link_url_hp', 'field_65b5294d47c5f'),
(229, 45, 'banner_text_home', 'EMPOWER. PROTECT. LEAD.'),
(230, 45, '_banner_text_home', 'field_65b527b041368'),
(231, 45, 'banner_content_homepage', 'Delivering immersive, hands-on cybersecurity training to reskill talent pools and to help individuals transform their careers.'),
(232, 45, '_banner_content_homepage', 'field_65b527cc41369'),
(233, 45, 'link_text_hp', 'Explore Courses'),
(234, 45, '_link_text_hp', 'field_65b527ee4136a'),
(235, 45, 'url_link_hp', '#'),
(236, 45, '_url_link_hp', 'field_65b528064136b'),
(237, 45, 'products_hp', '3'),
(238, 45, '_products_hp', 'field_65b528af47c5a'),
(239, 45, 'banner_image_hp', '40'),
(240, 45, '_banner_image_hp', 'field_65b52addb8212'),
(241, 45, 'products_hp_0_product_image_hp', '42'),
(242, 45, '_products_hp_0_product_image_hp', 'field_65b528c847c5b'),
(243, 45, 'products_hp_0_product_title_hp', 'For Individuals'),
(244, 45, '_products_hp_0_product_title_hp', 'field_65b528ec47c5c'),
(245, 45, 'products_hp_0_product_description_hp', 'Make your career goals a reality. Become a cybersecurity professional.'),
(246, 45, '_products_hp_0_product_description_hp', 'field_65b5290347c5d'),
(247, 45, 'products_hp_0_product_link_text_hp', 'Know More'),
(248, 45, '_products_hp_0_product_link_text_hp', 'field_65b5293c47c5e'),
(249, 45, 'products_hp_0_product_link_url_hp', '#'),
(250, 45, '_products_hp_0_product_link_url_hp', 'field_65b5294d47c5f'),
(251, 45, 'products_hp_1_product_image_hp', '43'),
(252, 45, '_products_hp_1_product_image_hp', 'field_65b528c847c5b'),
(253, 45, 'products_hp_1_product_title_hp', 'For Universities'),
(254, 45, '_products_hp_1_product_title_hp', 'field_65b528ec47c5c'),
(255, 45, 'products_hp_1_product_description_hp', 'Level up your offerings with holistic, hands-on cybersecurity education.'),
(256, 45, '_products_hp_1_product_description_hp', 'field_65b5290347c5d'),
(257, 45, 'products_hp_1_product_link_text_hp', 'Know More'),
(258, 45, '_products_hp_1_product_link_text_hp', 'field_65b5293c47c5e'),
(259, 45, 'products_hp_1_product_link_url_hp', '#'),
(260, 45, '_products_hp_1_product_link_url_hp', 'field_65b5294d47c5f'),
(261, 45, 'products_hp_2_product_image_hp', '44'),
(262, 45, '_products_hp_2_product_image_hp', 'field_65b528c847c5b'),
(263, 45, 'products_hp_2_product_title_hp', 'For Enterprise'),
(264, 45, '_products_hp_2_product_title_hp', 'field_65b528ec47c5c'),
(265, 45, 'products_hp_2_product_description_hp', 'Transform your workforce to build digital trust and cybersecurity resilience.'),
(266, 45, '_products_hp_2_product_description_hp', 'field_65b5290347c5d'),
(267, 45, 'products_hp_2_product_link_text_hp', 'Know More'),
(268, 45, '_products_hp_2_product_link_text_hp', 'field_65b5293c47c5e'),
(269, 45, 'products_hp_2_product_link_url_hp', '#'),
(270, 45, '_products_hp_2_product_link_url_hp', 'field_65b5294d47c5f'),
(271, 52, '_wp_attached_file', '2024/01/pie1.png'),
(272, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:16:\"2024/01/pie1.png\";s:8:\"filesize\";i:33840;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 53, '_wp_attached_file', '2024/01/pie2.png'),
(274, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:16:\"2024/01/pie2.png\";s:8:\"filesize\";i:34290;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 54, '_wp_attached_file', '2024/01/pie3.png'),
(276, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:16:\"2024/01/pie3.png\";s:8:\"filesize\";i:34721;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(277, 7, 'heading_editorial_hp', 'Creating a Safer Digital World through'),
(278, 7, '_heading_editorial_hp', 'field_65b52c5935fc7'),
(279, 7, 'sub_heading_editorial_hp', 'Cybersecurity Training'),
(280, 7, '_sub_heading_editorial_hp', 'field_65b52c7235fc8'),
(281, 7, 'client_editorial_0_client_description_hp', 'Unfilled Cybersecurity Jobs in the India.'),
(282, 7, '_client_editorial_0_client_description_hp', 'field_65b52dbb35fca'),
(283, 7, 'client_editorial_0_client_product_image', '52'),
(284, 7, '_client_editorial_0_client_product_image', 'field_65b52ddc35fcb'),
(285, 7, 'client_editorial_1_client_description_hp', 'Of Students Want Skills They’ll Use in the Working World'),
(286, 7, '_client_editorial_1_client_description_hp', 'field_65b52dbb35fca'),
(287, 7, 'client_editorial_1_client_product_image', '53'),
(288, 7, '_client_editorial_1_client_product_image', 'field_65b52ddc35fcb'),
(289, 7, 'client_editorial_2_client_description_hp', 'Of Companies Are Investing in Learning and Training on the Job'),
(290, 7, '_client_editorial_2_client_description_hp', 'field_65b52dbb35fca'),
(291, 7, 'client_editorial_2_client_product_image', '54'),
(292, 7, '_client_editorial_2_client_product_image', 'field_65b52ddc35fcb'),
(293, 7, 'client_editorial', '3'),
(294, 7, '_client_editorial', 'field_65b52c9635fc9'),
(295, 45, 'heading_editorial_hp', 'Creating a Safer Digital World through'),
(296, 45, '_heading_editorial_hp', 'field_65b52c5935fc7'),
(297, 45, 'sub_heading_editorial_hp', 'Cybersecurity Training'),
(298, 45, '_sub_heading_editorial_hp', 'field_65b52c7235fc8'),
(299, 45, 'client_editorial_0_client_description_hp', 'Unfilled Cybersecurity Jobs in the India.'),
(300, 45, '_client_editorial_0_client_description_hp', 'field_65b52dbb35fca'),
(301, 45, 'client_editorial_0_client_product_image', '52'),
(302, 45, '_client_editorial_0_client_product_image', 'field_65b52ddc35fcb'),
(303, 45, 'client_editorial_1_client_description_hp', 'Of Students Want Skills They’ll Use in the Working World'),
(304, 45, '_client_editorial_1_client_description_hp', 'field_65b52dbb35fca'),
(305, 45, 'client_editorial_1_client_product_image', '53'),
(306, 45, '_client_editorial_1_client_product_image', 'field_65b52ddc35fcb'),
(307, 45, 'client_editorial_2_client_description_hp', 'Of Companies Are Investing in Learning and Training on the Job'),
(308, 45, '_client_editorial_2_client_description_hp', 'field_65b52dbb35fca'),
(309, 45, 'client_editorial_2_client_product_image', '54'),
(310, 45, '_client_editorial_2_client_product_image', 'field_65b52ddc35fcb'),
(311, 45, 'client_editorial', '3'),
(312, 45, '_client_editorial', 'field_65b52c9635fc9'),
(313, 60, '_wp_attached_file', '2024/01/leader.png'),
(314, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:792;s:6:\"height\";i:490;s:4:\"file\";s:18:\"2024/01/leader.png\";s:8:\"filesize\";i:668817;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 7, 'heading_editoral_2', 'The <span class=\"yellow-text\"> Global Leader</span> In Cybersecurity Training &amp; Awareness'),
(316, 7, '_heading_editoral_2', 'field_65b52ec94ba14'),
(317, 7, 'editorial_description_2', '<p class=\"lead\">Cybersecurity is about more than digital safety—it’s a path to empowering individuals to transform their careers, and for organizations to unlock growth and opportunity while building a resilient digital future.</p>\r\n<p class=\"lead\">Whether you want to start a new career in tech, offer hands-on bootcamps to your students, or keep your workforce secure online, Kyureeus offers cybersecurity training programs tailored to your needs</p>\r\n <p class=\"lead\">Developed by the world’s leading cybersecurity experts, our wide range of accelerated training solutions span from entry-level to advanced. Thanks to our learn-by-doing methodology, learners rapidly acquire and retain the cybersecurity skills that will keep them, and your organization, thriving.</p>\r\n <p class=\"lead\">When it comes to cybersecurity training, you can trust Kyureeus to deliver the hands-on skills you need to succeed in the rapidly-changing world of technology.&nbsp;</p>'),
(318, 7, '_editorial_description_2', 'field_65b52ee64ba15'),
(319, 7, 'editorial_image_2', '60'),
(320, 7, '_editorial_image_2', 'field_65b52f104ba16'),
(321, 55, 'banner_text_home', 'EMPOWER. PROTECT. LEAD.'),
(322, 55, '_banner_text_home', 'field_65b527b041368'),
(323, 55, 'banner_content_homepage', 'Delivering immersive, hands-on cybersecurity training to reskill talent pools and to help individuals transform their careers.'),
(324, 55, '_banner_content_homepage', 'field_65b527cc41369'),
(325, 55, 'link_text_hp', 'Explore Courses'),
(326, 55, '_link_text_hp', 'field_65b527ee4136a'),
(327, 55, 'url_link_hp', '#'),
(328, 55, '_url_link_hp', 'field_65b528064136b'),
(329, 55, 'products_hp', '3'),
(330, 55, '_products_hp', 'field_65b528af47c5a'),
(331, 55, 'banner_image_hp', '40'),
(332, 55, '_banner_image_hp', 'field_65b52addb8212'),
(333, 55, 'products_hp_0_product_image_hp', '42'),
(334, 55, '_products_hp_0_product_image_hp', 'field_65b528c847c5b'),
(335, 55, 'products_hp_0_product_title_hp', 'For Individuals'),
(336, 55, '_products_hp_0_product_title_hp', 'field_65b528ec47c5c'),
(337, 55, 'products_hp_0_product_description_hp', 'Make your career goals a reality. Become a cybersecurity professional.'),
(338, 55, '_products_hp_0_product_description_hp', 'field_65b5290347c5d'),
(339, 55, 'products_hp_0_product_link_text_hp', 'Know More'),
(340, 55, '_products_hp_0_product_link_text_hp', 'field_65b5293c47c5e'),
(341, 55, 'products_hp_0_product_link_url_hp', '#'),
(342, 55, '_products_hp_0_product_link_url_hp', 'field_65b5294d47c5f'),
(343, 55, 'products_hp_1_product_image_hp', '43'),
(344, 55, '_products_hp_1_product_image_hp', 'field_65b528c847c5b'),
(345, 55, 'products_hp_1_product_title_hp', 'For Universities'),
(346, 55, '_products_hp_1_product_title_hp', 'field_65b528ec47c5c'),
(347, 55, 'products_hp_1_product_description_hp', 'Level up your offerings with holistic, hands-on cybersecurity education.'),
(348, 55, '_products_hp_1_product_description_hp', 'field_65b5290347c5d'),
(349, 55, 'products_hp_1_product_link_text_hp', 'Know More'),
(350, 55, '_products_hp_1_product_link_text_hp', 'field_65b5293c47c5e'),
(351, 55, 'products_hp_1_product_link_url_hp', '#'),
(352, 55, '_products_hp_1_product_link_url_hp', 'field_65b5294d47c5f'),
(353, 55, 'products_hp_2_product_image_hp', '44'),
(354, 55, '_products_hp_2_product_image_hp', 'field_65b528c847c5b'),
(355, 55, 'products_hp_2_product_title_hp', 'For Enterprise'),
(356, 55, '_products_hp_2_product_title_hp', 'field_65b528ec47c5c'),
(357, 55, 'products_hp_2_product_description_hp', 'Transform your workforce to build digital trust and cybersecurity resilience.'),
(358, 55, '_products_hp_2_product_description_hp', 'field_65b5290347c5d'),
(359, 55, 'products_hp_2_product_link_text_hp', 'Know More'),
(360, 55, '_products_hp_2_product_link_text_hp', 'field_65b5293c47c5e'),
(361, 55, 'products_hp_2_product_link_url_hp', '#'),
(362, 55, '_products_hp_2_product_link_url_hp', 'field_65b5294d47c5f'),
(363, 55, 'heading_editorial_hp', 'Creating a Safer Digital World through'),
(364, 55, '_heading_editorial_hp', 'field_65b52c5935fc7'),
(365, 55, 'sub_heading_editorial_hp', 'Cybersecurity Training'),
(366, 55, '_sub_heading_editorial_hp', 'field_65b52c7235fc8'),
(367, 55, 'client_editorial_0_client_description_hp', 'Unfilled Cybersecurity Jobs in the India.'),
(368, 55, '_client_editorial_0_client_description_hp', 'field_65b52dbb35fca'),
(369, 55, 'client_editorial_0_client_product_image', '52'),
(370, 55, '_client_editorial_0_client_product_image', 'field_65b52ddc35fcb'),
(371, 55, 'client_editorial_1_client_description_hp', 'Of Students Want Skills They’ll Use in the Working World'),
(372, 55, '_client_editorial_1_client_description_hp', 'field_65b52dbb35fca'),
(373, 55, 'client_editorial_1_client_product_image', '53'),
(374, 55, '_client_editorial_1_client_product_image', 'field_65b52ddc35fcb'),
(375, 55, 'client_editorial_2_client_description_hp', 'Of Companies Are Investing in Learning and Training on the Job'),
(376, 55, '_client_editorial_2_client_description_hp', 'field_65b52dbb35fca'),
(377, 55, 'client_editorial_2_client_product_image', '54'),
(378, 55, '_client_editorial_2_client_product_image', 'field_65b52ddc35fcb'),
(379, 55, 'client_editorial', '3'),
(380, 55, '_client_editorial', 'field_65b52c9635fc9'),
(381, 55, 'heading_editoral_2', 'The <span class=\"yellow-text\"> Global Leader</span> In Cybersecurity Training &amp; Awareness'),
(382, 55, '_heading_editoral_2', 'field_65b52ec94ba14'),
(383, 55, 'editorial_description_2', '<p class=\"lead\">Cybersecurity is about more than digital safety—it’s a path to empowering individuals to transform their careers, and for organizations to unlock growth and opportunity while building a resilient digital future.</p>\r\n<p class=\"lead\">Whether you want to start a new career in tech, offer hands-on bootcamps to your students, or keep your workforce secure online, Kyureeus offers cybersecurity training programs tailored to your needs</p>\r\n <p class=\"lead\">Developed by the world’s leading cybersecurity experts, our wide range of accelerated training solutions span from entry-level to advanced. Thanks to our learn-by-doing methodology, learners rapidly acquire and retain the cybersecurity skills that will keep them, and your organization, thriving.</p>\r\n <p class=\"lead\">When it comes to cybersecurity training, you can trust Kyureeus to deliver the hands-on skills you need to succeed in the rapidly-changing world of technology.&nbsp;</p>'),
(384, 55, '_editorial_description_2', 'field_65b52ee64ba15'),
(385, 55, 'editorial_image_2', '60'),
(386, 55, '_editorial_image_2', 'field_65b52f104ba16'),
(387, 66, '_wp_attached_file', '2024/01/Logos-01.png'),
(388, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:561;s:6:\"height\";i:196;s:4:\"file\";s:20:\"2024/01/Logos-01.png\";s:8:\"filesize\";i:63087;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 7, 'title_gp', 'Global Partnerships. Worldwide Impact.​'),
(390, 7, '_title_gp', 'field_65b52ff3a7bf0'),
(391, 7, 'logos_gp_0_images', '66'),
(392, 7, '_logos_gp_0_images', 'field_65b5301ba7bf2'),
(393, 7, 'logos_gp_1_images', '66'),
(394, 7, '_logos_gp_1_images', 'field_65b5301ba7bf2'),
(395, 7, 'logos_gp_2_images', '66'),
(396, 7, '_logos_gp_2_images', 'field_65b5301ba7bf2'),
(397, 7, 'logos_gp_3_images', '66'),
(398, 7, '_logos_gp_3_images', 'field_65b5301ba7bf2'),
(399, 7, 'logos_gp_4_images', '66'),
(400, 7, '_logos_gp_4_images', 'field_65b5301ba7bf2'),
(401, 7, 'logos_gp', '5'),
(402, 7, '_logos_gp', 'field_65b5300aa7bf1'),
(403, 61, 'banner_text_home', 'EMPOWER. PROTECT. LEAD.'),
(404, 61, '_banner_text_home', 'field_65b527b041368'),
(405, 61, 'banner_content_homepage', 'Delivering immersive, hands-on cybersecurity training to reskill talent pools and to help individuals transform their careers.'),
(406, 61, '_banner_content_homepage', 'field_65b527cc41369'),
(407, 61, 'link_text_hp', 'Explore Courses'),
(408, 61, '_link_text_hp', 'field_65b527ee4136a'),
(409, 61, 'url_link_hp', '#'),
(410, 61, '_url_link_hp', 'field_65b528064136b'),
(411, 61, 'products_hp', '3'),
(412, 61, '_products_hp', 'field_65b528af47c5a'),
(413, 61, 'banner_image_hp', '40'),
(414, 61, '_banner_image_hp', 'field_65b52addb8212'),
(415, 61, 'products_hp_0_product_image_hp', '42'),
(416, 61, '_products_hp_0_product_image_hp', 'field_65b528c847c5b'),
(417, 61, 'products_hp_0_product_title_hp', 'For Individuals'),
(418, 61, '_products_hp_0_product_title_hp', 'field_65b528ec47c5c'),
(419, 61, 'products_hp_0_product_description_hp', 'Make your career goals a reality. Become a cybersecurity professional.'),
(420, 61, '_products_hp_0_product_description_hp', 'field_65b5290347c5d'),
(421, 61, 'products_hp_0_product_link_text_hp', 'Know More'),
(422, 61, '_products_hp_0_product_link_text_hp', 'field_65b5293c47c5e'),
(423, 61, 'products_hp_0_product_link_url_hp', '#'),
(424, 61, '_products_hp_0_product_link_url_hp', 'field_65b5294d47c5f'),
(425, 61, 'products_hp_1_product_image_hp', '43'),
(426, 61, '_products_hp_1_product_image_hp', 'field_65b528c847c5b'),
(427, 61, 'products_hp_1_product_title_hp', 'For Universities'),
(428, 61, '_products_hp_1_product_title_hp', 'field_65b528ec47c5c'),
(429, 61, 'products_hp_1_product_description_hp', 'Level up your offerings with holistic, hands-on cybersecurity education.'),
(430, 61, '_products_hp_1_product_description_hp', 'field_65b5290347c5d'),
(431, 61, 'products_hp_1_product_link_text_hp', 'Know More'),
(432, 61, '_products_hp_1_product_link_text_hp', 'field_65b5293c47c5e'),
(433, 61, 'products_hp_1_product_link_url_hp', '#'),
(434, 61, '_products_hp_1_product_link_url_hp', 'field_65b5294d47c5f'),
(435, 61, 'products_hp_2_product_image_hp', '44'),
(436, 61, '_products_hp_2_product_image_hp', 'field_65b528c847c5b'),
(437, 61, 'products_hp_2_product_title_hp', 'For Enterprise'),
(438, 61, '_products_hp_2_product_title_hp', 'field_65b528ec47c5c'),
(439, 61, 'products_hp_2_product_description_hp', 'Transform your workforce to build digital trust and cybersecurity resilience.'),
(440, 61, '_products_hp_2_product_description_hp', 'field_65b5290347c5d'),
(441, 61, 'products_hp_2_product_link_text_hp', 'Know More'),
(442, 61, '_products_hp_2_product_link_text_hp', 'field_65b5293c47c5e'),
(443, 61, 'products_hp_2_product_link_url_hp', '#'),
(444, 61, '_products_hp_2_product_link_url_hp', 'field_65b5294d47c5f'),
(445, 61, 'heading_editorial_hp', 'Creating a Safer Digital World through'),
(446, 61, '_heading_editorial_hp', 'field_65b52c5935fc7'),
(447, 61, 'sub_heading_editorial_hp', 'Cybersecurity Training'),
(448, 61, '_sub_heading_editorial_hp', 'field_65b52c7235fc8'),
(449, 61, 'client_editorial_0_client_description_hp', 'Unfilled Cybersecurity Jobs in the India.'),
(450, 61, '_client_editorial_0_client_description_hp', 'field_65b52dbb35fca'),
(451, 61, 'client_editorial_0_client_product_image', '52'),
(452, 61, '_client_editorial_0_client_product_image', 'field_65b52ddc35fcb'),
(453, 61, 'client_editorial_1_client_description_hp', 'Of Students Want Skills They’ll Use in the Working World'),
(454, 61, '_client_editorial_1_client_description_hp', 'field_65b52dbb35fca'),
(455, 61, 'client_editorial_1_client_product_image', '53'),
(456, 61, '_client_editorial_1_client_product_image', 'field_65b52ddc35fcb'),
(457, 61, 'client_editorial_2_client_description_hp', 'Of Companies Are Investing in Learning and Training on the Job'),
(458, 61, '_client_editorial_2_client_description_hp', 'field_65b52dbb35fca'),
(459, 61, 'client_editorial_2_client_product_image', '54'),
(460, 61, '_client_editorial_2_client_product_image', 'field_65b52ddc35fcb'),
(461, 61, 'client_editorial', '3'),
(462, 61, '_client_editorial', 'field_65b52c9635fc9'),
(463, 61, 'heading_editoral_2', 'The <span class=\"yellow-text\"> Global Leader</span> In Cybersecurity Training &amp; Awareness'),
(464, 61, '_heading_editoral_2', 'field_65b52ec94ba14'),
(465, 61, 'editorial_description_2', '<p class=\"lead\">Cybersecurity is about more than digital safety—it’s a path to empowering individuals to transform their careers, and for organizations to unlock growth and opportunity while building a resilient digital future.</p>\r\n<p class=\"lead\">Whether you want to start a new career in tech, offer hands-on bootcamps to your students, or keep your workforce secure online, Kyureeus offers cybersecurity training programs tailored to your needs</p>\r\n <p class=\"lead\">Developed by the world’s leading cybersecurity experts, our wide range of accelerated training solutions span from entry-level to advanced. Thanks to our learn-by-doing methodology, learners rapidly acquire and retain the cybersecurity skills that will keep them, and your organization, thriving.</p>\r\n <p class=\"lead\">When it comes to cybersecurity training, you can trust Kyureeus to deliver the hands-on skills you need to succeed in the rapidly-changing world of technology.&nbsp;</p>'),
(466, 61, '_editorial_description_2', 'field_65b52ee64ba15'),
(467, 61, 'editorial_image_2', '60'),
(468, 61, '_editorial_image_2', 'field_65b52f104ba16'),
(469, 61, 'title_gp', 'Global Partnerships. Worldwide Impact.​'),
(470, 61, '_title_gp', 'field_65b52ff3a7bf0'),
(471, 61, 'logos_gp_0_images', '66'),
(472, 61, '_logos_gp_0_images', 'field_65b5301ba7bf2'),
(473, 61, 'logos_gp_1_images', '66'),
(474, 61, '_logos_gp_1_images', 'field_65b5301ba7bf2'),
(475, 61, 'logos_gp_2_images', '66'),
(476, 61, '_logos_gp_2_images', 'field_65b5301ba7bf2'),
(477, 61, 'logos_gp_3_images', '66'),
(478, 61, '_logos_gp_3_images', 'field_65b5301ba7bf2'),
(479, 61, 'logos_gp_4_images', '66'),
(480, 61, '_logos_gp_4_images', 'field_65b5301ba7bf2'),
(481, 61, 'logos_gp', '5'),
(482, 61, '_logos_gp', 'field_65b5300aa7bf1'),
(485, 69, '_edit_last', '1'),
(486, 69, '_edit_lock', '1706377193:1'),
(487, 72, '_edit_last', '1'),
(488, 72, '_edit_lock', '1706377195:1'),
(489, 73, '_wp_attached_file', '2024/01/testi1.png'),
(490, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:331;s:6:\"height\";i:331;s:4:\"file\";s:18:\"2024/01/testi1.png\";s:8:\"filesize\";i:153438;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(491, 72, '_thumbnail_id', '73'),
(492, 72, 'name_testimonials', 'Sarah Thompson'),
(493, 72, '_name_testimonials', 'field_65b5398d67780'),
(494, 72, 'designation_testimonials', 'Cybersecurity Professional'),
(495, 72, '_designation_testimonials', 'field_65b539a067781'),
(496, 74, '_edit_last', '1'),
(497, 74, '_edit_lock', '1706375775:1'),
(498, 74, '_thumbnail_id', '73'),
(499, 74, 'name_testimonials', 'Sarah Thompson'),
(500, 74, '_name_testimonials', 'field_65b5398d67780'),
(501, 74, 'designation_testimonials', 'Cybersecurity Professional'),
(502, 74, '_designation_testimonials', 'field_65b539a067781'),
(503, 75, '_edit_last', '1'),
(504, 75, '_edit_lock', '1706376186:1'),
(505, 75, '_thumbnail_id', '73'),
(506, 75, 'name_testimonials', 'Sarah Thompson'),
(507, 75, '_name_testimonials', 'field_65b5398d67780'),
(508, 75, 'designation_testimonials', 'Cybersecurity Professional'),
(509, 75, '_designation_testimonials', 'field_65b539a067781'),
(512, 78, 'forminator_form_meta', 'a:6:{s:6:\"fields\";a:6:{i:0;a:12:{s:2:\"id\";s:7:\"email-1\";s:10:\"element_id\";s:7:\"email-1\";s:7:\"form_id\";s:17:\"wrapper-4060-9956\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:7:\"options\";a:0:{}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-4060-9956\";s:10:\"validation\";s:0:\"\";s:11:\"placeholder\";s:17:\"E.g. john@doe.com\";s:11:\"field_label\";s:13:\"Email Address\";}i:1;a:29:{s:2:\"id\";s:6:\"name-1\";s:10:\"element_id\";s:6:\"name-1\";s:7:\"form_id\";s:17:\"wrapper-3997-1119\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:4:\"name\";s:7:\"options\";a:0:{}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-3997-1119\";s:11:\"field_label\";s:4:\"Name\";s:11:\"placeholder\";s:13:\"E.g. John Doe\";s:12:\"prefix_label\";s:6:\"Prefix\";s:11:\"fname_label\";s:10:\"First Name\";s:17:\"fname_placeholder\";s:9:\"E.g. John\";s:11:\"mname_label\";s:11:\"Middle Name\";s:17:\"mname_placeholder\";s:10:\"E.g. Smith\";s:11:\"lname_label\";s:9:\"Last Name\";s:17:\"lname_placeholder\";s:8:\"E.g. Doe\";s:6:\"prefix\";s:0:\"\";s:5:\"fname\";s:4:\"true\";s:5:\"mname\";s:0:\"\";s:5:\"lname\";s:4:\"true\";s:16:\"required_message\";s:17:\"Name is required.\";s:23:\"prefix_required_message\";s:19:\"Prefix is required.\";s:22:\"fname_required_message\";s:23:\"First Name is required.\";s:22:\"mname_required_message\";s:24:\"Middle Name is required.\";s:22:\"lname_required_message\";s:22:\"Last Name is required.\";s:14:\"layout_columns\";s:1:\"2\";s:13:\"multiple_name\";s:4:\"true\";}i:2;a:13:{s:2:\"id\";s:6:\"text-1\";s:10:\"element_id\";s:6:\"text-1\";s:7:\"form_id\";s:17:\"wrapper-5966-2749\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:7:\"options\";a:0:{}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-5966-2749\";s:10:\"input_type\";s:4:\"line\";s:10:\"limit_type\";s:10:\"characters\";s:11:\"field_label\";s:9:\"Job Title\";s:11:\"placeholder\";s:9:\"Job Title\";}i:3;a:15:{s:2:\"id\";s:7:\"phone-1\";s:10:\"element_id\";s:7:\"phone-1\";s:7:\"form_id\";s:17:\"wrapper-8410-6745\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:5:\"phone\";s:7:\"options\";a:0:{}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-8410-6745\";s:8:\"required\";s:0:\"\";s:5:\"limit\";s:2:\"10\";s:10:\"limit_type\";s:10:\"characters\";s:10:\"validation\";s:4:\"none\";s:11:\"field_label\";s:8:\"Phone No\";s:11:\"placeholder\";s:20:\"E.g. +1 300 400 5000\";}i:4;a:15:{s:2:\"id\";s:10:\"checkbox-1\";s:10:\"element_id\";s:10:\"checkbox-1\";s:7:\"form_id\";s:17:\"wrapper-5690-1268\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:7:\"options\";a:1:{i:0;a:4:{s:5:\"label\";s:59:\"Send Me Information About Company Updates &amp; Information\";s:5:\"value\";s:3:\"one\";s:3:\"key\";s:9:\"1335-6917\";s:5:\"error\";s:0:\"\";}}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-5690-1268\";s:15:\"hidden_behavior\";s:4:\"zero\";s:10:\"value_type\";s:8:\"checkbox\";s:11:\"field_label\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:19:\"options_bulk_editor\";s:66:\"Send Me Information About Company Updates &amp; Information;one; 0\";s:11:\"description\";s:0:\"\";}i:5;a:14:{s:2:\"id\";s:10:\"checkbox-2\";s:10:\"element_id\";s:10:\"checkbox-2\";s:7:\"form_id\";s:17:\"wrapper-2824-6164\";s:12:\"parent_group\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:7:\"options\";a:1:{i:0;a:4:{s:5:\"label\";s:343:\"Send Me Info(Required) - I agree to allow the Kyureeus Group to store and process the information I provide in order to contact me. You may opt-out of communications at any time. For information about our privacy practices and commitment to protecting your privacy, check out our Privacy Policy.*rmation About Company Updates &amp; Information\";s:5:\"value\";s:3:\"one\";s:3:\"key\";s:9:\"1335-6917\";s:5:\"error\";s:0:\"\";}}s:4:\"cols\";s:2:\"12\";s:10:\"conditions\";a:0:{}s:10:\"wrapper_id\";s:17:\"wrapper-2824-6164\";s:15:\"hidden_behavior\";s:4:\"zero\";s:10:\"value_type\";s:8:\"checkbox\";s:11:\"field_label\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:19:\"options_bulk_editor\";s:350:\"Send Me Info(Required) - I agree to allow the Kyureeus Group to store and process the information I provide in order to contact me. You may opt-out of communications at any time. For information about our privacy practices and commitment to protecting your privacy, check out our Privacy Policy.*rmation About Company Updates &amp; Information;one; 0\";}}s:8:\"settings\";a:86:{s:17:\"pagination-header\";s:3:\"nav\";s:14:\"paginationData\";a:2:{s:24:\"pagination-header-design\";s:4:\"show\";s:17:\"pagination-header\";s:3:\"nav\";}s:8:\"formName\";s:27:\"Step Into a Brighter Future\";s:7:\"version\";s:6:\"1.28.1\";s:17:\"form-border-style\";s:4:\"none\";s:12:\"form-padding\";s:0:\"\";s:11:\"form-border\";s:0:\"\";s:12:\"fields-style\";s:4:\"open\";s:16:\"field-image-size\";s:6:\"custom\";s:10:\"validation\";s:9:\"on_submit\";s:18:\"akismet-protection\";s:1:\"1\";s:10:\"form-style\";s:7:\"default\";s:11:\"enable-ajax\";s:4:\"true\";s:9:\"autoclose\";s:4:\"true\";s:20:\"submission-indicator\";s:4:\"show\";s:15:\"indicator-label\";s:13:\"Submitting...\";s:9:\"form-type\";s:7:\"default\";s:20:\"submission-behaviour\";s:18:\"behaviour-thankyou\";s:16:\"thankyou-message\";s:57:\"Thank you for contacting us, we will be in touch shortly.\";s:10:\"submitData\";a:2:{s:18:\"custom-submit-text\";s:6:\"Submit\";s:27:\"custom-invalid-form-message\";s:53:\"Error: Your form is not valid, please fix the errors!\";}s:17:\"validation-inline\";s:1:\"1\";s:11:\"form-expire\";s:9:\"no_expire\";s:16:\"form-padding-top\";s:1:\"0\";s:18:\"form-padding-right\";s:1:\"0\";s:19:\"form-padding-bottom\";s:1:\"0\";s:17:\"form-padding-left\";s:1:\"0\";s:17:\"form-border-width\";s:1:\"0\";s:18:\"form-border-radius\";s:1:\"0\";s:23:\"cform-label-font-family\";s:6:\"Roboto\";s:25:\"cform-label-custom-family\";s:0:\"\";s:21:\"cform-label-font-size\";s:2:\"12\";s:23:\"cform-label-font-weight\";s:4:\"bold\";s:23:\"cform-title-font-family\";s:6:\"Roboto\";s:25:\"cform-title-custom-family\";s:0:\"\";s:21:\"cform-title-font-size\";s:2:\"45\";s:23:\"cform-title-font-weight\";s:6:\"normal\";s:22:\"cform-title-text-align\";s:4:\"left\";s:26:\"cform-subtitle-font-family\";s:6:\"Roboto\";s:26:\"cform-subtitle-custom-font\";s:0:\"\";s:24:\"cform-subtitle-font-size\";s:2:\"18\";s:26:\"cform-subtitle-font-weight\";s:6:\"normal\";s:25:\"cform-subtitle-text-align\";s:4:\"left\";s:23:\"cform-input-font-family\";s:6:\"Roboto\";s:23:\"cform-input-custom-font\";s:0:\"\";s:21:\"cform-input-font-size\";s:2:\"16\";s:23:\"cform-input-font-weight\";s:6:\"normal\";s:23:\"cform-radio-font-family\";s:6:\"Roboto\";s:23:\"cform-radio-custom-font\";s:0:\"\";s:21:\"cform-radio-font-size\";s:2:\"14\";s:23:\"cform-radio-font-weight\";s:6:\"normal\";s:24:\"cform-select-font-family\";s:6:\"Roboto\";s:26:\"cform-select-custom-family\";s:0:\"\";s:22:\"cform-select-font-size\";s:2:\"16\";s:24:\"cform-select-font-weight\";s:6:\"normal\";s:29:\"cform-multiselect-font-family\";s:6:\"Roboto\";s:29:\"cform-multiselect-custom-font\";s:0:\"\";s:27:\"cform-multiselect-font-size\";s:2:\"16\";s:29:\"cform-multiselect-font-weight\";s:6:\"normal\";s:26:\"cform-dropdown-font-family\";s:6:\"Roboto\";s:26:\"cform-dropdown-custom-font\";s:0:\"\";s:24:\"cform-dropdown-font-size\";s:2:\"16\";s:26:\"cform-dropdown-font-weight\";s:6:\"normal\";s:26:\"cform-calendar-font-family\";s:6:\"Roboto\";s:26:\"cform-calendar-custom-font\";s:0:\"\";s:24:\"cform-calendar-font-size\";s:2:\"13\";s:26:\"cform-calendar-font-weight\";s:6:\"normal\";s:24:\"cform-button-font-family\";s:6:\"Roboto\";s:24:\"cform-button-custom-font\";s:0:\"\";s:22:\"cform-button-font-size\";s:2:\"14\";s:24:\"cform-button-font-weight\";s:3:\"500\";s:26:\"cform-timeline-font-family\";s:6:\"Roboto\";s:26:\"cform-timeline-custom-font\";s:0:\"\";s:24:\"cform-timeline-font-size\";s:2:\"12\";s:26:\"cform-timeline-font-weight\";s:6:\"normal\";s:28:\"cform-pagination-font-family\";s:0:\"\";s:28:\"cform-pagination-custom-font\";s:0:\"\";s:26:\"cform-pagination-font-size\";s:2:\"16\";s:28:\"cform-pagination-font-weight\";s:6:\"normal\";s:19:\"payment_require_ssl\";s:0:\"\";s:15:\"submission-file\";s:6:\"delete\";s:7:\"form_id\";s:2:\"78\";s:17:\"store_submissions\";s:1:\"1\";s:9:\"form_name\";s:27:\"Step Into a Brighter Future\";s:11:\"form_status\";s:7:\"publish\";s:18:\"notification_count\";i:1;s:15:\"previous_status\";s:7:\"publish\";}s:9:\"client_id\";N;s:22:\"integration_conditions\";a:0:{}s:9:\"behaviors\";a:1:{i:0;a:10:{s:4:\"slug\";s:18:\"behavior-1234-4567\";s:5:\"label\";s:0:\"\";s:14:\"autoclose-time\";s:1:\"5\";s:9:\"autoclose\";s:4:\"true\";s:6:\"newtab\";s:7:\"sametab\";s:16:\"thankyou-message\";s:57:\"Thank you for contacting us, we will be in touch shortly.\";s:22:\"email-thankyou-message\";s:0:\"\";s:23:\"manual-thankyou-message\";s:0:\"\";s:20:\"submission-behaviour\";s:18:\"behaviour-thankyou\";s:12:\"redirect-url\";s:0:\"\";}}s:13:\"notifications\";a:1:{i:0;a:8:{s:4:\"slug\";s:22:\"notification-1234-4567\";s:5:\"label\";s:11:\"Admin Email\";s:16:\"email-recipients\";s:7:\"default\";s:10:\"recipients\";s:23:\"informtogokul@gmail.com\";s:13:\"email-subject\";s:47:\"New Form Entry #{submission_id} for {form_name}\";s:12:\"email-editor\";s:114:\"You have a new website form submission: <br /> {all_fields} <br />---<br /> This message was sent from {site_url}.\";s:16:\"email-attachment\";s:4:\"true\";s:4:\"type\";s:7:\"default\";}}}'),
(513, 78, '_wp_old_date', '2024-01-28'),
(516, 80, '_form', '<div class=\"row\">\n              <div class=\"col-sm-4 mb-4\">\n                <label for=\"firstName\" class=\"form-label\">Business email*</label>\n               [email* email-300 class:form-control]\n              </div>\n              <div class=\"col-sm-4\">\n                <label for=\"firstName\" class=\"form-label\">First Name*</label>\n                [text* fname class:form-control]\n              </div>\n              <div class=\"col-sm-4\">\n                <label for=\"firstName\" class=\"form-label\">Last Name*</label>\n                 [text* lname class:form-control]\n              </div>\n              <div class=\"col-sm-4\">\n                <label for=\"firstName\" class=\"form-label\">Job Title</label>\n                       [text* jobtitle class:form-control]\n              </div>\n              <div class=\"col-sm-4\">\n                <label for=\"firstName\" class=\"form-label\">Phone Number</label>\n                [tel* tel-196 class:form-control]\n              </div>\n\n              <div class=\"col-md-12 mt-4\">\n                <div>\n                  [checkbox* checkbox-190  use_label_element \"Send Me Information About Company Updates & Information\"]\n                           </div>\n                <div class=\"mt-3\">\n                  [checkbox* checkbox-191  use_label_element \"Send Me Info(Required) - I agree to allow the Kyureeus Group to store and process the information I provide in order to contact me. You may opt-out of communications at any time. For information about our privacy practices and commitment to protecting your privacy, check out our Privacy Policy.*rmation About Company Updates & Information\"]\n                </div>\n              </div>\n              <div class=\"col-md-12\">\n               [submit \"Submit\"]\n              </div>'),
(517, 80, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"Step Into a Brighter Future\";s:6:\"sender\";s:39:\"[_site_title] <informtogokul@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:346:\"Hi Admin,\n\n  You have received new email from Step Into a Brighter Future form.\n\nEmail Address : [email-300]\nFirst Name    : [fname]\nLast Name     : [lname]\nJob Title     : [jobtitle]\nTelphone      : [tel-196]\n[checkbox-190]\n[checkbox-191]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(518, 80, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <informtogokul@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `kyrs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(519, 80, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(520, 80, '_additional_settings', ''),
(521, 80, '_locale', 'en_US'),
(522, 80, '_hash', '6a50f3b9c5c654c6f6fc6c19183d8a7ba10c2745'),
(526, 82, '_form', '<section>\n    <div class=\"container contact-card my-5\">\n        <div class=\"row\">\n            <div class=\"col-md-12\">\n                <h2 class=\"h1\">Contact Us Today</h2>\n            </div>\n        </div>\n        <div class=\"row\">\n            <div class=\"col-md-6\">\n                <div class=\"mb-4\">\n                    <label for=\"firstName\" class=\"form-label\">First Name*</label>\n                    [text* fname class:form-control]\n                </div>\n                <div class=\"mb-4\">\n                    <label for=\"firstName\" class=\"form-label\">Work email*</label>\n                    [email email-534 class:form-control]\n                </div>\n                <div class=\"mb-4 productInfo\">\n                    <p class=\"lead\">Product interested</p>\n                      [checkbox* checkbox-143 use_label_element \"Security Awareness Training\" \"Application Security Training\" \"Cybersecurity Apprenticeship Program\" \"Cybersecurity Bootcamp for Enterprise\" \"Cyber Academy\" \"Pen-Testing Services\" \"Custom-Made Training\" \"Cyber Talent Placement\" \"Red Teaming Services\" \"Education\" \"Last Mile Partnership Program\"]                 \n                </div>\n                <div class=\"mb-4\">\n                    <p class=\"lead\">Send Me More Information About:</p>\n                    <div>\n                           [checkbox* checkbox-146 use_label_element \"Company Updates & Information\"]\n                    </div>\n\n                    <div class=\" mt-3\">\n[checkbox* checkbox-229 use_label_element \"(Required) - I agree to allow the Kyureeus Group to store and process the information I provide in order to contact me. You may opt-out of communications at any time. For information about our privacy practices and commitment to protecting your privacy, check out our Privacy Policy.*\"]\n                    </div>\n\n                   \n                   \n                </div>\n            </div>\n            \n            <div class=\"col-md-6\">\n                <div class=\"mb-4\">\n                    <label for=\"firstName\" class=\"form-label\">Last Name*</label>\n                     [text* lname class:form-control]\n                </div>\n                <div class=\"mb-4\">\n                    <label for=\"firstName\" class=\"form-label\">Job title</label>\n                    [text* jtitle class:form-control]\n                </div>\n                <div class=\"mb-4\">\n                    <label for=\"firstName\" class=\"form-label\">City</label>\n                     [text* city class:form-control]\n                </div>\n                <div class=\"mb-4\">\n                    <label for=\"firstName\" class=\"form-label\">State*</label>\n                   [text* state class:form-control]\n                </div>\n\n                <div class=\"mb-4\">\n                    <label for=\"firstName\" class=\"form-label\">How Can We help you*</label>\n                    <label class=\"text-muted\">Please provide a short description on the services you are interested in...</label>\n                    [textarea* textarea-585 class:form-control]\n                </div>\n                \n            </div>\n        </div>\n        <div class=\"row\">\n            <div class=\"col-md-12\">\n                [submit \"Submit\"]\n            </div>\n        </div>\n    </div>\n  </section>'),
(527, 82, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"Contact US Form - Kyurees\";s:6:\"sender\";s:39:\"[_site_title] <informtogokul@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:587:\"Hi Admin,\n\n Please find the details below :\n<table width=\"100%\">\n<tr>\n<td>First Name</td>\n<td>[fname]</td>\n</tr>\n<tr>\n<td>Last Name</td>\n<td>[lname]</td>\n</tr>\n<tr>\n<td>Job Title</td>\n<td>[jtitle]</td>\n</tr>\n<tr>\n<td>Work Email</td>\n<td>[email-534]</td>\n</tr>\n<tr>\n<td>City</td>\n<td>[city]</td>\n</tr>\n<tr>\n<td>State</td>\n<td>[state]</td>\n</tr>\n<tr>\n<td>How Can we help you</td>\n<td>[textarea-585]</td>\n</tr>\n<tr>\n<td>Product interested</td>\n<td>[checkbox-143]</td>\n</tr>\n</table>\n\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(528, 82, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <informtogokul@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(529, 82, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(530, 82, '_additional_settings', ''),
(531, 82, '_locale', 'en_US'),
(532, 82, '_hash', '0ce360e26275d1899cb43a0cdf39be99ae711a3b'),
(537, 83, '_edit_last', '1'),
(538, 83, '_edit_lock', '1706573564:1'),
(539, 87, '_edit_last', '1'),
(540, 87, '_wp_page_template', 'contact.php'),
(541, 87, '_edit_lock', '1706574340:1'),
(542, 89, '_wp_attached_file', '2024/01/contact-hero.png'),
(543, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:793;s:6:\"height\";i:793;s:4:\"file\";s:24:\"2024/01/contact-hero.png\";s:8:\"filesize\";i:480242;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(544, 87, 'banner_text', 'GET IN TOUCH WITH KYUREEUS'),
(545, 87, '_banner_text', 'field_65b83e4bd2dae'),
(546, 87, 'banner_description', 'kyureeus is here to help you. Please send us a short message and our team will be in touch within 24 hours.'),
(547, 87, '_banner_description', 'field_65b83e65d2daf'),
(548, 87, 'banner_image', '89'),
(549, 87, '_banner_image', 'field_65b83e77d2db0'),
(550, 88, 'banner_text', 'GET IN TOUCH WITH KYUREEUS'),
(551, 88, '_banner_text', 'field_65b83e4bd2dae'),
(552, 88, 'banner_description', 'kyureeus is here to help you. Please send us a short message and our team will be in touch within 24 hours.'),
(553, 88, '_banner_description', 'field_65b83e65d2daf'),
(554, 88, 'banner_image', '89'),
(555, 88, '_banner_image', 'field_65b83e77d2db0'),
(556, 90, 'banner_text', 'GET IN TOUCH WITH KYUREEUS'),
(557, 90, '_banner_text', 'field_65b83e4bd2dae'),
(558, 90, 'banner_description', 'kyureeus is here to help you. Please send us a short message and our team will be in touch within 24 hours.'),
(559, 90, '_banner_description', 'field_65b83e65d2daf'),
(560, 90, 'banner_image', '89'),
(561, 90, '_banner_image', 'field_65b83e77d2db0');

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_posts`
--

CREATE TABLE `kyrs_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_posts`
--

INSERT INTO `kyrs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-01-26 12:48:30', '2024-01-26 12:48:30', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-01-26 12:48:30', '2024-01-26 12:48:30', '', 0, 'http://localhost/kyurees/?p=1', 0, 'post', '', 1),
(2, 1, '2024-01-26 12:48:30', '2024-01-26 12:48:30', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/kyurees/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2024-01-26 12:48:30', '2024-01-26 12:48:30', '', 0, 'http://localhost/kyurees/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-01-26 12:48:30', '2024-01-26 12:48:30', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/kyurees.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-01-26 12:48:30', '2024-01-26 12:48:30', '', 0, 'http://localhost/kyurees/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-01-26 12:48:39', '2024-01-26 12:48:39', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-01-26 12:48:39', '2024-01-26 12:48:39', '', 0, 'http://localhost/kyurees/index.php/2024/01/26/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-01-26 13:09:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-01-26 13:09:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/kyurees/?p=5', 0, 'post', '', 0),
(7, 1, '2024-01-26 13:51:46', '2024-01-26 13:51:46', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'index', '', '', '2024-01-27 16:35:14', '2024-01-27 16:35:14', '', 0, 'http://localhost/kyurees/index.php/index/', 0, 'page', '', 0),
(8, 1, '2024-01-26 13:57:41', '2024-01-26 13:57:41', '', 'Index', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2024-01-26 13:57:41', '2024-01-26 13:57:41', '', 7, 'http://localhost/kyurees/?p=8', 0, 'revision', '', 0),
(9, 1, '2024-01-27 13:12:53', '2024-01-27 13:12:53', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-01-27 13:12:53', '2024-01-27 13:12:53', '', 7, 'http://localhost/kyurees/?p=9', 0, 'revision', '', 0),
(11, 1, '2024-01-27 14:41:02', '2024-01-27 14:33:44', '', 'For Enterprise', '', 'publish', 'closed', 'closed', '', 'for-enterprise', '', '', '2024-01-27 14:41:02', '2024-01-27 14:41:02', '', 0, 'http://localhost/kyurees/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2024-01-27 14:41:03', '2024-01-27 14:33:44', '', 'Cybersecurity Apprenticeship Program', '', 'publish', 'closed', 'closed', '', 'cybersecurity-apprenticeship-program', '', '', '2024-01-27 14:41:03', '2024-01-27 14:41:03', '', 0, 'http://localhost/kyurees/?p=12', 4, 'nav_menu_item', '', 0),
(13, 1, '2024-01-27 14:41:03', '2024-01-27 14:33:44', '', 'Cyber Academy', '', 'publish', 'closed', 'closed', '', 'cyber-academy', '', '', '2024-01-27 14:41:03', '2024-01-27 14:41:03', '', 0, 'http://localhost/kyurees/?p=13', 5, 'nav_menu_item', '', 0),
(14, 1, '2024-01-27 14:41:03', '2024-01-27 14:33:45', '', 'Application  Security Training', '', 'publish', 'closed', 'closed', '', 'application-security-training', '', '', '2024-01-27 14:41:03', '2024-01-27 14:41:03', '', 0, 'http://localhost/kyurees/?p=14', 6, 'nav_menu_item', '', 0),
(15, 1, '2024-01-27 14:41:03', '2024-01-27 14:33:45', '', 'Awareness Training & Phishing', '', 'publish', 'closed', 'closed', '', 'awareness-training-phishing', '', '', '2024-01-27 14:41:03', '2024-01-27 14:41:03', '', 0, 'http://localhost/kyurees/?p=15', 7, 'nav_menu_item', '', 0),
(16, 1, '2024-01-27 14:41:03', '2024-01-27 14:33:45', '', 'Advanced Training', '', 'publish', 'closed', 'closed', '', 'advanced-training', '', '', '2024-01-27 14:41:03', '2024-01-27 14:41:03', '', 0, 'http://localhost/kyurees/?p=16', 8, 'nav_menu_item', '', 0),
(17, 1, '2024-01-27 14:41:03', '2024-01-27 14:33:45', '', 'Partnerships', '', 'publish', 'closed', 'closed', '', 'partnerships', '', '', '2024-01-27 14:41:03', '2024-01-27 14:41:03', '', 0, 'http://localhost/kyurees/?p=17', 9, 'nav_menu_item', '', 0),
(18, 1, '2024-01-27 14:41:03', '2024-01-27 14:33:46', '', 'News & Blog', '', 'publish', 'closed', 'closed', '', 'news-blog', '', '', '2024-01-27 14:41:03', '2024-01-27 14:41:03', '', 0, 'http://localhost/kyurees/?p=18', 10, 'nav_menu_item', '', 0),
(19, 1, '2024-01-27 14:41:02', '2024-01-27 14:33:43', '', 'For Individuals', '', 'publish', 'closed', 'closed', '', 'for-individual', '', '', '2024-01-27 14:41:02', '2024-01-27 14:41:02', '', 0, 'http://localhost/kyurees/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2024-01-27 14:41:02', '2024-01-27 14:33:44', '', 'For Universities', '', 'publish', 'closed', 'closed', '', 'for-universities', '', '', '2024-01-27 14:41:02', '2024-01-27 14:41:02', '', 0, 'http://localhost/kyurees/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2024-01-27 14:41:03', '2024-01-27 14:33:46', '', 'Why Kyureeus', '', 'publish', 'closed', 'closed', '', 'why-kyureeus', '', '', '2024-01-27 14:41:03', '2024-01-27 14:41:03', '', 0, 'http://localhost/kyurees/?p=21', 11, 'nav_menu_item', '', 0),
(23, 1, '2024-01-27 15:58:44', '2024-01-27 15:58:44', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"hometemplate.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Homepage', 'homepage', 'publish', 'closed', 'closed', '', 'group_65b5276a6ee6d', '', '', '2024-01-27 16:32:51', '2024-01-27 16:32:51', '', 0, 'http://localhost/kyurees/?post_type=acf-field-group&#038;p=23', 0, 'acf-field-group', '', 0),
(24, 1, '2024-01-27 15:58:44', '2024-01-27 15:58:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_65b5279541367', '', '', '2024-01-27 15:58:44', '2024-01-27 15:58:44', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2024-01-27 15:58:44', '2024-01-27 15:58:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Text', 'banner_text_home', 'publish', 'closed', 'closed', '', 'field_65b527b041368', '', '', '2024-01-27 16:04:43', '2024-01-27 16:04:43', '', 23, 'http://localhost/kyurees/?post_type=acf-field&#038;p=25', 1, 'acf-field', '', 0),
(26, 1, '2024-01-27 15:58:44', '2024-01-27 15:58:44', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Banner Content', 'banner_content_homepage', 'publish', 'closed', 'closed', '', 'field_65b527cc41369', '', '', '2024-01-27 16:04:43', '2024-01-27 16:04:43', '', 23, 'http://localhost/kyurees/?post_type=acf-field&#038;p=26', 2, 'acf-field', '', 0),
(27, 1, '2024-01-27 15:58:44', '2024-01-27 15:58:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Text', 'link_text_hp', 'publish', 'closed', 'closed', '', 'field_65b527ee4136a', '', '', '2024-01-27 16:04:43', '2024-01-27 16:04:43', '', 23, 'http://localhost/kyurees/?post_type=acf-field&#038;p=27', 3, 'acf-field', '', 0),
(28, 1, '2024-01-27 15:58:44', '2024-01-27 15:58:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'URL Link', 'url_link_hp', 'publish', 'closed', 'closed', '', 'field_65b528064136b', '', '', '2024-01-27 16:04:43', '2024-01-27 16:04:43', '', 23, 'http://localhost/kyurees/?post_type=acf-field&#038;p=28', 4, 'acf-field', '', 0),
(29, 1, '2024-01-27 15:59:33', '2024-01-27 15:59:33', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Product Information', 'product_information_hp', 'publish', 'closed', 'closed', '', 'field_65b5284202e7e', '', '', '2024-01-27 16:10:44', '2024-01-27 16:10:44', '', 23, 'http://localhost/kyurees/?post_type=acf-field&#038;p=29', 6, 'acf-field', '', 0),
(32, 1, '2024-01-27 16:03:50', '2024-01-27 16:03:50', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Products', 'products_hp', 'publish', 'closed', 'closed', '', 'field_65b528af47c5a', '', '', '2024-01-27 16:10:44', '2024-01-27 16:10:44', '', 23, 'http://localhost/kyurees/?post_type=acf-field&#038;p=32', 7, 'acf-field', '', 0),
(33, 1, '2024-01-27 16:03:50', '2024-01-27 16:03:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Product Image', 'product_image_hp', 'publish', 'closed', 'closed', '', 'field_65b528c847c5b', '', '', '2024-01-27 16:03:50', '2024-01-27 16:03:50', '', 32, 'http://localhost/kyurees/?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 1, '2024-01-27 16:03:50', '2024-01-27 16:03:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Product Title', 'product_title_hp', 'publish', 'closed', 'closed', '', 'field_65b528ec47c5c', '', '', '2024-01-27 16:03:50', '2024-01-27 16:03:50', '', 32, 'http://localhost/kyurees/?post_type=acf-field&p=34', 1, 'acf-field', '', 0),
(35, 1, '2024-01-27 16:03:51', '2024-01-27 16:03:51', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Product Description', 'product_description_hp', 'publish', 'closed', 'closed', '', 'field_65b5290347c5d', '', '', '2024-01-27 16:03:51', '2024-01-27 16:03:51', '', 32, 'http://localhost/kyurees/?post_type=acf-field&p=35', 2, 'acf-field', '', 0),
(36, 1, '2024-01-27 16:03:51', '2024-01-27 16:03:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Product Link Text', 'product_link_text_hp', 'publish', 'closed', 'closed', '', 'field_65b5293c47c5e', '', '', '2024-01-27 16:03:51', '2024-01-27 16:03:51', '', 32, 'http://localhost/kyurees/?post_type=acf-field&p=36', 3, 'acf-field', '', 0),
(37, 1, '2024-01-27 16:03:51', '2024-01-27 16:03:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Product Link URL', 'product_link_url_hp', 'publish', 'closed', 'closed', '', 'field_65b5294d47c5f', '', '', '2024-01-27 16:03:51', '2024-01-27 16:03:51', '', 32, 'http://localhost/kyurees/?post_type=acf-field&p=37', 4, 'acf-field', '', 0),
(38, 1, '2024-01-27 16:05:34', '2024-01-27 16:05:34', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-01-27 16:05:34', '2024-01-27 16:05:34', '', 7, 'http://localhost/kyurees/?p=38', 0, 'revision', '', 0),
(39, 1, '2024-01-27 16:10:32', '2024-01-27 16:10:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Image', 'banner_image_hp', 'publish', 'closed', 'closed', '', 'field_65b52addb8212', '', '', '2024-01-27 16:10:44', '2024-01-27 16:10:44', '', 23, 'http://localhost/kyurees/?post_type=acf-field&#038;p=39', 5, 'acf-field', '', 0),
(40, 1, '2024-01-27 16:11:41', '2024-01-27 16:11:41', '', 'home-hero', '', 'inherit', 'open', 'closed', '', 'home-hero', '', '', '2024-01-27 16:11:41', '2024-01-27 16:11:41', '', 7, 'http://localhost/kyurees/wp-content/uploads/2024/01/home-hero.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2024-01-27 16:11:48', '2024-01-27 16:11:48', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-01-27 16:11:48', '2024-01-27 16:11:48', '', 7, 'http://localhost/kyurees/?p=41', 0, 'revision', '', 0),
(42, 1, '2024-01-27 16:13:43', '2024-01-27 16:13:43', '', 'icon1', '', 'inherit', 'open', 'closed', '', 'icon1', '', '', '2024-01-27 16:13:43', '2024-01-27 16:13:43', '', 7, 'http://localhost/kyurees/wp-content/uploads/2024/01/icon1.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2024-01-27 16:13:44', '2024-01-27 16:13:44', '', 'icon2', '', 'inherit', 'open', 'closed', '', 'icon2', '', '', '2024-01-27 16:13:44', '2024-01-27 16:13:44', '', 7, 'http://localhost/kyurees/wp-content/uploads/2024/01/icon2.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2024-01-27 16:13:46', '2024-01-27 16:13:46', '', 'icon3', '', 'inherit', 'open', 'closed', '', 'icon3', '', '', '2024-01-27 16:13:46', '2024-01-27 16:13:46', '', 7, 'http://localhost/kyurees/wp-content/uploads/2024/01/icon3.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2024-01-27 16:14:56', '2024-01-27 16:14:56', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-01-27 16:14:56', '2024-01-27 16:14:56', '', 7, 'http://localhost/kyurees/?p=45', 0, 'revision', '', 0),
(46, 1, '2024-01-27 16:23:27', '2024-01-27 16:23:27', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Editorial', 'editorial_hp', 'publish', 'closed', 'closed', '', 'field_65b52c4735fc6', '', '', '2024-01-27 16:23:27', '2024-01-27 16:23:27', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=46', 8, 'acf-field', '', 0),
(47, 1, '2024-01-27 16:23:27', '2024-01-27 16:23:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading_editorial_hp', 'publish', 'closed', 'closed', '', 'field_65b52c5935fc7', '', '', '2024-01-27 16:23:27', '2024-01-27 16:23:27', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=47', 9, 'acf-field', '', 0),
(48, 1, '2024-01-27 16:23:27', '2024-01-27 16:23:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub Heading', 'sub_heading_editorial_hp', 'publish', 'closed', 'closed', '', 'field_65b52c7235fc8', '', '', '2024-01-27 16:23:27', '2024-01-27 16:23:27', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=48', 10, 'acf-field', '', 0),
(49, 1, '2024-01-27 16:23:27', '2024-01-27 16:23:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Client Editorial', 'client_editorial', 'publish', 'closed', 'closed', '', 'field_65b52c9635fc9', '', '', '2024-01-27 16:23:27', '2024-01-27 16:23:27', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=49', 11, 'acf-field', '', 0),
(50, 1, '2024-01-27 16:23:27', '2024-01-27 16:23:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Client Description', 'client_description_hp', 'publish', 'closed', 'closed', '', 'field_65b52dbb35fca', '', '', '2024-01-27 16:23:27', '2024-01-27 16:23:27', '', 49, 'http://localhost/kyurees/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2024-01-27 16:23:28', '2024-01-27 16:23:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Client Product Image', 'client_product_image', 'publish', 'closed', 'closed', '', 'field_65b52ddc35fcb', '', '', '2024-01-27 16:23:28', '2024-01-27 16:23:28', '', 49, 'http://localhost/kyurees/?post_type=acf-field&p=51', 1, 'acf-field', '', 0),
(52, 1, '2024-01-27 16:24:49', '2024-01-27 16:24:49', '', 'pie1', '', 'inherit', 'open', 'closed', '', 'pie1', '', '', '2024-01-27 16:24:49', '2024-01-27 16:24:49', '', 7, 'http://localhost/kyurees/wp-content/uploads/2024/01/pie1.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2024-01-27 16:24:50', '2024-01-27 16:24:50', '', 'pie2', '', 'inherit', 'open', 'closed', '', 'pie2', '', '', '2024-01-27 16:24:50', '2024-01-27 16:24:50', '', 7, 'http://localhost/kyurees/wp-content/uploads/2024/01/pie2.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2024-01-27 16:24:51', '2024-01-27 16:24:51', '', 'pie3', '', 'inherit', 'open', 'closed', '', 'pie3', '', '', '2024-01-27 16:24:51', '2024-01-27 16:24:51', '', 7, 'http://localhost/kyurees/wp-content/uploads/2024/01/pie3.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2024-01-27 16:25:35', '2024-01-27 16:25:35', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-01-27 16:25:35', '2024-01-27 16:25:35', '', 7, 'http://localhost/kyurees/?p=55', 0, 'revision', '', 0),
(56, 1, '2024-01-27 16:28:46', '2024-01-27 16:28:46', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Editorial 2', 'editorial_2', 'publish', 'closed', 'closed', '', 'field_65b52eb44ba13', '', '', '2024-01-27 16:28:46', '2024-01-27 16:28:46', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=56', 12, 'acf-field', '', 0),
(57, 1, '2024-01-27 16:28:47', '2024-01-27 16:28:47', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Heading', 'heading_editoral_2', 'publish', 'closed', 'closed', '', 'field_65b52ec94ba14', '', '', '2024-01-27 16:28:47', '2024-01-27 16:28:47', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=57', 13, 'acf-field', '', 0),
(58, 1, '2024-01-27 16:28:47', '2024-01-27 16:28:47', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Editorial Description 2', 'editorial_description_2', 'publish', 'closed', 'closed', '', 'field_65b52ee64ba15', '', '', '2024-01-27 16:28:47', '2024-01-27 16:28:47', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=58', 14, 'acf-field', '', 0),
(59, 1, '2024-01-27 16:28:47', '2024-01-27 16:28:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Editorial Image 2', 'editorial_image_2', 'publish', 'closed', 'closed', '', 'field_65b52f104ba16', '', '', '2024-01-27 16:28:47', '2024-01-27 16:28:47', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=59', 15, 'acf-field', '', 0),
(60, 1, '2024-01-27 16:30:48', '2024-01-27 16:30:48', '', 'leader', '', 'inherit', 'open', 'closed', '', 'leader', '', '', '2024-01-27 16:30:48', '2024-01-27 16:30:48', '', 7, 'http://localhost/kyurees/wp-content/uploads/2024/01/leader.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2024-01-27 16:30:59', '2024-01-27 16:30:59', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-01-27 16:30:59', '2024-01-27 16:30:59', '', 7, 'http://localhost/kyurees/?p=61', 0, 'revision', '', 0),
(62, 1, '2024-01-27 16:32:51', '2024-01-27 16:32:51', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Global Partnerships', 'global_partnerships', 'publish', 'closed', 'closed', '', 'field_65b52fdba7bef', '', '', '2024-01-27 16:32:51', '2024-01-27 16:32:51', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=62', 16, 'acf-field', '', 0),
(63, 1, '2024-01-27 16:32:51', '2024-01-27 16:32:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title_gp', 'publish', 'closed', 'closed', '', 'field_65b52ff3a7bf0', '', '', '2024-01-27 16:32:51', '2024-01-27 16:32:51', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=63', 17, 'acf-field', '', 0),
(64, 1, '2024-01-27 16:32:51', '2024-01-27 16:32:51', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Logos', 'logos_gp', 'publish', 'closed', 'closed', '', 'field_65b5300aa7bf1', '', '', '2024-01-27 16:32:51', '2024-01-27 16:32:51', '', 23, 'http://localhost/kyurees/?post_type=acf-field&p=64', 18, 'acf-field', '', 0),
(65, 1, '2024-01-27 16:32:51', '2024-01-27 16:32:51', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Images', 'images', 'publish', 'closed', 'closed', '', 'field_65b5301ba7bf2', '', '', '2024-01-27 16:32:51', '2024-01-27 16:32:51', '', 64, 'http://localhost/kyurees/?post_type=acf-field&p=65', 0, 'acf-field', '', 0),
(66, 1, '2024-01-27 16:34:23', '2024-01-27 16:34:23', '', 'Logos-01', '', 'inherit', 'open', 'closed', '', 'logos-01', '', '', '2024-01-27 16:34:23', '2024-01-27 16:34:23', '', 7, 'http://localhost/kyurees/wp-content/uploads/2024/01/Logos-01.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2024-01-27 16:35:14', '2024-01-27 16:35:14', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-01-27 16:35:14', '2024-01-27 16:35:14', '', 7, 'http://localhost/kyurees/?p=67', 0, 'revision', '', 0),
(69, 1, '2024-01-27 17:13:46', '2024-01-27 17:13:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"testimonials\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Testimonails', 'testimonails', 'publish', 'closed', 'closed', '', 'group_65b53981ccbed', '', '', '2024-01-27 17:16:56', '2024-01-27 17:16:56', '', 0, 'http://localhost/kyurees/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2024-01-27 17:13:46', '2024-01-27 17:13:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name_testimonials', 'publish', 'closed', 'closed', '', 'field_65b5398d67780', '', '', '2024-01-27 17:13:46', '2024-01-27 17:13:46', '', 69, 'http://localhost/kyurees/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(71, 1, '2024-01-27 17:13:46', '2024-01-27 17:13:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Designation', 'designation_testimonials', 'publish', 'closed', 'closed', '', 'field_65b539a067781', '', '', '2024-01-27 17:13:46', '2024-01-27 17:13:46', '', 69, 'http://localhost/kyurees/?post_type=acf-field&p=71', 1, 'acf-field', '', 0),
(72, 1, '2024-01-27 17:16:37', '2024-01-27 17:16:37', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\"\"\r\n\r\n', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2024-01-27 17:17:43', '2024-01-27 17:17:43', '', 0, 'http://localhost/kyurees/?post_type=testimonials&#038;p=72', 0, 'testimonials', '', 0),
(73, 1, '2024-01-27 17:17:35', '2024-01-27 17:17:35', '', 'testi1', '', 'inherit', 'open', 'closed', '', 'testi1', '', '', '2024-01-27 17:17:35', '2024-01-27 17:17:35', '', 72, 'http://localhost/kyurees/wp-content/uploads/2024/01/testi1.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2024-01-27 17:18:20', '2024-01-27 17:18:20', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\"\"\r\n', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials-2', '', '', '2024-01-27 17:18:20', '2024-01-27 17:18:20', '', 0, 'http://localhost/kyurees/?post_type=testimonials&#038;p=74', 0, 'testimonials', '', 0),
(75, 1, '2024-01-27 17:19:10', '2024-01-27 17:19:10', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\"', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials-3', '', '', '2024-01-27 17:19:10', '2024-01-27 17:19:10', '', 0, 'http://localhost/kyurees/?post_type=testimonials&#038;p=75', 0, 'testimonials', '', 0),
(76, 1, '2024-01-27 17:19:47', '2024-01-27 17:19:47', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\"\n\n', 'Testimonials', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2024-01-27 17:19:47', '2024-01-27 17:19:47', '', 72, 'http://localhost/kyurees/?p=76', 0, 'revision', '', 0),
(78, 1, '2024-01-29 15:56:01', '2024-01-29 15:56:01', '', 'step-into-a-brighter-future', '', 'publish', 'closed', 'closed', '', 'step-into-a-brighter-future', '', '', '2024-01-29 16:05:44', '2024-01-29 16:05:44', '', 0, 'http://localhost/kyurees/?post_type=forminator_forms&#038;p=78', 0, 'forminator_forms', '', 0),
(80, 1, '2024-01-29 16:15:57', '2024-01-29 16:15:57', '<div class=\"row\">\r\n              <div class=\"col-sm-4 mb-4\">\r\n                <label for=\"firstName\" class=\"form-label\">Business email*</label>\r\n               [email* email-300 class:form-control]\r\n              </div>\r\n              <div class=\"col-sm-4\">\r\n                <label for=\"firstName\" class=\"form-label\">First Name*</label>\r\n                [text* fname class:form-control]\r\n              </div>\r\n              <div class=\"col-sm-4\">\r\n                <label for=\"firstName\" class=\"form-label\">Last Name*</label>\r\n                 [text* lname class:form-control]\r\n              </div>\r\n              <div class=\"col-sm-4\">\r\n                <label for=\"firstName\" class=\"form-label\">Job Title</label>\r\n                       [text* jobtitle class:form-control]\r\n              </div>\r\n              <div class=\"col-sm-4\">\r\n                <label for=\"firstName\" class=\"form-label\">Phone Number</label>\r\n                [tel* tel-196 class:form-control]\r\n              </div>\r\n\r\n              <div class=\"col-md-12 mt-4\">\r\n                <div>\r\n                  [checkbox* checkbox-190  use_label_element \"Send Me Information About Company Updates & Information\"]\r\n                           </div>\r\n                <div class=\"mt-3\">\r\n                  [checkbox* checkbox-191  use_label_element \"Send Me Info(Required) - I agree to allow the Kyureeus Group to store and process the information I provide in order to contact me. You may opt-out of communications at any time. For information about our privacy practices and commitment to protecting your privacy, check out our Privacy Policy.*rmation About Company Updates & Information\"]\r\n                </div>\r\n              </div>\r\n              <div class=\"col-md-12\">\r\n               [submit \"Submit\"]\r\n              </div>\n1\nStep Into a Brighter Future\n[_site_title] <informtogokul@gmail.com>\n[_site_admin_email]\nHi Admin,\r\n\r\n  You have received new email from Step Into a Brighter Future form.\r\n\r\nEmail Address : [email-300]\r\nFirst Name    : [fname]\r\nLast Name     : [lname]\r\nJob Title     : [jobtitle]\r\nTelphone      : [tel-196]\r\n[checkbox-190]\r\n[checkbox-191]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <informtogokul@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2024-01-30 00:15:13', '2024-01-30 00:15:13', '', 0, 'http://localhost/kyurees/?post_type=wpcf7_contact_form&#038;p=80', 0, 'wpcf7_contact_form', '', 0),
(82, 1, '2024-01-29 17:10:06', '2024-01-29 17:10:06', '<section>\r\n    <div class=\"container contact-card my-5\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                <h2 class=\"h1\">Contact Us Today</h2>\r\n            </div>\r\n        </div>\r\n        <div class=\"row\">\r\n            <div class=\"col-md-6\">\r\n                <div class=\"mb-4\">\r\n                    <label for=\"firstName\" class=\"form-label\">First Name*</label>\r\n                    [text* fname class:form-control]\r\n                </div>\r\n                <div class=\"mb-4\">\r\n                    <label for=\"firstName\" class=\"form-label\">Work email*</label>\r\n                    [email email-534 class:form-control]\r\n                </div>\r\n                <div class=\"mb-4 productInfo\">\r\n                    <p class=\"lead\">Product interested</p>\r\n                      [checkbox* checkbox-143 use_label_element \"Security Awareness Training\" \"Application Security Training\" \"Cybersecurity Apprenticeship Program\" \"Cybersecurity Bootcamp for Enterprise\" \"Cyber Academy\" \"Pen-Testing Services\" \"Custom-Made Training\" \"Cyber Talent Placement\" \"Red Teaming Services\" \"Education\" \"Last Mile Partnership Program\"]                 \r\n                </div>\r\n                <div class=\"mb-4\">\r\n                    <p class=\"lead\">Send Me More Information About:</p>\r\n                    <div>\r\n                           [checkbox* checkbox-146 use_label_element \"Company Updates & Information\"]\r\n                    </div>\r\n\r\n                    <div class=\" mt-3\">\r\n[checkbox* checkbox-229 use_label_element \"(Required) - I agree to allow the Kyureeus Group to store and process the information I provide in order to contact me. You may opt-out of communications at any time. For information about our privacy practices and commitment to protecting your privacy, check out our Privacy Policy.*\"]\r\n                    </div>\r\n\r\n                   \r\n                   \r\n                </div>\r\n            </div>\r\n            \r\n            <div class=\"col-md-6\">\r\n                <div class=\"mb-4\">\r\n                    <label for=\"firstName\" class=\"form-label\">Last Name*</label>\r\n                     [text* lname class:form-control]\r\n                </div>\r\n                <div class=\"mb-4\">\r\n                    <label for=\"firstName\" class=\"form-label\">Job title</label>\r\n                    [text* jtitle class:form-control]\r\n                </div>\r\n                <div class=\"mb-4\">\r\n                    <label for=\"firstName\" class=\"form-label\">City</label>\r\n                     [text* city class:form-control]\r\n                </div>\r\n                <div class=\"mb-4\">\r\n                    <label for=\"firstName\" class=\"form-label\">State*</label>\r\n                   [text* state class:form-control]\r\n                </div>\r\n\r\n                <div class=\"mb-4\">\r\n                    <label for=\"firstName\" class=\"form-label\">How Can We help you*</label>\r\n                    <label class=\"text-muted\">Please provide a short description on the services you are interested in...</label>\r\n                    [textarea* textarea-585 class:form-control]\r\n                </div>\r\n                \r\n            </div>\r\n        </div>\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                [submit \"Submit\"]\r\n            </div>\r\n        </div>\r\n    </div>\r\n  </section>\n1\nContact US Form - Kyurees\n[_site_title] <informtogokul@gmail.com>\n[_site_admin_email]\nHi Admin,\r\n\r\n Please find the details below :\r\n<table width=\"100%\">\r\n<tr>\r\n<td>First Name</td>\r\n<td>[fname]</td>\r\n</tr>\r\n<tr>\r\n<td>Last Name</td>\r\n<td>[lname]</td>\r\n</tr>\r\n<tr>\r\n<td>Job Title</td>\r\n<td>[jtitle]</td>\r\n</tr>\r\n<tr>\r\n<td>Work Email</td>\r\n<td>[email-534]</td>\r\n</tr>\r\n<tr>\r\n<td>City</td>\r\n<td>[city]</td>\r\n</tr>\r\n<tr>\r\n<td>State</td>\r\n<td>[state]</td>\r\n</tr>\r\n<tr>\r\n<td>How Can we help you</td>\r\n<td>[textarea-585]</td>\r\n</tr>\r\n<tr>\r\n<td>Product interested</td>\r\n<td>[checkbox-143]</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\n\n\n1\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <informtogokul@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact Form Details', '', 'publish', 'closed', 'closed', '', 'contact-form-details', '', '', '2024-01-30 00:17:31', '2024-01-30 00:17:31', '', 0, 'http://localhost/kyurees/?post_type=wpcf7_contact_form&#038;p=82', 0, 'wpcf7_contact_form', '', 0),
(83, 1, '2024-01-30 00:11:36', '2024-01-30 00:11:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}i:1;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:16:\"hometemplate.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Banners', 'banners', 'publish', 'closed', 'closed', '', 'group_65b83e40ef734', '', '', '2024-01-30 00:12:43', '2024-01-30 00:12:43', '', 0, 'http://localhost/kyurees/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(84, 1, '2024-01-30 00:11:36', '2024-01-30 00:11:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Text', 'banner_text', 'publish', 'closed', 'closed', '', 'field_65b83e4bd2dae', '', '', '2024-01-30 00:11:36', '2024-01-30 00:11:36', '', 83, 'http://localhost/kyurees/?post_type=acf-field&p=84', 0, 'acf-field', '', 0);
INSERT INTO `kyrs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(85, 1, '2024-01-30 00:11:36', '2024-01-30 00:11:36', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Banner Description', 'banner_description', 'publish', 'closed', 'closed', '', 'field_65b83e65d2daf', '', '', '2024-01-30 00:11:36', '2024-01-30 00:11:36', '', 83, 'http://localhost/kyurees/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2024-01-30 00:11:36', '2024-01-30 00:11:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_65b83e77d2db0', '', '', '2024-01-30 00:11:36', '2024-01-30 00:11:36', '', 83, 'http://localhost/kyurees/?post_type=acf-field&p=86', 2, 'acf-field', '', 0),
(87, 1, '2024-01-30 00:12:32', '2024-01-30 00:12:32', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2024-01-30 00:14:20', '2024-01-30 00:14:20', '', 0, 'http://localhost/kyurees/?page_id=87', 0, 'page', '', 0),
(88, 1, '2024-01-30 00:12:32', '2024-01-30 00:12:32', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2024-01-30 00:12:32', '2024-01-30 00:12:32', '', 87, 'http://localhost/kyurees/?p=88', 0, 'revision', '', 0),
(89, 1, '2024-01-30 00:13:41', '2024-01-30 00:13:41', '', 'contact-hero', '', 'inherit', 'open', 'closed', '', 'contact-hero', '', '', '2024-01-30 00:13:41', '2024-01-30 00:13:41', '', 87, 'http://localhost/kyurees/wp-content/uploads/2024/01/contact-hero.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2024-01-30 00:13:47', '2024-01-30 00:13:47', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2024-01-30 00:13:47', '2024-01-30 00:13:47', '', 87, 'http://localhost/kyurees/?p=90', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_termmeta`
--

CREATE TABLE `kyrs_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_terms`
--

CREATE TABLE `kyrs_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_terms`
--

INSERT INTO `kyrs_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_term_relationships`
--

CREATE TABLE `kyrs_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_term_relationships`
--

INSERT INTO `kyrs_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_term_taxonomy`
--

CREATE TABLE `kyrs_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_term_taxonomy`
--

INSERT INTO `kyrs_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_usermeta`
--

CREATE TABLE `kyrs_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_usermeta`
--

INSERT INTO `kyrs_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'kyrs_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'kyrs_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"5e0f9e2e12ef670993a577184aec25df614a2080210e16a055a631ea41124858\";a:4:{s:10:\"expiration\";i:1706622800;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1706450000;}}'),
(17, 1, 'kyrs_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'kyrs_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'kyrs_user-settings-time', '1706373059');

-- --------------------------------------------------------

--
-- Table structure for table `kyrs_users`
--

CREATE TABLE `kyrs_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kyrs_users`
--

INSERT INTO `kyrs_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BRMeFkPnEHv2458pxrDxT5GNBDLyyO.', 'admin', 'informtogokul@gmail.com', 'http://localhost/kyurees', '2024-01-26 12:48:27', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kyrs_actionscheduler_actions`
--
ALTER TABLE `kyrs_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `kyrs_actionscheduler_claims`
--
ALTER TABLE `kyrs_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `kyrs_actionscheduler_groups`
--
ALTER TABLE `kyrs_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `kyrs_actionscheduler_logs`
--
ALTER TABLE `kyrs_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `kyrs_commentmeta`
--
ALTER TABLE `kyrs_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `kyrs_comments`
--
ALTER TABLE `kyrs_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `kyrs_db7_forms`
--
ALTER TABLE `kyrs_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `kyrs_frmt_form_entry`
--
ALTER TABLE `kyrs_frmt_form_entry`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `entry_is_spam` (`is_spam`),
  ADD KEY `entry_type` (`entry_type`),
  ADD KEY `entry_form_id` (`form_id`);

--
-- Indexes for table `kyrs_frmt_form_entry_meta`
--
ALTER TABLE `kyrs_frmt_form_entry_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`),
  ADD KEY `meta_entry_id` (`entry_id`),
  ADD KEY `meta_key_object` (`entry_id`,`meta_key`);

--
-- Indexes for table `kyrs_frmt_form_reports`
--
ALTER TABLE `kyrs_frmt_form_reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `kyrs_frmt_form_views`
--
ALTER TABLE `kyrs_frmt_form_views`
  ADD PRIMARY KEY (`view_id`),
  ADD KEY `view_form_id` (`form_id`),
  ADD KEY `view_ip` (`ip`),
  ADD KEY `view_form_object` (`form_id`,`view_id`),
  ADD KEY `view_form_object_ip` (`form_id`,`view_id`,`ip`);

--
-- Indexes for table `kyrs_links`
--
ALTER TABLE `kyrs_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `kyrs_options`
--
ALTER TABLE `kyrs_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `kyrs_postmeta`
--
ALTER TABLE `kyrs_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `kyrs_posts`
--
ALTER TABLE `kyrs_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `kyrs_termmeta`
--
ALTER TABLE `kyrs_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `kyrs_terms`
--
ALTER TABLE `kyrs_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `kyrs_term_relationships`
--
ALTER TABLE `kyrs_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `kyrs_term_taxonomy`
--
ALTER TABLE `kyrs_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `kyrs_usermeta`
--
ALTER TABLE `kyrs_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `kyrs_users`
--
ALTER TABLE `kyrs_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kyrs_actionscheduler_actions`
--
ALTER TABLE `kyrs_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `kyrs_actionscheduler_claims`
--
ALTER TABLE `kyrs_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `kyrs_actionscheduler_groups`
--
ALTER TABLE `kyrs_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kyrs_actionscheduler_logs`
--
ALTER TABLE `kyrs_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `kyrs_commentmeta`
--
ALTER TABLE `kyrs_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyrs_comments`
--
ALTER TABLE `kyrs_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyrs_db7_forms`
--
ALTER TABLE `kyrs_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyrs_frmt_form_entry`
--
ALTER TABLE `kyrs_frmt_form_entry`
  MODIFY `entry_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyrs_frmt_form_entry_meta`
--
ALTER TABLE `kyrs_frmt_form_entry_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyrs_frmt_form_reports`
--
ALTER TABLE `kyrs_frmt_form_reports`
  MODIFY `report_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyrs_frmt_form_views`
--
ALTER TABLE `kyrs_frmt_form_views`
  MODIFY `view_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kyrs_links`
--
ALTER TABLE `kyrs_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyrs_options`
--
ALTER TABLE `kyrs_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `kyrs_postmeta`
--
ALTER TABLE `kyrs_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

--
-- AUTO_INCREMENT for table `kyrs_posts`
--
ALTER TABLE `kyrs_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `kyrs_termmeta`
--
ALTER TABLE `kyrs_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyrs_terms`
--
ALTER TABLE `kyrs_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kyrs_term_taxonomy`
--
ALTER TABLE `kyrs_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kyrs_usermeta`
--
ALTER TABLE `kyrs_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kyrs_users`
--
ALTER TABLE `kyrs_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
