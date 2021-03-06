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
(1, 'القاهرة'),
(2, 'الاسكندرية'),
(3, 'بورسعيد'),
(4, 'السويس'),
(11, 'دمياط'),
(12, 'الدقهلية'),
(13, 'الشرقية'),
(14, 'القليوبية'),
(15, 'كفر الشيخ'),
(16, 'الغربية'),
(17, 'المنوفية'),
(18, 'البحيرة'),
(19, 'الاسماعيلية'),
(21, 'الجيزه'),
(22, 'بنى سويف'),
(23, 'الفيوم'),
(24, 'المنيا'),
(25, 'اسيوط'),
(26, 'سوهاج'),
(27, 'قنا'),
(28, 'اسوان'),
(29, 'الاقصر'),
(31, 'البحر الاحمر'),
(32, 'الوادى الجديد'),
(33, 'مرسى مطروح'),
(34, 'شمال سيناء'),
(35, 'جنوب سيناء');

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
(1, 'القاهرة', 'قسم التبين'),
(2, 'القاهرة', 'قسم حلوان '),
(3, 'القاهرة', 'قسم المعصرة '),
(4, 'القاهرة', 'قسم 15 مايو'),
(5, 'القاهرة', 'قسم طره'),
(6, 'القاهرة', 'قسم المعادى'),
(7, 'القاهرة', 'قسم البساتين'),
(8, 'القاهرة', 'قسم  دار السلام'),
(9, 'القاهرة', 'قسم مصر القديمة'),
(10, 'القاهرة', 'قسم السيدة زينب'),
(11, 'القاهرة', 'قسم الخليفة'),
(12, 'القاهرة', 'قسم المقطم'),
(13, 'القاهرة', 'قسم منشأة ناصر'),
(14, 'القاهرة', 'قسم الدرب الاحمر'),
(15, 'القاهرة', 'قسم الموسكى'),
(16, 'القاهرة', 'قسم عابدين'),
(17, 'القاهرة', 'قسم قصرالنيل'),
(18, 'القاهرة', 'قسم الزمالك'),
(19, 'القاهرة', 'قسم بولاق'),
(20, 'القاهرة', 'قسم الازبكية'),
(21, 'القاهرة', 'قسم باب الشعرية'),
(22, 'القاهرة', 'قسم  الجمالية'),
(23, 'القاهرة', 'قسم الظاهر'),
(24, 'القاهرة', 'قسم الوايلى '),
(25, 'القاهرة', 'قسم حدائق القبة'),
(26, 'القاهرة', 'قسم الشرابية'),
(27, 'القاهرة', 'قسم شبرا'),
(28, 'القاهرة', 'قسم روض الفرج '),
(29, 'القاهرة', 'قسم الساحل'),
(30, 'القاهرة', 'قسم الزاوية الحمراء'),
(31, 'القاهرة', 'قسم الاميرية'),
(32, 'القاهرة', 'قسم الزيتون'),
(33, 'القاهرة', 'قسم المطرية'),
(34, 'القاهرة', 'قسم عين شمس'),
(35, 'القاهرة', 'قسم المرج'),
(36, 'القاهرة', 'قسم أول السلام '),
(37, 'القاهرة', 'قسم ثان السلام (النهضة)'),
(38, 'القاهرة', 'قسم النزهة'),
(39, 'القاهرة', 'قسم مصر الجديدة'),
(40, 'القاهرة', 'قسم اول مدينة نصر'),
(41, 'القاهرة', 'قسم ثان مدينة نصر'),
(42, 'القاهرة', 'قسم التجمع الخامس(اول القاهرة الجديدة)'),
(43, 'القاهرة', 'قسم التجمع الاول (ثان القاهرة الجديدة)'),
(44, 'القاهرة', 'قسم القطامية (ثالث القاهرة الجديدة)'),
(45, 'القاهرة', 'قسم الشروق'),
(46, 'القاهرة', 'قسم بدر'),
(47, 'الاسكندرية', 'قسم أول المنتزة'),
(48, 'الاسكندرية', 'قسم ثان المنتزة '),
(49, 'الاسكندرية', 'قسم  أول الرمل'),
(50, 'الاسكندرية', 'قسم ثان الرمل'),
(51, 'الاسكندرية', 'قسم  سيدى جابر'),
(52, 'الاسكندرية', 'قسم باب شرقى'),
(53, 'الاسكندرية', 'قسم العطارين'),
(54, 'الاسكندرية', 'قسم محرم بك'),
(55, 'الاسكندرية', 'قسم كرموز'),
(56, 'الاسكندرية', 'قسم  اللبان'),
(57, 'الاسكندرية', 'قسم المنشية'),
(58, 'الاسكندرية', 'قسم الجمرك'),
(59, 'الاسكندرية', 'قسم مينا البصل'),
(60, 'الاسكندرية', 'قسم الدخيله'),
(61, 'الاسكندرية', 'قسم أول العامرية'),
(62, 'الاسكندرية', 'قسم ثان العامرية '),
(63, 'الاسكندرية', 'قسم برج العرب'),
(64, 'الاسكندرية', 'مدينة برج العرب الجديدة **'),
(65, 'الاسكندرية', 'الساحل الشمالى-جزء *'),
(66, 'الاسكندرية', 'قسم ثالث المنتزه '),
(67, 'بورسعيد', 'قسم الشرق'),
(68, 'بورسعيد', 'قسم الشرق'),
(69, 'بورسعيد', 'قسم العرب '),
(70, 'بورسعيد', 'قسم المناخ'),
(71, 'بورسعيد', 'قسم الضواحى'),
(72, 'بورسعيد', 'قسم الزهور'),
(73, 'بورسعيد', 'قسم المناصرة'),
(74, 'بورسعيد', 'قسم أول الجنوب'),
(75, 'بورسعيد', 'قسم ثان الجنوب'),
(76, 'بورسعيد', 'قسم  أول بورفؤاد'),
(77, 'بورسعيد', 'قسم ثان بورفؤاد'),
(78, 'بورسعيد', 'قسم شرق التفريعة'),
(79, 'بورسعيد', ' إدارة شرطة ميناء بورسعيد  (قسم ميناء بورسعيد سابقا)*'),
(80, 'السويس', 'قسم السويس'),
(81, 'السويس', 'قسم الاربعين'),
(82, 'السويس', 'قسم عتاقة'),
(83, 'السويس', 'قسم فيصل'),
(84, 'السويس', 'قسم الجناين'),
(85, 'السويس', ' إدارة شرطه ميناء السويس(قسم ميناء السويس سابقا )*'),
(86, 'السويس', 'منطقة خليج السويس السياحية* '),
(87, 'دمياط', 'قسم أول دمياط'),
(88, 'دمياط', 'قسم ثان دمياط '),
(89, 'دمياط', 'مركز دمياط'),
(90, 'دمياط', 'مركز فارسكور '),
(91, 'دمياط', 'مركز الزرقا '),
(92, 'دمياط', 'مركز كفر سعد '),
(93, 'دمياط', 'مركز كفر البطيخ'),
(94, 'دمياط', 'قسم مدينة دمياط الجديدة'),
(95, 'دمياط', 'ادارة شرطة ميناء دمياط الجديدة'),
(96, 'دمياط', 'قسم رأس البر '),
(97, 'دمياط', 'قسم الســــــرو'),
(98, 'الدقهلية', 'قسم أول المنصورة '),
(99, 'الدقهلية', 'قسم ثان المنصورة'),
(100, 'الدقهلية', 'مركز المنصورة'),
(101, 'الدقهلية', 'مركز أجا '),
(102, 'الدقهلية', 'قسم ميت غمر  '),
(103, 'الدقهلية', 'مركز ميت غمر '),
(104, 'الدقهلية', 'مركز السنبلاوين'),
(105, 'الدقهلية', 'مركز تمى الامديد '),
(106, 'الدقهلية', 'مركز بنى عبيد '),
(107, 'الدقهلية', 'مركز محلة دمنة '),
(108, 'الدقهلية', 'مركز دكرنس '),
(109, 'الدقهلية', 'مركز منية النصر '),
(110, 'الدقهلية', 'قسم الكردى '),
(111, 'الدقهلية', 'مركز ميت سلسيل '),
(112, 'الدقهلية', 'مركز الجمالية '),
(113, 'الدقهلية', 'مركز المنزلة  '),
(114, 'الدقهلية', 'مركز المطرية '),
(115, 'الدقهلية', 'مركز شربين '),
(116, 'الدقهلية', 'قسم  جمصة '),
(117, 'الدقهلية', 'مركز طلخا '),
(118, 'الدقهلية', 'مركز نبروة '),
(119, 'الدقهلية', 'مركز بلقاس '),
(120, 'الدقهلية', 'مركز شرطة الستامونى '),
(121, 'الشرقية', 'قسم أول الزقازيق '),
(122, 'الشرقية', 'قسم ثان الزقازيق '),
(123, 'الشرقية', 'مركز الزقازيق '),
(124, 'الشرقية', 'قسم القنايات '),
(125, 'الشرقية', 'مركز منيا القمح '),
(126, 'الشرقية', 'مركز مشتول السوق '),
(127, 'الشرقية', 'مركز بلبيس '),
(128, 'الشرقية', 'قسم أول مدينة العاشر من رمضان'),
(129, 'الشرقية', 'قسم ثان مدينة العاشر من رمضان '),
(130, 'الشرقية', 'مركز أبو حماد '),
(131, 'الشرقية', 'مركز ههيا '),
(132, 'الشرقية', 'مركز ديرب نجم '),
(133, 'الشرقية', 'مركز الابراهيمية'),
(134, 'الشرقية', 'مركز أبو كبير '),
(135, 'الشرقية', 'مركز كفر صقر '),
(136, 'الشرقية', 'مركز أولاد صقر '),
(137, 'الشرقية', 'مركز صان الحجر '),
(138, 'الشرقية', 'مركز منشأة أبو عمر '),
(139, 'الشرقية', 'مركز الحسينية '),
(140, 'الشرقية', 'قسم  فاقوس '),
(141, 'الشرقية', 'مركز فاقوس '),
(142, 'الشرقية', 'قسم القرين'),
(143, 'الشرقية', 'قسم الصالحية الجديدة *'),
(144, 'الشرقية', 'قسم بلبيس   '),
(145, 'القليوبية', 'قسم أول  بنها '),
(146, 'القليوبية', 'قسم ثان  بنها *'),
(147, 'القليوبية', 'مركز بنها '),
(148, 'القليوبية', 'مركز كفر شكر '),
(149, 'القليوبية', 'مركز طوخ '),
(150, 'القليوبية', 'قسم قها '),
(151, 'القليوبية', 'مركز القناطر الخيرية '),
(152, 'القليوبية', 'قسم قليوب '),
(153, 'القليوبية', 'مركز قليوب '),
(154, 'القليوبية', 'قسم أول شبرا الخيمة '),
(155, 'القليوبية', 'قسم ثان  شبرا الخيمة '),
(156, 'القليوبية', 'قسم  الخصوص '),
(157, 'القليوبية', 'مركز شبين القناطر'),
(158, 'القليوبية', 'قسم الخانكة '),
(159, 'القليوبية', 'مركز الخانكة '),
(160, 'القليوبية', 'قسم العبور '),
(161, 'كفر الشيخ', 'قسم أول كفر الشيخ '),
(162, 'كفر الشيخ', 'قسم ثان كفر الشيخ '),
(163, 'كفر الشيخ', 'مركز كفر الشيخ'),
(164, 'كفر الشيخ', 'مركز الرياض '),
(165, 'كفر الشيخ', 'مركز الحامول '),
(166, 'كفر الشيخ', 'قسم  بيـــلا'),
(167, 'كفر الشيخ', 'مركز بيـــلا '),
(168, 'كفر الشيخ', 'مركز البرلس  '),
(169, 'كفر الشيخ', 'مركز مطوبس '),
(170, 'كفر الشيخ', 'مركز فوه '),
(171, 'كفر الشيخ', 'مركز سيدى سالم '),
(172, 'كفر الشيخ', 'قسم دسوق '),
(173, 'كفر الشيخ', 'مركز دسوق '),
(174, 'كفر الشيخ', 'مركز قلين '),
(175, 'كفر الشيخ', 'قسم  سيدى غازى '),
(176, 'الغربية', 'قسم أول طنطا'),
(177, 'الغربية', 'قسم ثان  طنطا'),
(178, 'الغربية', 'مركز طنطا '),
(179, 'الغربية', 'مركز السنطة '),
(180, 'الغربية', 'مركز زفتى '),
(181, 'الغربية', 'مركز  سمنود '),
(182, 'الغربية', 'قسم أول المحلة الكبرى'),
(183, 'الغربية', 'قسم ثان المحلة الكبرى'),
(184, 'الغربية', 'قسم ثالث المحلة الكبرى'),
(185, 'الغربية', 'مركز المحلة الكبرى '),
(186, 'الغربية', 'مركز قطور '),
(187, 'الغربية', 'مركز بسيون'),
(188, 'الغربية', 'مركز كفر الزيات '),
(189, 'الغربية', 'قسم زفتى '),
(190, 'الغربية', 'قسم ثالث طنطا '),
(191, 'المنوفية', 'قسم  شبين الكوم'),
(192, 'المنوفية', 'مركز شبين الكوم'),
(193, 'المنوفية', 'مركز الشهداء '),
(194, 'المنوفية', 'مركز تــلا '),
(195, 'المنوفية', 'مركز بركة السبع '),
(196, 'المنوفية', 'مركز قويسنا '),
(197, 'المنوفية', 'مركز الباجور '),
(198, 'المنوفية', 'مركز أشمون '),
(199, 'المنوفية', 'قسم سرس الليان '),
(200, 'المنوفية', 'قسم مدينة منوف '),
(201, 'المنوفية', 'مركز منوف '),
(202, 'المنوفية', 'مركز ومدينة السادات '),
(203, 'البحيرة', 'قسم دمنهور '),
(204, 'البحيرة', 'مركز دمنهور '),
(205, 'البحيرة', 'مركز حوش عيسى '),
(206, 'البحيرة', 'مركز أبو المطامير '),
(207, 'البحيرة', 'قسم  كفر الدوار '),
(208, 'البحيرة', 'مركز كفر الدوار '),
(209, 'البحيرة', 'مركز ادكو '),
(210, 'البحيرة', 'مركز رشيد '),
(211, 'البحيرة', 'مركز أبو حمص '),
(212, 'البحيرة', 'مركز المحمودية '),
(213, 'البحيرة', 'مركز الرحمانية '),
(214, 'البحيرة', 'مركز شبرا خيت '),
(215, 'البحيرة', 'مركز ايتاى البارود'),
(216, 'البحيرة', 'مركز كوم حمادة '),
(217, 'البحيرة', 'مركز بدر '),
(218, 'البحيرة', 'مركز الدلنجات '),
(219, 'البحيرة', 'مركز وادى النطرون '),
(220, 'البحيرة', 'قسم  غرب النوبارية'),
(221, 'الاسماعيلية', 'قسم أول الاسماعيلية '),
(222, 'الاسماعيلية', 'قسم ثان  الاسماعيلية '),
(223, 'الاسماعيلية', 'قسم ثالث  الاسماعيلية'),
(224, 'الاسماعيلية', 'مركز الاسماعيلية '),
(225, 'الاسماعيلية', 'مركز القنطرة غرب '),
(226, 'الاسماعيلية', 'مركز  القنطرة شرق '),
(227, 'الاسماعيلية', 'مركز فايد '),
(228, 'الاسماعيلية', 'مركز أبو صوير '),
(229, 'الاسماعيلية', 'مركز التل الكبير '),
(230, 'الاسماعيلية', 'مركز القصاصين الجديدة  *'),
(231, 'الجيزة', 'قسم  أمبابة'),
(232, 'الجيزة', 'قسم العجوزة'),
(233, 'الجيزة', 'قسم الدقى'),
(234, 'الجيزة', 'قسم الجيزة'),
(235, 'الجيزة', 'قسم بولاق الدكرور'),
(236, 'الجيزة', 'قسم  العمرانية'),
(237, 'الجيزة', 'قسم الطــالبية '),
(238, 'الجيزة', 'قسم الأهرام'),
(239, 'الجيزة', 'مركز أبو النمرس(الجيزة سابقا)'),
(240, 'الجيزة', 'قسم الحوامدية'),
(241, 'الجيزة', 'مركز البدرشين'),
(242, 'الجيزة', 'مركز العياط'),
(243, 'الجيزة', 'مركز الصف'),
(244, 'الجيزة', 'مركز أطفيح'),
(245, 'الجيزة', 'مركز كرداسة'),
(246, 'الجيزة', 'مركز أوسيم'),
(247, 'الجيزة', 'قسم الوراق'),
(248, 'الجيزة', 'مركز منشأة القناطر( امبابه سابقأ)'),
(249, 'الجيزة', 'قسم الشيخ زايد'),
(250, 'الجيزة', 'قسم أول 6 أكتوبر'),
(251, 'الجيزة', ' قسم ثان 6 أكتوبر'),
(252, 'الجيزة', 'قسم الواحات البحرية'),
(253, 'الجيزة', 'قسم ثالث 6 أكتوبر'),
(254, 'بنى سويف', 'قسم بنى سويف'),
(255, 'بنى سويف', 'مركز بنى سويف '),
(256, 'بنى سويف', ' قسم مدينة بنى سويف الجديدة'),
(257, 'بنى سويف', ' مركز أهناسيا'),
(258, 'بنى سويف', ' مركز ببا'),
(259, 'بنى سويف', 'مركز سمسطا'),
(260, 'بنى سويف', ' مركز الفشن'),
(261, 'بنى سويف', 'مركز الواسطى'),
(262, 'بنى سويف', 'مركز ناصر (بوش سابقا)'),
(263, 'الفيوم', 'قسم أول الفيوم'),
(264, 'الفيوم', 'مركز الفيوم'),
(265, 'الفيوم', 'مركز طامية'),
(266, 'الفيوم', 'مركز سنورس'),
(267, 'الفيوم', ' مركز ابشواى'),
(268, 'الفيوم', 'مركز أطسا'),
(269, 'الفيوم', 'مركز يوسف الصديق'),
(270, 'الفيوم', 'قسم الفيوم الجديدة '),
(271, 'الفيوم', 'مركز الشواشنة'),
(272, 'الفيوم', 'قسم ثان الفيوم'),
(273, 'المنيا', 'قسم أول  المنيا'),
(274, 'المنيا', 'قسم ثان المنيا '),
(275, 'المنيا', 'قسم ثالث المنيا '),
(276, 'المنيا', 'قسم المنيا الجديدة *'),
(277, 'المنيا', 'مركز المنيا'),
(278, 'المنيا', 'مركز أبو قرقاص'),
(279, 'المنيا', 'قسم ملوى*'),
(280, 'المنيا', 'مركز ملوى'),
(281, 'المنيا', ' مركز دير مواس'),
(282, 'المنيا', 'مركز سمالوط شرق '),
(283, 'المنيا', ' مركز سمالوط غرب '),
(284, 'المنيا', 'مركز مطاى'),
(285, 'المنيا', 'مركز بنى مزار'),
(286, 'المنيا', 'مركز مغاغة '),
(287, 'المنيا', 'مركز العدوة'),
(288, 'اسيوط', 'قسم أول أسيوط'),
(289, 'اسيوط', ' قسم ثان أسيوط'),
(290, 'اسيوط', 'مركز أسيوط'),
(291, 'اسيوط', 'قسم أبو تيج '),
(292, 'اسيوط', 'مركز أبو تيج'),
(293, 'اسيوط', 'مركز الغنايم'),
(294, 'اسيوط', 'مركز صدفا'),
(295, 'اسيوط', 'مركز منفلوط'),
(296, 'اسيوط', 'مركز القوصية'),
(297, 'اسيوط', 'مركز ديروط'),
(298, 'اسيوط', 'مركز أبنوب'),
(299, 'اسيوط', 'مركز الفتح'),
(300, 'اسيوط', 'مركز ساحل سليم'),
(301, 'اسيوط', 'مركز البدارى'),
(302, 'اسيوط', 'قسم شرطة  أسيوط الجديدة*'),
(303, 'سوهاج', 'قسم أول سوهاج'),
(304, 'سوهاج', 'قسم ثان سوهاج '),
(305, 'سوهاج', 'مركز سوهاج '),
(306, 'سوهاج', 'مركز المراغة '),
(307, 'سوهاج', 'مركز جهينة '),
(308, 'سوهاج', 'قسم طهطا '),
(309, 'سوهاج', 'مركز طهطا '),
(310, 'سوهاج', 'مركز طما '),
(311, 'سوهاج', 'مركز المنشأة'),
(312, 'سوهاج', 'مركز العسيرات '),
(313, 'سوهاج', 'قسم جرجا '),
(314, 'سوهاج', 'مركز جرجا '),
(315, 'سوهاج', 'مركز البلينا '),
(316, 'سوهاج', 'مركز دار السلام (أولاد طوق شرق سابقا)'),
(317, 'سوهاج', 'مركز أخميم '),
(318, 'سوهاج', 'مركز ساقلتة '),
(319, 'سوهاج', 'قسم الكوثر '),
(320, 'سوهاج', 'مدينة أخميم الجديدة *'),
(321, 'سوهاج', 'قسم  سوهاج الجديدة**'),
(322, 'سوهاج', 'مركز جزيرة شندويل '),
(323, 'قنا', 'قسم قــنا '),
(324, 'قنا', 'مركز قــنا '),
(325, 'قنا', 'مركز دشنا '),
(326, 'قنا', 'مركز الوقف '),
(327, 'قنا', 'مركز نجع حمادى '),
(328, 'قنا', 'مركز فرشوط'),
(329, 'قنا', 'مركز أبو تشت '),
(330, 'قنا', 'مركز قفط'),
(331, 'قنا', 'مركز قوص'),
(332, 'قنا', 'مركز نقادة '),
(333, 'قنا', 'مدينة قنا الجديدة *'),
(334, 'اسوان', 'قسم أول أسوان '),
(335, 'اسوان', 'قسم ثان أســــوان **'),
(336, 'اسوان', 'مركز أســـوان '),
(337, 'اسوان', 'قسم أسوان الجديدة '),
(338, 'اسوان', 'مركز إدفـــو'),
(339, 'اسوان', 'مركز كوم أمبــو '),
(340, 'اسوان', ' مركز  نصــر النوبة'),
(341, 'اسوان', 'مركز دراو '),
(342, 'اسوان', 'مركز أبو سمبل '),
(343, 'اسوان', 'مدينة توشكا الجديدة *'),
(344, 'الأقصر', 'قسم الأقصــــر '),
(345, 'الأقصر', 'مركز الأقصر '),
(346, 'الأقصر', 'مركز طيبــــة '),
(347, 'الأقصر', 'مركـز القرنة '),
(348, 'الأقصر', 'مركز أرمنت '),
(349, 'الأقصر', 'مركز إسنا '),
(350, 'البحر الاحمر', 'قسم أول الغــردقة '),
(351, 'البحر الاحمر', 'قسم ثان الغــردقة '),
(352, 'البحر الاحمر', 'قسم رأس غارب  '),
(353, 'البحر الاحمر', 'قسم ســفاجا '),
(354, 'البحر الاحمر', 'قسم القصيـــر '),
(355, 'البحر الاحمر', 'قسم مرســى علم '),
(356, 'البحر الاحمر', 'قسم الشلاتين  '),
(357, 'البحر الاحمر', 'قسم حــلايب '),
(358, 'الوادى الجديد', 'قسم الخارجة '),
(359, 'الوادى الجديد', 'مركز باريس '),
(360, 'الوادى الجديد', 'مركز بلاط '),
(361, 'الوادى الجديد', 'مركز الفرافرة '),
(362, 'الوادى الجديد', 'مركز الداخلة '),
(363, 'الوادى الجديد', 'شرق العوينات *'),
(364, 'مطروح', 'قسم مرسى مطروح '),
(365, 'مطروح', 'قسم النجيلة '),
(366, 'مطروح', 'قسم سيدى برانى '),
(367, 'مطروح', 'قسم السلوم '),
(368, 'مطروح', 'قسم الضبعة '),
(369, 'مطروح', 'قسم العلمين '),
(370, 'مطروح', 'قسم مارينا العلمين السياحية '),
(371, 'مطروح', 'قسم الحمام '),
(372, 'مطروح', 'قسم سيوة '),
(373, 'مطروح', 'الساحل الشمالى'),
(374, 'شمال سيناء', 'قسم أول العريش'),
(375, 'شمال سيناء', 'قسم ثان العريش '),
(376, 'شمال سيناء', 'قسم ثالث العريش '),
(377, 'شمال سيناء', 'قسم رابع العريش '),
(378, 'شمال سيناء', 'قسم بئر العبد '),
(379, 'شمال سيناء', 'قسم رمانة '),
(380, 'شمال سيناء', 'قسم الحسنة '),
(381, 'شمال سيناء', 'قسم نخل '),
(382, 'شمال سيناء', 'قسم القسيمة '),
(383, 'شمال سيناء', 'قسم الشيخ زويد '),
(384, 'شمال سيناء', 'قسم رفح'),
(385, 'جنوب سيناء', 'قسم الطــور '),
(386, 'جنوب سيناء', 'قسم أبو رديس '),
(387, 'جنوب سيناء', 'قسم رأس سدر '),
(388, 'جنوب سيناء', 'قسم سانت كاترين '),
(389, 'جنوب سيناء', 'قسم نويبع  '),
(390, 'جنوب سيناء', 'قسم طابا '),
(391, 'جنوب سيناء', 'قسم دهب '),
(392, 'جنوب سيناء', 'قسم أول شرم الشيخ '),
(393, 'جنوب سيناء', 'قسم ثان شرم الشيخ '),
(394, 'جنوب سيناء', ' قسم أبو زنيمة ');

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
(1, 'توحد'),
(2, 'ذكاء'),
(3, 'تكيف'),
(4, 'قلق'),
(5, 'اكتئاب'),
(6, 'صعوبات تعلم');

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
