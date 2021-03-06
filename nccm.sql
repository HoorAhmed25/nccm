-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 11:31 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nccm`
--

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `id` int(11) NOT NULL,
  `governorate` varchar(200) DEFAULT NULL,
  `qism` varchar(200) DEFAULT NULL,
  `com_num` varchar(200) DEFAULT NULL,
  `com_date` varchar(200) DEFAULT NULL,
  `child_name` varchar(200) DEFAULT NULL,
  `child_birth` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `parent_name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `referrer` varchar(200) DEFAULT NULL,
  `resource` varchar(200) DEFAULT NULL,
  `age` varchar(200) DEFAULT NULL,
  `education_level` varchar(200) DEFAULT NULL,
  `danger_type` varchar(200) DEFAULT NULL,
  `relation` varchar(200) DEFAULT NULL,
  `father_work` varchar(200) DEFAULT NULL,
  `income` varchar(200) DEFAULT NULL,
  `clothes` varchar(200) DEFAULT NULL,
  `drugs` varchar(200) DEFAULT NULL,
  `mental_illness` varchar(200) DEFAULT NULL,
  `schizophrenia` varchar(200) DEFAULT NULL,
  `emotional_disturbance` varchar(200) DEFAULT NULL,
  `worried` varchar(200) DEFAULT NULL,
  `developmental_disorder` varchar(200) DEFAULT NULL,
  `cognitive_abilities` varchar(200) DEFAULT NULL,
  `response` varchar(200) DEFAULT NULL,
  `attention` varchar(200) DEFAULT NULL,
  `realization` varchar(200) DEFAULT NULL,
  `guidance` varchar(200) DEFAULT NULL,
  `mental` varchar(200) DEFAULT NULL,
  `mood` varchar(200) DEFAULT NULL,
  `intelligence` varchar(200) DEFAULT NULL,
  `service` varchar(200) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `governorate`
--

CREATE TABLE `governorate` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `governorate`
--

INSERT INTO `governorate` (`id`, `name`) VALUES
(1, '??????????????'),
(2, '????????????????????'),
(3, '??????????????'),
(4, '????????????'),
(11, '??????????'),
(12, '????????????????'),
(13, '??????????????'),
(14, '??????????????????'),
(15, '?????? ??????????'),
(16, '??????????????'),
(17, '????????????????'),
(18, '??????????????'),
(19, '??????????????????????'),
(21, '????????????'),
(22, '?????? ????????'),
(23, '????????????'),
(24, '????????????'),
(25, '??????????'),
(26, '??????????'),
(27, '??????'),
(28, '??????????'),
(29, '????????????'),
(31, '?????????? ????????????'),
(32, '???????????? ????????????'),
(33, '???????? ??????????'),
(34, '???????? ??????????'),
(35, '???????? ??????????');

-- --------------------------------------------------------

--
-- Table structure for table `gov_dis`
--

CREATE TABLE `gov_dis` (
  `id` int(11) NOT NULL,
  `gov` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `dis` varchar(53) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gov_dis`
--

INSERT INTO `gov_dis` (`id`, `gov`, `dis`) VALUES
(1, '??????????????', '?????? ????????????'),
(2, '??????????????', '?????? ?????????? '),
(3, '??????????????', '?????? ?????????????? '),
(4, '??????????????', '?????? 15 ????????'),
(5, '??????????????', '?????? ??????'),
(6, '??????????????', '?????? ??????????????'),
(7, '??????????????', '?????? ????????????????'),
(8, '??????????????', '??????  ?????? ????????????'),
(9, '??????????????', '?????? ?????? ??????????????'),
(10, '??????????????', '?????? ???????????? ????????'),
(11, '??????????????', '?????? ??????????????'),
(12, '??????????????', '?????? ????????????'),
(13, '??????????????', '?????? ?????????? ????????'),
(14, '??????????????', '?????? ?????????? ????????????'),
(15, '??????????????', '?????? ??????????????'),
(16, '??????????????', '?????? ????????????'),
(17, '??????????????', '?????? ????????????????'),
(18, '??????????????', '?????? ??????????????'),
(19, '??????????????', '?????? ??????????'),
(20, '??????????????', '?????? ????????????????'),
(21, '??????????????', '?????? ?????? ??????????????'),
(22, '??????????????', '??????  ????????????????'),
(23, '??????????????', '?????? ????????????'),
(24, '??????????????', '?????? ?????????????? '),
(25, '??????????????', '?????? ?????????? ??????????'),
(26, '??????????????', '?????? ????????????????'),
(27, '??????????????', '?????? ????????'),
(28, '??????????????', '?????? ?????? ?????????? '),
(29, '??????????????', '?????? ????????????'),
(30, '??????????????', '?????? ?????????????? ??????????????'),
(31, '??????????????', '?????? ????????????????'),
(32, '??????????????', '?????? ??????????????'),
(33, '??????????????', '?????? ??????????????'),
(34, '??????????????', '?????? ?????? ??????'),
(35, '??????????????', '?????? ??????????'),
(36, '??????????????', '?????? ?????? ???????????? '),
(37, '??????????????', '?????? ?????? ???????????? (????????????)'),
(38, '??????????????', '?????? ????????????'),
(39, '??????????????', '?????? ?????? ??????????????'),
(40, '??????????????', '?????? ?????? ?????????? ??????'),
(41, '??????????????', '?????? ?????? ?????????? ??????'),
(42, '??????????????', '?????? ???????????? ????????????(?????? ?????????????? ??????????????)'),
(43, '??????????????', '?????? ???????????? ?????????? (?????? ?????????????? ??????????????)'),
(44, '??????????????', '?????? ???????????????? (???????? ?????????????? ??????????????)'),
(45, '??????????????', '?????? ????????????'),
(46, '??????????????', '?????? ??????'),
(47, '????????????????????', '?????? ?????? ??????????????'),
(48, '????????????????????', '?????? ?????? ?????????????? '),
(49, '????????????????????', '??????  ?????? ??????????'),
(50, '????????????????????', '?????? ?????? ??????????'),
(51, '????????????????????', '??????  ???????? ????????'),
(52, '????????????????????', '?????? ?????? ????????'),
(53, '????????????????????', '?????? ????????????????'),
(54, '????????????????????', '?????? ???????? ????'),
(55, '????????????????????', '?????? ??????????'),
(56, '????????????????????', '??????  ????????????'),
(57, '????????????????????', '?????? ??????????????'),
(58, '????????????????????', '?????? ????????????'),
(59, '????????????????????', '?????? ???????? ??????????'),
(60, '????????????????????', '?????? ??????????????'),
(61, '????????????????????', '?????? ?????? ????????????????'),
(62, '????????????????????', '?????? ?????? ???????????????? '),
(63, '????????????????????', '?????? ?????? ??????????'),
(64, '????????????????????', '?????????? ?????? ?????????? ?????????????? **'),
(65, '????????????????????', '???????????? ??????????????-?????? *'),
(66, '????????????????????', '?????? ???????? ?????????????? '),
(67, '??????????????', '?????? ??????????'),
(68, '??????????????', '?????? ??????????'),
(69, '??????????????', '?????? ?????????? '),
(70, '??????????????', '?????? ????????????'),
(71, '??????????????', '?????? ??????????????'),
(72, '??????????????', '?????? ????????????'),
(73, '??????????????', '?????? ????????????????'),
(74, '??????????????', '?????? ?????? ????????????'),
(75, '??????????????', '?????? ?????? ????????????'),
(76, '??????????????', '??????  ?????? ??????????????'),
(77, '??????????????', '?????? ?????? ??????????????'),
(78, '??????????????', '?????? ?????? ????????????????'),
(79, '??????????????', ' ?????????? ???????? ?????????? ??????????????  (?????? ?????????? ?????????????? ??????????)*'),
(80, '????????????', '?????? ????????????'),
(81, '????????????', '?????? ????????????????'),
(82, '????????????', '?????? ??????????'),
(83, '????????????', '?????? ????????'),
(84, '????????????', '?????? ??????????????'),
(85, '????????????', ' ?????????? ???????? ?????????? ????????????(?????? ?????????? ???????????? ?????????? )*'),
(86, '????????????', '?????????? ???????? ???????????? ????????????????* '),
(87, '??????????', '?????? ?????? ??????????'),
(88, '??????????', '?????? ?????? ?????????? '),
(89, '??????????', '???????? ??????????'),
(90, '??????????', '???????? ?????????????? '),
(91, '??????????', '???????? ???????????? '),
(92, '??????????', '???????? ?????? ?????? '),
(93, '??????????', '???????? ?????? ????????????'),
(94, '??????????', '?????? ?????????? ?????????? ??????????????'),
(95, '??????????', '?????????? ???????? ?????????? ?????????? ??????????????'),
(96, '??????????', '?????? ?????? ???????? '),
(97, '??????????', '?????? ??????????????????????'),
(98, '????????????????', '?????? ?????? ???????????????? '),
(99, '????????????????', '?????? ?????? ????????????????'),
(100, '????????????????', '???????? ????????????????'),
(101, '????????????????', '???????? ?????? '),
(102, '????????????????', '?????? ?????? ??????  '),
(103, '????????????????', '???????? ?????? ?????? '),
(104, '????????????????', '???????? ????????????????????'),
(105, '????????????????', '???????? ?????? ?????????????? '),
(106, '????????????????', '???????? ?????? ???????? '),
(107, '????????????????', '???????? ???????? ???????? '),
(108, '????????????????', '???????? ?????????? '),
(109, '????????????????', '???????? ???????? ?????????? '),
(110, '????????????????', '?????? ???????????? '),
(111, '????????????????', '???????? ?????? ?????????? '),
(112, '????????????????', '???????? ???????????????? '),
(113, '????????????????', '???????? ??????????????  '),
(114, '????????????????', '???????? ?????????????? '),
(115, '????????????????', '???????? ?????????? '),
(116, '????????????????', '??????  ???????? '),
(117, '????????????????', '???????? ???????? '),
(118, '????????????????', '???????? ?????????? '),
(119, '????????????????', '???????? ?????????? '),
(120, '????????????????', '???????? ???????? ?????????????????? '),
(121, '??????????????', '?????? ?????? ???????????????? '),
(122, '??????????????', '?????? ?????? ???????????????? '),
(123, '??????????????', '???????? ???????????????? '),
(124, '??????????????', '?????? ???????????????? '),
(125, '??????????????', '???????? ???????? ?????????? '),
(126, '??????????????', '???????? ?????????? ?????????? '),
(127, '??????????????', '???????? ?????????? '),
(128, '??????????????', '?????? ?????? ?????????? ???????????? ???? ??????????'),
(129, '??????????????', '?????? ?????? ?????????? ???????????? ???? ?????????? '),
(130, '??????????????', '???????? ?????? ???????? '),
(131, '??????????????', '???????? ???????? '),
(132, '??????????????', '???????? ???????? ?????? '),
(133, '??????????????', '???????? ??????????????????????'),
(134, '??????????????', '???????? ?????? ???????? '),
(135, '??????????????', '???????? ?????? ?????? '),
(136, '??????????????', '???????? ?????????? ?????? '),
(137, '??????????????', '???????? ?????? ?????????? '),
(138, '??????????????', '???????? ?????????? ?????? ?????? '),
(139, '??????????????', '???????? ???????????????? '),
(140, '??????????????', '??????  ?????????? '),
(141, '??????????????', '???????? ?????????? '),
(142, '??????????????', '?????? ????????????'),
(143, '??????????????', '?????? ???????????????? ?????????????? *'),
(144, '??????????????', '?????? ??????????   '),
(145, '??????????????????', '?????? ??????  ???????? '),
(146, '??????????????????', '?????? ??????  ???????? *'),
(147, '??????????????????', '???????? ???????? '),
(148, '??????????????????', '???????? ?????? ?????? '),
(149, '??????????????????', '???????? ?????? '),
(150, '??????????????????', '?????? ?????? '),
(151, '??????????????????', '???????? ?????????????? ?????????????? '),
(152, '??????????????????', '?????? ?????????? '),
(153, '??????????????????', '???????? ?????????? '),
(154, '??????????????????', '?????? ?????? ???????? ???????????? '),
(155, '??????????????????', '?????? ??????  ???????? ???????????? '),
(156, '??????????????????', '??????  ???????????? '),
(157, '??????????????????', '???????? ???????? ??????????????'),
(158, '??????????????????', '?????? ?????????????? '),
(159, '??????????????????', '???????? ?????????????? '),
(160, '??????????????????', '?????? ???????????? '),
(161, '?????? ??????????', '?????? ?????? ?????? ?????????? '),
(162, '?????? ??????????', '?????? ?????? ?????? ?????????? '),
(163, '?????? ??????????', '???????? ?????? ??????????'),
(164, '?????? ??????????', '???????? ???????????? '),
(165, '?????? ??????????', '???????? ?????????????? '),
(166, '?????? ??????????', '??????  ??????????????'),
(167, '?????? ??????????', '???????? ?????????????? '),
(168, '?????? ??????????', '???????? ????????????  '),
(169, '?????? ??????????', '???????? ?????????? '),
(170, '?????? ??????????', '???????? ?????? '),
(171, '?????? ??????????', '???????? ???????? ???????? '),
(172, '?????? ??????????', '?????? ???????? '),
(173, '?????? ??????????', '???????? ???????? '),
(174, '?????? ??????????', '???????? ???????? '),
(175, '?????? ??????????', '??????  ???????? ???????? '),
(176, '??????????????', '?????? ?????? ????????'),
(177, '??????????????', '?????? ??????  ????????'),
(178, '??????????????', '???????? ???????? '),
(179, '??????????????', '???????? ???????????? '),
(180, '??????????????', '???????? ???????? '),
(181, '??????????????', '????????  ?????????? '),
(182, '??????????????', '?????? ?????? ???????????? ????????????'),
(183, '??????????????', '?????? ?????? ???????????? ????????????'),
(184, '??????????????', '?????? ???????? ???????????? ????????????'),
(185, '??????????????', '???????? ???????????? ???????????? '),
(186, '??????????????', '???????? ???????? '),
(187, '??????????????', '???????? ??????????'),
(188, '??????????????', '???????? ?????? ???????????? '),
(189, '??????????????', '?????? ???????? '),
(190, '??????????????', '?????? ???????? ???????? '),
(191, '????????????????', '??????  ???????? ??????????'),
(192, '????????????????', '???????? ???????? ??????????'),
(193, '????????????????', '???????? ?????????????? '),
(194, '????????????????', '???????? ?????????? '),
(195, '????????????????', '???????? ???????? ?????????? '),
(196, '????????????????', '???????? ???????????? '),
(197, '????????????????', '???????? ?????????????? '),
(198, '????????????????', '???????? ?????????? '),
(199, '????????????????', '?????? ?????? ???????????? '),
(200, '????????????????', '?????? ?????????? ???????? '),
(201, '????????????????', '???????? ???????? '),
(202, '????????????????', '???????? ???????????? ?????????????? '),
(203, '??????????????', '?????? ???????????? '),
(204, '??????????????', '???????? ???????????? '),
(205, '??????????????', '???????? ?????? ???????? '),
(206, '??????????????', '???????? ?????? ???????????????? '),
(207, '??????????????', '??????  ?????? ???????????? '),
(208, '??????????????', '???????? ?????? ???????????? '),
(209, '??????????????', '???????? ???????? '),
(210, '??????????????', '???????? ???????? '),
(211, '??????????????', '???????? ?????? ?????? '),
(212, '??????????????', '???????? ?????????????????? '),
(213, '??????????????', '???????? ?????????????????? '),
(214, '??????????????', '???????? ???????? ?????? '),
(215, '??????????????', '???????? ?????????? ??????????????'),
(216, '??????????????', '???????? ?????? ?????????? '),
(217, '??????????????', '???????? ?????? '),
(218, '??????????????', '???????? ???????????????? '),
(219, '??????????????', '???????? ???????? ?????????????? '),
(220, '??????????????', '??????  ?????? ??????????????????'),
(221, '??????????????????????', '?????? ?????? ?????????????????????? '),
(222, '??????????????????????', '?????? ??????  ?????????????????????? '),
(223, '??????????????????????', '?????? ????????  ??????????????????????'),
(224, '??????????????????????', '???????? ?????????????????????? '),
(225, '??????????????????????', '???????? ?????????????? ?????? '),
(226, '??????????????????????', '????????  ?????????????? ?????? '),
(227, '??????????????????????', '???????? ???????? '),
(228, '??????????????????????', '???????? ?????? ???????? '),
(229, '??????????????????????', '???????? ???????? ???????????? '),
(230, '??????????????????????', '???????? ???????????????? ??????????????  *'),
(231, '????????????', '??????  ????????????'),
(232, '????????????', '?????? ??????????????'),
(233, '????????????', '?????? ??????????'),
(234, '????????????', '?????? ????????????'),
(235, '????????????', '?????? ?????????? ??????????????'),
(236, '????????????', '??????  ??????????????????'),
(237, '????????????', '?????? ???????????????????? '),
(238, '????????????', '?????? ??????????????'),
(239, '????????????', '???????? ?????? ????????????(???????????? ??????????)'),
(240, '????????????', '?????? ??????????????????'),
(241, '????????????', '???????? ????????????????'),
(242, '????????????', '???????? ????????????'),
(243, '????????????', '???????? ????????'),
(244, '????????????', '???????? ??????????'),
(245, '????????????', '???????? ????????????'),
(246, '????????????', '???????? ??????????'),
(247, '????????????', '?????? ????????????'),
(248, '????????????', '???????? ?????????? ??????????????( ???????????? ??????????)'),
(249, '????????????', '?????? ?????????? ????????'),
(250, '????????????', '?????? ?????? 6 ????????????'),
(251, '????????????', ' ?????? ?????? 6 ????????????'),
(252, '????????????', '?????? ?????????????? ??????????????'),
(253, '????????????', '?????? ???????? 6 ????????????'),
(254, '?????? ????????', '?????? ?????? ????????'),
(255, '?????? ????????', '???????? ?????? ???????? '),
(256, '?????? ????????', ' ?????? ?????????? ?????? ???????? ??????????????'),
(257, '?????? ????????', ' ???????? ??????????????'),
(258, '?????? ????????', ' ???????? ??????'),
(259, '?????? ????????', '???????? ??????????'),
(260, '?????? ????????', ' ???????? ??????????'),
(261, '?????? ????????', '???????? ??????????????'),
(262, '?????? ????????', '???????? ???????? (?????? ??????????)'),
(263, '????????????', '?????? ?????? ????????????'),
(264, '????????????', '???????? ????????????'),
(265, '????????????', '???????? ??????????'),
(266, '????????????', '???????? ??????????'),
(267, '????????????', ' ???????? ????????????'),
(268, '????????????', '???????? ????????'),
(269, '????????????', '???????? ???????? ????????????'),
(270, '????????????', '?????? ???????????? ?????????????? '),
(271, '????????????', '???????? ????????????????'),
(272, '????????????', '?????? ?????? ????????????'),
(273, '????????????', '?????? ??????  ????????????'),
(274, '????????????', '?????? ?????? ???????????? '),
(275, '????????????', '?????? ???????? ???????????? '),
(276, '????????????', '?????? ???????????? ?????????????? *'),
(277, '????????????', '???????? ????????????'),
(278, '????????????', '???????? ?????? ??????????'),
(279, '????????????', '?????? ????????*'),
(280, '????????????', '???????? ????????'),
(281, '????????????', ' ???????? ?????? ????????'),
(282, '????????????', '???????? ???????????? ?????? '),
(283, '????????????', ' ???????? ???????????? ?????? '),
(284, '????????????', '???????? ????????'),
(285, '????????????', '???????? ?????? ????????'),
(286, '????????????', '???????? ?????????? '),
(287, '????????????', '???????? ????????????'),
(288, '??????????', '?????? ?????? ??????????'),
(289, '??????????', ' ?????? ?????? ??????????'),
(290, '??????????', '???????? ??????????'),
(291, '??????????', '?????? ?????? ?????? '),
(292, '??????????', '???????? ?????? ??????'),
(293, '??????????', '???????? ??????????????'),
(294, '??????????', '???????? ????????'),
(295, '??????????', '???????? ????????????'),
(296, '??????????', '???????? ??????????????'),
(297, '??????????', '???????? ??????????'),
(298, '??????????', '???????? ??????????'),
(299, '??????????', '???????? ??????????'),
(300, '??????????', '???????? ???????? ????????'),
(301, '??????????', '???????? ??????????????'),
(302, '??????????', '?????? ????????  ?????????? ??????????????*'),
(303, '??????????', '?????? ?????? ??????????'),
(304, '??????????', '?????? ?????? ?????????? '),
(305, '??????????', '???????? ?????????? '),
(306, '??????????', '???????? ?????????????? '),
(307, '??????????', '???????? ?????????? '),
(308, '??????????', '?????? ???????? '),
(309, '??????????', '???????? ???????? '),
(310, '??????????', '???????? ?????? '),
(311, '??????????', '???????? ??????????????'),
(312, '??????????', '???????? ???????????????? '),
(313, '??????????', '?????? ???????? '),
(314, '??????????', '???????? ???????? '),
(315, '??????????', '???????? ?????????????? '),
(316, '??????????', '???????? ?????? ???????????? (?????????? ?????? ?????? ??????????)'),
(317, '??????????', '???????? ?????????? '),
(318, '??????????', '???????? ???????????? '),
(319, '??????????', '?????? ???????????? '),
(320, '??????????', '?????????? ?????????? ?????????????? *'),
(321, '??????????', '??????  ?????????? ??????????????**'),
(322, '??????????', '???????? ?????????? ???????????? '),
(323, '??????', '?????? ?????????? '),
(324, '??????', '???????? ?????????? '),
(325, '??????', '???????? ???????? '),
(326, '??????', '???????? ?????????? '),
(327, '??????', '???????? ?????? ?????????? '),
(328, '??????', '???????? ??????????'),
(329, '??????', '???????? ?????? ?????? '),
(330, '??????', '???????? ??????'),
(331, '??????', '???????? ??????'),
(332, '??????', '???????? ?????????? '),
(333, '??????', '?????????? ?????? ?????????????? *'),
(334, '??????????', '?????? ?????? ?????????? '),
(335, '??????????', '?????? ?????? ?????????????????? **'),
(336, '??????????', '???????? ???????????????? '),
(337, '??????????', '?????? ?????????? ?????????????? '),
(338, '??????????', '???????? ??????????????'),
(339, '??????????', '???????? ?????? ???????????? '),
(340, '??????????', ' ????????  ?????????? ????????????'),
(341, '??????????', '???????? ???????? '),
(342, '??????????', '???????? ?????? ???????? '),
(343, '??????????', '?????????? ?????????? ?????????????? *'),
(344, '????????????', '?????? ???????????????????? '),
(345, '????????????', '???????? ???????????? '),
(346, '????????????', '???????? ???????????????? '),
(347, '????????????', '?????????? ???????????? '),
(348, '????????????', '???????? ?????????? '),
(349, '????????????', '???????? ???????? '),
(350, '?????????? ????????????', '?????? ?????? ?????????????????? '),
(351, '?????????? ????????????', '?????? ?????? ?????????????????? '),
(352, '?????????? ????????????', '?????? ?????? ????????  '),
(353, '?????????? ????????????', '?????? ?????????????? '),
(354, '?????????? ????????????', '?????? ?????????????????? '),
(355, '?????????? ????????????', '?????? ???????????? ?????? '),
(356, '?????????? ????????????', '?????? ????????????????  '),
(357, '?????????? ????????????', '?????? ?????????????? '),
(358, '???????????? ????????????', '?????? ?????????????? '),
(359, '???????????? ????????????', '???????? ?????????? '),
(360, '???????????? ????????????', '???????? ???????? '),
(361, '???????????? ????????????', '???????? ???????????????? '),
(362, '???????????? ????????????', '???????? ?????????????? '),
(363, '???????????? ????????????', '?????? ???????????????? *'),
(364, '??????????', '?????? ???????? ?????????? '),
(365, '??????????', '?????? ?????????????? '),
(366, '??????????', '?????? ???????? ?????????? '),
(367, '??????????', '?????? ???????????? '),
(368, '??????????', '?????? ???????????? '),
(369, '??????????', '?????? ?????????????? '),
(370, '??????????', '?????? ???????????? ?????????????? ???????????????? '),
(371, '??????????', '?????? ???????????? '),
(372, '??????????', '?????? ???????? '),
(373, '??????????', '???????????? ??????????????'),
(374, '???????? ??????????', '?????? ?????? ????????????'),
(375, '???????? ??????????', '?????? ?????? ???????????? '),
(376, '???????? ??????????', '?????? ???????? ???????????? '),
(377, '???????? ??????????', '?????? ???????? ???????????? '),
(378, '???????? ??????????', '?????? ?????? ?????????? '),
(379, '???????? ??????????', '?????? ?????????? '),
(380, '???????? ??????????', '?????? ???????????? '),
(381, '???????? ??????????', '?????? ?????? '),
(382, '???????? ??????????', '?????? ?????????????? '),
(383, '???????? ??????????', '?????? ?????????? ???????? '),
(384, '???????? ??????????', '?????? ??????'),
(385, '???????? ??????????', '?????? ?????????????? '),
(386, '???????? ??????????', '?????? ?????? ???????? '),
(387, '???????? ??????????', '?????? ?????? ?????? '),
(388, '???????? ??????????', '?????? ???????? ???????????? '),
(389, '???????? ??????????', '?????? ??????????  '),
(390, '???????? ??????????', '?????? ???????? '),
(391, '???????? ??????????', '?????? ?????? '),
(392, '???????? ??????????', '?????? ?????? ?????? ?????????? '),
(393, '???????? ??????????', '?????? ?????? ?????? ?????????? '),
(394, '???????? ??????????', ' ?????? ?????? ?????????? ');

-- --------------------------------------------------------

--
-- Table structure for table `psychological_tests`
--

CREATE TABLE `psychological_tests` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `psychological_tests`
--

INSERT INTO `psychological_tests` (`id`, `name`) VALUES
(1, '????????'),
(2, '????????'),
(3, '????????'),
(4, '??????'),
(5, '????????????'),
(6, '???????????? ????????');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'hoda', 'P@ssw0rd'),
(2, 'mona', 'p@ssw0rd'),
(3, 'ola', 'p@ssw0rd'),
(4, 'salma', 'p@ssw0rd'),
(5, 'nahed', 'p@ssw0rd'),
(6, 'passant', 'p@ssw0rd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `governorate`
--
ALTER TABLE `governorate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gov_dis`
--
ALTER TABLE `gov_dis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psychological_tests`
--
ALTER TABLE `psychological_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psychological_tests`
--
ALTER TABLE `psychological_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
