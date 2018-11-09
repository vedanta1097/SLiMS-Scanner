-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2018 at 03:47 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slims`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `backup_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `backup_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `sor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` char(5) COLLATE utf8_unicode_ci DEFAULT 'en',
  `source` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_att` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT '0',
  `promoted` smallint(1) DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `frequency_id` int(11) NOT NULL DEFAULT '0',
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `content_type_id` int(11) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `carrier_type_id` int(11) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `gmd_id`, `title`, `sor`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `content_type_id`, `media_type_id`, `carrier_type_id`, `input_date`, `last_update`, `uid`) VALUES
(1, 1, 'Pemrograman Bahasa Assembly Konsep Dasar dan Implementasi', NULL, NULL, '978-979-29-1547-1', 1, '2010', NULL, NULL, '0051 Mam', 'id', NULL, 1, '0051', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(2, 1, 'Pemrograman JAVA Dasar-dasar Pengenalan dan pemahaman', NULL, NULL, '978-979-29-0917-3', 1, '2009', NULL, NULL, '005.1 Sar', 'id', NULL, 1, '005.1', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(3, 1, 'Algoritma dan pemrograman dewngan bahasa C- Konsep, Tori dan Implementasi', NULL, NULL, '978-979-29-1739-0', 1, '2010', NULL, NULL, '0051 Rac', 'id', NULL, 1, '0051', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(4, 1, 'PEMROGRAMAN C++', NULL, NULL, '978-602-8758-46-8', 2, '2011', NULL, NULL, '005.1 Bud', 'id', NULL, 2, '005.1', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(5, 1, 'KONSEP DAN IMPLEMENTASI STRUKTUR DATA dengan C++', NULL, NULL, '978-979-29-3328-4', 1, '2012', NULL, NULL, '0051 Lam', 'id', NULL, 1, '0051', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(6, 1, 'ANDROID : Pemrograman Aplikasi Mobile Smartohone dan Tablet PC Berbasis Android', NULL, NULL, '978-602-8758-52-9', 3, '2012', NULL, NULL, '0051 Naz', 'id', NULL, 2, '0051', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(7, 1, 'ALGORITMA DAN STRUKTUR DATA DALAM BAHASA JAVA', NULL, NULL, '978-979-29-0524-3', 1, '2008', NULL, NULL, '005.1 Adi', 'id', NULL, 1, '005.1', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(8, 1, 'SSP.NET MVC 2 In Action', NULL, NULL, '9781935182795', 4, '2010', NULL, NULL, '005.1Jef', 'id', NULL, 3, '005.1', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(9, 1, 'DASAR PEMROGRAMAN KOMPUTER / Dalam Bahasa Java', NULL, NULL, '978-979-29-0623-3', 1, '2009', NULL, NULL, '005.1 Sua', 'id', NULL, 4, '005.1', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(10, 1, 'ALGORITMA DAN STRUKTUR DATA DENGAN C#', NULL, NULL, '978-979-29-0678-3', 1, '2009', NULL, NULL, '005.1 Adi', 'id', NULL, 1, '005.1', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(11, 1, 'Tutorial Interaktif Sistem Keamanan & Instalasi Voip menggunakan Session Initiation Protokol', NULL, NULL, NULL, 5, '2012', NULL, NULL, '004.6 Che', 'id', NULL, 5, '004.6', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(12, 1, 'Tutorial interaktif instalasi intrution prevention system : berbasis open source', NULL, NULL, NULL, 6, '2012', NULL, NULL, '005 Che', 'id', NULL, 5, '005', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(13, 1, 'Tutorial Interaktif Keamanan Web Server menggunakan IPv6', NULL, NULL, NULL, 5, '2012', NULL, NULL, '004.6 Che', 'id', NULL, 6, '004.6', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(14, 1, 'Tutorial Interaktif Implementasi media STREAMING Server', NULL, NULL, NULL, 5, '2011', NULL, NULL, '006.6 Che', 'id', NULL, 5, '006', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(15, 1, 'Konsep & tuntunan Praktis Basis Data', NULL, '2', '979-731-045-0', 1, '2003', NULL, NULL, '005.74 Kad', 'id', NULL, 1, '005.74', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(16, 1, 'Rekayasa Perangkat Lunak pendekatan praktisi (buku satu)', NULL, '1', '979-533-808-0', 1, '2002', NULL, NULL, '005.1 Pre', 'id', NULL, 1, '005.1', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(17, 1, '10 Langkah belajar logika dan algoritma menggunakan bahasa C++ di GNU/Linuk', NULL, NULL, '979-763-020-x', 1, '2005', NULL, NULL, '005 Uta', 'id', NULL, 1, '005', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(18, 1, 'Pengetahuan Komputer dan Teknologi Informasi', NULL, NULL, '979-3338-36-9', 7, '2004', NULL, NULL, '658.4038 Feb', 'id', NULL, 2, '658.4038', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(19, 1, 'e-News Publishing Panduan Bagi Webmaster Cyber Media', NULL, '1', '979-731-424-3', 1, '2004', NULL, NULL, '004.678 Raf', 'id', NULL, 1, '004.678', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(20, 1, '4M (Memilih, Memakai, Merawat dan Memperbaiki) Netbook', NULL, '1', '978-979-29-2051-2', 1, '2012', NULL, NULL, '004.678 Elc', 'id', NULL, 1, '004.678', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(21, 1, 'Web application architecture : principles, protocols, and practices', NULL, NULL, '0471486566', 8, '2003', 'xi, 357 p. : ill. ; 23 cm.', NULL, '005.7/2-21 Leo w', 'en', NULL, 7, '005.7/2 21', 'An in-depth examination of the core concepts and general principles of Web application development.rnThis book uses examples from specific technologies (e.g., servlet API or XSL), without promoting or endorsing particular platforms or APIs. Such knowledge is critical when designing and debugging complex systems. This conceptual understanding makes it easier to learn new APIs that arise in the rapidly changing Internet environment.', 'webapp_arch.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(22, 1, 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', NULL, '2nd ed.', '9780596000356', 9, '2002', '500p.', NULL, '006.7-22 Mor i', 'en', NULL, 8, '006.7 22', 'Information Architecture for the World Wide Web is about applying the principles of architecture and library science to web site design. Each website is like a public building, available for tourists and regulars alike to breeze through at their leisure. The job of the architect is to set up the framework for the site to make it comfortable and inviting for people to visit, relax in, and perhaps even return to someday.', 'information_arch.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(23, 1, 'Producing open source software : how to run a successful free software project', NULL, '1st ed.', '9780596007591', 9, '2005', 'xx, 279 p. ; 24 cm.', NULL, '005.1-22 Fog p', 'en', NULL, 9, '005.1 22', 'Includes index.', 'producing_oss.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(24, 1, 'Library and Information Center Management', NULL, '7th ed.', '9781591584063', 10, '2007', 'xxviii, 492 p. : ill. ; 27 cm.', 'Library and information science text series', '025.1-22 Stu l', 'en', NULL, 10, '025.1 22', NULL, 'library_info_center.JPG', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(25, 1, 'The organization of information', NULL, '2nd ed.', '1563089769', 10, '2004', 'xxvii, 417 p. : ill. ; 27 cm.', 'Library and information science text series', '025-22 Tay o', 'en', NULL, 10, '025 22', 'A basic textbook for students of library and information studies, and a guide for practicing school library media specialists. Describes the impact of global forces and the school district on the development and operation of a media center, the technical and human side of management, programmatic activities, supportive services to students, and the quality and quantity of resources available to support programs.', 'organization_information.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(26, 1, 'PHP 5 for dummies', NULL, NULL, '0764541668', 11, '2004', 'xiv, 392 p. : ill. ; 24 cm.', 'For dummies', '005.13/3-22 Jan p', 'en', NULL, 7, '005.13/3 22', NULL, 'php5_dummies.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(27, 1, 'The Definitive Guide to MySQL 5', NULL, NULL, '9781590595350', 12, '2005', '784p.', 'Definitive Guide Series', '005.75/85-22 Kof d', 'en', NULL, 11, '005.75/85 22', NULL, 'mysql_def_guide.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(28, 1, 'Linux In a Nutshell', NULL, 'Fifth Edition', '9780596009304', 9, '2005', 'xiv, 925 p. : ill. ; 23 cm.', 'In a Nutshell', '005.4/32-22 Ell l', 'en', NULL, 9, '005.4/32 22', NULL, 'linux_in_a_nutshell.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(29, 1, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', NULL, NULL, '0-596-00108-8', 9, '2001', '208p.', NULL, '005.4/3222 Ray c', 'en', NULL, 9, '005.4/32 22', 'The Cathedral & the Bazaar is a must for anyone who cares about the future of the computer industry or the dynamics of the information economy. This revised and expanded paperback edition includes new material on open source developments in 1999 and 2000. Raymond\'s clear and effective writing style accurately describing the benefits of open source software has been key to its success. (Source: http://safari.oreilly.com/0596001088)', 'cathedral_bazaar.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(30, 1, 'Corruption and development', NULL, NULL, '9780714649023', 13, '1998', '166 p. : ill. ; 22 cm.', NULL, '364.1 Rob c', 'en', NULL, 12, '364.1/322/091724 21', 'The articles assembled in this volume offer a fresh approach to analysing the problem of corruption in developing countries and the k means to tackle the phenomenon.', 'corruption_development.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(31, 1, 'Corruption and development : the anti-corruption campaigns', NULL, NULL, '0230525504', 14, '2007', '310p.', NULL, '364.1 Bra c', 'en', NULL, 13, '364.1/323091724 22', 'This book provides a multidisciplinary interrogation of the global anti-corruption campaigns of the last ten years, arguing that while some positive change is observable, the period is also replete with perverse consequences and unintended outcomes', 'corruption_development_anti_campaign.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(32, 1, 'Pigs at the trough : how corporate greed and political corruption are undermining America', NULL, NULL, '1400047714', 15, '2003', '275 p. ; 22 cm.', NULL, '364.1323 Huf p', 'en', NULL, 13, '364.1323', NULL, 'pigs_at_trough.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(33, 1, 'Lords of poverty : the power, prestige, and corruption of the international aid business', NULL, NULL, '9780871134691', 16, '1994', 'xvi, 234 p. ; 22 cm.', NULL, '338.9 Han l', 'en', NULL, 13, '338.9/1/091724 20', 'Lords of Poverty is a case study in betrayals of a public trust. The shortcomings of aid are numerous, and serious enough to raise questions about the viability of the practice at its most fundamental levels. Hancocks report is thorough, deeply shocking, and certain to cause critical reevaluation of the governments motives in giving foreign aid, and of the true needs of our intended beneficiaries.', 'lords_of_poverty.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(34, 1, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', NULL, '1st ed.', '0735712573', 17, '2003', 'xvii, 790 p. : ill. ; 23cm.', 'DeveloperÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s library', '005.75/85-22 Kor p', 'en', NULL, 14, '005.75/85 22', 'PostgreSQL is the world\'s most advanced open-source database. PostgreSQL is the most comprehensive, in-depth, and easy-to-read guide to this award-winning database. This book starts with a thorough overview of SQL, a description of all PostgreSQL data types, and a complete explanation of PostgreSQL commands.', 'postgresql.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL),
(35, 1, 'Ajax : creating Web pages with asynchronous JavaScript and XML', NULL, NULL, '9780132272674', 18, '2007', 'xxii, 384 p. : ill. ; 24 cm.', 'Bruce PerensÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ Open Source series', '006.7/86-22 Woy a', 'en', NULL, 15, '006.7/86 22', 'Using Ajax, you can build Web applications with the sophistication and usability of traditional desktop applications and you can do it using standards and open source software. Now, for the first time, there\'s an easy, example-driven guide to Ajax for every Web and open source developer, regardless of experience.', 'ajax.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2018-11-02 17:45:09', '2018-11-02 17:45:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `access_type` enum('public','private') COLLATE utf8_unicode_ci NOT NULL,
  `access_limit` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_author`
--

INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 7, 2),
(11, 10, 2),
(11, 11, 2),
(11, 12, 2),
(12, 10, 2),
(12, 13, 2),
(12, 14, 2),
(13, 10, 2),
(14, 15, 2),
(15, 16, 2),
(16, 17, 2),
(17, 18, 2),
(17, 19, 2),
(18, 20, 2),
(19, 21, 2),
(20, 22, 2),
(21, 23, 2),
(21, 24, 2),
(22, 25, 2),
(22, 26, 2),
(23, 27, 2),
(24, 28, 2),
(24, 29, 2),
(25, 30, 2),
(26, 31, 2),
(27, 32, 2),
(27, 33, 2),
(28, 34, 2),
(28, 35, 2),
(28, 36, 2),
(28, 37, 2),
(28, 38, 2),
(29, 39, 2),
(30, 40, 2),
(31, 41, 2),
(32, 42, 2),
(33, 43, 2),
(34, 44, 2),
(34, 45, 2),
(35, 46, 2);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Table structure for table `biblio_log`
--

CREATE TABLE `biblio_log` (
  `biblio_log_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affectedrow` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rawdata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_relation`
--

CREATE TABLE `biblio_relation` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `rel_biblio_id` int(11) NOT NULL DEFAULT '0',
  `rel_type` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_topic`
--

INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES
(21, 2, 2),
(21, 10, 2),
(23, 8, 2),
(23, 9, 2),
(24, 11, 2),
(24, 14, 2),
(25, 11, 2),
(25, 12, 2),
(25, 13, 2),
(26, 1, 2),
(26, 2, 2),
(27, 1, 2),
(27, 6, 2),
(27, 7, 2),
(28, 3, 2),
(28, 4, 2),
(28, 5, 2),
(29, 4, 2),
(29, 8, 2),
(30, 15, 2),
(30, 16, 2),
(31, 15, 2),
(32, 15, 2),
(33, 15, 2),
(33, 17, 2),
(34, 1, 2),
(34, 7, 2),
(35, 1, 2),
(35, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `content_path` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_news` smallint(1) DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'Library Information', '<h3>Contact Information</h3>\r\n<p><strong>Address :</strong> <br /> Jenderal Sudirman Road, Senayan, Jakarta, Indonesia - Postal Code : 10270 <br /> <strong>Phone Number :</strong> <br /> (021) 5711144 <br /> <strong>Fax Number :</strong> <br /> (021) 5711144</p>\r\n<h3>Opening Hours</h3>\r\n<p><strong>Monday - Friday :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 20.00 PM <br /> <strong>Saturday  :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 17.00 PM</p>\r\n<h3>Collections</h3>\r\n<p>We have many types of collections in our library, range from Fictions to Sciences Material, from printed material to digital collections such CD-ROM, CD, VCD and DVD. We also collect daily serials publications such as newspaper and also monthly serials such as magazines.</p>\r\n<h3>Library Membership</h3>\r\n<p>To be able to loan our library collections, you must first become library member. There is terms and conditions that you must obey.</p>', 'libinfo', NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(2, 'Help On Usage', '<h3>Searching</h3>\r\n<p>There are 2 methods available on searching library catalog. The first one is <strong>SIMPLE SEARCH</strong>, which is the simplest method on searching catalog. You just enter any keyword, either it containes in titles, author(s) names or subjects. You can supply more than one keywords in Simple Search method and it will expanding your search results.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ADVANCED SEARCH</strong>, lets you define keywords in more specific fields. If you want your keywords only contained in title field, then type your keyword in Title field and the system will limit its search within <strong>Title</strong> fields only, not in other fields. Location field lets you narrowing search results by specific location, so only collection that exists in selected location get fetched by system.</p>', 'help', NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(3, 'Welcome To Admin Page', '<div class=\"container admin_home\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Bibliography</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon biblioIcon notAJAX\" href=\"index.php?mod=bibliography\"></a></div>\r\n<div class=\"col-sm-8\">The Bibliography module lets you manage your library bibliographical data. It also include collection items management to manage a copies of your library collection so it can be used in library circulation.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Circulation</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon circulationIcon notAJAX\" href=\"index.php?mod=circulation\"></a></div>\r\n<div class=\"col-sm-8\">The Circulation module is used for doing library circulation transaction such as collection loans and return. In this module you can also create loan rules that will be used in loan transaction proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Membership</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon memberIcon notAJAX\" href=\"index.php?mod=membership\"></a></div>\r\n<div class=\"col-sm-8\">The Membership module lets you manage library members such adding, updating and also removing. You can also manage membership type in this module.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Stock Take</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon stockTakeIcon notAJAX\" href=\"index.php?mod=stock_take\"></a></div>\r\n<div class=\"col-sm-8\">The Stock Take module is the easy way to do Stock Opname for your library collections. Follow several steps that ease your pain in Stock Opname proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Serial Control</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon serialIcon notAJAX\" href=\"index.php?mod=serial_control\"></a></div>\r\n<div class=\"col-sm-8\">Serial Control module help you manage library\'s serial publication subscription. You can track issues for each subscription.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Reporting</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon reportIcon notAJAX\" href=\"index.php?mod=reporting\"></a></div>\r\n<div class=\"col-sm-8\">Reporting lets you view various type of reports regardings membership data, circulation data and bibliographic data. All compiled on-the-fly from current library database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Master File</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon masterFileIcon notAJAX\" href=\"index.php?mod=master_file\"></a></div>\r\n<div class=\"col-sm-8\">The Master File modules lets you manage referential data that will be used by another modules. It include Authority File management such as Authority, Subject/Topic List, GMD and other data.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>System</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon systemIcon notAJAX\" href=\"index.php?mod=system\"></a></div>\r\n<div class=\"col-sm-8\">The System module is used to configure application globally, manage index, manage librarian, and also backup database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'adminhome', NULL, '2009-09-13 19:48:16', '2009-09-13 22:02:11', '1'),
(4, 'Homepage Info', '<p>Welcome To <strong>SLiMS Library</strong> Online Public Access Catalog (OPAC). Use OPAC to search collection in our library.</p>', 'headerinfo', NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(5, 'Tentang SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> adalah akronim dari Senayan Library Management System. Awalnya dikembangkan oleh Perpustakaan Kementerian Pendidikan Nasional untuk menggantikan Alice (http://www2.softlinkint.com). Tujuan utamanya agar Perpustakaan Kemdiknas mempunyai kebebasan untuk menggunakan, mempelajari, memodifikasi dan mendistribusikan perangkat lunak yang digunakan. SLiMS, maka dirilis dengan lisensi GPL dan sekarang pengembangan SLiMS dilakukan oleh komunitas penggunanya.<!--intro_akhir--></p>\r\n<p><strong>Asal Mula</strong></p>\r\n<p>Setelah beroperasi 50 tahun lebih, karena beberapa alasan Perpustakaan BC Indonesia yang telah selama bertahun-tahun menjadi andalan layanan BC di Indonesia harus ditutup. Pengelola BC Indonesia kemudian berinisiatif untuk menghibahkan pengelolaan aset perpustakaanya ke tangan institusi pemerintah. Dalam hal ini, institusi pemerintah yang dianggap sesuai bidangnya dan strategis tempatnya, adalah Departemen Pendidikan Nasional (Depdiknas). Yang dihibahkan tidak hanya koleksi, tetapi juga rak koleksi, hardware (server dan workstation) serta sistem termasuk untuk aplikasi manajemen administrasi perpustakaan (Alice).</p>\r\n<p>Seiring dengan berjalannya waktu, manajemen Perpustakaan Depdiknas mulai menghadapi beberapa kendala dalam penggunaan sistem Alice. Pertama, keterbatasan dalam menambahkan fitur-fitur baru. Antara lain: kebutuhan manajemen serial, meng-online-kan katalog di web dan kustomisasi report yang sering berubah-ubah kebutuhannya. Penambahan fitur jika harus meminta modul resmi dari developer Alice, berarti membutuhkan dana tambahan yang tidak kecil. Apalagi tidak ada distributor resminya di Indonesia sehingga harus mengharapkan support dari Inggris. Ditambah lagi beberapa persyaratan yang membutuhkan infrastruktur biaya mahal seperti dedicated public IP agar bisa meng-online-kan Alice di web.<br /><br />Saat itu untuk mengatasi sebagian kebutuhan (utamanya kustomisasi report), dilakukan dengan ujicoba mengakses langsung database yang disimpan dalam format DBase. Terkadang berhasil terkadang tidak karena struktur datanya proprietary dan kompleks serta jumlah rekodnya banyak. Untuk mempelajari struktur database, dicoba melakukan kontak via email ke developer Alice. Tetapi tidak ada respon sama sekali. Disini muncul masalah kedua. Sulitnya mempelajari lebih mendalam cara kerja perangkat lunak Alice. Karena Alice merupakan sistem proprietary yang serba tertutup, segala sesuatunya sangat tergantung vendor. Dibutuhkan sejumlah uang untuk mendapatkan layanan resmi untuk kustomisasi.<br /><br />Perpustakaan Depdiknas salah satu tupoksinya adalah melakukan koordinasi pengelolaan perpustakaan unit kerja dibawah lingkungan Depdiknas. Dalam implementasinya, seringkali muncul kebutuhan untuk bisa mendistribusikan perangkat lunak sistem perpustakaan ke berbagai unit kerja tersebut. Disini masalah ketiga: sulit (atau tidak mungkin) untuk melakukan redistribusi sistem Alice. Alice merupakan perangkat lunak yang secara lisensi tidak memungkinkan diredistribusi oleh pengelola Perpustakaan Depdiknas secara bebas. Semuanya harus ijin dan membutuhkan biaya.<br /><br />November 2006, perpustakaan dihadapkan oleh sebuah masalah mendasar. Sistem Alice tiba-tiba tidak bisa digunakan. Ternyata Alice yang digunakan selama ini diimplementasikan dengan sistem sewa. Pantas saja biayanya relatif murah. Tiap tahun pengguna harus membayar kembali untuk memperpanjang masa sewa pakainya. Tetapi yang mengkhawatirkan adalah fakta bahwa perpustakaan harus menyimpan semua informasi penting dan kritikal di sebuah sistem yang tidak pernah dimiliki. Yang kalau lupa atau tidak mau membayar sewa lagi, hilanglah akses terhadap data kita sendiri. Konyol sekali. Itu sama saja dengan bunuh diri kalau masih tergantung dengan sistem berlisensi seperti itu.<br /><br />Akhirnya pengelola Perpustakaan Depdiknas me-review kembali penggunaan sistem Alice di perpustakaan Depdiknas. Beberapa poin pentingnya antara lain:<br />&bull;&nbsp;&nbsp;&nbsp; Alice memang handal (reliable), tapi punya banyak keterbatasan. Biaya sewanya memang relatif murah, tetapi kalau membutuhkan support tambahan, baik sederhana ataupun kompleks, sangat tergantung dengan developer Alice yang berpusat di Inggris. Butuh biaya yang kalau di total juga tidak murah.<br />&bull;&nbsp;&nbsp;&nbsp; Model lisensi proprietary yang digunakan developer Alice tidak cocok dengan kondisi kebanyakan perpustakaan di Indonesia. Padahal pengelola Perpustakaan Depdiknas sebagai koordinator banyak perpustakaan di lingkungan Depdiknas, punya kepentingan untuk bisa dengan bebas melakukan banyak hal terhadap software yang digunakan.<br />&bull;&nbsp;&nbsp;&nbsp; Menyimpan data penting dan kritikal untuk operasional perpustakaan di suatu software yang proprietary dan menggunakan sistem sewa, dianggap sesuatu yang konyol dan mengancam independensi dan keberlangsungan perpustakaan itu sendiri.<br />&bull;&nbsp;&nbsp;&nbsp; Alice berjalan diatas sistem operasi Windows yang juga proprietary padahal pengelola Perpustakaan Depdiknas ingin beralih menggunakan Sistem Operasi open source (seperti GNU/Linux dan FreeBSD).<br />&bull;&nbsp;&nbsp;&nbsp; Masalah devisa negara yang terbuang untuk membayar software yang tidak pernah dimiliki.<br />&bull;&nbsp;&nbsp;&nbsp; Intinya: pengelola Perpustakaan Depdiknas ingin menggunakan software yang memberikan dan menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Lisensi Alice tidak memungkinkan untuk itu.<br /><br />Setelah memutuskan untuk hijrah menggunakan sistem yang lain, maka langkah berikutnya adalah mencari sistem yang ada untuk digunakan atau mengembangkan sendiri sistem yang dibutuhkan. Beberapa pertimbangan yang harus dipenuhi:<br />&bull;&nbsp;&nbsp;&nbsp; Dirilis dibawah lisensi yang menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Model lisensi open source (www.openosurce.org) dianggap sebagai model yang paling ideal dan sesuai.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan untuk membangun sistem juga harus berlisensi open source.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan haruslah teknologi yang relatif mudah dipelajari oleh pengelola perpustakaan Depdiknas yang berlatarbelakang pendidiknas pustakawan, seperti PHP (scripting language) dan MySQL (database). Jika tidak menguasai sisi teknis teknologi, maka akan terjebak kembali terhadap ketergantungan pada developer.<br /><br />Langkah berikutnya adalah melakukan banding software sistem perpustakaan open source yang bisa diperoleh di internet. Beberapa software yang dicoba antara lain: phpMyLibrary, OpenBiblio, KOHA, EverGreen. Pengelola perpustakaan Depdiknas merasa tidak cocok dengan software yang ada, dengan beberapa alasan:<br />&bull;&nbsp;&nbsp;&nbsp; Desain aplikasi dan database yang tidak baik atau kurang menerapkan secara serius prinsip-prinsip pengembangan aplikasi dan database yang baik sesuai dengan teori yang ada (PHPMyLibrary, OpenBiblio).<br />&bull;&nbsp;&nbsp;&nbsp; Menggunakan teknologi yang sulit dikuasai oleh pengelola perpustakaan Depdiknas (KOHA dan EverGreen dikembangkan menggunakan Perl dan C++ Language yang relatif lebih sulit dipelajari).<br />&bull;&nbsp;&nbsp;&nbsp; Beberapa sudah tidak aktif atau lama sekali tidak di rilis versi terbarunya (PHPMyLibrary dan OpenBiblio).<br /><br />Karena tidak menemukan sistem yang dibutuhkan, maka diputuskan untuk mengembangkan sendiri aplikasi sistem perpustakaan yang dibutuhkan. Dalam dunia pengembangan software, salah satu best practice-nya adalah memberikan nama kode (codename) pengembangan. Nama kode berbeda dengan nama aplikasinya itu sendiri. Nama kode biasanya berbeda-beda tiap versi. Misalnya kode nama &ldquo;Hardy Heron&rdquo; untuk Ubuntu Linux 8.04 dan &ldquo;Jaunty Jackalope&rdquo; untuk Ubuntu Linux 9.04. Pengelola perpustakaan Depdiknas Untuk versi awal (1.0) aplikasi yang akan dikembangkan, memberikan nama kode &ldquo;Senayan&rdquo;. Alasannya sederhana, karena awal dikembangkan di perpustakaan Depdiknas yang berlokasi di Senayan. Apalagi Perpustakaan Depdiknas mempunyai brand sebagai library@senayan. Belakangan karena dirasa nama &ldquo;Senayan&rdquo; dirasa cocok dan punya nilai marketing yang bagus, maka nama &ldquo;Senayan&rdquo; dijadikan nama resmi aplikasi sistem perpustakaan yang dikembangkan.<br /><br />Mengembangkan Senayan<br /><br />Sebelum mulai mengembangkan Senayan, ada beberapa keputusan desain aplikasi yang harus dibuat. Aspek desain ini penting diantaranya untuk pengambilankeputusan dari berbagai masukan yang datang dari komunitas. Antara lain:<br /><br />Pertama,&nbsp; Senayan adalah aplikasi untuk kebutuhan administrasi dan konten perpustakaan (Library Automation System). Senayan didesain untuk kebutuhan skala menengah maupun besar. Cocok untuk perpustakaan yang memiliki koleksi, anggota dan staf banyak di lingkungan jaringan, baik itu lokal (intranet) dan internet.<br /><br />Kedua, Senayan dibangun dengan memperhatikan best practice dalam pengembangan software seperti dalam hal penulisan source code, dokumentasi, dan desain database.<br /><br />Ketiga, Senayan dirancang untuk compliant dengan standar pengelolaan koleksi di perpustakaan. Untuk standar pengatalogan minimal memenuhi syarat AACR 2 level 2 (Anglo-American Cataloging Rules). Kebutuhan untuk kesesuaian dengan standar di perpustakaan terus berkembang dan pengelola perpustakaan Depdiknas dan developer Senayan berkomitmen untuk terus mengembangkan Senayan agar mengikuti standar-standar tersebut.<br /><br />Keempat, Senayan didesain agar bisa juga menjadi middleware bagi aplikasi lain untuk menggunakan data yang ada didalam Senayan. Untuk itu Senayan akan menyediakan API (application programming Interface) yang berbasis web service.<br /><br />Kelima, Senayan merupakan aplikasi yang cross-platform, baik dari sisi aplikasinya itu sendiri dan akses terhadap aplikasi. Untuk itu basis yang paling tepat ada basis web.<br /><br />Keenam, teknologi yang digunakan untuk membangun Senayan, haruslah terbukti bisa diinstall di banyak platform sistem operasi, berlisensi open source dan mudah dipelajari oleh pengelola perpustakaan Depdiknas. Diputuskan untuk menggunakan PHP (www.php.net) untuk web scripting languange dan MySQL (www.mysql.com) untuk server database.<br /><br />Ketujuh, diputuskan untuk mengembangkan library PHP sendiri yang didesain spesifik untuk kebutuhan membangun library automation system. Tidak menggunakan library PHP yang sudah terkenal seperti PEAR (pear.php.net) karena alasan penguasaan terhadap teknologi dan kesederhanaan. Library tersebut diberinama &ldquo;simbio&rdquo;.<br /><br />Kedelapan, untuk mempercepat proses pengembangan, beberapa modul atau fungsi yang dibutuhkan yang dirasa terlalu lama dan rumit untuk dikembangkan sendiri, akan menggunakan software open source yang berlisensi open source juga. Misalnya: flowplayer untuk dukungan multimedia, jQuery untuk dukungan AJAX (Asynchronous Javascript and XML), genbarcode untuk dukungan pembuatan barcode, PHPThumb untuk dukungan generate image on-the-fly, tinyMCE untuk web-based text editor, dan lain-lain.<br /><br />Kesembilan, untuk menjaga spirit open source, proses pengembangan Senayan dilakukan dengan infrastruktur yang berbasis open source. Misalnya: server web menggunakan Apache, server produksi menggunakan OS Linux Centos dan OpenSuse, para developer melakukan pengembangan dengan OS Ubuntu Linux, manajemen source code menggunakan software git, dan lain-lain.<br /><br />Kesepuluh, Senayan dirilis ke masyarakat umum dengan lisensi GNU/GPL versi 3 yang menjamin kebebasan penggunanya untuk mempelajari, menggunakan, memodifikasi dan redistribusi Senayan.<br /><br />Kesebelas, para developer dan pengelola perpustakaan Depdiknas berkomitmen untuk terus mengembangkan Senayan dan menjadikannya salah satu contoh software perpustakaan yang open source, berbasis di indonesia dan menjadi salah satu contoh bagi model pengembangan open source yang terbukti berjalan dengan baik.<br /><br />Keduabelas, model pengembangan Senayan adalah open source yang artinya setiap orang dipersilahkan memberikan kontribusinya. Baik dari sisi pemrogaman, template, dokumentasi, dan lain-lain. Tentu saja ada mekanisme mana kontribusi yang bagus untuk dimasukkan dalam rilis resmi, mana yang tidak. Mengacu ke dokumen &hellip; (TAMBAHKAN DENGAN TULISAN ERIC S RAYMOND)<br /><br />Model pengembangan senayan<br /><br />Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.<br />Fitur Senayan<br />Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN adalah sebagai berikut:<br />Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.<br /><br />Roadmap Pengembangan Senayan<br />SENAYAN akan terus dikembangkan oleh para pengembangnya beserta komunitas pengguna SENAYAN lainnya. Berikut adalah Roadmap pengembangan SENAYAN ke depannya:<br /><br />Pengembangan aplikasi:<br />1.&nbsp;&nbsp;&nbsp; Kompatibilitas dengan MARC dan standar pertukaran data yang komplit. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Memastikan bahwa format data bibliografi kompatibel dengan MARC secara lebih baik (minimal MARC light).<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap RFID.<br />&bull;&nbsp;&nbsp;&nbsp; Fitur untuk impor / ekspor rekod dari The Online Computer Library Centre (OCLC), Research Libraries Information Network (RLIN), vendor sistem lain yang compliant dengan MARC.<br />&bull;&nbsp;&nbsp;&nbsp; Validasi data ISBN menggunakan modulus seven.<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap standar di perpustakaan, seperti: Library of Congress Subject Headings, Library of Congress Classification, ALA filing rules, International Standard Bibliographic Description, ANSI Standard for Bibliographic Information Exchange on magnetic tape, Common communication format (ISO 2709).<br />2.&nbsp;&nbsp;&nbsp; Katalog induk/bersama (union catalog)<br />3.&nbsp;&nbsp;&nbsp; Implementasi Thesaurus. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pengatalogan.<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pencarian, misalnya memberikan advis pencarian menggunakan knowledge base yang dibangun dengan sistem tesaurus.<br />4.&nbsp;&nbsp;&nbsp; Implementasi Library 2.0. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; User bisa login dan mempunyai halaman personalisasi.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan reservasi koleksi dan memperpanjang peminjaman.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan komunikasi dengan pustakawan via messaging system.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan tagging, rekomendasi koleksi dan menyimpannya didalam daftar koleksi favoritnya.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa memberikan komentar terhadap koleksi.<br />&bull;&nbsp;&nbsp;&nbsp; Pustakawan bisa memasukkan preferensi pemakai didalam data keanggotaan. Preferensi tersebut bisa dimanfaatkan salah satunya untuk men-generate semacam daftar koleksi terpilih untuk dicetak atau ditampilkan ketika user login.<br />5.&nbsp;&nbsp;&nbsp; Peningkatan dukungan manajemen konten digital dan entri analitikal<br /><br />Pengembangan basis komunitas pengguna:<br />&bull;&nbsp;&nbsp;&nbsp; Membangun komunitas pengguna di berbagai kota <br />&bull;&nbsp;&nbsp;&nbsp; Mengadakan Senayan Developers Day untuk silaturahmi antar developer Senayan, update dokumentasi, penambahan fitur baru dan bug fixing dan mencari bibit pengembang yang baru.<br />&bull;&nbsp;&nbsp;&nbsp; Workshop/Seminar Nasional Tahunan<br />&bull;&nbsp;&nbsp;&nbsp; Jam Sessions rutin setiap 3 bulan</p>', 'about_slims', NULL, '2010-08-28 23:29:55', '2010-11-12 18:21:01', '1'),
(6, 'Modul yang Tersedia', '<p><!--intro_awal-->Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN antara lain: pengatalogan/bibliografi, keanggotaan, sirkulasi, masterfile, stock opname (inventarisasi koleksi), pelaporan/reporting, manajemen kontrol serial, digital library, dan lain-lain.<!--intro_akhir--></p>\r\n<p>Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.</p>', 'modul_tersedia', NULL, '2010-08-29 04:03:09', '2010-08-29 04:05:49', '1'),
(7, 'Lisensi SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> dilisensikan dibawah GNU/GPL (http://www.gnu.org/licenses/gpl.html) untuk menjamin kebebasan pengguna dalam menggunakannya. GNU General Public License (disingkat GNU GPL atau cukup GPL) merupakan suatu lisensi perangkat lunak bebas yang aslinya ditulis oleh Richard Stallman untuk proyek GNU. Lisensi GPL memberikan penerima salinan perangkat lunak hak dari perangkat lunak bebas dan menggunakan copyleft&nbsp; untuk memastikan kebebasan yang sama diterapkan pada versi berikutnya dari karya tersebut.<!--intro_akhir--></p>\r\n<p>&nbsp;GNU LESSER GENERAL PUBLIC LICENSE<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 3, 29 June 2007<br /><br />&nbsp;Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;<br />&nbsp;Everyone is permitted to copy and distribute verbatim copies<br />&nbsp;of this license document, but changing it is not allowed.<br /><br /><br />&nbsp; This version of the GNU Lesser General Public License incorporates<br />the terms and conditions of version 3 of the GNU General Public<br />License, supplemented by the additional permissions listed below.<br /><br />&nbsp; 0. Additional Definitions.<br /><br />&nbsp; As used herein, \"this License\" refers to version 3 of the GNU Lesser<br />General Public License, and the \"GNU GPL\" refers to version 3 of the GNU<br />General Public License.<br /><br />&nbsp; \"The Library\" refers to a covered work governed by this License,<br />other than an Application or a Combined Work as defined below.<br /><br />&nbsp; An \"Application\" is any work that makes use of an interface provided<br />by the Library, but which is not otherwise based on the Library.<br />Defining a subclass of a class defined by the Library is deemed a mode<br />of using an interface provided by the Library.<br /><br />&nbsp; A \"Combined Work\" is a work produced by combining or linking an<br />Application with the Library.&nbsp; The particular version of the Library<br />with which the Combined Work was made is also called the \"Linked<br />Version\".<br /><br />&nbsp; The \"Minimal Corresponding Source\" for a Combined Work means the<br />Corresponding Source for the Combined Work, excluding any source code<br />for portions of the Combined Work that, considered in isolation, are<br />based on the Application, and not on the Linked Version.<br /><br />&nbsp; The \"Corresponding Application Code\" for a Combined Work means the<br />object code and/or source code for the Application, including any data<br />and utility programs needed for reproducing the Combined Work from the<br />Application, but excluding the System Libraries of the Combined Work.<br /><br />&nbsp; 1. Exception to Section 3 of the GNU GPL.<br /><br />&nbsp; You may convey a covered work under sections 3 and 4 of this License<br />without being bound by section 3 of the GNU GPL.<br /><br />&nbsp; 2. Conveying Modified Versions.<br /><br />&nbsp; If you modify a copy of the Library, and, in your modifications, a<br />facility refers to a function or data to be supplied by an Application<br />that uses the facility (other than as an argument passed when the<br />facility is invoked), then you may convey a copy of the modified<br />version:<br /><br />&nbsp;&nbsp; a) under this License, provided that you make a good faith effort to<br />&nbsp;&nbsp; ensure that, in the event an Application does not supply the<br />&nbsp;&nbsp; function or data, the facility still operates, and performs<br />&nbsp;&nbsp; whatever part of its purpose remains meaningful, or<br /><br />&nbsp;&nbsp; b) under the GNU GPL, with none of the additional permissions of<br />&nbsp;&nbsp; this License applicable to that copy.<br /><br />&nbsp; 3. Object Code Incorporating Material from Library Header Files.<br /><br />&nbsp; The object code form of an Application may incorporate material from<br />a header file that is part of the Library.&nbsp; You may convey such object<br />code under terms of your choice, provided that, if the incorporated<br />material is not limited to numerical parameters, data structure<br />layouts and accessors, or small macros, inline functions and templates<br />(ten or fewer lines in length), you do both of the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the object code that the<br />&nbsp;&nbsp; Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the object code with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp; 4. Combined Works.<br /><br />&nbsp; You may convey a Combined Work under terms of your choice that,<br />taken together, effectively do not restrict modification of the<br />portions of the Library contained in the Combined Work and reverse<br />engineering for debugging such modifications, if you also do each of<br />the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the Combined Work that<br />&nbsp;&nbsp; the Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the Combined Work with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp;&nbsp; c) For a Combined Work that displays copyright notices during<br />&nbsp;&nbsp; execution, include the copyright notice for the Library among<br />&nbsp;&nbsp; these notices, as well as a reference directing the user to the<br />&nbsp;&nbsp; copies of the GNU GPL and this license document.<br /><br />&nbsp;&nbsp; d) Do one of the following:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0) Convey the Minimal Corresponding Source under the terms of this<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License, and the Corresponding Application Code in a form<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suitable for, and under terms that permit, the user to<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recombine or relink the Application with a modified version of<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Linked Version to produce a modified Combined Work, in the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; manner specified by section 6 of the GNU GPL for conveying<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Corresponding Source.<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) Use a suitable shared library mechanism for linking with the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Library.&nbsp; A suitable mechanism is one that (a) uses at run time<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a copy of the Library already present on the user\'s computer<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; system, and (b) will operate properly with a modified version<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the Library that is interface-compatible with the Linked<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version.<br /><br />&nbsp;&nbsp; e) Provide Installation Information, but only if you would otherwise<br />&nbsp;&nbsp; be required to provide such information under section 6 of the<br />&nbsp;&nbsp; GNU GPL, and only to the extent that such information is<br />&nbsp;&nbsp; necessary to install and execute a modified version of the<br />&nbsp;&nbsp; Combined Work produced by recombining or relinking the<br />&nbsp;&nbsp; Application with a modified version of the Linked Version. (If<br />&nbsp;&nbsp; you use option 4d0, the Installation Information must accompany<br />&nbsp;&nbsp; the Minimal Corresponding Source and Corresponding Application<br />&nbsp;&nbsp; Code. If you use option 4d1, you must provide the Installation<br />&nbsp;&nbsp; Information in the manner specified by section 6 of the GNU GPL<br />&nbsp;&nbsp; for conveying Corresponding Source.)<br /><br />&nbsp; 5. Combined Libraries.<br /><br />&nbsp; You may place library facilities that are a work based on the<br />Library side by side in a single library together with other library<br />facilities that are not Applications and are not covered by this<br />License, and convey such a combined library under terms of your<br />choice, if you do both of the following:<br /><br />&nbsp;&nbsp; a) Accompany the combined library with a copy of the same work based<br />&nbsp;&nbsp; on the Library, uncombined with any other library facilities,<br />&nbsp;&nbsp; conveyed under the terms of this License.<br /><br />&nbsp;&nbsp; b) Give prominent notice with the combined library that part of it<br />&nbsp;&nbsp; is a work based on the Library, and explaining where to find the<br />&nbsp;&nbsp; accompanying uncombined form of the same work.<br /><br />&nbsp; 6. Revised Versions of the GNU Lesser General Public License.<br /><br />&nbsp; The Free Software Foundation may publish revised and/or new versions<br />of the GNU Lesser General Public License from time to time. Such new<br />versions will be similar in spirit to the present version, but may<br />differ in detail to address new problems or concerns.<br /><br />&nbsp; Each version is given a distinguishing version number. If the<br />Library as you received it specifies that a certain numbered version<br />of the GNU Lesser General Public License \"or any later version\"<br />applies to it, you have the option of following the terms and<br />conditions either of that published version or of any later version<br />published by the Free Software Foundation. If the Library as you<br />received it does not specify a version number of the GNU Lesser<br />General Public License, you may choose any version of the GNU Lesser<br />General Public License ever published by the Free Software Foundation.<br /><br />&nbsp; If the Library as you received it specifies that a proxy can decide<br />whether future versions of the GNU Lesser General Public License shall<br />apply, that proxy\'s public statement of acceptance of any version is<br />permanent authorization for you to choose that version for the<br />Library.</p>', 'lisensi_slims', NULL, '2010-08-29 04:04:33', '2010-11-12 22:15:43', '1');
INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `input_date`, `last_update`, `content_ownpage`) VALUES
(8, 'Model Pengembangan Open Source', '<p><!--intro_awal-->Sumber terbuka (Inggris: open source) adalah sistem pengembangan yang tidak dikoordinasi oleh suatu individu / lembaga pusat, tetapi oleh para pelaku yang bekerja sama dengan memanfaatkan kode sumber (source-code) yang tersebar dan tersedia bebas (biasanya menggunakan fasilitas komunikasi internet). Pola pengembangan ini mengambil model ala bazaar, sehingga pola Open Source ini memiliki ciri bagi komunitasnya yaitu adanya dorongan yang bersumber dari budaya memberi.<!--intro_akhir--><br /><br />Pola Open Source lahir karena kebebasan berkarya, tanpa intervensi berpikir dan mengungkapkan apa yang diinginkan dengan menggunakan pengetahuan dan produk yang cocok. Kebebasan menjadi pertimbangan utama ketika dilepas ke publik. Komunitas yang lain mendapat kebebasan untuk belajar, mengutak-ngatik, merevisi ulang, membenarkan ataupun bahkan menyalahkan, tetapi kebebasan ini juga datang bersama dengan tanggung jawab, bukan bebas tanpa tanggung jawab.<br /><br />Pada intinya konsep sumber terbuka adalah membuka \"kode sumber\" dari sebuah perangkat lunak. Konsep ini terasa aneh pada awalnya dikarenakan kode sumber merupakan kunci dari sebuah perangkat lunak. Dengan diketahui logika yang ada di kode sumber, maka orang lain semestinya dapat membuat perangkat lunak yang sama fungsinya. Sumber terbuka hanya sebatas itu. Artinya, dia tidak harus gratis. Definisi sumber terbuka yang asli adalah seperti tertuang dalam OSD (Open Source Definition)/Definisi sumber terbuka.</p>\r\n<p>Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.</p>', 'opensource', NULL, '2010-08-29 04:05:16', '2010-08-29 04:34:04', '1');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8_unicode_ci,
  `file_dir` text COLLATE utf8_unicode_ci,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_desc` text COLLATE utf8_unicode_ci,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `debet` int(11) DEFAULT '0',
  `credit` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `r` int(1) NOT NULL DEFAULT '0',
  `w` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `r`, `w`) VALUES
(1, 1, 1, 1),
(1, 2, 1, 1),
(1, 3, 1, 1),
(1, 4, 1, 1),
(1, 5, 1, 1),
(1, 6, 1, 1),
(1, 7, 1, 1),
(1, 8, 1, 1),
(2, 1, 1, 1),
(2, 2, 1, 1),
(2, 3, 1, 1),
(2, 4, 1, 1),
(2, 5, 1, 1),
(2, 7, 1, 1),
(2, 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventory_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT '0',
  `invoice` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `biblio_id`, `call_number`, `coll_type_id`, `item_code`, `inventory_code`, `received_date`, `supplier_id`, `order_no`, `location_id`, `order_date`, `item_status_id`, `site`, `source`, `invoice`, `price`, `price_currency`, `invoice_date`, `input_date`, `last_update`, `uid`) VALUES
(1, 1, NULL, NULL, '02266.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(2, 2, NULL, NULL, '02265.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(3, 3, NULL, NULL, '02264.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(4, 4, NULL, NULL, '02263.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(5, 5, NULL, NULL, '02262.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(6, 6, NULL, NULL, '02261.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(7, 7, NULL, NULL, '02260.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(8, 8, NULL, NULL, '02259.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(9, 9, NULL, NULL, '005.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(10, 10, NULL, NULL, '02238.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(11, 11, NULL, NULL, '00084.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(12, 11, NULL, NULL, '00084.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(13, 11, NULL, NULL, '00084.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(14, 11, NULL, NULL, '00084.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(15, 11, NULL, NULL, '00084.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(16, 11, NULL, NULL, '00084.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(17, 12, NULL, NULL, '01073.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(18, 12, NULL, NULL, '01073.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(19, 12, NULL, NULL, '01073.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(20, 12, NULL, NULL, '01073.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(21, 12, NULL, NULL, '01073.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(22, 12, NULL, NULL, '01073.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(23, 13, NULL, NULL, '00238.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(24, 13, NULL, NULL, '00238.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(25, 13, NULL, NULL, '00238.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(26, 13, NULL, NULL, '00238.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(27, 13, NULL, NULL, '00238.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(28, 13, NULL, NULL, '00238.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(29, 13, NULL, NULL, '00238.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(30, 14, NULL, NULL, '01978.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(31, 14, NULL, NULL, '01978.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(32, 14, NULL, NULL, '01978.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(33, 14, NULL, NULL, '01978.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(34, 14, NULL, NULL, '01978.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(35, 14, NULL, NULL, '01978.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(36, 14, NULL, NULL, '01978.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(37, 14, NULL, NULL, '01978.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(38, 15, NULL, NULL, '00589.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(39, 15, NULL, NULL, '00589.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(40, 15, NULL, NULL, '00589.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(41, 15, NULL, NULL, '00589.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(42, 15, NULL, NULL, '00589.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(43, 16, NULL, NULL, '02236.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(44, 17, NULL, NULL, '01715.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(45, 17, NULL, NULL, '01715.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(46, 17, NULL, NULL, '01715.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(47, 17, NULL, NULL, '01715.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(48, 18, NULL, NULL, '00378.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(49, 18, NULL, NULL, '00378.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(50, 18, NULL, NULL, '00378.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(51, 18, NULL, NULL, '00378.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(52, 18, NULL, NULL, '00378.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(53, 18, NULL, NULL, '00378.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(54, 19, NULL, NULL, '01224.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(55, 19, NULL, NULL, '01224.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(56, 20, NULL, NULL, '01134.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(57, 20, NULL, NULL, '01134.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(58, 20, NULL, NULL, '01134.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(59, 20, NULL, NULL, '01131.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL),
(60, 20, NULL, NULL, '01134.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT '0',
  `loan_rules_id` int(11) NOT NULL DEFAULT '0',
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT '0',
  `is_return` int(11) NOT NULL DEFAULT '0',
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `item_code`, `member_id`, `loan_date`, `due_date`, `renewed`, `loan_rules_id`, `actual`, `is_lent`, `is_return`, `return_date`, `input_date`, `last_update`, `uid`) VALUES
(1, '02266.1', '160030229', '2018-11-02', '2018-11-08', 0, 0, NULL, 1, 0, NULL, '2018-11-02 18:05:42', '2018-11-02 18:05:42', 2),
(2, '02265.1', '160030230', '2018-11-02', '2018-11-08', 0, 0, NULL, 1, 0, NULL, '2018-11-02 18:06:04', '2018-11-02 18:06:04', 2),
(3, '02264.1', '160030227', '2018-11-02', '2018-11-08', 0, 0, NULL, 1, 0, NULL, '2018-11-02 18:06:36', '2018-11-02 18:06:36', 3);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inst_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text COLLATE utf8_unicode_ci,
  `is_pending` smallint(1) NOT NULL DEFAULT '0',
  `mpasswd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `gender`, `birth_date`, `member_type_id`, `member_address`, `member_mail_address`, `member_email`, `postal_code`, `inst_name`, `is_new`, `member_image`, `pin`, `member_phone`, `member_fax`, `member_since_date`, `register_date`, `expire_date`, `member_notes`, `is_pending`, `mpasswd`, `last_login`, `last_login_ip`, `input_date`, `last_update`) VALUES
('160030229', 'ATANASIO BAPTISTA AMARAL', 1, '1996-08-30', 3, 'JL. TUKAD CITARUM BLOK P NO. 11', NULL, 'atanasiobaptista@yahoo.com', NULL, 'STIKOM Bali', 0, 'member_160030229.jpg', NULL, '06281239692511', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030230', 'I PUTU DARMAYASA', 1, '1997-10-10', 3, 'JL. P.B SUDIRMAN 2 NO.34', NULL, 'putudarmays@yahoo.co.id', NULL, 'STIKOM Bali', 0, 'member_160030230.jpg', NULL, '081236066448', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030227', 'PUTU WANA SETITI', 0, '1998-06-26', 3, 'DS PUCAKSARI KEC BUSUNGBIU', NULL, 'wanasetiti6@gmail.com', NULL, 'STIKOM Bali', 0, NULL, NULL, '085969016799', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030228', 'NI PUTU ERLINA PEBRIANI', 0, '1998-02-28', 3, 'Jl.Banteng Gg IV, No.8 Denpasar', NULL, 'erlinafebriani26@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030228.jpg', NULL, '0857-3894-6734', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030223', 'TRI DEWI LUTFI ANGGRENI', 0, '1998-10-27', 3, 'JALAN MONANG MANING GANG IMBORA NO. 15 kamar no. 06', NULL, 'fiylutfi27@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030223.jpg', NULL, '089507618108', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030224', 'NI PUTU DIAH FITRIANI DEWI', 0, '1997-02-11', 3, 'JL PANTAI BALANGAN 1 UNGASAN', NULL, 'diahfitrianidewi@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030224.jpg', NULL, '083114633979', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030225', 'WAYAN MITHA UTAMI', 0, '1998-04-08', 3, 'DUSUN KELODAN DS TEJAKULA', NULL, 'mithautami647@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030225.jpg', NULL, '087762483541', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030226', 'PUTU SRI ERAWATI', 0, '1997-12-29', 3, 'BR DINAS BELATUNG DS BATUSESA RENDANG KARANGASEM', NULL, 'srierawati97@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030226.jpg', NULL, '082144922659', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030220', 'NI GUSTI AYU OKTAVIANI SANTI', 0, '1997-10-30', 3, 'LINGKUNGAN PADANGKERTA TENGAH', NULL, 'okta78592@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030220.jpg', NULL, '081353331453', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030221', 'NI LUH PUTU SUARI MANIK', 0, '1998-01-02', 3, 'BR JUNGUT BATUAN SUKAWATI GIANYAR', NULL, NULL, NULL, 'STIKOM Bali', 0, NULL, NULL, '081238374721', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030222', 'PUTU DENANTA BAYUGUNA PERTEKA', 1, '1997-11-11', 3, 'JL. MELATYU 2 BTN REMBIGA', NULL, NULL, NULL, 'STIKOM Bali', 0, NULL, NULL, '082340124620', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030231', 'RIRI KUMALA SARI', 0, '1998-05-08', 3, 'JALAN NANGKA GANG KASWARI NO. 14', NULL, 'ririkumalasari8@gmail.com', NULL, 'STIKOM Bali', 0, NULL, NULL, '089633702629', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030232', 'I KADEK DWI PUTRA JANUARIAWAN', 1, '1997-01-17', 3, 'BR TENGAH ULAKAN', NULL, 'januariawan89@gmail.co.id', NULL, 'STIKOM Bali', 0, 'member_160030232.jpg', NULL, '083114595990', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030233', 'NELY INAYATUS SHOLEHAH', 0, '1998-01-26', 3, 'JL AHMAD YANI GG KAMBOJA 1 no 7', NULL, 'nelynaya26@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030233.jpg', NULL, '08993012269', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030234', 'DEWA MADE KUTHA SATRIA ARI PURWADANA', 1, '1994-12-06', 3, 'JL. SOKA GANG KERTAPURA VB NO.19 KESIMAN', NULL, 'arixdearix@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030234.jpg', NULL, '085738787477', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030235', 'NI WAYAN ANIS PURNITA DEWI', 0, '1998-04-26', 3, 'jl.tukad banyu poh IX', NULL, 'anis_purnitadewi@yahoo.com', NULL, 'STIKOM Bali', 0, 'member_160030235.jpg', NULL, '083111855712', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030236', 'YERICHO WAHYU NAZARANI DEO PRIANTO', 1, '1998-01-17', 3, 'JL. PIRANHA 2 NO.9', NULL, 'richowahyu07@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030236.jpg', NULL, '085953703948', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030237', 'NI WAYAN EVIYANA NATYA S', 0, '1998-03-29', 3, 'PACUNG BATURITI TABANAN', NULL, 'eviyanaa129@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030237.jpg', NULL, '083115410051', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030238', 'I GEDE ARYA MULIANTARA', 1, '1998-11-24', 3, 'JL. NANGKA UTARA GANG KUSUMA SARI NO. 5', NULL, 'aryapbb24@gmail.com', NULL, 'STIKOM Bali', 0, 'member_160030238.jpg', NULL, '089619446865', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02'),
('160030239', 'KADEK AGUS APRILLA', 1, '1998-04-26', 3, 'JL GANDAPURA VI 5X', NULL, 'agusaprilla81@gmail.com', NULL, 'STIKOM Bali', 0, NULL, NULL, '083114306615', NULL, '2016-09-01', '2016-09-01', '2021-08-06', NULL, 0, NULL, NULL, NULL, '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Table structure for table `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authority_type` enum('p','o','c') COLLATE utf8_unicode_ci DEFAULT 'p',
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES
(1, 'Maman Abdurohman', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(2, 'SariadinSiallagan', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(3, 'Antonius Rachmat C', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(4, 'Budi Raharjo', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(5, 'Lamhot Sitorus, David J.M. Sambiring', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(6, 'Nazruddin Safaat H', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(7, 'Adi Nugroho', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(8, 'Jeffrey, Ben scheirman Jimmy Bogard, Eric hexter and Mattew Hinze', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(9, 'Suarga', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(10, 'Aidil Chendramata', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(11, 'Adhityo Priyambodo', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(12, 'Nasrullah', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(13, 'Sutanto sugi jodi', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(14, 'Wisnu linggakusuma', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(15, 'kementrian komunikasi dan informatika', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(16, 'Abdul Kadir', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(17, 'Roger S. Pressman, Ph.D', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(18, 'Ema Utami', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(19, 'Sukrisno', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(20, 'Jack Febrian', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(21, 'rahmat rafiudin', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(22, 'Elcom', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(23, 'Shklar, Leon', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(24, 'Rosen, Richard', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(25, 'Morville, Peter', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(26, 'Rosenfeld, Louis', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(27, 'Fogel, Karl', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(28, 'Stueart, Robert D.', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(29, 'Moran, Barbara B.', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(30, 'Taylor, Arlene G.', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(31, 'Valade, Janet', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(32, 'Kofler, Michael', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(33, 'Kramer, David', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(34, 'Siever, Ellen', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(35, 'Love, Robert', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(36, 'Robbins, Arnold', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(37, 'Figgins, Stephen', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(38, 'Weber, Aaron', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(39, 'Raymond, Eric', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(40, 'Robinson, Mark', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(41, 'Bracking, Sarah', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(42, 'Huffington, Arianna Stassinopoulos', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(43, 'Hancock, Graham', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(44, 'Douglas, Korry', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(45, 'Douglas, Susan', NULL, 'p', NULL, '2018-11-02', '2018-11-02'),
(46, 'Woychowsky, Edmond', NULL, 'p', NULL, '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_carrier_type`
--

CREATE TABLE `mst_carrier_type` (
  `id` int(11) NOT NULL,
  `carrier_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_carrier_type`
--

INSERT INTO `mst_carrier_type` (`id`, `carrier_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio cartridge', 'sg', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'audio cylinder', 'se', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'audio disc', 'sd', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'sound track reel', 'si', 'i', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'audio roll', 'sq', 'q', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'audiocassette', 'ss', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'audiotape reel', 'st', 't', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'other (audio)', 'sz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'computer card', 'ck', 'k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'computer chip cartridge', 'cb', 'b', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'computer disc', 'cd', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'computer disc cartridge', 'ce', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'computer tape cartridge', 'ca', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'computer tape cassette', 'cf', 'f', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'computer tape reel', 'ch', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'online resource', 'cr', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'other (computer)', 'cz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'aperture card', 'ha', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'microfiche', 'he', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'microfiche cassette', 'hf', 'f', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'microfilm cartridge', 'hb', 'b', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'microfilm cassette', 'hc', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'microfilm reel', 'hd', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'microfilm roll', 'hj', 'j', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'microfilm slip', 'hh', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'microopaque', 'hg', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'other (microform)', 'hz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'microscope slide', 'pp', 'p', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'other (microscope)', 'pz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'film cartridge', 'mc', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'film cassette', 'mf', 'f', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'film reel', 'mr', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'film roll', 'mo', 'o', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'filmslip', 'gd', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'filmstrip', 'gf', 'f', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'filmstrip cartridge', 'gc', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'overhead transparency', 'gt', 't', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'slide', 'gs', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'other (projected image)', 'mz', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'stereograph card', 'eh', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'stereograph disc', 'es', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'other (stereographic)', 'ez', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'card', 'no', 'o', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'flipchart', 'nn', 'n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'roll', 'na', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'sheet', 'nb', 'b', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'volume', 'nc', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'object', 'nr', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'other (unmediated)', 'nz', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'video cartridge', 'vc', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'videocassette', 'vf', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'videodisc', 'vd', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'videotape reel', 'vr', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'other (video)', 'vz', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'unspecified', 'zu', 'u', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Reference', '2007-11-29', '2007-11-29'),
(2, 'Textbook', '2007-11-29', '2007-11-29'),
(3, 'Fiction', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_content_type`
--

CREATE TABLE `mst_content_type` (
  `id` int(11) NOT NULL,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_content_type`
--

INSERT INTO `mst_content_type` (`id`, `content_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'cartographic dataset', 'crd', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'cartographic image', 'cri', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'cartographic moving image', 'crm', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'cartographic tactile image', 'crt', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'cartographic tactile three-dimensional form', 'crn', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'cartographic three-dimensional form', 'crf', 'e', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'computer dataset', 'cod', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'computer program', 'cop', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'notated movement', 'ntv', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'notated music', 'ntm', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'performed music', 'prm', 'j', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'sounds', 'snd', 'i', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'spoken word', 'spw', 'i', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'still image', 'sti', 'k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'tactile image', 'tci', 'k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'tactile notated music', 'tcm', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'tactile notated movement', 'tcn', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'tactile text', 'tct', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'tactile three-dimensional form', 'tcf', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'text', 'txt', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'three-dimensional form', 'tdf', 'r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'three-dimensional moving image', 'tdm', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'two-dimensional moving image', 'tdi', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'other', 'xxx', 'o', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'unspecified', 'zzz', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `language_prefix` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') COLLATE utf8_unicode_ci DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'Text', NULL, '2018-11-02', '2018-11-02'),
(2, 'AR', 'Art Original', NULL, '2018-11-02', '2018-11-02'),
(3, 'CH', 'Chart', NULL, '2018-11-02', '2018-11-02'),
(4, 'CO', 'Computer Software', NULL, '2018-11-02', '2018-11-02'),
(5, 'DI', 'Diorama', NULL, '2018-11-02', '2018-11-02'),
(6, 'FI', 'Filmstrip', NULL, '2018-11-02', '2018-11-02'),
(7, 'FL', 'Flash Card', NULL, '2018-11-02', '2018-11-02'),
(8, 'GA', 'Game', NULL, '2018-11-02', '2018-11-02'),
(9, 'GL', 'Globe', NULL, '2018-11-02', '2018-11-02'),
(10, 'KI', 'Kit', NULL, '2018-11-02', '2018-11-02'),
(11, 'MA', 'Map', NULL, '2018-11-02', '2018-11-02'),
(12, 'MI', 'Microform', NULL, '2018-11-02', '2018-11-02'),
(13, 'MN', 'Manuscript', NULL, '2018-11-02', '2018-11-02'),
(14, 'MO', 'Model', NULL, '2018-11-02', '2018-11-02'),
(15, 'MP', 'Motion Picture', NULL, '2018-11-02', '2018-11-02'),
(16, 'MS', 'Microscope Slide', NULL, '2018-11-02', '2018-11-02'),
(17, 'MU', 'Music', NULL, '2018-11-02', '2018-11-02'),
(18, 'PI', 'Picture', NULL, '2018-11-02', '2018-11-02'),
(19, 'RE', 'Realia', NULL, '2018-11-02', '2018-11-02'),
(20, 'SL', 'Slide', NULL, '2018-11-02', '2018-11-02'),
(21, 'SO', 'Sound Recording', NULL, '2018-11-02', '2018-11-02'),
(22, 'TD', 'Technical Drawing', NULL, '2018-11-02', '2018-11-02'),
(23, 'TR', 'Transparency', NULL, '2018-11-02', '2018-11-02'),
(24, 'VI', 'Video Recording', NULL, '2018-11-02', '2018-11-02'),
(25, 'EQ', 'Equipment', NULL, '2018-11-02', '2018-11-02'),
(26, 'CF', 'Computer File', NULL, '2018-11-02', '2018-11-02'),
(27, 'CA', 'Cartographic Material', NULL, '2018-11-02', '2018-11-02'),
(28, 'CD', 'CD-ROM', NULL, '2018-11-02', '2018-11-02'),
(29, 'MV', 'Multimedia', NULL, '2018-11-02', '2018-11-02'),
(30, 'ER', 'Electronic Resource', NULL, '2018-11-02', '2018-11-02'),
(31, 'DVD', 'Digital Versatile Disc', NULL, '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `item_status_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT '0',
  `skip_stock_take` smallint(1) NOT NULL DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'Repair', 'a:1:{i:0;s:1:\"1\";}', 1, 0, '2018-11-02', '2018-11-02'),
('NL', 'No Loan', 'a:1:{i:0;s:1:\"1\";}', 1, 0, '2018-11-02', '2018-11-02'),
('MIS', 'Missing', NULL, 1, 1, '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `label_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2018-11-02', '2018-11-02'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2018-11-02', '2018-11-02'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('id', 'Indonesia', '2018-11-02', '2018-11-02'),
('en', 'English', '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT '0',
  `coll_type_id` int(11) DEFAULT '0',
  `gmd_id` int(11) DEFAULT '0',
  `loan_limit` int(3) DEFAULT '0',
  `loan_periode` int(3) DEFAULT '0',
  `reborrow_limit` int(3) DEFAULT '0',
  `fine_each_day` int(3) DEFAULT '0',
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'My Library', '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_media_type`
--

CREATE TABLE `mst_media_type` (
  `id` int(11) NOT NULL,
  `media_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_media_type`
--

INSERT INTO `mst_media_type` (`id`, `media_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio', 's', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'computer', 'c', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'microform', 'h', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'microscopic', 'p', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'projected', 'g', 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'stereographic', 'e', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'unmediated', 'n', 't', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'video', 'v', 'v', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'other', 'x', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'unspecified', 'z', 'z', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT '0',
  `reserve_limit` int(11) NOT NULL DEFAULT '0',
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Standard', 2, 7, 1, 2, 365, 1, 0, 0, '2018-11-02', '2018-11-02'),
(2, 'Karyawan', 2, 180, 1, 0, 1800, 1, 0, 180, '2018-11-02', '2018-11-02'),
(3, 'Mahasiswa', 2, 6, 1, 0, 1800, 1, 1000, 0, '2018-11-02', '2018-11-02'),
(4, 'Dosen', 2, 180, 1, 0, 1800, 1, 0, 180, '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module_path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'bibliography', 'bibliography', 'Manage your bibliographic/catalog and items/copies database'),
(2, 'circulation', 'circulation', 'Module for doing library items circulation such as loan and return'),
(3, 'membership', 'membership', 'Manage your library membership and membership type'),
(4, 'master_file', 'master_file', 'Manage your referential data that will be used by other modules'),
(5, 'stock_take', 'stock_take', 'Ease your pain in doing library stock opname process'),
(6, 'system', 'system', 'Configure system behaviour, user and backups'),
(7, 'reporting', 'reporting', 'Real time and dynamic report about library collections and circulation'),
(8, 'serial_control', 'serial_control', 'Serial publication management');

-- --------------------------------------------------------

--
-- Table structure for table `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(1, 'Yogyakarta', '2018-11-02', '2018-11-02'),
(2, 'Bandung', '2018-11-02', '2018-11-02'),
(3, 'Amerika', '2018-11-02', '2018-11-02'),
(4, 'Yogyakata', '2018-11-02', '2018-11-02'),
(5, 'jakarta', '2018-11-02', '2018-11-02'),
(6, 'Jakata', '2018-11-02', '2018-11-02'),
(7, 'Hoboken, NJ', '2018-11-02', '2018-11-02'),
(8, 'Cambridge, Mass', '2018-11-02', '2018-11-02'),
(9, 'Sebastopol, CA', '2018-11-02', '2018-11-02'),
(10, 'Westport, Conn.', '2018-11-02', '2018-11-02'),
(11, '', '2018-11-02', '2018-11-02'),
(12, 'London', '2018-11-02', '2018-11-02'),
(13, 'New York', '2018-11-02', '2018-11-02'),
(14, 'Indianapolis', '2018-11-02', '2018-11-02'),
(15, 'Upper Saddle River, NJ', '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Andi', '2018-11-02', '2018-11-02'),
(2, 'Inpormatka', '2018-11-02', '2018-11-02'),
(3, 'Informatika', '2018-11-02', '2018-11-02'),
(4, 'Manning', '2018-11-02', '2018-11-02'),
(5, 'Direktorat Keamanan Informasi, Direktorat Jenderal Aplikasi Informatika Kementerian Komunikasi dan I', '2018-11-02', '2018-11-02'),
(6, 'kemenran komunikasi dan informatka', '2018-11-02', '2018-11-02'),
(7, 'Informatika Bandung', '2018-11-02', '2018-11-02'),
(8, 'John Wiley', '2018-11-02', '2018-11-02'),
(9, 'OReilly', '2018-11-02', '2018-11-02'),
(10, 'Libraries Unlimited', '2018-11-02', '2018-11-02'),
(11, 'Wiley', '2018-11-02', '2018-11-02'),
(12, 'Apress', '2018-11-02', '2018-11-02'),
(13, 'Taylor & Francis Inc.', '2018-11-02', '2018-11-02'),
(14, 'Palgrave Macmillan', '2018-11-02', '2018-11-02'),
(15, 'Crown publishers', '2018-11-02', '2018-11-02'),
(16, 'Atlantic Monthly Press', '2018-11-02', '2018-11-02'),
(17, 'Sams', '2018-11-02', '2018-11-02'),
(18, 'Prentice Hall', '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_relation_term`
--

CREATE TABLE `mst_relation_term` (
  `ID` int(11) NOT NULL,
  `rt_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `rt_desc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_relation_term`
--

INSERT INTO `mst_relation_term` (`ID`, `rt_id`, `rt_desc`) VALUES
(1, 'U', 'Use'),
(2, 'UF', 'Use For'),
(3, 'BT', 'Broader Term'),
(4, 'NT', 'Narrower Term'),
(5, 'RT', 'Related Term'),
(6, 'SA', 'See Also');

-- --------------------------------------------------------

--
-- Table structure for table `mst_servers`
--

CREATE TABLE `mst_servers` (
  `server_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` text COLLATE utf8_unicode_ci NOT NULL,
  `server_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - p2p server; 2 - z3950; 3 - z3950  SRU',
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` char(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') COLLATE utf8_unicode_ci NOT NULL,
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1, 'Programming', 't', NULL, '', '2007-11-29', '2007-11-29'),
(2, 'Website', 't', NULL, '', '2007-11-29', '2007-11-29'),
(3, 'Operating System', 't', NULL, '', '2007-11-29', '2007-11-29'),
(4, 'Linux', 't', NULL, '', '2007-11-29', '2007-11-29'),
(5, 'Computer', 't', NULL, '', '2007-11-29', '2007-11-29'),
(6, 'Database', 't', NULL, '', '2007-11-29', '2007-11-29'),
(7, 'RDBMS', 't', NULL, '', '2007-11-29', '2007-11-29'),
(8, 'Open Source', 't', NULL, '', '2007-11-29', '2007-11-29'),
(9, 'Project', 't', NULL, '', '2007-11-29', '2007-11-29'),
(10, 'Design', 't', NULL, '', '2007-11-29', '2007-11-29'),
(11, 'Information', 't', NULL, '', '2007-11-29', '2007-11-29'),
(12, 'Organization', 't', NULL, '', '2007-11-29', '2007-11-29'),
(13, 'Metadata', 't', NULL, '', '2007-11-29', '2007-11-29'),
(14, 'Library', 't', NULL, '', '2007-11-29', '2007-11-29'),
(15, 'Corruption', 't', NULL, '', '2007-11-29', '2007-11-29'),
(16, 'Development', 't', NULL, '', '2007-11-29', '2007-11-29'),
(17, 'Poverty', 't', NULL, '', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_voc_ctrl`
--

CREATE TABLE `mst_voc_ctrl` (
  `vocabolary_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `rt_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `related_topic_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` text COLLATE utf8_unicode_ci,
  `topic` text COLLATE utf8_unicode_ci,
  `gmd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `carrier_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `media_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `series_title` text COLLATE utf8_unicode_ci,
  `items` text COLLATE utf8_unicode_ci,
  `collection_types` text COLLATE utf8_unicode_ci,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT '0',
  `promoted` smallint(1) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

-- --------------------------------------------------------

--
-- Table structure for table `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:7:\"Senayan\";'),
(2, 'library_subname', 's:37:\"Open Source Library Management System\";'),
(3, 'template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:26:\"template/default/style.css\";}'),
(4, 'admin_template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";}'),
(5, 'default_lang', 's:5:\"id_ID\";'),
(6, 'opac_result_num', 's:2:\"10\";'),
(7, 'enable_promote_titles', 'N;'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:\"7200\";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:7:\"code128\";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:\"barcode_page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:21:\"barcode_items_per_row\";i:3;s:20:\"barcode_items_margin\";d:0.1000000000000000055511151231257827021181583404541015625;s:17:\"barcode_box_width\";i:7;s:18:\"barcode_box_height\";i:5;s:27:\"barcode_include_header_text\";i:1;s:17:\"barcode_cut_title\";i:50;s:19:\"barcode_header_text\";s:0:\"\";s:13:\"barcode_fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:17:\"barcode_font_size\";i:11;s:13:\"barcode_scale\";i:70;s:19:\"barcode_border_size\";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:\"page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:13:\"items_per_row\";i:3;s:12:\"items_margin\";d:0.05000000000000000277555756156289135105907917022705078125;s:9:\"box_width\";i:8;s:10:\"box_height\";d:3.29999999999999982236431605997495353221893310546875;s:19:\"include_header_text\";i:1;s:11:\"header_text\";s:0:\"\";s:5:\"fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:9:\"font_size\";i:11;s:11:\"border_size\";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:\"print\";a:1:{s:10:\"membercard\";a:61:{s:11:\"card_factor\";s:12:\"37.795275591\";s:21:\"card_include_id_label\";i:1;s:23:\"card_include_name_label\";i:1;s:22:\"card_include_pin_label\";i:1;s:23:\"card_include_inst_label\";i:0;s:24:\"card_include_email_label\";i:0;s:26:\"card_include_address_label\";i:1;s:26:\"card_include_barcode_label\";i:1;s:26:\"card_include_expired_label\";i:1;s:14:\"card_box_width\";d:8.5999999999999996447286321199499070644378662109375;s:15:\"card_box_height\";d:5.4000000000000003552713678800500929355621337890625;s:9:\"card_logo\";s:8:\"logo.png\";s:21:\"card_front_logo_width\";s:0:\"\";s:22:\"card_front_logo_height\";s:0:\"\";s:20:\"card_front_logo_left\";s:0:\"\";s:19:\"card_front_logo_top\";s:0:\"\";s:20:\"card_back_logo_width\";s:0:\"\";s:21:\"card_back_logo_height\";s:0:\"\";s:19:\"card_back_logo_left\";s:0:\"\";s:18:\"card_back_logo_top\";s:0:\"\";s:15:\"card_photo_left\";s:0:\"\";s:14:\"card_photo_top\";s:0:\"\";s:16:\"card_photo_width\";d:1.5;s:17:\"card_photo_height\";d:1.8000000000000000444089209850062616169452667236328125;s:23:\"card_front_header1_text\";s:19:\"Library Member Card\";s:28:\"card_front_header1_font_size\";s:2:\"12\";s:23:\"card_front_header2_text\";s:10:\"My Library\";s:28:\"card_front_header2_font_size\";s:2:\"12\";s:22:\"card_back_header1_text\";s:10:\"My Library\";s:27:\"card_back_header1_font_size\";s:2:\"12\";s:22:\"card_back_header2_text\";s:35:\"My Library Full Address and Website\";s:27:\"card_back_header2_font_size\";s:1:\"5\";s:17:\"card_header_color\";s:7:\"#0066FF\";s:18:\"card_bio_font_size\";s:2:\"11\";s:20:\"card_bio_font_weight\";s:4:\"bold\";s:20:\"card_bio_label_width\";s:3:\"100\";s:9:\"card_city\";s:9:\"City Name\";s:10:\"card_title\";s:15:\"Library Manager\";s:14:\"card_officials\";s:14:\"Librarian Name\";s:17:\"card_officials_id\";s:12:\"Librarian ID\";s:15:\"card_stamp_file\";s:9:\"stamp.png\";s:19:\"card_signature_file\";s:13:\"signature.png\";s:15:\"card_stamp_left\";s:0:\"\";s:14:\"card_stamp_top\";s:0:\"\";s:16:\"card_stamp_width\";s:0:\"\";s:17:\"card_stamp_height\";s:0:\"\";s:13:\"card_exp_left\";s:0:\"\";s:12:\"card_exp_top\";s:0:\"\";s:14:\"card_exp_width\";s:0:\"\";s:15:\"card_exp_height\";s:0:\"\";s:18:\"card_barcode_scale\";i:100;s:17:\"card_barcode_left\";s:0:\"\";s:16:\"card_barcode_top\";s:0:\"\";s:18:\"card_barcode_width\";s:0:\"\";s:19:\"card_barcode_height\";s:0:\"\";s:10:\"card_rules\";s:120:\"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>\";s:20:\"card_rules_font_size\";s:1:\"8\";s:12:\"card_address\";s:76:\"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id\";s:22:\"card_address_font_size\";s:1:\"7\";s:17:\"card_address_left\";s:0:\"\";s:16:\"card_address_top\";s:0:\"\";}}}'),
(21, 'enable_visitor_limitation', 's:1:\"0\";'),
(22, 'time_visitor_limitation', 's:2:\"60\";'),
(25, 'spellchecker_enabled', 'b:1;');

-- --------------------------------------------------------

--
-- Table structure for table `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT '0',
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext COLLATE utf8_unicode_ci,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `report_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_take`
--

INSERT INTO `stock_take` (`stock_take_id`, `stock_take_name`, `start_date`, `end_date`, `init_user`, `total_item_stock_taked`, `total_item_lost`, `total_item_exists`, `total_item_loan`, `stock_take_users`, `is_active`, `report_file`) VALUES
(1, 'SO Semester Genap 2017/2018', '2018-11-02 19:18:18', NULL, 'Admin', 57, 42, 0, 3, 'Admin\n', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('e','m','u','l') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_take_item`
--

INSERT INTO `stock_take_item` (`stock_take_id`, `item_id`, `item_code`, `title`, `gmd_name`, `classification`, `coll_type_name`, `call_number`, `location`, `status`, `checked_by`, `last_update`) VALUES
(1, 1, '02266.1', 'Pemrograman Bahasa Assembly Konsep Dasar dan Implementasi', 'Text', '0051', NULL, NULL, NULL, 'l', 'Admin', NULL),
(1, 2, '02265.1', 'Pemrograman JAVA Dasar-dasar Pengenalan dan pemahaman', 'Text', '005.1', NULL, NULL, NULL, 'l', 'Admin', NULL),
(1, 3, '02264.1', 'Algoritma dan pemrograman dewngan bahasa C- Konsep, Tori dan Implementasi', 'Text', '0051', NULL, NULL, NULL, 'l', 'Admin', NULL),
(1, 4, '02263.1', 'PEMROGRAMAN C++', 'Text', '005.1', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-02 13:23:49'),
(1, 5, '02262.1', 'KONSEP DAN IMPLEMENTASI STRUKTUR DATA dengan C++', 'Text', '0051', NULL, NULL, NULL, 'e', 'hendrikus dipayadi', '2018-11-02 13:25:16'),
(1, 6, '02261.1', 'ANDROID : Pemrograman Aplikasi Mobile Smartohone dan Tablet PC Berbasis Android', 'Text', '0051', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-03 13:46:30'),
(1, 7, '02260.1', 'ALGORITMA DAN STRUKTUR DATA DALAM BAHASA JAVA', 'Text', '005.1', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-03 13:46:58'),
(1, 8, '02259.1', 'SSP.NET MVC 2 In Action', 'Text', '005.1', NULL, NULL, NULL, 'e', 'hendrikus dipayadi', '2018-11-05 16:25:30'),
(1, 9, '005.1', 'DASAR PEMROGRAMAN KOMPUTER / Dalam Bahasa Java', 'Text', '005.1', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-05 16:28:35'),
(1, 10, '02238.1', 'ALGORITMA DAN STRUKTUR DATA DENGAN C#', 'Text', '005.1', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-05 16:31:20'),
(1, 11, '00084.1', 'Tutorial Interaktif Sistem Keamanan & Instalasi Voip menggunakan Session Initiation Protokol', 'Text', '004.6', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-05 16:31:45'),
(1, 12, '00084.2', 'Tutorial Interaktif Sistem Keamanan & Instalasi Voip menggunakan Session Initiation Protokol', 'Text', '004.6', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-05 16:31:42'),
(1, 13, '00084.3', 'Tutorial Interaktif Sistem Keamanan & Instalasi Voip menggunakan Session Initiation Protokol', 'Text', '004.6', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-05 16:31:39'),
(1, 14, '00084.4', 'Tutorial Interaktif Sistem Keamanan & Instalasi Voip menggunakan Session Initiation Protokol', 'Text', '004.6', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-05 16:32:30'),
(1, 15, '00084.5', 'Tutorial Interaktif Sistem Keamanan & Instalasi Voip menggunakan Session Initiation Protokol', 'Text', '004.6', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-05 16:32:44'),
(1, 16, '00084.6', 'Tutorial Interaktif Sistem Keamanan & Instalasi Voip menggunakan Session Initiation Protokol', 'Text', '004.6', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 17, '01073.1', 'Tutorial interaktif instalasi intrution prevention system : berbasis open source', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 18, '01073.2', 'Tutorial interaktif instalasi intrution prevention system : berbasis open source', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 19, '01073.5', 'Tutorial interaktif instalasi intrution prevention system : berbasis open source', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 20, '01073.6', 'Tutorial interaktif instalasi intrution prevention system : berbasis open source', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 21, '01073.4', 'Tutorial interaktif instalasi intrution prevention system : berbasis open source', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 22, '01073.3', 'Tutorial interaktif instalasi intrution prevention system : berbasis open source', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 23, '00238.1', 'Tutorial Interaktif Keamanan Web Server menggunakan IPv6', 'Text', '004.6', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 24, '00238.2', 'Tutorial Interaktif Keamanan Web Server menggunakan IPv6', 'Text', '004.6', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 25, '00238.3', 'Tutorial Interaktif Keamanan Web Server menggunakan IPv6', 'Text', '004.6', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 26, '00238.4', 'Tutorial Interaktif Keamanan Web Server menggunakan IPv6', 'Text', '004.6', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 27, '00238.5', 'Tutorial Interaktif Keamanan Web Server menggunakan IPv6', 'Text', '004.6', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 28, '00238.6', 'Tutorial Interaktif Keamanan Web Server menggunakan IPv6', 'Text', '004.6', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 29, '00238.7', 'Tutorial Interaktif Keamanan Web Server menggunakan IPv6', 'Text', '004.6', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 30, '01978.1', 'Tutorial Interaktif Implementasi media STREAMING Server', 'Text', '006', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 31, '01978.2', 'Tutorial Interaktif Implementasi media STREAMING Server', 'Text', '006', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 32, '01978.3', 'Tutorial Interaktif Implementasi media STREAMING Server', 'Text', '006', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 33, '01978.4', 'Tutorial Interaktif Implementasi media STREAMING Server', 'Text', '006', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 34, '01978.5', 'Tutorial Interaktif Implementasi media STREAMING Server', 'Text', '006', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 35, '01978.6', 'Tutorial Interaktif Implementasi media STREAMING Server', 'Text', '006', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 36, '01978.7', 'Tutorial Interaktif Implementasi media STREAMING Server', 'Text', '006', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 37, '01978.8', 'Tutorial Interaktif Implementasi media STREAMING Server', 'Text', '006', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 38, '00589.1', 'Konsep & tuntunan Praktis Basis Data', 'Text', '005.74', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-06 13:25:10'),
(1, 39, '00589.2', 'Konsep & tuntunan Praktis Basis Data', 'Text', '005.74', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 40, '00589.3', 'Konsep & tuntunan Praktis Basis Data', 'Text', '005.74', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 41, '00589.4', 'Konsep & tuntunan Praktis Basis Data', 'Text', '005.74', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-06 13:20:07'),
(1, 42, '00589.5', 'Konsep & tuntunan Praktis Basis Data', 'Text', '005.74', NULL, NULL, NULL, 'e', 'vedanta maha karuna', '2018-11-06 13:21:16'),
(1, 43, '02236.1', 'Rekayasa Perangkat Lunak pendekatan praktisi (buku satu)', 'Text', '005.1', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 44, '01715.1', '10 Langkah belajar logika dan algoritma menggunakan bahasa C++ di GNU/Linuk', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 45, '01715.2', '10 Langkah belajar logika dan algoritma menggunakan bahasa C++ di GNU/Linuk', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 46, '01715.3', '10 Langkah belajar logika dan algoritma menggunakan bahasa C++ di GNU/Linuk', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 47, '01715.4', '10 Langkah belajar logika dan algoritma menggunakan bahasa C++ di GNU/Linuk', 'Text', '005', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 48, '00378.1', 'Pengetahuan Komputer dan Teknologi Informasi', 'Text', '658.4038', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 49, '00378.2', 'Pengetahuan Komputer dan Teknologi Informasi', 'Text', '658.4038', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 50, '00378.3', 'Pengetahuan Komputer dan Teknologi Informasi', 'Text', '658.4038', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 51, '00378.4', 'Pengetahuan Komputer dan Teknologi Informasi', 'Text', '658.4038', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 52, '00378.5', 'Pengetahuan Komputer dan Teknologi Informasi', 'Text', '658.4038', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 53, '00378.6', 'Pengetahuan Komputer dan Teknologi Informasi', 'Text', '658.4038', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 54, '01224.1', 'e-News Publishing Panduan Bagi Webmaster Cyber Media', 'Text', '004.678', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 55, '01224.2', 'e-News Publishing Panduan Bagi Webmaster Cyber Media', 'Text', '004.678', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 56, '01134.1', '4M (Memilih, Memakai, Merawat dan Memperbaiki) Netbook', 'Text', '004.678', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 57, '01134.2', '4M (Memilih, Memakai, Merawat dan Memperbaiki) Netbook', 'Text', '004.678', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 58, '01134.3', '4M (Memilih, Memakai, Merawat dan Memperbaiki) Netbook', 'Text', '004.678', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 59, '01131.4', '4M (Memilih, Memakai, Merawat dan Memperbaiki) Netbook', 'Text', '004.678', NULL, NULL, NULL, 'm', 'Admin', NULL),
(1, 60, '01134.5', '4M (Memilih, Memakai, Merawat dan Memperbaiki) Netbook', 'Text', '004.678', NULL, NULL, NULL, 'm', 'Admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `log_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `log_msg`, `log_date`) VALUES
(1, 'staff', '1', 'system', 'Admin change application global configuration', '2018-11-02 17:43:19'),
(2, 'staff', '1', 'system', 'Admin add new group (Pustakawan)', '2018-11-02 17:43:45'),
(3, 'staff', '1', 'system', 'Admin add new user (vedanta maha karuna) with username (vedanta)', '2018-11-02 17:44:14'),
(4, 'staff', '1', 'system', 'Admin add new user (hendrikus dipayadi) with username (hendrik)', '2018-11-02 17:44:37'),
(5, 'staff', '1', 'bibliography', 'Importing 35 bibliographic records from file : senayan_biblio_export.csv', '2018-11-02 17:45:09'),
(6, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2018-11-02 17:45:44'),
(7, 'staff', 'vedanta', 'Login', 'Login success for user vedanta from address ::1', '2018-11-02 17:45:51'),
(8, 'staff', '2', 'membership', 'Importing 20 members data from file : senayan_member_export.csv', '2018-11-02 17:47:20'),
(9, 'member', '020010001', 'circulation', 'vedanta maha karuna start transaction with member (020010001)', '2018-11-02 17:48:08'),
(10, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (A.A.NGR ALIT INDRAWAN) with ID (020010012)', '2018-11-02 17:49:10'),
(11, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (ACHMAD NURIDHO) with ID (020010002)', '2018-11-02 17:49:10'),
(12, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (EUPHRASIUS MARYO) with ID (020010013)', '2018-11-02 17:49:10'),
(13, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (GEDE BENI SANJAYA) with ID (020010011)', '2018-11-02 17:49:10'),
(14, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (I GEDE PUTU ASTHAMA VENA) with ID (020010008)', '2018-11-02 17:49:10'),
(15, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (I GEDE WARYA BANGUN JAYA) with ID (020010004)', '2018-11-02 17:49:10'),
(16, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (I GST NGR.MANIK WAHYU WIDAGDA) with ID (020010003)', '2018-11-02 17:49:10'),
(17, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (I GST.NGR.AGUNG INDRAJAYA) with ID (020010014)', '2018-11-02 17:49:10'),
(18, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (I GUSTI PUTU MEGA WIJAYA) with ID (020010018)', '2018-11-02 17:49:10'),
(19, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (I KADEK EVI SURBAKTI) with ID (020010010)', '2018-11-02 17:49:10'),
(20, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (I PUTU DARMAWAN) with ID (020010007)', '2018-11-02 17:49:10'),
(21, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (IDA BAGUS GDE AGUNG WIRATAMA) with ID (020010006)', '2018-11-02 17:49:10'),
(22, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (KADEK SRI MARTINI) with ID (SMI)', '2018-11-02 17:49:10'),
(23, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (LUH PUTU ERAWATI) with ID (020010001)', '2018-11-02 17:49:10'),
(24, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (MADE ARI ADNYANA) with ID (020010017)', '2018-11-02 17:49:10'),
(25, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (NI MD.SUKANADI CHANDRAWATI) with ID (020010005)', '2018-11-02 17:49:10'),
(26, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (PENDY ARYANTO) with ID (020010016)', '2018-11-02 17:49:10'),
(27, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (SAGUNG ISTRI PUSPITA DEWI ASTA) with ID (020010009)', '2018-11-02 17:49:10'),
(28, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (URBANUS I NYOMAN TRI ARYANTHA) with ID (020010019)', '2018-11-02 17:49:10'),
(29, 'staff', '2', 'membership', 'vedanta maha karuna DELETE member data (W. JENNIFER ARYANI) with ID (020010015)', '2018-11-02 17:49:10'),
(30, 'staff', '2', 'membership', 'Importing 20 members data from file : senayan_member_export.csv', '2018-11-02 17:54:13'),
(31, 'staff', '2', 'system', 'vedanta maha karuna Log Out from application from address ::1', '2018-11-02 17:57:38'),
(32, 'staff', 'vedanta', 'Login', 'Login success for user vedanta from address ::1', '2018-11-02 17:57:45'),
(33, 'member', '160030229', 'circulation', 'vedanta maha karuna start transaction with member (160030229)', '2018-11-02 17:58:08'),
(34, 'member', '160030229', 'circulation', 'vedanta maha karuna finish circulation transaction with member (160030229)', '2018-11-02 17:58:49'),
(35, 'staff', '2', 'system', 'vedanta maha karuna Log Out from application from address ::1', '2018-11-02 17:59:17'),
(36, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2018-11-02 17:59:19'),
(37, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2018-11-02 18:05:19'),
(38, 'staff', 'vedanta', 'Login', 'Login success for user vedanta from address ::1', '2018-11-02 18:05:25'),
(39, 'member', '160030229', 'circulation', 'vedanta maha karuna start transaction with member (160030229)', '2018-11-02 18:05:29'),
(40, 'member', '160030229', 'circulation', 'vedanta maha karuna insert new loan (02266.1) for member (160030229)', '2018-11-02 18:05:39'),
(41, 'member', '160030229', 'circulation', 'vedanta maha karuna finish circulation transaction with member (160030229)', '2018-11-02 18:05:42'),
(42, 'member', '160030230', 'circulation', 'vedanta maha karuna start transaction with member (160030230)', '2018-11-02 18:05:55'),
(43, 'member', '160030230', 'circulation', 'vedanta maha karuna insert new loan (02265.1) for member (160030230)', '2018-11-02 18:06:02'),
(44, 'member', '160030230', 'circulation', 'vedanta maha karuna finish circulation transaction with member (160030230)', '2018-11-02 18:06:04'),
(45, 'staff', '2', 'system', 'vedanta maha karuna Log Out from application from address ::1', '2018-11-02 18:06:06'),
(46, 'staff', 'hendrik', 'Login', 'Login success for user hendrik from address ::1', '2018-11-02 18:06:13'),
(47, 'member', '160030227', 'circulation', 'hendrikus dipayadi start transaction with member (160030227)', '2018-11-02 18:06:25'),
(48, 'member', '160030227', 'circulation', 'hendrikus dipayadi insert new loan (02264.1) for member (160030227)', '2018-11-02 18:06:33'),
(49, 'member', '160030227', 'circulation', 'hendrikus dipayadi finish circulation transaction with member (160030227)', '2018-11-02 18:06:36'),
(50, 'staff', '3', 'system', 'hendrikus dipayadi Log Out from application from address ::1', '2018-11-02 18:06:39'),
(51, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2018-11-02 18:06:41'),
(52, 'staff', '1', 'stock_take', 'Admin initialize stock take (SO Semester Genap 2017/2018) from address ::1', '2018-11-02 19:18:18'),
(53, 'staff', '1', 'system', 'Admin change application global configuration', '2018-11-02 19:35:40'),
(54, 'staff', '1', 'system', 'Admin change application global configuration', '2018-11-02 19:36:33'),
(55, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2018-11-03 19:44:09'),
(56, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2018-11-05 22:29:07'),
(57, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2018-11-06 19:18:54'),
(58, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2018-11-07 00:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` text COLLATE utf8_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '$2y$10$D3ncM.NCSuP2W9H/6rO0gOVUCziBIgL75ByzS7wr8W3YupEl44ZyS', NULL, NULL, NULL, NULL, '2018-11-07 00:14:22', '::1', 'a:1:{i:0;s:1:\"1\";}', '2018-11-02', '2018-11-02'),
(2, 'vedanta', 'vedanta maha karuna', '$2y$10$I29t3EizZaKwU0wJdz26HO.L8ZRQYe68MlgxHlEHCGgcSgwPUHZSa', 'vedantamaha@gmail.com', 1, NULL, NULL, '2018-11-02 18:05:25', '::1', 'a:1:{i:0;s:1:\"2\";}', '2018-11-02', '2018-11-02'),
(3, 'hendrik', 'hendrikus dipayadi', '$2y$10$og2REkue8jBL.DgKHNWOnOuIOIGqv6lKXxFXvF45mfpX3ZkxjxH62', 'hendrikdamai@gmail.com', 1, NULL, NULL, '2018-11-02 18:06:13', '::1', 'a:1:{i:0;s:1:\"2\";}', '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2018-11-02', '2018-11-02'),
(2, 'Pustakawan', '2018-11-02', '2018-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor_count`
--

INSERT INTO `visitor_count` (`visitor_id`, `member_id`, `member_name`, `institution`, `checkin_date`) VALUES
(1, '160030229', 'ATANASIO BAPTISTA AMARAL', 'STIKOM Bali', '2018-11-02 17:58:49'),
(2, '160030230', 'I PUTU DARMAYASA', 'STIKOM Bali', '2018-11-02 18:06:04'),
(3, '160030227', 'PUTU WANA SETITI', 'STIKOM Bali', '2018-11-02 18:06:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Indexes for table `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`),
  ADD KEY `rda_idx` (`content_type_id`,`media_type_id`,`carrier_type_id`),
  ADD KEY `uid` (`uid`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Indexes for table `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`);

--
-- Indexes for table `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Indexes for table `biblio_log`
--
ALTER TABLE `biblio_log`
  ADD PRIMARY KEY (`biblio_log_id`),
  ADD KEY `realname` (`realname`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `action` (`action`),
  ADD KEY `affectedrow` (`affectedrow`),
  ADD KEY `date` (`date`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `rawdata` (`rawdata`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `additional_information` (`additional_information`);

--
-- Indexes for table `biblio_relation`
--
ALTER TABLE `biblio_relation`
  ADD PRIMARY KEY (`biblio_id`,`rel_biblio_id`);

--
-- Indexes for table `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `uid` (`uid`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `input_date` (`input_date`,`last_update`,`uid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Indexes for table `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Indexes for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`carrier_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Indexes for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type` (`content_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indexes for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Indexes for table `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Indexes for table `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Indexes for table `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indexes for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Indexes for table `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indexes for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`media_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Indexes for table `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Indexes for table `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Indexes for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indexes for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mst_servers`
--
ALTER TABLE `mst_servers`
  ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Indexes for table `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`);

--
-- Indexes for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  ADD PRIMARY KEY (`vocabolary_id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Indexes for table `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`),
  ADD KEY `rda_indexes` (`carrier_type`,`media_type`,`content_type`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Indexes for table `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `biblio_log`
--
ALTER TABLE `biblio_log`
  MODIFY `biblio_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mst_servers`
--
ALTER TABLE `mst_servers`
  MODIFY `server_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  MODIFY `vocabolary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
