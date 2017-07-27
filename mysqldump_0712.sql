-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for validator
CREATE DATABASE IF NOT EXISTS `validator` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `validator`;


-- Dumping structure for table validator.annotation
CREATE TABLE IF NOT EXISTS `annotation` (
  `id` int(11) NOT NULL,
  `document_namespace` varchar(500) NOT NULL,
  `document_table` varchar(500) NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `document_name` varchar(100) DEFAULT NULL,
  `annotation_type` varchar(500) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `value` text,
  `features` text,
  `provenance` varchar(500) DEFAULT NULL,
  `score` double DEFAULT '1',
  KEY `idx_annot_type` (`annotation_type`(255)),
  KEY `idx_annot_start` (`start`),
  KEY `idx_prov` (`provenance`(100)),
  KEY `idx_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.annotation: ~79 rows (approximately)
DELETE FROM `annotation`;
/*!40000 ALTER TABLE `annotation` DISABLE KEYS */;
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(1, 'validator', 'documents', 1, NULL, 'lungrads-cat-2-nodule-consistency', 0, 4, 'EXAM', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(1, 'validator', 'documents', 11, NULL, 'lungrads-exam-date', 7, 9, 'CT', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(2, 'validator', 'documents', 11, NULL, 'lungrads-date-of-birth', 77, 94, 'December 01, 2014', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(4, 'validator', 'documents', 1, NULL, 'lungrads-reason-for-exam', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(5, 'validator', 'documents', 1, NULL, 'lungrads-date-of-birth', 121, 123, '55', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(6, 'validator', 'documents', 1, NULL, 'lungrads-age', 234, 243, 'TECHNIQUE', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(7, 'validator', 'documents', 1, NULL, 'lungrads-sex', 316, 323, 'scanner', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(8, 'validator', 'documents', 1, NULL, 'lungrads-race', 402, 405, 'and', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(9, 'validator', 'documents', 1, NULL, 'lungrads-race-declined', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(10, 'validator', 'documents', 1, NULL, 'lungrads-ethnicity', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(11, 'validator', 'documents', 1, NULL, 'lungrads-smoking-status', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(12, 'validator', 'documents', 1, NULL, 'lungrads-years-since-quit-smoking', 496, 504, 'sagittal', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(13, 'validator', 'documents', 1, NULL, 'lungrads-pack-years', 257, 264, 'helical', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(14, 'validator', 'documents', 1, NULL, 'lungrads-cdtivol', 569, 573, 'NOTE', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(15, 'validator', 'documents', 1, NULL, 'lungrads-dlp', 704, 713, 'RADIATION', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(16, 'validator', 'documents', 1, NULL, 'lungrads-nodules-cat-3-5', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(17, 'validator', 'documents', 1, NULL, 'lungrads-nodule-number', 252, 256, 'dose', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(19, 'validator', 'documents', 1, NULL, 'lungrads-nodule-location', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(20, 'validator', 'documents', 1, NULL, 'lungrads-series', 268, 273, 'CHEST', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(21, 'validator', 'documents', 1, NULL, 'lungrads-image', 111, 115, 'This', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(22, 'validator', 'documents', 1, NULL, 'lungrads-nodule-size', 101, 108, 'HISTORY', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(23, 'validator', 'documents', 1, NULL, 'lungrads-nodule-size', 183, 192, 'screening', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(24, 'validator', 'documents', 1, NULL, 'lungrads-nodule-mean-diameter', 723, 733, 'Volumetric', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(25, 'validator', 'documents', 1, NULL, 'lungrads-nodule-solid-component', 526, 530, 'were', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(27, 'validator', 'documents', 1, NULL, 'lungrads-nodule-margins', 364, 368, 'with', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(28, 'validator', 'documents', 1, NULL, 'lungrads-nodule-level-of-suspicion', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(29, 'validator', 'documents', 1, NULL, 'lungrads-nodule-cat-3-5-comment', 129, 132, 'old', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(30, 'validator', 'documents', 1, NULL, 'lungrads-nodule-category', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(31, 'validator', 'documents', 1, NULL, 'lungrads-cat-2-nodules-present', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(32, 'validator', 'documents', 1, NULL, 'lungrads-cat-2-nodules-quantity', 18, 22, 'DOSE', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(33, 'validator', 'documents', 1, NULL, 'lungrads-cat-2-nodule-size', 133, 137, 'male', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(34, 'validator', 'documents', 1, NULL, 'lungrads-cat-2-nodule-location', 326, 329, 'The', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(35, 'validator', 'documents', 1, NULL, 'lungrads-cat-2-series', 340, 347, 'studied', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(36, 'validator', 'documents', 1, NULL, 'lungrads-cat-2-image', 248, 251, 'low', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(37, 'validator', 'documents', 1, NULL, 'lungrads-cat-2-evolution', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(38, 'validator', 'documents', 1, NULL, 'lungrads-cat-1-nodules-present', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(39, 'validator', 'documents', 1, NULL, 'lungrads-cat-1-nodule-description', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(40, 'validator', 'documents', 1, NULL, 'lungrads-cat-1-nodule-consistency', 119, 120, 'a', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(41, 'validator', 'documents', 1, NULL, 'lungrads-cat-1-nodule-location', 57, 64, 'COMPARE', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(42, 'validator', 'documents', 1, NULL, 'lungrads-emphysema', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(43, 'validator', 'documents', 1, NULL, 'lungrads-emphysema-severity', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(44, 'validator', 'documents', 1, NULL, 'lungrads-emphysema-type', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(45, 'validator', 'documents', 1, NULL, 'lungrads-emphysema-distribution', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(46, 'validator', 'documents', 1, NULL, 'lungrads-airways-disease', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(47, 'validator', 'documents', 1, NULL, 'lungrads-airways-distribution', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(48, 'validator', 'documents', 1, NULL, 'lungrads-airways-location', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(49, 'validator', 'documents', 1, NULL, 'lungrads-fibrosis', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(50, 'validator', 'documents', 1, NULL, 'lungrads-fibrosis-type', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(51, 'validator', 'documents', 1, NULL, 'lungrads-fibrosis-anatomic-distribution', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(52, 'validator', 'documents', 1, NULL, 'lungrads-fibrosis-non-specific', 856, 864, 'FINDINGS', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(53, 'validator', 'documents', 1, NULL, 'lungrads-fibrosis-etiology', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(54, 'validator', 'documents', 1, NULL, 'lungrads-lymph-nodes', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(55, 'validator', 'documents', 1, NULL, 'lungrads-pleural-disease', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(56, 'validator', 'documents', 1, NULL, 'lungrads-pleural-anatomic-location', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(57, 'validator', 'documents', 1, NULL, 'lungrads-pleural-abnormality', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(58, 'validator', 'documents', 1, NULL, 'lungrads-cardiac-heart-size', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(59, 'validator', 'documents', 1, NULL, 'lungrads-cardiac-pericardium', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(60, 'validator', 'documents', 1, NULL, 'lungrads-cardiac-artery-calcification', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(61, 'validator', 'documents', 1, NULL, 'lungrads-cardiac-artery-calcification-distribution', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(62, 'validator', 'documents', 1, NULL, 'lungrads-cardiac-artery-other', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(63, 'validator', 'documents', 1, NULL, 'lungrads-other-sig-findings', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(64, 'validator', 'documents', 1, NULL, 'lungrads-other-sig-findings-specify', 790, 795, 'Index', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(65, 'validator', 'documents', 1, NULL, 'lunrads-cat-overall', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(66, 'validator', 'documents', 1, NULL, 'lungrads-additional-cat-overall', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(67, 'validator', 'documents', 1, NULL, 'lungrads-recommendation', -1, -1, '', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(68, 'validator', 'documents', 1, NULL, 'lungrads-unclear', 1426, 1434, 'Category', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(1, 'validator', 'documents', 5, NULL, 'lungrads-date-of-birth', 459, 472, 'reconstructed', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(2, 'validator', 'documents', 6, NULL, 'lungrads-sex', 447, 450, 'new', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(3, 'validator', 'documents', 6, NULL, 'lungrads-race', 430, 443, 'FINDINGS:   \n', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(4, 'validator', 'documents', 6, NULL, 'lungrads-age', 755, 758, 'are', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(5, 'validator', 'documents', 6, NULL, 'lungrads-date-of-birth', 808, 824, 'lymphadenopathy\n', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(6, 'validator', 'documents', 6, NULL, 'lungrads-exam-date', 97, 105, 'December', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(70, 'validator', 'documents', 1, NULL, 'lungrads-exam-date', 866, 879, 'Indeterminate', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(72, 'validator', 'documents', 1, NULL, 'lungrads-nodule-evolution', 1094, 1106, 'groundglass', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(73, 'validator', 'documents', 1, NULL, 'lungrads-nodule-evolution', 1183, 1195, 'groundglass', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(74, 'validator', 'documents', 1, NULL, 'lungrads-nodule-consistency', 545, 550, 'from', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(75, 'validator', 'documents', 1, NULL, 'lungrads-comparison-exam', 948, 951, 'Non', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(1, 'validator', 'documents', 2, NULL, 'lungrads-comparison-exam', 183, 192, 'TECHNIQUE', '', 'validation-tool', 1);
INSERT INTO `annotation` (`id`, `document_namespace`, `document_table`, `document_id`, `document_name`, `annotation_type`, `start`, `end`, `value`, `features`, `provenance`, `score`) VALUES
	(3, 'validator', 'documents', 2, NULL, 'lungrads-date-of-birth', 706, 707, '\n', '', 'validation-tool', 1);
/*!40000 ALTER TABLE `annotation` ENABLE KEYS */;


-- Dumping structure for table validator.crf
CREATE TABLE IF NOT EXISTS `crf` (
  `crf_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `html_id` varchar(500) NOT NULL,
  `frame_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`crf_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.crf: ~1 rows (approximately)
DELETE FROM `crf`;
/*!40000 ALTER TABLE `crf` DISABLE KEYS */;
INSERT INTO `crf` (`crf_id`, `name`, `html_id`, `frame_id`) VALUES
	(1, 'LDCT', 'ldct', 1);
INSERT INTO `crf` (`crf_id`, `name`, `html_id`, `frame_id`) VALUES
	(2, 'pop_nlp_stage', 'pop_nlp_stage', 2);
/*!40000 ALTER TABLE `crf` ENABLE KEYS */;


-- Dumping structure for table validator.crf_element
CREATE TABLE IF NOT EXISTS `crf_element` (
  `crf_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  PRIMARY KEY (`crf_id`,`element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.crf_element: ~68 rows (approximately)
DELETE FROM `crf_element`;
/*!40000 ALTER TABLE `crf_element` DISABLE KEYS */;
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 1);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 2);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 3);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 4);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 5);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 6);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 7);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 8);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 9);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 10);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 11);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 12);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 13);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 14);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 15);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 16);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 17);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 18);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 19);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 20);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 21);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 22);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 23);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 24);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 25);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 26);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 27);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 28);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 29);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 30);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 31);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 32);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 33);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 34);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 35);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 36);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 37);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 38);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 39);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 40);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 41);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 42);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 43);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 44);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 45);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 46);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 47);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 48);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 49);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 50);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 51);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 52);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 53);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 54);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 55);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 56);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 57);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 58);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 59);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 60);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 61);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 62);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 63);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 64);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 65);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 66);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 67);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(1, 68);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(2, 69);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(2, 70);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(2, 71);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(2, 72);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(2, 73);
INSERT INTO `crf_element` (`crf_id`, `element_id`) VALUES
	(2, 74);
/*!40000 ALTER TABLE `crf_element` ENABLE KEYS */;


-- Dumping structure for table validator.crf_project
CREATE TABLE IF NOT EXISTS `crf_project` (
  `crf_project_id` int(11) NOT NULL AUTO_INCREMENT,
  `crf_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`crf_project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.crf_project: ~0 rows (approximately)
DELETE FROM `crf_project`;
/*!40000 ALTER TABLE `crf_project` DISABLE KEYS */;
INSERT INTO `crf_project` (`crf_project_id`, `crf_id`, `project_id`) VALUES
	(1, 1, 1);
INSERT INTO `crf_project` (`crf_project_id`, `crf_id`, `project_id`) VALUES
	(2, 2, 2);
/*!40000 ALTER TABLE `crf_project` ENABLE KEYS */;


-- Dumping structure for table validator.crf_project_frame_instance
CREATE TABLE IF NOT EXISTS `crf_project_frame_instance` (
  `crf_project_id` int(11) NOT NULL,
  `frame_instance_id` int(11) NOT NULL,
  PRIMARY KEY (`crf_project_id`,`frame_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.crf_project_frame_instance: ~0 rows (approximately)
DELETE FROM `crf_project_frame_instance`;
/*!40000 ALTER TABLE `crf_project_frame_instance` DISABLE KEYS */;
INSERT INTO `crf_project_frame_instance` (`crf_project_id`, `frame_instance_id`) VALUES
	(2, 51);
/*!40000 ALTER TABLE `crf_project_frame_instance` ENABLE KEYS */;


-- Dumping structure for table validator.crf_section
CREATE TABLE IF NOT EXISTS `crf_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `crf_id` int(11) NOT NULL,
  `repeat` int(11) DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.crf_section: ~12 rows (approximately)
DELETE FROM `crf_section`;
/*!40000 ALTER TABLE `crf_section` DISABLE KEYS */;
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(1, 'Basic Exam Description111', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(2, 'History', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(3, 'Radiation Dose', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(4, 'Lung Nodules (LungRADS Category 3-5)', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(5, 'Lung Nodule Details', 1, -1);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(6, 'Lung Nodules (LungRADS Category 2)', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(7, 'Lung Nodules (LungRADS Category 2) Details', 1, 3);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(8, 'Lung Nodules (LungRADS Category 1)', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(9, 'Lung Parenchyma', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(10, 'Other Anatomic Regions', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(11, 'Impression', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(12, 'Notes', 1, 0);
INSERT INTO `crf_section` (`section_id`, `name`, `crf_id`, `repeat`) VALUES
	(13, 'Main Section', 2, 0);
/*!40000 ALTER TABLE `crf_section` ENABLE KEYS */;


-- Dumping structure for table validator.data_type
CREATE TABLE IF NOT EXISTS `data_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.data_type: ~4 rows (approximately)
DELETE FROM `data_type`;
/*!40000 ALTER TABLE `data_type` DISABLE KEYS */;
INSERT INTO `data_type` (`id`, `name`) VALUES
	(1, 'number');
INSERT INTO `data_type` (`id`, `name`) VALUES
	(2, 'string');
INSERT INTO `data_type` (`id`, `name`) VALUES
	(3, 'date');
INSERT INTO `data_type` (`id`, `name`) VALUES
	(4, 'categorical');
/*!40000 ALTER TABLE `data_type` ENABLE KEYS */;


-- Dumping structure for table validator.documents
CREATE TABLE IF NOT EXISTS `documents` (
  `document_id` bigint(20) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `doc_text` text,
  `date` datetime DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `mrn` int(11) DEFAULT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table validator.documents: ~50 rows (approximately)
DELETE FROM `documents`;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(1, '0200967-aaron.txt', 'EXAM: CT LUNG LOW DOSE WO CONTRAST 2015-01-01 00:00:00\n \nCOMPARE:  Noncontrast chest CT 01/01/2015\n \nHISTORY:  This is a 55 year-old male with a 20 p/y history. Incidence lung cancer screening for previous LUNGRads Category 2 scan.\n \nTECHNIQUE:  A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 30 cm using a low radiation dose technique.   \nCoronal and sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.\n \nRADIATION DOSE:  1 Volumetric series was performed for this exam.  \n CTDIvol (CT dose Index-volume) = 1.4 mG\n DLP (Dose Length Product) = 48  mG cm  \n \nFINDINGS:\nIndeterminate or Suspicious Lung Nodules (Category 3-4B): None\n \nBenign Appearing/Non-actionable Nodules (Category 2):  Present\n Faint ground glass nodule in right upper lobe measuring 6.3 mm (2-113).  Evolution = stable\n Faint groundglass nodule in left upper lobe measuring 12 mm (2-71).  Evolution = stable\n Faint groundglass small nodule (< 5 mm) in superior RLL (2-128). Evolution = stable\n Two additional faint groundglass nodules in RLL and LLL have resolved, likely inflammatory.\n Pericentimeter septated cyst in RUL is stable (2-75)\n \nBenign nodules (Category 1):  None\n \nLUNG PARENCHYMA\nEmphysema:  Absent\nAirways disease:  Absent\nFibrosis:  Absent\n \nOTHER ANATOMIC REGIONS\nLymph Nodes:  No significant intrathoracic adenopathy. Small calcified left paratracheal node not well visualized on low dose CT.\nPleura:  No effusions\nCardiac:  Normal heart size. Pericardium normal. Significant multivessel coronary artery calcification.\n \nOTHER FINDINGS:   \nDouble-lumen left central line terminates in horizontal left brachiocephalic vein.\nThyroid: Stable calcification left lobe.\nUpper abdomen suboptimally visualized with low dose technique.\n \nIMPRESSION\n1. Lung Cancer Screening: Category 2, Benign appearing/Non-actionable nodules seen. These types of nodules are not uncommon and require no immediate action. Recommend continued annual low dose screening.  \n \n \nNOTES:   \nThis report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS.  \n \nThis study was designed exclusively for lung cancer screening and nodule detections.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n \nCurrent USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.', NULL, 'smith', 1);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(2, '0202292-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  \n \nCOMPARISON: CT chest December 01, 2014\n \nINDICATION: 62 year-old man with history of smoking, 35 pack-year history.\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.6 CTDIvol; 111 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES:  None.\n \nLUNG PARENCHYMA: No nodularity. Subtle areas of subpleural reticulation with groundglass density for example in the right lower lobe 3-89, 3-102, left lower lobe 3-86, likely represents post inflammation scarring or resolution fibrosis. Mild ectasia of  \nairways is seen with occasional mucous plugging.\nPleura: No effusions.\nCardiac: Cardiac size is normal. No pericardial fluid collection. Calcification about the aortic annulus and diffuse calcification of the coronary arteries. The aorta and pulmonary arteries are normal in caliber.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:  Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n2.  Mild chronic airways disease with minimal postinflammatory scarring along the periphery of bilateral lungs.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.  \n \nI, Joe Smith, MD have reviewed these images and agree with the above findings.', NULL, 'smith', 2);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(3, '0221334-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  \n \nCOMPARISON: None available.\n \nINDICATION: 76 yo female. Former smoker, new onset anemia. 42 pack year history.\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose:\nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 76)\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: None.\n \nPARENCHYMA:\n \nOld granulomatous disease: Subcentimeter noncalcified and calcified nodules within the right upper lobe (3-33, 45), consistent with prior granulomatous disease.  \n \nAirways disease: Scattered peribronchial and peribronchiolar thickening with associated airway irregularity, ectasia and occasional mucostasis, consistent with chronic large and small airways disease, albeit nonspecific.\n \nCardiac: Atherosclerotic calcification of the thoracic aorta, bilateral subclavian, left anterior descending, circumflex and right coronary arteries.\n \nOther: Small to moderate hiatal hernia.\n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer.  Recommend continued annual screening in 12 months based on risk factors.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 3);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(4, '0327986-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: No prior CT Chest available for comparison.\n \nINDICATION: Smoking hx and copd, Lung Cancer Screening. 63 year old female.   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  0.13 + 2.77 CTDIvol; 96 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES:  None.\n \nLUNG PARENCHYMA:\n Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Two micronodules in right upper lobe (4-45) and right lower lobe (4-52)\n Quantity: 2\n Consistency: Part solid\n Representative locations: right upper lobe (4-45) and right lower lobe (4-52)\n Distinguishing features: None\n \nOLD GRANULOMATOUS DISEASE: None  \n \nEMPHYSEMA:  Yes If present:  \n Type: Centrilobular\n Distribution: Upper lobe dominant  \n Severity: Mild (6-25%)\n \nLARGE AIRWAYS DISEASE: Yes Features:\n Wall thickness:  Mild bronchial wall thickening\n Morphology:  Mild bronchiectasis\n Distribution: Diffuse\n Mucostasis:  No\n \nSMALL AIRWAYS DISEASE:  Unknown.\n \nLUNG FIBROSIS: No\n \nLymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.\n \nPleura: Normal\n \nCardiac: Heart size normal with no pericardial effusion. Thoracic aorta, and pulmonary artery appear normal in caliber. Atherosclerotic disease of thoracic aorta and coronary arteries.\n \nAdditional Free Text: Enlarged right lobe of thyroid within low-density soft tissue lesion in both lobes. Suggest correlation with ultrasound.\n \nImages from upper abdomen demonstrate calcification in right kidney and periphery of left kidney. The demonstrate the on the CT urogram from Jan 01, 20014.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.  Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \n2.  Ultrasound of thyroid.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 4);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(5, '0362025-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: 12/01/2014 UCLA chest CT.\n \nINDICATION: 72 year-old female, 75 pack yrs. Abnormal chest CT; follow-up micronodules.\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 29.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  \nacquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest (3a, 99)\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.   \n \nINDETERMINATE NODULES: None.\n \nPARENCHYMA:\n \nMicronodules: Unchanged subcentimeter nodules within the left upper lobe (4-25, 31), right upper lobe (4-38) and right lower lobe (4-36, 43)  \n \nAirways disease: Unchanged lobular air-trapping within both lower lobes.\n \nCardiac: Atherosclerotic calcification of the thoracic aorta and left anterior descending coronary artery.\n \nOther: Persistent small sliding hiatal hernia.\n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nNegative screen.  Unchanged small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 5);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(6, '0392400-grey.txt', 'CT SCAN CHEST WITHOUT CONTRAST\n \nDATE OF EXAMINATION: Jan 01, 2015 00:00:00 PM  \n \nCOMPARISON:   December 01, \'2014\n \nCLINICAL INDICATION:   COPD/NLST PROTOCOL  \n \nTECHNIQUE: On the Siemens Sensation 64 CT scanner, without IV contrast, volumetric low dose axial acquisition was performed from the thoracic inlet through the lung bases.  Images reformatted at 1, 3 and 5 mm slice thickness in the axial plane.  DFOV =  \n28 cm.  \n \nFINDINGS:   \n \nA new < 3 mm millimeter soft tissue nodule is seen high in the right apex series 2 image 108 not seen on the prior study. The tiny 1 mm micronodule within the left lower lobe series 5 image 17 is unchanged no other focal lung lesion is seen. No evidence  \nfor emphysema.\n \nThe pleural and pericardial surfaces are clear.  \n \nThere is no significant intrathoracic lymphadenopathy\n \n \nNew heart size is normal thoracic aorta is normal in size. There is focal calcifications in the left anterior descending artery as well as a little in the right coronary artery\n \n \nIMPRESSION: No suspicious focal lung lesion is seen. Stable small granuloma since 2010. New very subtle sub-3 millimeter nodular seen in the right apex. A follow CT in one year for this is recommended.  if the patient is a smoker or has significant risk  \nfactors.. There is coronary artery calcification noted and given the patient\'s age evaluation for atherosclerotic disease is profile is recommended', NULL, 'smith', 7);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(7, '0404980-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: No prior CT Chest available for comparison.\n \nINDICATION: 30 pack years smoking, quit 2 years ago, age 55   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.96 CTDIvol; 90 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES:  None.\n \nLUNG PARENCHYMA:\nCalcified nodule in right lower lobe and left upper lobe, are suggestive for prior granulomatous disease. Regional parenchymal scarring involving medial segment of right lower lobe is from chronic irritation from enlarged regional osteophytes.  \nParenchymal scar in dependent left lower lobe could be from prior infectious insult or aspiration.\n \nOLD GRANULOMATOUS DISEASE: Present.  \n \nLymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   \n \nPleura: Normal.\n \nAdditional Free Text:  Atherosclerotic disease of left anterior descending coronary artery and aortic root. Small pericardial effusion, for indeterminate etiology. Postsurgical changes from right mastectomy and axillary lymph node dissection.  \nSubcentimeter lymph node in right axilla are of indeterminate etiology. Correlate with prior mammograms and ultrasound of breast and axillary region.\n \nDegenerative disease of spine with multilevel osteophyte formation. Prominent coastal vertebral junctions.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.\n \n2.  Subcentimeter lymph node in right axilla are of indeterminate etiology. Correlate with prior mammograms and ultrasound of breast and axillary region.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 8);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(8, '0429748-aaron.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: No prior images\n \nINDICATION: Lung cancer screening in 59 year-old current smoker of 1 pack per day. Cumulative smoking history not reported.\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi- detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.5 CTDIvol; 54 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.   \nINDETERMINATE NODULES:  None\n \nLUNG PARENCHYMA:\n Calcified micronodules in the right upper (2-125) and left lower (2-233) lobes.\n Quantity: 2\n \nOLD GRANULOMATOUS DISEASE: Small calcified micronodules as above  \n \nEMPHYSEMA:  Present\n Type: Centrilobular\n Distribution: Upper lobe predominant.\n Severity: Moderate  \n \nLARGE AIRWAYS DISEASE: Yes\n Wall thickness:  Mild bronchial wall thickening.   \n Morphology:  Mild bronchial ectasia\n Distribution: Diffuse\n Mucostasis:  No\n No visible small airways disease.\n \nLUNG FIBROSIS:  None significant  \n \nLymph Nodes: Not well evaluated with low dose technique. No visible intrathoracic or axillary adenopathy   \n \nPleura: Normal\n \nCardiac: Normal heart size. Normal pericardium. Multivessel coronary calcifications in left main, left anterior descending, and circumflex coronary arteries.  See corresponding CT calcium screening exam from the same date.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:  Negative screen.  No nodules suspicious for lung cancer. Current recommendations are to continue annual screening in high risk patients, although the benefits of annual screens are less clear in individuals with  \nnegative screens.\n2.  Moderate, upper lobe predominant centrilobular emphysema.\n3.  Significant coronary artery calcification.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 9);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(9, '0451081-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: 12/01/2014 Santa Monica UCLA chest CT.\n \nINDICATION: 71 yo male. Approximate 40 pack-year cigarette abuse and chronic cough.  \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  28.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  \nacquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 52)\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.   \n \nINDETERMINATE NODULES: None.\n \nPARENCHYMA:\n \nMicronodules:  Unchanged subcentimeter nodules within the right upper lobe (3-33), left upper lobe (3-14, 29), right middle lobe (3-44), right lower lobe (3-38, 44, 48) and left lower lobe (3-21, 34), likely a combination of end-airways and prior  \ngranulomatous disease.\n \nOld granulomatous disease: Unchanged biapical fibronodular pleural parenchymal scarring.\n \nEmphysema: At least moderate smoking-related centrilobular emphysema.\n \nAirways disease: Diffuse mild cylindrical bronchiectasis and bronchiolectasis with peribronchial and peribronchiolar thickening and scattered discrete and coalescent lobular air-trapping particularly within the lower lung, consistent with chronic large  \nand small airways disease; reactive versus fixed.\n \nFocal Fibrosis: Essentially unchanged coalescent ground glass attenuation with architectural distortion within the left upper lobe (3-16), presumably subresolution fibrosis\n \nCardiac: Atherosclerotic calcification of the thoracic aorta, brachiocephalic, bilateral subclavian, left anterior descending and right coronary arteries.\n \nOther: Small sliding hiatal hernia.\n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer, especially given radiographic stability since 9/27/2005; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk\n factors.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 11);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(10, '0480803-aaron.txt', 'EXAM: CT LUNG LOW DOSE WO CONTRAST 2015-01-01 00:00:00\n \nCOMPARE:  Two view chest 12/01/2014\n \nHISTORY:  Baseline lung cancer screening; symptomatic with recent chronic cough and weight loss\n \nTECHNIQUE:  A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 34 cm using a low radiation dose technique.   \nCoronal and sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.\n \nRADIATION DOSE:  1 Volumetric series was performed for this exam.  \n CTDIvol (CT dose Index-volume) = 2 mG\n DLP (Dose Length Product) = 78  mG cm  \n \nFINDINGS:\nIndeterminate or Suspicious Lung Nodules (Category 3-4B): Present\nNodule ID Number one:  Solid nodule in left apex (3 to 54  \n Size = 24 x 17 mm, mean diameter 21 mm\n Evolution: Not applicable, no prior CT scans\n High\n LUNGRads category 4 B\n \nIndeterminate/Non-actionable Nodules (Category 2):  1 solid micronodule in RLL (3-270)\n \nBenign nodules (Category 1):  None\n \nLUNG PARENCHYMA\nEmphysema:  Absent\nAirways disease:  Mild bronchial wall thickening of central airways\nFibrosis:  Absent\n \nOTHER ANATOMIC REGIONS\nLymph Nodes:  No visible intrathoracic adenopathy\nPleura:  Left pleural effusion with nodularity, reflecting pleural carcinomatosis.\nCardiac:  Heart size normal. Trace pericardial effusion. Moderately extensive multivessel coronary artery calcification.\n \nOther findings:  None. Low dose image quality precludes accurate characterization beyond the lung parenchyma.\n \nIMPRESSION\n1. Lung Cancer Screening:  LUNGRads Category 4B, Solid nodule of 21 mm diameter in LUL apical region.  Associated small left pleural effusion with nodularity likely reflecting pleural carcinomatosis.  Recommend tissue sampling percutaneously for  \nconfirmation.   \n \n \nNOTES:   \nThis report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS.  \n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n \nCurrent USPSTF recommendations are to annually screen asymptomatic individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.  Individuals\n with symptoms should undergo diagnostic chest CT rather than LDCT screening.', NULL, 'smith', 12);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(11, '0522869-grey.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: December 01, 2014\n \nINDICATION: hx cigarette smoking, lung cancer screening, age 63, 21 pack years.\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None\n \nAdditional Actionable Nodules: No\n \nINDETERMINATE NODULES:  None\n \nAdditional Indeterminate Nodules:  None\n \nPARENCHYMA:\n \nMicronodules: A micronodule measuring 1 to 2 mm identified in the peripheral aspect of the apicoposterior segment anteriorly series 4 image 37. This not far from the site of a previously documented focal parenchymal process which is otherwise completely  \nresolved seen in November 2013\n \nOld granulomatous disease:None\n \nEmphysema:  None\n \nAirways disease: None\n \nDiffuse lung fibrosis: None\nFocal Fibrosis:None\n \nLymph Nodes: Not well evaluated with low dose technique but likely normal\n \nPleura: Normal    \n \nCardiac: Heart size Normal/Enlarged.  Coronary calcifications:  Present in the multivessel distribution.   \n \n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 13);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(12, '0595458-grey.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  \n \nCOMPARISON: No prior\n \nINDICATION: screen for lung cancer, 59 year old former smoker  with 34.5  pack  years, no prior screening   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None  \n \nAdditional Actionable Nodules:  No\n \nINDETERMINATE NODULES:  None  \n \nAdditional Indeterminate Nodules:  None  \n \nPARENCHYMA:\n \nMicronodules: None ]\n \nOld granulomatous disease: None  \n \nEmphysema:  None  \n \nAirways disease: None  \n \nDiffuse lung fibrosis: None  \n \nLymph Nodes: Not well evaluated with low dose technique likely unremarkable\n \nPleura: Normal  \n \nCardiac: Unremarkable\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 14);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(13, '0633091-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM \n\n\nCOMPARISON: None.\n\n\nINDICATION: 55 yo M with 25 yr tobacco hx, current smoker. Now with unintentional wt loss. Please screen for lung ca.  \n\n\nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  39 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.\n\n\nRadiation dose:  \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 85) \n\n\nFINDINGS:   \nACTIONABLE LUNG NODULES: None..  \n\n\nThere is diffuse groundglass in the peribronchovascular distribution within the bilateral lung fields, some textured, with more prominent nodular areas of groundglass within the left upper lobe but overall favoring the upper lobes. Central and peripheral areas of architectural distortion are noted with subpleural sparing.  Fine circumferential subpleural reticulation is present. Diffuse peribronchial thickening is noted.\n\n\nLymph Nodes: No adenopathy.   \nPleura: Normal.  \nCardiac: Atherosclerotic calcifications are present in the right subclavian artery, brachiocephalic and, aortic arch, and left descending artery. Normal heart size. No pericardial effusion. Upper limits of normal diameter of pulmonary artery suspicious  \nfor pulmonary hypertension.\nOsseous: Multiple bilateral rib fractures, old.\n\n\nAdditional Free Text:  If you need to clarify something or expand beyond minimal data elements.\n\n\nIMPRESSIONS:\n\n\n1.  LDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n2.  There is diffuse groundglass in the peribronchovascular distribution within the bilateral lung fields, some textured, with more prominent nodular areas of groundglass within the left upper lobe but overall favoring the upper lobes. Central and peripheral areas of architectural distortion are noted with subpleural sparing.  Fine circumferential subpleural reticulation is present. There is diffuse thickening of the airways. These findings are consistent with fibrotic process, with distribution and airways thickening favoring a smoking-related process on the spectrum of respiratory bronchiolitis interstitial lung disease (RB-ILD) to desquamative interstitial pneumonia (DIP).\n3. Atherosclerotic calcifications, including involvement of coronary arteries.\n\n\nNOTES:\n\n\nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    \n\n\nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38. \n\n\nI, Joe Smith, MD, have personally reviewed this examination and agree with the above stated findings.', NULL, 'smith', 15);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(14, '0726540-aaron.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: Prior images\n \nINDICATION: >30 pack year smoking, lung cancer screening, age 73.   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2 CTDIvol; 73 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.   \nINDETERMINATE NODULES:  None\n   \nMicronodules:  Rare micronodule and small nodules.\n Quantity: Roughly 4; consistency = solid.\n Representative locations: Right lower lobe (3-190) left lower lobe (3-291, 319)\n Very low level of clinical suspicion\n \nOld granulomatous disease: Present: Minor biapical scarring. Calcified granulomas in right and left upper lobes.  \n \nPARENCHYMA:\nEmphysema:  None   \nAirways: Normal.   \nFocal or diffuse lung fibrosis:  Minor biapical, post inflammatory\nLymph Nodes: None significant   \nPleura: No abnormalities.\nCardiac: Normal heart size. Mild coronary calcification of LAD and circumflex. Mild aortic valvular calcification.\nUpper abdomen:  Probable cyst left lobe of liver.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \n[Negative screen.  Scattered small nodules within the context of prior granulomatous disease, not suspicious for lung cancer.  Recommend continued annual screening in 12 months based on risk factors.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.', NULL, 'smith', 16);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(15, '0750522-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  \n \nCOMPARISON: 11/01/2013 and 12/01/2014 American Wellness and Imaging chest CTs.\n \nINDICATION: 79 yo F, 14 py smoking history.  \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  \nacquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 54)\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: None.\n \nPARENCHYMA:\n \nMicronodules: Unchanged calcified and noncalcified subcentimeter nodules within the right lower lobe (3-41) and left lower lobe (3-52, 54, 60, 66), likely a combination of end-airways and prior granulomatous disease.\n \nEmphysema: Mild smoking-related centrilobular emphysema.\n \nAirways disease: Scattered peribronchial and peribronchiolar thickening associated airway irregularity and ectasia and occasional mucostasis (3-32 right upper lobe).\n \nCardiac: Atherosclerotic calcification of the thoracic aorta, left common carotid, left subclavian, left anterior descending, circumflex and right coronary arteries.\n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 17);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(16, '0805863-gregson.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: Chest x-ray from 12/01/14\n \nINDICATION: 73 YEAR-OLD F, LONG HISTORY OF TOBACCO ABUSE  RULE OUT LUNG CANCER   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \n \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.\n \nChest wo (2a, 62);  \n \n \nFINDINGS:   \nACTIONABLE LUNG NODULES: Yes.   \nNodule Number:  1\n Anatomic Location: Right upper lobe\n Size = 2 x 1.5 cm\n Consistency: Solid\n Evolution: Slight apparent interval increase from chest x-ray of 2009\n Level of suspicion for malignancy: High\n \nINDETERMINATE NODULES:  Yes\nNodule Number: 1\n Anatomic Location: Right upper lobe\n Size = 6 x 5 mm\n Consistency: Solid\n Evolution: Not applicable\n Level of suspicion for malignancy: Intermediate\n \nAdditional Indeterminate Nodules:  No  \n \nLUNG PARENCHYMA:\n Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Present\n Quantity: One\n Consistency: Solid\n Representative locations: Right upper lobe\n Distinguishing features: Peribronchial\n \nOLD GRANULOMATOUS DISEASE: Right-sided apical scarring  \n \nEMPHYSEMA:  Yes, mild centrilobular emphysema  \n \nLARGE AIRWAYS DISEASE: Mild diffuse peribronchiolar thickening.\n \nSMALL AIRWAYS DISEASE:  No\n \nLUNG FIBROSIS:  No  \n \nLymph Nodes: Not well evaluated with low dose technique.   \n \nPleura: Normal the exception of right-sided apical pleural/parenchymal scarring.\n \nCardiac: Normal.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \n \nPositive screen:  Solid nodule of 2 cm diameter.  This nodule has tendrils extending to the pleural surface with architectural distortion with cicatricial emphysema. Possible slight increase in density over time; differential considerations include an  \nindolent lung carcinoma versus scar carcinoma versus scar. Clinical suspicion is moderate. This abnormality may be further evaluated with:  Percutaneous lung biopsy.\n \n2.  Mild centrilobular emphysema and peribronchial wall thickening.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 18);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(17, '0846711-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON:  CT 12/01/2014.\n \nINDICATION:   69 year old male, History Heavy Smoking, Lung Cancer Screening   \n \nTECHNIQUE: A low dose helical CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV =  31 cm using 72 mAs.  Coronal and sagittal  \nreformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.\n \n \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.\n \nChest Iow dose (2a, 77);  \n \n \nFINDINGS:   \n \nLungs: Further decrease in size of the previously visualized area of stellate consolidation in the right upper lobe, now measuring approximately 5 x 3 mm (3-39), previously 7 x 6 mm. Calcified granuloma in the right upper lobe. Linear opacity in the  \nlingula (3-86), likely related to scarring and/or atelectasis. Moderate to severe emphysema. Diffuse peribronchial thickening, likely smoking-related airways disease. Linear density in the distal trachea, likely mucus.\n \nLymph nodes | Mediastinum:  No significant lymphadenopathy is identified, though evaluation is limited by low dose protocol.\n \nPleura:  No pleural effusion or pleural nodularity.\n \nCardiovascular:  The heart is not enlarged. No pericardial effusion. Atherosclerotic calcification in the coronary arteries and thoracic aorta.\n \nOsseous:  No aggressive appearing bony lesions. Degenerative disc disease, most prominent in the visualized lumbar spine.  \n \nIMPRESSION:\n1. Further decrease in size of the previously visualized stellate nodular consolidation in the right upper lobe, likely postinflammatory scarring. No suspicious pulmonary lesion.\n \n2. Moderate to severe emphysema.\n \nI, Joe Smith MD, have reviewed these images and agree with the above findings.', NULL, 'smith', 19);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(18, '0859355-aaron.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST  Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: Chest CT with contrast 12/01/2014\n \nINDICATION:   55 year old former smoker 1/2 to 3/4 PPD x 30 years; quit 25 years ago.  Prior Stage IA NSCLC (adenocarcinoma) LUL, status post LU lobectomy.  Ongoing high risk surveillance.  \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  3 CTDIvol; 85 DLP.\n \nFINDINGS:   \n \nACTIONABLE LUNG NODULES: None.   \n \nINDETERMINATE NODULES:  None\n \nLUNG PARENCHYMA:\nGeneral:  Prior left upper lobectomy.  \nMicronodules:  None  \nOld Granulomatous Disease: None\nEmphysema:  None\nAirways Disease: None\n Wall thickness:  Normal.   \n Morphology:  None significant\n Mucostasis:  No   \nDiffuse lung fibrosis:  None  \nFocal fibrosis: None\n \nLymph Nodes: None   \nPleura: Normal.\nCardiac. Normal heart size. Normal pericardium.  Moderate multivessel coronary artery calcification..\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:  Negative screen.  Nodules suspicious for lung cancer.\nRecommend continued annual screening in 12 months based on risk factors.\n \n2.  Prior left upper lobectomy\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.', NULL, 'smith', 20);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(19, '0878285-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: CT chest performed December 01, 2014\n \nINDICATION: 56 y/o female, 43 p/y history, screening exam   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.\n \nChest wo (3a, 114);  \n \n \n \nFINDINGS:   \nACTIONABLE LUNG NODULES:  \n \nNone.   \n \n \nINDETERMINATE NODULES:   \n \nNone  \n \n \nLUNG PARENCHYMA:\n \nmicronodules (= 3 mm) or small nodules 4-5 mm:  None\n \n \nOLD GRANULOMATOUS DISEASE:  \n \nNone  \n \nEMPHYSEMA:   \n \nMild apical paraseptal emphysema.\n \nMild predominantly upper lobe centrilobular emphysema.  \n \nLARGE AIRWAYS DISEASE: Yes.   \n \n Wall thickness: Mild bronchial wall thickening of the large airways   \n Morphology:  Bronchiectasis\n Distribution: Lower lobes greater than upper lobes.\n \n \nSMALL AIRWAYS DISEASE:  No\n \nLUNG FIBROSIS:  None  \n \nLymph Nodes: Not well evaluated with low dose technique\n \nPleura: No pleural effusion. No pneumothorax.\n \nCardiac: Heart is normal in size. Triple-vessel coronary artery calcification. Atherosclerotic changes of the thoracic aorta..\n \nAdditional Free Text:  Minimal bibasilar atelectasis.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.    Recommend continued annual screening in 12 months based on risk factors.\n \n \n2.  Mild, upper lobe predominant paraseptal and centrilobular emphysema. Minimal chronic large airways disease.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 21);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(20, '0914241-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  \n \nCOMPARISON: 12/01/2014 UCLA chest CT.\n \nINDICATION: 77 y/o female, 22 pack year history. Breast carcinoma. Follow up lung nodule seen on CT abdomen and pelvis 11/13   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  32.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest w/o (2a, 71)\n \nFINDINGS:   \nACTIONABLE LUNG NODULES:  \nNodule Number: 1\n Anatomic Location: Right lower lobe\n Size = 15 x 10 mm (4-54), previously 10 x 6 mm (2-44)\n Consistency: Solid component < 5 mm/part-solid nodule  \n Evolution: Interval increase\n Level of suspicion for malignancy: Intermediate to moderately high\n \nPARENCHYMA:\n \nFocal Fibrosis: Essentially unchanged reticulation, architectural and pleural parenchymal interface distortion involving the apical and anterolateral right upper lobe, consistent with postradiation fibrosis.\n \nCardiac: Atherosclerotic calcification of the thoracic aorta, brachiocephalic, left common carotid, left subclavian, left anterior descending, circumflex and right coronary arteries. Increased small pericardial effusion.\n \nOther: Unchanged sclerosis involving the right 6th and 7th and left 7th ribs, of doubtful clinical significance.\n \nDecreased but persistent left breast cutaneous thickening with soft tissue and calcified infiltration into the fibroglandular tissue.\n \nStable right lumpectomy and right axillary lymph node dissection.  \n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nPositive screen:  Solid component < 5 mm/part-solid nodule 15 x 10 mm. Clinical suspicion is intermediate to moderately high. This abnormality may be further evaluated with: percutaneous lung biopsy.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 22);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(21, '0980397-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM \n\n\nCOMPARISON: No prior studies available for comparison.\n\n\nINDICATION: 67 year-old male with a 50+ pack-year history of smoking.\n\n\nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.\n\n\nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest (2a, 91) \n\n\nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n\n\nINDETERMINATE NODULES:  None.\n\n\nLUNG PARENCHYMA:\n Additional micronodules (= 3 mm) or small nodules 4-5 mm:  None.\n\n\nOLD GRANULOMATOUS DISEASE: None. \n\n\nEMPHYSEMA: Yes.\n Type: Centrilobular.\n Distribution: Upper lobe predominance.\n Severity: Severe (51-75%).\n\n\nLARGE AIRWAYS DISEASE: Yes.  Features:\n Wall thickness: Moderate bronchial wall thickening.   \n Morphology:  Luminal narrowing\n Distribution: Diffuse\n Mucostasis:  No\n\n\nSMALL AIRWAYS DISEASE: Yes.  Features:\n Morphology:  Bronchiolar prominence\n Distribution:  Diffuse\n Mosaic oligemia:  Not visible\n Mucostasis:  No\n\n\nLUNG FIBROSIS:  None. \n\n\nLymph Nodes: None.  \n\n\nPleura: Normal.\n\n\nCardiac: Heart size is normal. Coronary calcifications:  Present in the left anterior descending and circumflex arteries.\n\n\nLarge stone is seen within the gallbladder lumen. An exophytic cyst arising from the midpole of the right kidney is noted.\n\n\nIMPRESSIONS:\n\n\n1.  LDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n\n\n2.  Cholelithiasis.\n\n\nI, Joe Smith, MD, have personally reviewed this study and agree with the findings above.\n\n\nNOTES:\n\n\nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    \n\n\nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 23);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(22, '1000504-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  \n \nCOMPARISON: No prior CT Chest available for comparison.\n \nINDICATION: 55 yo male with 60 pack year smoking history requires screening for lung ca   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.11 CTDIvol; 77 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES:  None.\n \nPARENCHYMA:\n \nOccasional parenchymal scars with regional architectural distortion in right middle lobe, anterior segment of right lower lobe, from prior parenchymal possibly infective insults. Parenchymal scarring in medial segment of right lower lobe from enlarged  \nosteophytes and continous irritation.\n \nMicronodules:  None.\n \nOld granulomatous disease: None.\n \nEmphysema:  None.\n \nAirways disease: Bilateral peribronchial thickening with bronchiectasis and occasional bronchiolectasis keeping with chronic large and small airway disease possibly smoking-related.\n \nDiffuse lung fibrosis:  None.\n \nLymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.\n \nPleura: Normal.\n \nCardiac: Atherosclerotic disease of coronary arteries. Thoracic aorta and pulmonary artery appear normal in caliber..\n \nAdditional findings: Multiple osteophytes involving mid and lower thoracic spine, degenerative. Ill-defined sclerotic lesion in right 9th rib is likely degenerative.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:  Negative screen. Followup in one year with low-dose CT scan is recommended.\n \n2.  Bilateral peribronchial thickening with bronchiectasis and occasional bronchiolectasis keeping with chronic large and small airway disease possibly smoking-related.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 25);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(23, '1121170-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM \n\n\nCOMPARISON: PA lateral chest radiograph December 01, 2014\n\n\nINDICATION: 78 yo male, 10 pack years, screening  \n\n\nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  32 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.\n\n\nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.9 CTDIvol; 64 DLP.\n\n\nFINDINGS:   \nACTIONABLE LUNG NODULES: None (defined as Solid nodule = 10 mm, Pure GGN = 15 mm, PSN = 10 mm, solid component or = 5 mm)  \n\n\nINDETERMINATE NODULES: None (defined as:  Solid 6-9 mm/Pure GGN 6-14 mm/PSN < 10 mm, Solid part < 5 mm)\n\n\nLUNG PARENCHYMA:\n Additional micronodules: (= 3 mm) or small nodules 4-5 mm:  Micronodules\n Quantity:2\n Consistency: Solid\n Representative locations: Left upper lobe (2-132); left lower lobe (2-184)\n Distinguishing features: Juxtapleural; perifissural\n\n\nOLD GRANULOMATOUS DISEASE: Present calcified micronodule in the left upper lobe (2-74) \n\n\nEMPHYSEMA:  Yes\n Type: Centrilobular\n Distribution: Upper lobe predominant\n Severity: Trace (< 5%)\n\n\nLARGE AIRWAYS DISEASE: Yes\n Wall thickness:  Mild\n Morphology:  Mild bronchiectasis\n Distribution: Lower lobe predominant\n Mucostasis:  Yes\n\n\nSMALL AIRWAYS DISEASE: No\n\n\nLUNG FIBROSIS:  None significant\n\n\nLymph Nodes: Not well evaluated with low dose technique\n\n\nPleura: Normal\n\n\nCardiac: Normal heart size. Calcifications are present in the left anterior descending and right coronary arteries.\n\n\nAdditional Free Text: Linear bandlike scarring is present in the bilateral lower lobes.\n\n\nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n\n\nI, Joe Smith, MD have reviewed these images and agree with the above findings.\n\n\nNOTES:\n\n\nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    \n\n\nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 26);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(24, '1140370-aaron.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: Chest CT 12/01/2014\n \nINDICATION: Screening for lung CA  66 year-old male, 60 + pack yr   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  32 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  One CTDIvol; 56 DLP.\n \nFINDINGS:   \nSUSPICIOUS LUNG NODULES: Yes.   \nNodule Number:  1\n Anatomic Location: RLL, posterior basal segment\n Size = 24 x 19 mm (2-289)\n Consistency: Solid\n Margins:  Lobulated\n Adjacency:  Pleural retraction by lesion\n Evolution: Not present 2/4/2010\n Level of suspicion for malignancy: Highly probable NSCLC.\n \n \nINDETERMINATE NODULES:  None\n \nPARENCHYMA:  \nMicronodules:  None  \n \nOld granulomatous disease: Moderately severe, stable calcific biapical pleural parenchymal fibrosis. Small comment stable calcified nodule in right upper lobe.  \n \nEmphysema:  Present  \n Type: Centrilobular, lesser paraseptal   \n Distribution: Diffuse, upper lobe predominant   \n Severity: Moderate  \n \nAirways disease: Bronchial wall thickening of the central airways..    \nLymph Nodes: None present by size criteria   \nPleura: No effusion.\nCardiac: Normal heart size. Normal pericardium.\nExtensive, multivessel coronary artery calcification. Moderate aortic calcification.\nUpper abdomen: Inadequately visualized on low dose technique. Large right and smaller left renal cysts, previously described.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:  Positive screen: Lung-RADS category 4B with new solid, lobulated pleural-based nodule measuring up to 24 mm long diameter.  Clinical suspicion is high. Malignant histology should be confirmed with percutaneous lung  \ncore needle biopsy (Thoracic interventional radiology: Drs. Genshaft, Abtin), then staging PET/CT.  Staging not adequate on LDCT, but this appears to be localized and amenable to local therapy.\n \n2. Moderately severe centrilobular and paraseptal emphysema, upper lobe predominant.\n3. Moderate calcific biapical pleuroparenchymal scarring from OGD.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.', NULL, 'smith', 27);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(25, '1140383-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: 12/01/2014 Tower Hematology Oncology chest CT.\n \nINDICATION: Hodgkin\'s lymphoma. Follow-up lung nodules. Age 70, 30+ pack year history.   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  29.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  \nacquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 56)\n \nFINDINGS:   \n \nACTIONABLE LUNG NODULES: None.   \n \nINDETERMINATE NODULES: None.\n \nPARENCHYMA:\n \nNodules: Unchanged calcified and noncalcified subcentimeter nodules within the right upper lobe (3-16, 23), left upper lobe (3-16, 19, 40), left lower lobe (3-36, 59), right middle lobe (3-43, 46, 49) and the largest within the right lower lobe (3-66),  \nlikely a combination of treated lymphoma and end-airways disease.\n \nFocal Fibrosis: Unchanged reticulation, architectural and pleural parenchymal interface distortion and regional volume loss involving the apical and paracardiomediastinal right and paracardiomediastinal left upper and bilateral lower lobes, consistent  \nwith postradiation fibrosis.\n \nLymph Nodes: Unchanged coarsely calcified prevascular, precaval and right paratracheal lymph nodes, consistent with treated lymphoma.\n \nCardiac: Atherosclerotic calcification of the thoracic aorta, brachiocephalic, left anterior descending, circumflex and right coronary arteries..\n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 28);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(26, '1190960-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: December 12, 2014\n \nINDICATION: 75 YEAR-OLD FEMALE, 12 P/Y. LUNG NODULE/HIGH RISK SMOKER   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.56 CTDIvol; 42 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES:  None.\n \nPARENCHYMA:\n \nMicronodules:  Micronodules in left lower lobe (3-65) and right lower lobe (3- 61) remain stable.\n \nInterval further decrease in size and currently a scar at right upper lobe nodule with focal calcification keeping with resolved granuloma.\n \nChronic partial right middle lobe atelectasis.\n \nEmphysema: Mild predominantly upper lobe centrilobular emphysema.\n \nAirways disease: Subtle bronchiectasis.\n \nDiffuse lung fibrosis:  None.\n \nLymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   \n \nPleura: Trace bilateral pleural effusion, unchanged.\n \nCardiac: Heart size normal with no pericardial effusion. Thoracic aorta, and pulmonary artery appear normal in caliber..\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen. Follow up in one year with LDCT.\n \n2.  Prior parenchymal scarring, old granulomatous disease, and resolving granuloma.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 29);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(27, '1210898-aaron.txt', 'EXAM <Low dose CT Lung Cancer Screening >  <Date of Exam>\n \nCOMPARE chest CT 12/01/2014\n \nHISTORY 55 year-old male, 34 p/y history. Baseline lung cancer screening\n \nTECHNIQUE A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 26 cm using a low radiation dose technique.  Coronal  \nand sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.\n \nRADIATION DOSE:  1 Volumetric series was performed for this exam.  \n CTDIvol (CT dose Index-volume) = one mG\n DLP (Dose Length Product) = 39  mG cm  \n \nFINDINGS:\nIndeterminate or Suspicious Lung Nodules (Category 4B): Present\nNodule ID Number:   \n1. Solid nodule in the right apex (2-24)\nSize:  17 x 13 mm;  Mean diameter = 15;\nEvolution:  Indeterminate.  Apical scarring is present on prior chest radiograph and CT.  \nDifferences in spatial quality preclude assessment of change over time\nLevel of suspicion for lung cancer:  Moderately low\nLungRADS Nodule Category:  4B\n \nBenign Appearing/Non-actionable Nodules (Category 2):  Yes\nQuantity:  4 ground glass nodules bilaterally, all < 15 mm.\nRepresentative locations: Right upper lobe (2-81), right lower lobe (2-134, 172), left upper lobe (2-152), and left lower lobe (2-142)\nConsiderations: Small ground glass nodules are common in the setting of fibrosis or preneoplasia.    \n \nBenign Nodules (Category 1): No\n \nLUNG PARENCHYMA\nEmphysema:  Present: Centrilobular emphysema, upper lobe predominant, trace (< 5%).\nAirways disease:  Present: Mild bronchial wall thickening of central airways.\nFocal or Diffuse fibrosis:  Present and focal in both apices, likely post inflammatory.\n \nOTHER ANATOMIC REGIONS\nLymph Nodes:  Normal sized intrathoracic lymph nodes.\nPleura:  Normal\nCardiac:  Normal heart size. Normal pericardium. No significant coronary vascular calcifications.\nOsseous: Healed fracture deformity left 8th posterior rib.\nSignificant Other findings:  None\n \n \n \nIMPRESSION\n1. Lung Cancer Screening: Category 4B\nSolid nodule in right apex, likely representing apical fibrosis seen on prior images.  Assessment for change over time is indeterminate.  Recommend 3 month follow-up low dose CT to confirm the absence of change.\n2.   Scattered small ground glass nodules, benign appearing\n \nNOTES:   \nThis report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS).  \n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n \nCurrent USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.', NULL, 'smith', 30);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(28, '1221928-adam.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: No prior CT Chest available for comparison.\n \nINDICATION: 71 yo male, smoking 30 pack year history, current smoker   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.5 CTDIvol; 100 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: None.\n \nPARENCHYMA:\n \nAirways disease: Bilateral peribronchial thickening with bronchiectasis and bronchiolectasis. Occasional endobronchial mucus impaction. Larger micronodules for example in left upper lobe (3-30) is too small to characterize. Focal parenchymal scarring for\n example in right middle lobe and left upper lobe (3-35). Suggest attention to the left upper lobe pulmonary scar.\n \nDiffuse lung fibrosis:  None.  \n \nFocal Fibrosis: Post infective scarring.\n \nLymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   \n \nPleura: Normal..\n \nCardiac: Extensive atherosclerotic disease of coronary arteries. Occasional atherosclerotic disease of thoracic aorta.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.\n \n2.  Occasional pulmonary micronodules at least one in left upper lobe and the other in right middle lobe, are too small to characterize and of indeterminate etiology. Suggest attention to follow up CT scan in one year.\n \n3. Smoking-related chronic large and small airway disease and respiratory bronchiolitis.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 31);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(29, '1235646-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 AM  \n \nCOMPARISON: 12/01/2014 UCLA CT-PET.\n \nINDICATION: Colorectal carcinoma. Smoker for 20 years-early pharyngeal leukoplakia. Age 58, 40+ pack years.\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 32.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose:  \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest (2a, 63)\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.   \n \nINDETERMINATE NODULES: New 7 x 4 mm ground glass nodule within the right upper lobe (3-106).\nNodule Number: 1\n Anatomic Location: Right upper lobe\n Size = 7 x 4 mm (3-106)\n Consistency: Ground glass\n Evolution: New from prior study\n Level of suspicion for malignancy: Low\n \nPARENCHYMA:\n \nMicronodules: Unchanged subcentimeter nodules within the right upper lobe (4-24, 25) and left lower lobe (4-55, 72), too small to characterize but of doubtful clinical significance given radiographic stability.\n \nEmphysema: At least mild smoking-related centrilobular emphysema.\n \nAirways disease: Scattered peribronchial and peribronchiolar thickening.\n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nIndeterminate: New 7 x 4 mm ground glass nodule within the right lower lobe. Clinical suspicion is low. Recommend 4 month follow-up low dose CT scan to assess for persistence.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 32);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(30, '1243232-smith.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 01, 2015 00:00:00 PM  \n \nCOMPARISON: None available.\n \nINDICATION: 69 yo female, 1-2 packs/day x 50 years cigarette use.\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 35.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  \nacquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.\n \nChest wo (3a, 91); L-Spine (15a, 431)\n \nThe following accession numbers are related to this dose report 40854892: 40873125\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: None.\n \nPARENCHYMA:\n \nOld granulomatous disease: Biapical fibronodular pleural parenchymal scarring and coarsely calcified subcentimeter nodule within the right upper lobe (4-38).  \n \nAirways disease: Diffuse peribronchial and peribronchiolar thickening with associated airway irregularity and ectasia.\n \nCardiac: Atherosclerotic of the thoracic aorta and left anterior descending coronary artery.\n \nOther: 10 mm left thyroid gland nodule (4-7). Thyroid ultrasound may be useful for further characterization.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.  No nodules not suspicious for lung cancer.  Recommend continued annual screening in 12 months based on risk factors.\n \n2. 10 mm left thyroid gland nodule. Thyroid ultrasound may be useful for further characterization.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 33);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(31, '1299216-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Aug 21, 2021 01:00:00 PM  \n \nCOMPARISON: No prior CT Chest available for comparison.\n \nINDICATION: 30 pack years of smoking. quit 1980, female age 58.   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  0.13 and 2.78   CTDIvol; 98 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: None.\n \nLUNG PARENCHYMA: Micronodules in juxta fissural right lower lobe (3-46) of indeterminate etiology.\n \nOLD GRANULOMATOUS DISEASE: None.  \n \nEMPHYSEMA:  None.  \n \nLARGE AIRWAYS DISEASE: None.\n \nSMALL AIRWAYS DISEASE:  None the\n \nLUNG FIBROSIS:  None.  \n \nLymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   \n \nPleura: Normal\n \nCardiac: Heart size normal with no pericardial effusion. Thoracic aorta, and pulmonary artery appear normal in caliber.\n \nAdditional Free Text:  If you need to clarify something or expand beyond minimal data elements.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.  \n \n2.  Micronodules in juxta fissural right lower lobe (3-46) of indeterminate etiology. Suggest attention with a one year followup CT scan.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 34);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(32, '1302463-gutierrez.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Sep 13, 2021 04:08:00 PM  \n \nCOMPARISON: None\n \nINDICATION: 56 year old female. Greater than 30-pack-year smoking history   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi- detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  32 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.59 CTDIvol; 58 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.   \n \nINDETERMINATE NODULES:  None\n \nLUNG PARENCHYMA:\n Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Additional micronodules present\n Quantity: 5\n Consistency: Ground glass and solid\n Representative locations: Right upper lobe (2-59)\n Distinguishing features: No distinguishing features\n \nOLD GRANULOMATOUS DISEASE: None\n \nEMPHYSEMA: Yes:  If present:  \n Type: Centrilobular, with occasional paraseptal foci\n Distribution: Upper lobe predominant\n Severity: Mild\n \nLARGE AIRWAYS DISEASE: Yes  Features:\n Wall thickness:  Mild\n Morphology:  Bronchiectasis\n Distribution: Diffuse\n Mucostasis:  No\n \nSMALL AIRWAYS DISEASE:  No  Features:\n \nLUNG FIBROSIS: None. Linear bands of scarring involving the bilateral lower and right middle lobe.\n \nLymph Nodes: 8 mm nonspecific right lower paratracheal lymph node.\n \nPleura: Normal\n \nCardiac: Normal heart size. Scattered atherosclerotic calcifications of the thoracic aorta and branch vessels. Coronary calcifications:  Minimal present in the right coronary artery.  \n \nAdditional Free Text:  Partially visualized stone within the gallbladder fundus.  Of note, low dose technique limits evaluation of the soft tissue structures.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \n2.  Partially visualized cholelithiasis.\n \nI, Joe Smith, MD have reviewed these images and agree with the above findings.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 35);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(33, '1387607-aberle.txt', 'EXAM: CT LUNG LOW DOSE WO CONTRAST 2021-02-01 13:00:00\n \nCOMPARE:  Two view chest 9/10/2020\n \nHISTORY:  73 year-old male. Baseline lung cancer screening; current smoker since age 14 of 1/2 PPD\n \nTECHNIQUE:  A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 31 cm using a low radiation dose technique.   \nCoronal and sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.\n \nRADIATION DOSE:  1 Volumetric series was performed for this exam.  \n CTDIvol (CT dose Index-volume) = 2 mG\n DLP (Dose Length Product) = 70  mG cm  \n \nFINDINGS:\nIndeterminate or Suspicious Lung Nodules (Category 3-4B): None\n \nBenign Appearing/Non-actionable Nodules (Category 2):  One small nodule as follows:\n Ground glass nodule in left lower lobe, 7 mm (2-279).  Polyhedral morphology suggests benign etiology.\n \nBenign Nodules (Category 1): Calcified micronodule right middle lobe (2-186)\n \nLUNG PARENCHYMA\nEmphysema:  None\nAirways disease:  None\nFibrosis: Band like scarring right middle lobe.  \n \nOTHER ANATOMIC REGIONS\nLymph Nodes:  No intrathoracic adenopathy\nPleura:  Normal\nCardiac:  Heart size normal. Pericardium normal. No coronary artery calcifications.\nOther findings:  None significant\n \nIMPRESSION\n1. Lung Cancer Screening: Category 2 benign appearing/nonactionable ground glass nodule in left lower lobe.  \nRecommend annual screening if this patient satisfies current eligibility criteria.\n \n \nNOTES:   \nThis report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS.  \n \nThis study was designed exclusively for lung cancer screening and nodule detections.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n \nCurrent USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.', NULL, 'smith', 36);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(34, '1393169-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 12, 2021 02:17:00 PM  \n \nCOMPARISON: December 12, 2020\n \nINDICATION: Screening: Age 55-80 yrs, currently smokes or quit in last 15 yrs, 30 pack year or more smoking history   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.57 CTDIvol; 52 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: Lobulated L-shaped nodule in left lower lobe measuring up to 9 mm (4-74) of indeterminate etiology.\n \nInterval increase in size of currently 14 mm groundglass nodule in right lower lobe (4-60).\n \nInterval increase in size of groundglass nodule in left upper lobe currently measuring 9 mm (43).\n \nLUNG PARENCHYMA: Bilateral peribronchial thickening with the widespread innumerable pulmonary micronodules and endobronchial mucous plugs.\n \nEMPHYSEMA:  Mild upper lobe greater than lower lobe predominantly centrilobular emphysema.  \n \nLUNG FIBROSIS:  None.\n \nLymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   \n \nPleura: Normal.\n \n \nCardiac: Atherosclerotic disease of coronary arteries.\n \nAdditional Free Text:  Visualized upper abdominal organs are unremarkable.\n \nIMPRESSIONS:\n LDCT lung cancer screening exam:  Indeterminate:  \n \nLobulated L-shaped nodule in left lower lobe measuring up to 9 mm (4-74) of indeterminate etiology. Suggest followup in 3 months with CT scan of chest to evaluate for change in size and if necessary lung biopsy.\n \nInterval increase in size of currently 14 mm groundglass nodule in right lower lobe (4-60). This groundglass nodule likely represent adenocarcinoma in situ.\n \nInterval increase in size of groundglass nodule in left upper lobe currently measuring 9 mm (43). This groundglass nodule likely represent adenocarcinoma in situ.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 37);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(35, '1519527-genshaft.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST February 10, 2021 03:37:00 AM  \n \nCOMPARISON: None available.\n \nINDICATION: 65 yo male, history of greater than 30 pack year smoking, lung cancer screening   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.9 CTDIvol; 71 DLP.\n \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.\n \nChest wo (2a, 71);  \n \n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES:  None.\n \nLUNG PARENCHYMA:\n Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Present\n Quantity: N (up to 1-5)\n Consistency: Solid\n Representative locations: (2-286)\n Distinguishing features: Likely endobronchial secretion impaction.\n \nOLD GRANULOMATOUS DISEASE: None.  \n \nEMPHYSEMA:  None significant.  \n \nLARGE AIRWAYS DISEASE: Yes  \n Wall thickness: Mild bronchial wall thickening.   \n Morphology:  Bronchiectasis\n Distribution: Lower lobe predominant\n Mucostasis:  Yes\n \nSMALL AIRWAYS DISEASE:  No\n \nLUNG FIBROSIS:  None significant  \n \nLymph Nodes: Not well evaluated with low dose technique\n \nPleura: None.  \n \nCardiac: Not well evaluated.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.  Small nodules not suspicious for lung cancer; probable endobronchial impaction.  Recommend continued annual screening in 12 months based on risk factors.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 38);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(36, '1570829-aberle.txt', 'EXAM: CT LUNG LOW DOSE WO CONTRAST 2021-04-05 11:29:00\n \nCOMPARE:  No prior images\n \nHISTORY:  61 year old female, 30+ p/y smoking history. Baseline lung screening\n \nTECHNIQUE:  A low dose helical CT CHEST was performed on a Siemens multi-detector scanner.  The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV = 31 cm using a low radiation dose technique.   \nCoronal and sagittal reformation and MIPS were reconstructed from the axial images.  NOTE:  This study was performed for the specific purposes of lung cancer screening and is not an alternative to diagnostic chest CT.\n \nRADIATION DOSE:  1 Volumetric series was performed for this exam.  \n CTDIvol (CT dose Index-volume) = 2 mG\n DLP (Dose Length Product) = 52  mG cm  \n \nFINDINGS:\nIndeterminate or Suspicious Lung Nodules (Category 3-4B): None\n \nBenign Appearing/Non-actionable Nodules (Category 2):  None\n \nBenign nodules (Category 1): Small calcified micronodule right upper lobe (4-105)\n \nLUNG PARENCHYMA\nEmphysema:  Absent\nAirways disease:  Absent\nFibrosis:  Absent\n \nOTHER ANATOMIC REGIONS\nLymph Nodes:  Multiple moderate sized lymph nodes, concentrated in the left supraclavicular, bilateral axillary/subpectoral, bilateral paratracheal, low prevascular, and subcarinal regions.  Primary concern is lymphoma or lymphoproliferative process.   \nDiffuse adenopathy may also be seen with drug reactions, viral infection, and benign granulomatous disease.   \nPleura:  Normal\nCardiac:   Heart size normal. Pericardium normal. No coronary vascular calcification.\n \nOther findings:   \nCalcified gallstones.\nSmall hiatal hernia.\n \n \nIMPRESSION\n1. Lung Cancer Screening: Category 1S.\nNo findings relevant to lung cancer.  Recommend annual screening if patient satisfies eligibility criteria.\n2.  Multistation moderate sized lymph nodes as described above.\nThe left supraclavicular or axillary nodes may be amenable to percutaneous biopsy if clinically indicated.\n \n NOTES:   \nThis report is based on the LungRADS Version1.0 algorithm ( Available at:  http://www.acr.org/Quality-Safety/Resources/LungRADS.  \n \nThis study was designed exclusively for lung cancer screening and nodule detections.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n \nCurrent USPSTF recommendations are to annually screen individuals between the ages of 55-80 years with a current or former smoking history of minimum 30 pack years.  Former smokers should have quit within the preceding 15 years.', NULL, 'smith', 39);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(37, '1621021-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Mar 19, 2021 05:16:00 AM \n\n\nCOMPARISON: None.\n\n\nINDICATION: 70-year-old man with 50 pack-year smoking history.\n\n\nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.\n\n\nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.9 CTDIvol; 76 DLP.\n\n\nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n\n\nINDETERMINANT LUNG NODULES: None.\n\n\nLUNG PARENCHYMA: There is mild ectasia of airways is seen bilaterally. Non-measurable scattered micro-nodules are seen in the bilateral lungs, lung periphery, likely postinflammatory in nature.\n\n\nCardiac: Cardiac size is normal. There is moderate diffuse coronary artery calcification. The aorta and pulmonary arteries are normal in caliber.\n\n\nIMPRESSIONS:\nLDCT lung cancer screening exam:  Negative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n\n\nNOTES:\n\n\nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    \n\n\nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38. \n\n\nI, Joe Smith, MD have reviewed these images and agree with the above findings.', NULL, 'smith', 40);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(38, '1628597-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jun 13, 2021 03:52:00 AM  \n \nCOMPARISON: None available.\n \nINDICATION: Hypertension. Smoker over 65 years of age, greater than 20 pack year smoking history.   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 36.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  \nacquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.\n \nChest (3a, 116); CaScSeq w/o (5a, 66); CaScSeq w/o (5a, 66)\n \nThe following accession numbers are related to this dose report 40841675: 40841674\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: None.\n \nPARENCHYMA:\n \nOld granulomatous disease: Coarsely calcified subcentimeter nodule within the lingula (6-55) and within the juxtapleural right upper lobe (6-27).\n \nEmphysema:  At least mild centrilobular, evaluation limited by low dose technique and patient size.  \n \nAirways disease: Clustered subcentimeter nodularity within the right middle lobe (6-58), likely end-airways disease.\n \nCardiac: Atherosclerotic calcification of the thoracic aorta. Aortic valve leaflet calcifications..\n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 41);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(39, '1629025-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Oct 13, 2021 03:24:00 AM  \n \nCOMPARISON: None available.\n \nINDICATION: 70 year-old male. Cough and smoked >30 pack-years and no smoking 30+ years.\n \nTECHNIQUE: A low dose helical CT CHEST was performed on a Siemens 64-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness at dFOV =  28.0 cm using 35 mAs. Coronal and sagittal reformations\n and MIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest wo (2a, 62)  \n \nFINDINGS:   \nLung Nodules: Present. Features as below:\nAnatomic Location: Right lower lobe lateral basal segment  \nTemporal: Indeterminate\nSize = 4 mm (3-71)\nConsistency: Ground glass\nMargins: Smooth\nAdjacency: Subpleural intraparenchymal\nProbability of invasion: None\nLevel of suspicion for primary lung cancer: Low\n \nLung Parenchyma: Biapical pleural parenchymal scarring; age-related versus prior granulomatous disease.\n \nAirway disease: Occasional scattered peribronchial and peribronchiolar thickening with associated mild airway irregularity and ectasia, consistent with large and small airways disease, albeit relatively nonspecific.\n \nMediastinum: No evidence for clinically significant intrathoracic lymphadenopathy by CT size criteria.\n \nPleura: Normal.\n \nCardiac: Atherosclerotic calcification of the thoracic aorta.\n \nSkeleton: Subcentimeter sclerosis within the sternal body (3-37), likely enostosis, or bone island.\n \nOther: Right thyroid nodule resection. Limited imaging of the upper abdomen demonstrates 15 mm left hepatic lobe cyst (3-95).\n \nIMPRESSION:\nSolitary 4 mm ground glass nodule within the right lower lobe. Low level of suspicion for primary lung neoplasm.\nRecommendation:  Fleischner and Godoy recommendations for now.', NULL, 'smith', 42);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(40, '1636877-goldin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST April 13, 2021 09:11:00 PM  \n \nCOMPARISON: October 5, 2020\n \nINDICATION: 62 yo F with h/o heavy smoking, Lung nodules, noncalcified, LUL and RLL, needs screening. for malignancy. 42 p/y smoking history.   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None\n \nAdditional Actionable Nodules:  No  \n \nINDETERMINATE NODULES:  None\n \nAdditional Indeterminate Nodules:  None\n \nPARENCHYMA:\n \nMicronodules:  Three to 4 micronodules identified without change from the CT study of 2011. These all measure less than 3 mm. Although most are uncalcified there is at least one which is calcified and there is associated granulomatous calcification  \nwithin Ipsilateral right hilar nodes.\n \nOld granulomatous disease: Present as described above  \n \nEmphysema: None\n \nAirways disease: Yes\n Wall thickness:  Mild bronchial wall thickening.   \n Morphology:  Bronchiolectasis  \n Distribution: Diffuse  \n Mucostasis:  No\n \n \nDiffuse lung fibrosis:  None  \nFocal Fibrosis: None  \n \nLymph Nodes: Not well evaluated with low dose technique.  \n \nPleura: Normal\n \nCardiac: Heart size Normal/Enlarged.  Coronary calcifications: None   \n \n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \n \n2. All granulomatous disease stable micronodules unchanged from 2011. No further followup required  \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 43);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(41, '1678113-suh.txt', 'CT LUNG LOW DOSE WO CONTRAST May 19, 2021 12:32:00 PM \n\n\nCOMPARISON: Chest radiograph June 12, 2020\n\n\nINDICATION: 73 yr old male. Evaluate PNA and rule out malignancy, 150 Pack yr tobacco hx  \n\n\nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  28 cm.  Coronal and sagittal reformations and MIPs were reconstructed from the volumetric data.  No contrast was administered.\n\n\nDOSE: One exposure was performed for this screening chest CT.  Exposure 1:  1.19 CTDIvol; 37.64 DLP.\n\n\nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n\n\nINDETERMINATE NODULES:  None.\n\n\nLUNG PARENCHYMA: Multifocal airspace consolidation involving the posterior dependent aspects of the left upper, lingular, and left lower lobes. Secretions noted within left lower lobe segmental airways.  3 mm right lower lobe groundglass nodule (4-34).  \nMild upper lobe predominant bronchial/bronchiolar thickening, compatible with large/small airways disease. \n\n\nOLD GRANULOMATOUS DISEASE: Calcified hilar lymph nodes, compatible with prior granulomatous disease.\n\n\nEMPHYSEMA:  Diffuse, upper lobe predominant centrilobular emphysema.\n\n\nLymph Nodes: Not well evaluated with low dose technique.  \n\n\nPleura: Trace left pleural effusion.  \n\n\nCardiac: Normal heart size, without pericardial effusion. Extensive vascular calcification involving the thoracic aorta, mitral valve, and coronary arteries. Thoracic aorta and pulmonary artery normal in caliber.\n\n\nIMPRESSIONS:\n1. LDCT lung cancer screening exam: Negative screen.  No nodules not suspicious for lung cancer.  \n2. Multifocal consolidation within the left lung with associated lower lobe airway secretions; query pneumonia. Recommend short interval followup (4-6 weeks) to ensure resolution given extensive smoking history.\n\n\nI, Joe Smith, M.D., have reviewed this examination and I agree with the dictated report.\n\n\nNOTES:\nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.    \n\n\nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 44);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(42, '1679023-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST February 21, 2021 01:40:00 PM  \n \nCOMPARISON: No prior CT Chest available for comparison.\n \nINDICATION: 73 yo female, smoker 40 years\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  28 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.24 CTDIvol; 63 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES:  None.\n \nLUNG PARENCHYMA:\n Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Micronodule in left lower lobe adjacent to the left hemidiaphragm (3-67)\n Quantity: One\n Consistency: Solid\n Representative locations: 3-67\n Distinguishing features: None\n \nOLD GRANULOMATOUS DISEASE: None\n \nEMPHYSEMA:  Moderate upper lobe dominant centrilobular emphysema.  \n \nLARGE AIRWAYS DISEASE: Mild bronchiectasis with peribronchial thickening keeping with smoking-related airway disease.\n \nSMALL AIRWAYS DISEASE:  Cannot be evaluated.\n \nLUNG FIBROSIS:  None.  \n \nLymph Nodes: None.   \n \nPleura: None.\n \nAdditional Free Text:  Atherosclerotic disease of thoracic aorta and coronary arteries.\n \nModerate lateral hernia. Calcifications in left breast.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.\n \n2.  Nonspecific micronodule in left lower lobe. Suggest followup in one year regarding this nodule.\n \n3. Moderate lateral hernia.\n \n4. Moderate upper lobe dominant centrilobular emphysema. Bilateral bronchiectasis and chronic smoking-related airway disease.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 45);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(43, '1706938-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jun 15, 2021 02:32:00 AM  \n \nCOMPARISON: None available.\n \nINDICATION: 65 yo male, 1 pack per day cigarette use, quit 2013.  \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV = 33.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: The patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan  \nacquisition factors based on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest Iow dose (2a, 64)\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.   \n \nINDETERMINATE NODULES: None.   \n \nPARENCHYMA:\n \nMicronodules:  Subcentimeter nodules within the left upper lobe (3-30), right lower lobe (3-59, 60, 63, 64, 69, 70) and left lower lobe (3-58, 81), some calcified, all nodules likely a combination of end-airways and prior granulomatous disease.\n \nEmphysema: At least mild smoking-related centrilobular emphysema.  \n \nAirways disease: Diffuse scattered peribronchial and peribronchiolar thickening with associated airway irregularity and ectasia.\n \nFocal Fibrosis: Bands with architectural distortion within the right middle lobe, consistent with postinflammatory pleural parenchymal\n \nCardiac: Atherosclerotic calcification of the thoracic aorta.\n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 46);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(44, '1710993-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Mar 12, 2021 03:12:00 PM  \n \nCOMPARISON: 2/10/2020\n \nINDICATION: 56 year-old M, 20+ pack yrs, lung cancer screening/ micronodules on prior scan   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi- detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  35 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors.\n \nChest wo (3a, 105);  \n \nFINDINGS:   \n \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES:  None.\n \nLUNG PARENCHYMA:\n Additional micronodules (= 3 mm) or small nodules 4-5 mm:  Present\n Quantity: 3\n Consistency: Solid and ground-glass\n Representative locations: Right middle lobe ( 3-67), right lower lobe (3-67), right upper lobe (3-26).\n Distinguishing features: No distinguishing features.\n \nOLD GRANULOMATOUS DISEASE: None.  \nEMPHYSEMA:  Centrilobular.  Upper lobe predominant.  Severity: Mild (6-25%)  \nLARGE AIRWAYS DISEASE: Moderately bronchial wall thickening with bronchiectasis , diffuse. No mucostasis.\nSMALL AIRWAYS DISEASE:  No.\nLUNG FIBROSIS:  None.\nLymph Nodes: None significant.\nPleura: Normal.   \nCardiac: Normal cardiac size with no significant coronary calcifications.\nBones:  Healed fractures of the 4th through 6th ribs.\n \nIMPRESSION:\n1.  LDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer; probable intrapulmonary lymph nodes, focal inflammation, or scar.  Recommend continued annual screening in 12 months based on risk factors.   \n \n2.  No significant interval change in previously described pulmonary micronodules and ground glass opacities.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.  \n \nI, Joe Smith, MD, have personally reviewed this examination and agree with the above stated findings.', NULL, 'smith', 47);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(45, '1778670-suh.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Sep 12, 2021 03:51:00 AM  \n \nCOMPARISON: None available.\n \nINDICATION: Chronic cough x 2 years, remote history of smoking. Age 67, 13 pack year smoking hx\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30.0 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose:  \nThe patient received the following exposure event(s) during this study, and the dose reference values for each are as shown (CTDIvol in mGy, DLP in mGy-cm). Note that the values are not patient dose but numbers generated from scan acquisition factors  \nbased on 32 cm (body, "a") and/or 16 cm (head, "b") phantoms and may substantially under-estimate or over-estimate actual patient dose based on patient size and other factors. Chest w/o (2a, 60)\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: None.\n \nPARENCHYMA:\n \nOld granulomatous disease: Biapical fibronodular pleural parenchymal scarring. Several calcified and noncalcified subcentimeter nodules within the right upper lobe (4-31, 35) and left upper lobe (4-28).\n \nAirways disease: Mild diffuse peribronchial and peribronchiolar thickening, consistent with large and small airways disease, albeit relatively nonspecific.   \n \nCardiac: Atherosclerotic calcification of the thoracic aorta, brachiocephalic and left subclavian arteries.\n \nIMPRESSIONS:\nLDCT lung cancer screening exam:   \nNegative screen.  No/Small nodules not suspicious for lung cancer.  Recommend continued annual screening in 12 months based on risk factors.\n \n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 48);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(46, '1816627-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Dec 25, 2021 06:12:00 PM  \n \nCOMPARISON: April 23, 2013\n \nINDICATION: 76 M with COPD. Lung cancer screening.   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES:  None.\n \nLUNG PARENCHYMA:\nInterval development of 3 pulmonary micronodules for example in right lower lobe (3-83) and left upper lobe (3-42 and 17). Allowing for history of smoking and size of these nodules, followup in one year with low-dose CT scan is suggested.\n \nOLD GRANULOMATOUS DISEASE: Calcified pulmonary nodules, parenchymal scarring predominantly bilateral upper lobes, regional architectural distortion, are suggestive for prior granulomatous disease.\n \nPeripheral high density, well-defined, peripheral calcified soft tissue mass measuring 34 x 21 mm (3 and 14) in the peripheral right lung apex is likely fluid filled emphysematous bullae or loculated pleural collection.\n \nEMPHYSEMA:  Moderate upper lobe greater than lower lobe centrilobular and paraseptal emphysema and bilateral bronchiectasis and bronchiolectasis keeping with smoking-related lung and airway disease.\n \nLymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   \n \nCardiac: Atherosclerotic disease of coronary arteries.\n \nAdditional Free Text:  Osseous structure of thorax demonstrate  degenerative disease.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.\n \n2. Interval development of 3 pulmonary micronodules for example in right lower lobe (3-83) and left upper lobe (3-42 and 17). Allowing for history of smoking and size of these nodules, followup in one year with low-dose CT scan is suggested.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 49);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(47, '1841872-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jan 21, 2014 08:13:00 AM  \n \nCOMPARISON: CT chest October 18, 2013\n \nINDICATION: 69-year-old woman with history of smoking, lung nodule seen on prior CT chest. 27 pack year smoking history.\n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  30 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  1.6 CTDIvol; 64 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: A 1.2 cm solid nodule in the left lower lobe (3-72) is stable in comparison to the prior examination.\nINDETERMINATE NODULES: An 8 millimeter groundglass nodule in the right upper lobe (3-19) is also stable in comparison to the prior examination.\nLUNG PARENCHYMA: Additional micronodules are stable, for example in the right lower lobe 3-55, 3-63, 3-73, 3-86 and in the left lower lobe 3-83.\nOLD GRANULOMATOUS DISEASE: None.  \nEMPHYSEMA: None.\nLARGE or SMALL AIRWAYS DISEASE: None.\n \nLymph Nodes: No significant lymphadenopathy.   \nPleura: Normal.\nCardiac: Heart size is normal. No pericardial fluid collection. No significant coronary artery calcification. The aorta and pulmonary arteries are normal in caliber..\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:  Positive screen:  12 mm solid nodule in the left lower lobe stable since Oct 2013.  Clinical suspicion is moderate for lung malignancy. This abnormality may be further evaluated with:  PET-CT, percutaneous lung  \nbiopsy, surgical staging or potential resection.\n2. Additional micronodules as described above are stable.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.  \n \nI, Joe Smith, MD have reviewed these images and agree with the above findings.', NULL, 'smith', 50);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(48, '1857276-aberle.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Aug 14, 2021 05:09:00 PM  \n \nCOMPARISON: Chest radiograph May 1, 2020\n \nINDICATION: 61 year-old female. Low dose CT for lung cancer screening (hx of smoking)   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  33 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  4.9 CTDIvol; 150 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: None.\n \nNON-ACTIONABLE NODULES: Present\nTwo micronodules (< 4 mm) in left upper lobe (2-159) and right middle lobe (1-178). These are of low clinical suspicion.\nCalcified granuloma LLL\n \nLUNG:\nInterstitial disease:  Patchy subpleural groundglass in the bilateral mid-and lower lobes.  \nappearances consistent with mild interstitial fibrosis, albeit non-specific.\n \nEmphysema:  None.\nAirway disease: None significant. Normal airway wall thickness with mild ectasia in the lower lobes.\n \nPleura: Normal.\n \nCardiac: Heart size is normal. Coronary artery calcification in proximal LAD. Normal pericardium.\n \nMediastinum: Calcified nodes in the inferior pulmonary ligament inferior pulmonary ligament.\n \nAbdomen:: Low-density lesion in liver, inadequately characterized on low dose technique. Hepatic granuloma.\nModerate hiatal hernia.  \n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:  Negative (Category 3). Small micronodules of low clinical suspicion, query granulomas. Recommend continued annual screening in 12 months based on risk factors.\n2. Mild subpleural interstitial fibrosis, nonspecific.\n3. Hepatic lucency, not characterized on low dose technique.\n \nNOTES:\n \nThis study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.     \n \nI, Joe Smith, MD have reviewed these images and agree with the above findings.', NULL, 'smith', 51);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(49, '1878289-abtin.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Feb 09, 2021 02:12:00 PM  \n \nCOMPARISON: Prior chest CT or 2-view chest, etc.  \n \nINDICATION: 59 yr old M  ex smoker   COPD   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  31 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  [value] CTDIvol; [value] DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.\n \nINDETERMINATE NODULES: None\n \nPARENCHYMA:\n \nOld granulomatous disease: Cluster of calcified and noncalcified micronodules centered in right middle lobe the endobronchial mucus impaction, and occasional calcified and noncalcified nodules in right upper lobe in association with calcified right  \nlobar, interlobar and subcarinal station lymph nodes keeping with prior granulomatous disease.  \n \nEmphysema:  Yes  \n Type: Centrilobular   \n Distribution: Upper   \n Severity: Trace  \n \nAirways disease: Yes\n Wall thickness:  Normal.   \n Morphology:  Acute phthisis\n Distribution: Diffuse\n Mucostasis:  No\n \n \nDiffuse lung fibrosis:  None.\n \n \nFocal Fibrosis: Scarring in bilateral lower lobes and lingula.\n \nLymph Nodes: No significant mediastinal, axillary or hilar adenopathy present.   \n \nPleura: Normal.\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \nNegative screen.\n \n2. Smoking-related airway disease and mild upper lobe emphysema.\n \n3. Old granulomatous disease.\n \nSuggest follow with annual screening.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.   \n   \n \nDiagnostic algorithms vary across institutions and continue to evolve as new information becomes available.  These recommendations are based on the following sources:\n1.  Fleischner Society:  MacMahon H et al.  Guidelines for management of small pulmonary nodules detected on CT scans:  A statement from the Fleischner Society.  Radiology 2005; 237:395-400.   \n2.  Fleischner Society:  Naidich DP, et al.  Recommendations for the management of subsolid pulmonary nodules detected at CT:  A statement from the Fleischner Society.  Radiology 2013; 266:304-317.   \n3.  NCCN Guidelines:  Wood DE, et al.  Lung cancer screening.  J Natl Compr Canc Netw 2012-10:240-265.   \n4.  AATS Guidelines:  Jaklitsch MT et al.  The American Association for Thoracic Surgery guidelines for lung cancer screening using low-dose computed tomography scans for lung cancer survivors and other high-risk groups.  J Thorac Cardiovasc Surg 2012;  \n144:33-38.', NULL, 'smith', 52);
INSERT INTO `documents` (`document_id`, `name`, `doc_text`, `date`, `author`, `mrn`) VALUES
	(50, '1888416-aberle.txt', 'EXAM:  CT LUNG LOW DOSE WO CONTRAST Jul 27, 2021 06:34:00 PM  \n \nCOMPARISON: PA chest 8/7/2020\n \nINDICATION: 70 year-old male, lung cancer screen > 30 pack year history of smoking   \n \nTECHNIQUE: A LOW DOSE HELICAL CT CHEST was performed on a Siemens multi-detector scanner. The chest was studied in helical mode with prospective reconstructions of 1 and 3 mm slice thickness using dFOV =  36 cm.  Coronal and sagittal reformations and  \nMIPs were reconstructed from the volumetric data.  No contrast was administered.\n \nRadiation dose: One exposure was performed for this screening chest CT.  Exposure 1:  2.7 CTDIvol; 91 DLP.\n \nFINDINGS:   \nACTIONABLE LUNG NODULES: None.   \nINDETERMINATE NODULES: None\n \n \nPARENCHYMA:\n \nMicronodules:  None\n \nOld granulomatous disease: Present: Calcified micronodule in right apex.  \n \nEmphysema:  None  \nAirways disease: Minor bronchial wall thickening of central and medium-sized airways.\n Distribution: Diffuse\n Mucostasis:  None\n   \nFocal or Diffuse lung fibrosis:  Focal fibrosis in the right lower lobe paraspinous region and inferior lingula.  \n \nLymph Nodes: None significant.   \n \nPleura: Normal.\nCardiac. Normal heart size. Normal pericardium. Mild calcification in proximal LAD. Minor aortic root calcification..\n \nIMPRESSIONS:\n1.  LDCT lung cancer screening exam:   \n[Negative screen.  No nodules suspicious for lung cancer. Incidental small calcified micronodule right apex.\n \nNOTES:  This study was designed exclusively for lung cancer screening and nodule detection.  The image quality is not intended to identify pathology in other organs and should not be used in lieu of a diagnostic CT for complete evaluation of the chest.', NULL, 'smith', 53);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;


-- Dumping structure for table validator.document_status
CREATE TABLE IF NOT EXISTS `document_status` (
  `document_namespace` varchar(500) NOT NULL,
  `document_table` varchar(500) NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `status` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`document_namespace`,`document_table`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table validator.document_status: ~15 rows (approximately)
DELETE FROM `document_status`;
/*!40000 ALTER TABLE `document_status` DISABLE KEYS */;
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 1, 1, 1);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 2, 1, 1);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 3, 1, 2);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 4, 1, 1);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 5, 1, 1);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 6, 1, 1);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 7, 3, NULL);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 8, 3, NULL);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 9, 1, 1);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 10, 3, NULL);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 11, 0, NULL);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 12, 0, NULL);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 13, 0, NULL);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 14, 0, NULL);
INSERT INTO `document_status` (`document_namespace`, `document_table`, `document_id`, `status`, `user_id`) VALUES
	('validator', 'documents', 15, 0, NULL);
/*!40000 ALTER TABLE `document_status` ENABLE KEYS */;


-- Dumping structure for table validator.element
CREATE TABLE IF NOT EXISTS `element` (
  `element_id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(500) DEFAULT NULL,
  `html_id` varchar(500) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `repeat` int(11) DEFAULT NULL,
  `element_type` int(11) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `primary_key` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`element_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.element: ~68 rows (approximately)
DELETE FROM `element`;
/*!40000 ALTER TABLE `element` DISABLE KEYS */;
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(1, 'Date of Exam2131', 'exam_date', 1, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(2, 'Comparison Exam', 'comparison_exam', 1, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(3, 'Reason for Exam', 'reason_for_exam', 2, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(4, 'Date of Birth', 'date_of_birth', 2, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(5, 'Age', 'age', 2, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(6, 'Sex', 'sex', 2, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(7, 'Race', 'race', 2, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(8, 'Race declined to answer', 'race_declined', 2, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(9, 'Ethnicity', 'ethnicity', 2, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(10, 'Smoking Status', 'smoking_status', 2, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(11, 'Years Since Quit Smoking', 'years_since_quit_smoking', 2, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(12, 'Pack Years', 'pack-years', 2, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(13, 'CTDIvol (CT Dose Index-Volume)', 'ctdivol', 3, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(14, 'DLP (Dose Length Product)', 'dlp', 3, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(15, 'LungRADS Category 3-5 Nodules', 'lung_rads_cat_3_5', 4, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(16, 'Nodule Number', 'nodule-number', 5, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(17, 'Consistency', 'consistency', 5, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(18, 'Anatomic Location', 'anatomic_location', 5, 1, 3, 2, NULL, 1);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(19, 'Series Number', 'series', 5, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(20, 'Image Number', 'image', 5, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(21, 'Nodule Size (mm)', 'nodule_size_1', 5, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(22, 'Nodule Size (mm)', 'nodule_size_2', 5, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(23, 'Nodule Mean Diameter (mm)', 'nodule_mean_diameter', 5, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(24, 'For PSN: diameter of SOLID component', 'psn_solid_component', 5, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(25, 'Evolution', 'evolution', 5, 1, 4, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(26, 'Margins', 'margins', 5, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(27, 'Level of suspicion for lung cancer', 'level_of_suspicion', 5, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(28, 'LungRADS Nodule Category', 'lungrads_nodule_category', 5, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(29, 'Comments (Provide rationale if recommendation will deviate from LungRADS algorithm)', 'lungrads_nodule_cat_3_5_comment', 5, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(30, 'LungRADS Category 2 Nodules', 'lungrads_cat_2_nodules-present', 6, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(31, 'LungRADS Category 2 Nodules Quantity', 'lungrads_cat_2_nodules_quantity', 6, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(32, 'Consistency', 'lungrads_cat_2_nodule_consistency', 7, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(33, 'Size (mm)', 'lungrads_cat_2_nodule_size', 7, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(34, 'Location', 'lungrads_cat_2_nodule_location', 7, 1, 1, 2, NULL, 1);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(35, 'Series', 'lungrads_cat_2_series', 7, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(36, 'Image', 'lungrads_cat_2_image', 7, 1, 1, 1, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(37, 'Evolution', 'lungrads_cat_2_evolution', 7, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(38, 'LungRADS Category 1 Nodules', 'lungrads_cat_1_nodules-present', 8, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(39, 'Consistency', 'lungrads_cat_1_nodule_consistency', 8, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(40, 'Location', 'lungrads_cat_1_nodule_location', 8, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(41, 'Likely:', 'lungrads_cat_1_nodule_description', 8, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(42, 'Emphysema', 'emphysema', 9, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(43, 'Emphysema Severity', 'emphysema_severity', 9, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(44, 'Emphysema Type', 'emphysema_type', 9, 1, 4, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(45, 'Emphysema Distribution', 'emphysema_distribution', 9, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(46, 'Airways Disease', 'airways_disease', 9, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(47, 'Airways Distribution', 'airways_distribution', 9, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(48, 'Airways Location', 'airways_location', 9, 1, 4, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(49, 'Focal or Diffuse Fibrosis', 'fibrosis', 9, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(50, 'Fibrosis Type', 'fibrosis_type', 9, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(51, 'Fibrosis Non-Specific Description', 'fibrosis_non_specific', 9, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(52, 'Fibrosis Anatomic Distribution', 'fibrosis_anatomic_distribution', 9, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(53, 'Fibrosis Etiology', 'fibrosis_etiology', 9, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(54, 'Lymph Nodes', 'lymph_nodes', 10, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(55, 'Pleural Disease', 'pleural_disease', 10, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(56, 'Pleural Anatomic Location', 'pleural_anatomic_location', 10, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(57, 'Pleural Abnormality', 'pleural_abnormality', 10, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(58, 'Cardiac Heart Size', 'cardiac_heart_size', 10, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(59, 'Pericardium', 'cardiac_pericardium', 10, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(60, 'Artery Calcification', 'cardiac_artery_calcification', 10, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(61, 'Artery Calcification Distribution', 'cardiac_artery_calcification_distribution', 10, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(62, 'Other Cardiac Abnormalities', 'cardiac_artery_other', 10, 1, 4, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(63, 'Other Significant Findings', 'other_sig_findings', 10, 1, 4, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(64, 'Other Significant Findings Specify', 'other_sig_findings_specify', 10, 1, 7, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(65, 'Lung Cancer Screening: Category', 'lungrads_cat_overall', 11, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(66, 'Additional Screening Categories', 'additional_cat_overall', 11, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(67, 'Recommendation', 'recommendation', 11, 1, 3, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(68, 'Unclear', 'unclear', 12, -1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(69, 'Cancer Subtype', 'cancer_subtype', 13, -1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(70, 'Clinical Stage', 'clinical_stage', 13, -1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(71, 'Pathology Stage', 'pathology_stage', 13, -1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(72, 'Type of biopsy', 'biopsy', 13, -1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(73, 'Metastatic Diagnosis Date', 'metastatic_diagnosis_date', 13, 1, 1, 2, NULL, 0);
INSERT INTO `element` (`element_id`, `display_name`, `html_id`, `section_id`, `repeat`, `element_type`, `data_type`, `slot_id`, `primary_key`) VALUES
	(74, 'Has Received Platinum-containing Chemotherapy?', 'platinum_containing_chemo', 13, 1, 3, 2, NULL, 0);
/*!40000 ALTER TABLE `element` ENABLE KEYS */;


-- Dumping structure for table validator.element_type
CREATE TABLE IF NOT EXISTS `element_type` (
  `element_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `element_type_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`element_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.element_type: ~7 rows (approximately)
DELETE FROM `element_type`;
/*!40000 ALTER TABLE `element_type` DISABLE KEYS */;
INSERT INTO `element_type` (`element_type_id`, `element_type_name`) VALUES
	(1, 'text');
INSERT INTO `element_type` (`element_type_id`, `element_type_name`) VALUES
	(2, 'number');
INSERT INTO `element_type` (`element_type_id`, `element_type_name`) VALUES
	(3, 'radio');
INSERT INTO `element_type` (`element_type_id`, `element_type_name`) VALUES
	(4, 'checkbox');
INSERT INTO `element_type` (`element_type_id`, `element_type_name`) VALUES
	(5, 'date');
INSERT INTO `element_type` (`element_type_id`, `element_type_name`) VALUES
	(6, 'select');
INSERT INTO `element_type` (`element_type_id`, `element_type_name`) VALUES
	(7, 'textarea');
/*!40000 ALTER TABLE `element_type` ENABLE KEYS */;


-- Dumping structure for table validator.element_value
CREATE TABLE IF NOT EXISTS `element_value` (
  `element_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  PRIMARY KEY (`element_id`,`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.element_value: ~197 rows (approximately)
DELETE FROM `element_value`;
/*!40000 ALTER TABLE `element_value` DISABLE KEYS */;
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(1, 1);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(2, 2);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(2, 3);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(3, 4);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(3, 5);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(3, 6);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(3, 7);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(4, 8);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(5, 9);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(6, 10);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(7, 11);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(8, 12);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(8, 13);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(9, 14);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(9, 15);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(9, 16);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(10, 17);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(10, 18);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(10, 19);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(11, 20);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(12, 21);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(13, 22);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(14, 23);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(15, 24);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(15, 25);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(16, 26);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(17, 27);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(17, 28);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(17, 29);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(18, 30);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(18, 31);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(18, 32);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(18, 33);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(18, 34);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(19, 35);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(20, 36);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(21, 37);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(22, 38);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(23, 39);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(24, 40);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(25, 41);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(25, 42);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(25, 43);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(25, 44);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(25, 45);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(25, 46);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(25, 47);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(25, 48);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(26, 49);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(26, 50);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(26, 51);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(26, 52);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(26, 53);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(27, 54);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(27, 55);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(27, 56);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(27, 57);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(27, 58);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(28, 59);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(28, 60);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(28, 61);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(28, 62);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(29, 63);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(30, 64);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(30, 65);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(31, 66);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(32, 67);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(33, 68);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(34, 69);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(35, 70);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(36, 71);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(37, 72);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(37, 73);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(37, 74);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(37, 75);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(38, 76);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(38, 77);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(39, 78);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(40, 79);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(41, 80);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(41, 81);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(41, 82);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(41, 83);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(42, 84);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(42, 85);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(43, 86);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(43, 87);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(43, 88);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(43, 89);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(43, 90);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(44, 91);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(44, 92);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(44, 93);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(44, 94);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(45, 95);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(45, 96);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(45, 97);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(45, 98);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(45, 99);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(45, 100);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(45, 101);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(46, 102);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(46, 103);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(47, 104);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(47, 105);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(47, 106);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(47, 107);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(47, 108);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(48, 109);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(48, 110);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(48, 111);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(48, 112);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(48, 113);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(49, 114);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(49, 115);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(50, 116);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(50, 117);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(50, 118);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(50, 119);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(50, 120);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(51, 121);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(52, 122);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(52, 123);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(52, 124);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(52, 125);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(52, 126);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(52, 127);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(52, 128);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(52, 129);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(53, 130);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(53, 131);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(53, 132);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(53, 133);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(53, 134);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(53, 135);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(53, 136);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(53, 137);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(54, 138);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(54, 139);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(54, 140);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(55, 141);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(55, 142);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(56, 143);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(56, 144);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(56, 145);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(57, 146);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(57, 147);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(57, 148);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(57, 149);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(57, 150);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(58, 151);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(58, 152);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(58, 153);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(59, 154);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(59, 155);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(59, 156);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(59, 157);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(59, 158);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(59, 159);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(60, 160);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(60, 161);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(60, 162);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(60, 163);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(61, 164);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(61, 165);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(61, 166);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(61, 167);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(61, 168);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(62, 169);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(62, 170);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(62, 171);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(62, 172);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(63, 173);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(63, 174);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(63, 175);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(63, 176);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(63, 177);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(63, 178);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(63, 179);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(63, 180);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(63, 181);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(64, 182);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(65, 183);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(65, 184);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(65, 185);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(65, 186);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(65, 187);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(65, 188);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(65, 189);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(66, 190);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(66, 191);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(66, 192);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(67, 193);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(67, 194);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(67, 195);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(67, 196);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(68, 197);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(69, 198);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(70, 199);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(71, 200);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(72, 201);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(73, 202);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(74, 203);
INSERT INTO `element_value` (`element_id`, `value_id`) VALUES
	(74, 204);
/*!40000 ALTER TABLE `element_value` ENABLE KEYS */;


-- Dumping structure for table validator.frame
CREATE TABLE IF NOT EXISTS `frame` (
  `frame_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`frame_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.frame: ~0 rows (approximately)
DELETE FROM `frame`;
/*!40000 ALTER TABLE `frame` DISABLE KEYS */;
INSERT INTO `frame` (`frame_id`, `name`) VALUES
	(1, 'LDCT');
INSERT INTO `frame` (`frame_id`, `name`) VALUES
	(2, 'pop_nlp_stage');
/*!40000 ALTER TABLE `frame` ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance
CREATE TABLE IF NOT EXISTS `frame_instance` (
  `frame_instance_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `frame_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`frame_instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.frame_instance: ~50 rows (approximately)
DELETE FROM `frame_instance`;
/*!40000 ALTER TABLE `frame_instance` DISABLE KEYS */;
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(1, '1', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(2, '2', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(3, '3', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(4, '4', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(5, '5', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(6, '6', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(7, '7', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(8, '8', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(9, '9', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(10, '10', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(11, '11', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(12, '12', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(13, '13', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(14, '14', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(15, '15', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(16, '16', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(17, '17', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(18, '18', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(19, '19', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(20, '20', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(21, '21', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(22, '22', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(23, '23', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(24, '24', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(25, '25', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(26, '26', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(27, '27', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(28, '28', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(29, '29', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(30, '30', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(31, '31', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(32, '32', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(33, '33', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(34, '34', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(35, '35', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(36, '36', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(37, '37', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(38, '38', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(39, '39', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(40, '40', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(41, '41', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(42, '42', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(43, '43', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(44, '44', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(45, '45', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(46, '46', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(47, '47', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(48, '48', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(49, '49', 1);
INSERT INTO `frame_instance` (`frame_instance_id`, `name`, `frame_id`) VALUES
	(50, '50', 2);
/*!40000 ALTER TABLE `frame_instance` ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_annotation
CREATE TABLE IF NOT EXISTS `frame_instance_annotation` (
  `id` int(11) NOT NULL,
  `document_namespace` varchar(500) DEFAULT NULL,
  `document_table` varchar(500) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `annotation_type` varchar(500) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `value` text,
  `features` text,
  `provenance` varchar(500) DEFAULT NULL,
  `score` double DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.frame_instance_annotation: ~0 rows (approximately)
DELETE FROM `frame_instance_annotation`;
/*!40000 ALTER TABLE `frame_instance_annotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `frame_instance_annotation` ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_data
CREATE TABLE IF NOT EXISTS `frame_instance_data` (
  `frame_instance_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `value` text,
  `section_slot_number` int(11) DEFAULT '0',
  `element_slot_number` int(11) DEFAULT '0',
  `document_namespace` varchar(500) DEFAULT NULL,
  `document_table` varchar(500) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `annotation_id` int(11) DEFAULT NULL,
  `provenance` varchar(500) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `v_scroll_pos` int(11) DEFAULT NULL,
  `scroll_height` int(11) DEFAULT NULL,
  `scroll_width` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.frame_instance_data: ~79 rows (approximately)
DELETE FROM `frame_instance_data`;
/*!40000 ALTER TABLE `frame_instance_data` DISABLE KEYS */;
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 70, 'EXAM', 0, 0, 'validator', 'documents', 1, 1, 'namespace', 32, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(11, 15, 'CT', 0, 0, 'validator', 'documents', 11, 1, 'namespace', 1, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(11, 22, 'December 01, 2014', 0, 0, 'validator', 'documents', 11, 2, 'namespace', 4, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 18, '', 0, 0, 'validator', 'documents', 1, 4, 'namespace', 3, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 22, '55', 0, 0, 'validator', 'documents', 1, 5, 'namespace', 4, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 1, 'TECHNIQUE', 0, 0, 'validator', 'documents', 1, 6, 'namespace', 5, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 23, 'scanner', 0, 0, 'validator', 'documents', 1, 7, 'namespace', 6, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 24, 'and', 0, 0, 'validator', 'documents', 1, 8, 'namespace', 7, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 25, '', 0, 0, 'validator', 'documents', 1, 9, 'namespace', 8, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 27, '', 0, 0, 'validator', 'documents', 1, 10, 'namespace', 9, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 30, '', 0, 0, 'validator', 'documents', 1, 11, 'namespace', 10, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 2, 'sagittal', 0, 0, 'validator', 'documents', 1, 12, 'namespace', 11, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 3, 'helical', 0, 0, 'validator', 'documents', 1, 13, 'namespace', 12, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 33, 'NOTE', 0, 0, 'validator', 'documents', 1, 14, 'namespace', 13, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 4, 'RADIATION', 0, 0, 'validator', 'documents', 1, 15, 'namespace', 14, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 34, '', 0, 0, 'validator', 'documents', 1, 16, 'namespace', 15, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 5, 'dose', 0, 0, 'validator', 'documents', 1, 17, 'namespace', 16, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 40, '', 0, 0, 'validator', 'documents', 1, 19, 'namespace', 18, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 6, 'CHEST', 0, 0, 'validator', 'documents', 1, 20, 'namespace', 19, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 7, 'This', 0, 0, 'validator', 'documents', 1, 21, 'namespace', 20, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 8, 'HISTORY', 0, 0, 'validator', 'documents', 1, 22, 'namespace', 21, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 9, 'screening', 0, 0, 'validator', 'documents', 1, 23, 'namespace', 22, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 10, 'Volumetric', 0, 0, 'validator', 'documents', 1, 24, 'namespace', 23, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 11, 'were', 0, 0, 'validator', 'documents', 1, 25, 'namespace', 24, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 55, 'with', 0, 0, 'validator', 'documents', 1, 27, 'namespace', 26, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 58, '', 0, 0, 'validator', 'documents', 1, 28, 'namespace', 27, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 66, 'old', 0, 0, 'validator', 'documents', 1, 29, 'namespace', 29, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 64, '', 0, 0, 'validator', 'documents', 1, 30, 'namespace', 28, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 67, '', 0, 0, 'validator', 'documents', 1, 31, 'namespace', 30, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 69, 'DOSE', 0, 0, 'validator', 'documents', 1, 32, 'namespace', 31, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 12, 'male', 0, 0, 'validator', 'documents', 1, 33, 'namespace', 33, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 71, 'The', 0, 0, 'validator', 'documents', 1, 34, 'namespace', 34, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 13, 'studied', 0, 0, 'validator', 'documents', 1, 35, 'namespace', 35, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 14, 'low', 0, 0, 'validator', 'documents', 1, 36, 'namespace', 36, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 73, '', 0, 0, 'validator', 'documents', 1, 37, 'namespace', 37, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 77, '', 0, 0, 'validator', 'documents', 1, 38, 'namespace', 38, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 81, '', 0, 0, 'validator', 'documents', 1, 39, 'namespace', 41, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 78, 'a', 0, 0, 'validator', 'documents', 1, 40, 'namespace', 39, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 79, 'COMPARE', 0, 0, 'validator', 'documents', 1, 41, 'namespace', 40, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 85, '', 0, 0, 'validator', 'documents', 1, 42, 'namespace', 42, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 88, '', 0, 0, 'validator', 'documents', 1, 43, 'namespace', 43, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 91, '', 0, 0, 'validator', 'documents', 1, 44, 'namespace', 44, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 99, '', 0, 0, 'validator', 'documents', 1, 45, 'namespace', 45, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 103, '', 0, 0, 'validator', 'documents', 1, 46, 'namespace', 46, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 105, '', 0, 0, 'validator', 'documents', 1, 47, 'namespace', 47, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 109, '', 0, 0, 'validator', 'documents', 1, 48, 'namespace', 48, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 114, '', 0, 0, 'validator', 'documents', 1, 49, 'namespace', 49, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 117, '', 0, 0, 'validator', 'documents', 1, 50, 'namespace', 50, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 122, '', 0, 0, 'validator', 'documents', 1, 51, 'namespace', 52, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 121, 'FINDINGS', 0, 0, 'validator', 'documents', 1, 52, 'namespace', 51, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 131, '', 0, 0, 'validator', 'documents', 1, 53, 'namespace', 53, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 138, '', 0, 0, 'validator', 'documents', 1, 54, 'namespace', 54, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 141, '', 0, 0, 'validator', 'documents', 1, 55, 'namespace', 55, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 143, '', 0, 0, 'validator', 'documents', 1, 56, 'namespace', 56, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 146, '', 0, 0, 'validator', 'documents', 1, 57, 'namespace', 57, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 153, '', 0, 0, 'validator', 'documents', 1, 58, 'namespace', 58, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 156, '', 0, 0, 'validator', 'documents', 1, 59, 'namespace', 59, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 162, '', 0, 0, 'validator', 'documents', 1, 60, 'namespace', 60, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 165, '', 0, 0, 'validator', 'documents', 1, 61, 'namespace', 61, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 170, '', 0, 0, 'validator', 'documents', 1, 62, 'namespace', 62, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 178, '', 0, 0, 'validator', 'documents', 1, 63, 'namespace', 63, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 182, 'Index', 0, 0, 'validator', 'documents', 1, 64, 'namespace', 64, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 185, '', 0, 0, 'validator', 'documents', 1, 65, 'namespace', 65, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 191, '', 0, 0, 'validator', 'documents', 1, 66, 'namespace', 66, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 194, '', 0, 0, 'validator', 'documents', 1, 67, 'namespace', 67, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 197, 'Category', 0, 0, 'validator', 'documents', 1, 68, 'namespace', 68, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(5, 22, 'reconstructed', 0, 0, 'validator', 'documents', 5, 1, 'namespace', 4, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(6, 23, 'new', 0, 0, 'validator', 'documents', 6, 2, 'namespace', 6, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(6, 24, 'FINDINGS:   \n', 0, 0, 'validator', 'documents', 6, 3, 'namespace', 7, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(6, 1, 'are', 0, 0, 'validator', 'documents', 6, 4, 'namespace', 5, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(6, 22, 'lymphadenopathy\n', 0, 0, 'validator', 'documents', 6, 5, 'namespace', 4, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(6, 15, 'December', 0, 0, 'validator', 'documents', 6, 6, 'namespace', 1, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 15, 'Indeterminate', 0, 0, 'validator', 'documents', 1, 70, 'namespace', 1, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 48, 'groundglass', 0, 0, 'validator', 'documents', 1, 72, 'namespace', 25, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 49, 'groundglass', 0, 0, 'validator', 'documents', 1, 73, 'namespace', 25, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 37, 'from', 0, 0, 'validator', 'documents', 1, 74, 'namespace', 17, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(1, 17, 'Non', 0, 0, 'validator', 'documents', 1, 75, 'namespace', 2, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(2, 16, 'TECHNIQUE', 0, 0, 'validator', 'documents', 2, 1, 'namespace', 2, NULL, NULL, NULL);
INSERT INTO `frame_instance_data` (`frame_instance_id`, `slot_id`, `value`, `section_slot_number`, `element_slot_number`, `document_namespace`, `document_table`, `document_id`, `annotation_id`, `provenance`, `element_id`, `v_scroll_pos`, `scroll_height`, `scroll_width`) VALUES
	(2, 22, '\n', 0, 0, 'validator', 'documents', 2, 3, 'namespace', 4, NULL, NULL, NULL);
/*!40000 ALTER TABLE `frame_instance_data` ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_document
CREATE TABLE IF NOT EXISTS `frame_instance_document` (
  `frame_instance_id` int(11) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `document_table` varchar(500) DEFAULT NULL,
  `document_namespace` varchar(500) DEFAULT NULL,
  `document_key` varchar(500) DEFAULT NULL,
  `document_text_column` varchar(500) DEFAULT NULL,
  `document_name` varchar(500) DEFAULT NULL,
  `document_order` int(11) DEFAULT NULL,
  `document_features` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.frame_instance_document: ~50 rows (approximately)
DELETE FROM `frame_instance_document`;
/*!40000 ALTER TABLE `frame_instance_document` DISABLE KEYS */;
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(1, 1, 'documents', 'validator', 'document_id', 'doc_text', '1-smith', 0, '{"author":"smith","mrn":"1"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(2, 2, 'documents', 'validator', 'document_id', 'doc_text', '2-smith', 0, '{"author":"smith","mrn":"2"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(3, 3, 'documents', 'validator', 'document_id', 'doc_text', '3-smith', 0, '{"author":"smith","mrn":"3"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(4, 4, 'documents', 'validator', 'document_id', 'doc_text', '4-smith', 0, '{"author":"smith","mrn":"4"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(5, 5, 'documents', 'validator', 'document_id', 'doc_text', '5-smith', 0, '{"author":"smith","mrn":"5"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(6, 6, 'documents', 'validator', 'document_id', 'doc_text', '6-smith', 0, '{"author":"smith","mrn":"6"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(7, 7, 'documents', 'validator', 'document_id', 'doc_text', '7-smith', 0, '{"author":"smith","mrn":"7"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(8, 8, 'documents', 'validator', 'document_id', 'doc_text', '8-smith', 0, '{"author":"smith","mrn":"8"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(9, 9, 'documents', 'validator', 'document_id', 'doc_text', '9-smith', 0, '{"author":"smith","mrn":"9"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(10, 10, 'documents', 'validator', 'document_id', 'doc_text', '10-smith', 0, '{"author":"smith","mrn":"10"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(11, 11, 'documents', 'validator', 'document_id', 'doc_text', '11-smith', 0, '{"author":"smith","mrn":"11"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(12, 12, 'documents', 'validator', 'document_id', 'doc_text', '12-smith', 0, '{"author":"smith","mrn":"12"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(13, 13, 'documents', 'validator', 'document_id', 'doc_text', '13-smith', 0, '{"author":"smith","mrn":"13"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(14, 14, 'documents', 'validator', 'document_id', 'doc_text', '14-smith', 0, '{"author":"smith","mrn":"14"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(15, 15, 'documents', 'validator', 'document_id', 'doc_text', '15-smith', 0, '{"author":"smith","mrn":"15"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(16, 16, 'documents', 'validator', 'document_id', 'doc_text', '16-smith', 0, '{"author":"smith","mrn":"16"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(17, 17, 'documents', 'validator', 'document_id', 'doc_text', '17-smith', 0, '{"author":"smith","mrn":"17"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(18, 18, 'documents', 'validator', 'document_id', 'doc_text', '18-smith', 0, '{"author":"smith","mrn":"18"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(19, 19, 'documents', 'validator', 'document_id', 'doc_text', '19-smith', 0, '{"author":"smith","mrn":"19"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(20, 20, 'documents', 'validator', 'document_id', 'doc_text', '20-smith', 0, '{"author":"smith","mrn":"20"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(21, 21, 'documents', 'validator', 'document_id', 'doc_text', '21-smith', 0, '{"author":"smith","mrn":"21"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(22, 22, 'documents', 'validator', 'document_id', 'doc_text', '22-smith', 0, '{"author":"smith","mrn":"22"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(23, 23, 'documents', 'validator', 'document_id', 'doc_text', '23-smith', 0, '{"author":"smith","mrn":"23"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(24, 24, 'documents', 'validator', 'document_id', 'doc_text', '24-smith', 0, '{"author":"smith","mrn":"24"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(25, 25, 'documents', 'validator', 'document_id', 'doc_text', '25-smith', 0, '{"author":"smith","mrn":"25"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(26, 26, 'documents', 'validator', 'document_id', 'doc_text', '26-smith', 0, '{"author":"smith","mrn":"26"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(27, 27, 'documents', 'validator', 'document_id', 'doc_text', '27-smith', 0, '{"author":"smith","mrn":"27"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(28, 28, 'documents', 'validator', 'document_id', 'doc_text', '28-smith', 0, '{"author":"smith","mrn":"28"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(29, 29, 'documents', 'validator', 'document_id', 'doc_text', '29-smith', 0, '{"author":"smith","mrn":"29"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(30, 30, 'documents', 'validator', 'document_id', 'doc_text', '30-smith', 0, '{"author":"smith","mrn":"30"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(31, 31, 'documents', 'validator', 'document_id', 'doc_text', '31-smith', 0, '{"author":"smith","mrn":"31"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(32, 32, 'documents', 'validator', 'document_id', 'doc_text', '32-smith', 0, '{"author":"smith","mrn":"32"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(33, 33, 'documents', 'validator', 'document_id', 'doc_text', '33-smith', 0, '{"author":"smith","mrn":"33"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(34, 34, 'documents', 'validator', 'document_id', 'doc_text', '34-smith', 0, '{"author":"smith","mrn":"34"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(35, 35, 'documents', 'validator', 'document_id', 'doc_text', '35-smith', 0, '{"author":"smith","mrn":"35"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(36, 36, 'documents', 'validator', 'document_id', 'doc_text', '36-smith', 0, '{"author":"smith","mrn":"36"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(37, 37, 'documents', 'validator', 'document_id', 'doc_text', '37-smith', 0, '{"author":"smith","mrn":"37"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(38, 38, 'documents', 'validator', 'document_id', 'doc_text', '38-smith', 0, '{"author":"smith","mrn":"38"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(39, 39, 'documents', 'validator', 'document_id', 'doc_text', '39-smith', 0, '{"author":"smith","mrn":"39"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(40, 40, 'documents', 'validator', 'document_id', 'doc_text', '40-smith', 0, '{"author":"smith","mrn":"40"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(41, 41, 'documents', 'validator', 'document_id', 'doc_text', '41-smith', 0, '{"author":"smith","mrn":"41"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(42, 42, 'documents', 'validator', 'document_id', 'doc_text', '42-smith', 0, '{"author":"smith","mrn":"42"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(43, 43, 'documents', 'validator', 'document_id', 'doc_text', '43-smith', 0, '{"author":"smith","mrn":"43"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(44, 44, 'documents', 'validator', 'document_id', 'doc_text', '44-smith', 0, '{"author":"smith","mrn":"44"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(45, 45, 'documents', 'validator', 'document_id', 'doc_text', '45-smith', 0, '{"author":"smith","mrn":"45"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(46, 46, 'documents', 'validator', 'document_id', 'doc_text', '46-smith', 0, '{"author":"smith","mrn":"46"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(47, 47, 'documents', 'validator', 'document_id', 'doc_text', '47-smith', 0, '{"author":"smith","mrn":"47"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(48, 48, 'documents', 'validator', 'document_id', 'doc_text', '48-smith', 0, '{"author":"smith","mrn":"48"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(49, 49, 'documents', 'validator', 'document_id', 'doc_text', '49-smith', 0, '{"author":"smith","mrn":"49"}');
INSERT INTO `frame_instance_document` (`frame_instance_id`, `document_id`, `document_table`, `document_namespace`, `document_key`, `document_text_column`, `document_name`, `document_order`, `document_features`) VALUES
	(50, 50, 'documents', 'validator', 'document_id', 'doc_text', '50-smith', 0, '{"author":"smith","mrn":"50"}');
/*!40000 ALTER TABLE `frame_instance_document` ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_document_history
CREATE TABLE IF NOT EXISTS `frame_instance_document_history` (
  `frame_instance_id` int(11) DEFAULT NULL,
  `document_namespace` varchar(500) DEFAULT NULL,
  `document_table` varchar(500) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.frame_instance_document_history: ~50 rows (approximately)
DELETE FROM `frame_instance_document_history`;
/*!40000 ALTER TABLE `frame_instance_document_history` DISABLE KEYS */;
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(32, 'validator', 'documents', 32);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(33, 'validator', 'documents', 33);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(34, 'validator', 'documents', 34);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(35, 'validator', 'documents', 35);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(36, 'validator', 'documents', 36);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(37, 'validator', 'documents', 37);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(38, 'validator', 'documents', 38);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(39, 'validator', 'documents', 39);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(40, 'validator', 'documents', 40);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(41, 'validator', 'documents', 41);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(42, 'validator', 'documents', 42);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(31, 'validator', 'documents', 31);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(1, 'validator', 'documents', 1);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(2, 'validator', 'documents', 2);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(3, 'validator', 'documents', 3);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(4, 'validator', 'documents', 4);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(5, 'validator', 'documents', 5);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(6, 'validator', 'documents', 6);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(7, 'validator', 'documents', 7);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(8, 'validator', 'documents', 8);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(9, 'validator', 'documents', 9);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(10, 'validator', 'documents', 10);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(11, 'validator', 'documents', 11);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(12, 'validator', 'documents', 12);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(13, 'validator', 'documents', 13);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(14, 'validator', 'documents', 14);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(15, 'validator', 'documents', 15);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(16, 'validator', 'documents', 16);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(17, 'validator', 'documents', 17);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(18, 'validator', 'documents', 18);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(19, 'validator', 'documents', 19);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(20, 'validator', 'documents', 20);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(21, 'validator', 'documents', 21);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(22, 'validator', 'documents', 22);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(23, 'validator', 'documents', 23);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(24, 'validator', 'documents', 24);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(25, 'validator', 'documents', 25);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(26, 'validator', 'documents', 26);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(27, 'validator', 'documents', 27);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(28, 'validator', 'documents', 28);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(29, 'validator', 'documents', 29);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(30, 'validator', 'documents', 30);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(43, 'validator', 'documents', 43);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(44, 'validator', 'documents', 44);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(45, 'validator', 'documents', 45);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(46, 'validator', 'documents', 46);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(47, 'validator', 'documents', 47);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(48, 'validator', 'documents', 48);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(49, 'validator', 'documents', 49);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(50, 'validator', 'documents', 50);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(3, 'validator', 'documents', 9);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(2, 'validator', 'documents', 1);
INSERT INTO `frame_instance_document_history` (`frame_instance_id`, `document_namespace`, `document_table`, `document_id`) VALUES
	(4, 'validator', 'documents', 1);
/*!40000 ALTER TABLE `frame_instance_document_history` ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_element_repeat
CREATE TABLE IF NOT EXISTS `frame_instance_element_repeat` (
  `frame_instance_id` int(11) NOT NULL,
  `element_id` int(11) DEFAULT NULL,
  `section_slot_num` int(11) DEFAULT NULL,
  `repeat_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.frame_instance_element_repeat: ~0 rows (approximately)
DELETE FROM `frame_instance_element_repeat`;
/*!40000 ALTER TABLE `frame_instance_element_repeat` DISABLE KEYS */;
INSERT INTO `frame_instance_element_repeat` (`frame_instance_id`, `element_id`, `section_slot_num`, `repeat_num`) VALUES
	(50, 69, 0, 0);
/*!40000 ALTER TABLE `frame_instance_element_repeat` ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_lock
CREATE TABLE IF NOT EXISTS `frame_instance_lock` (
  `frame_instance_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`frame_instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table validator.frame_instance_lock: 1 rows
DELETE FROM `frame_instance_lock`;
/*!40000 ALTER TABLE `frame_instance_lock` DISABLE KEYS */;
INSERT INTO `frame_instance_lock` (`frame_instance_id`, `username`, `created_at`) VALUES
	(2, 'test', '2017-07-06 21:41:41');
/*!40000 ALTER TABLE `frame_instance_lock` ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_section_repeat
CREATE TABLE IF NOT EXISTS `frame_instance_section_repeat` (
  `frame_instance_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `repeat_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.frame_instance_section_repeat: ~10 rows (approximately)
DELETE FROM `frame_instance_section_repeat`;
/*!40000 ALTER TABLE `frame_instance_section_repeat` DISABLE KEYS */;
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(5, 5, 1);
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(5, 7, 0);
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(1, 7, 0);
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(1, 5, 0);
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(8, 7, 1);
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(6, 7, 2);
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(11, 7, 1);
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(12, 7, 2);
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(13, 7, 1);
INSERT INTO `frame_instance_section_repeat` (`frame_instance_id`, `section_id`, `repeat_num`) VALUES
	(6, 5, 0);
/*!40000 ALTER TABLE `frame_instance_section_repeat` ENABLE KEYS */;


-- Dumping structure for table validator.frame_instance_status
CREATE TABLE IF NOT EXISTS `frame_instance_status` (
  `frame_instance_id` bigint(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`frame_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table validator.frame_instance_status: ~50 rows (approximately)
DELETE FROM `frame_instance_status`;
/*!40000 ALTER TABLE `frame_instance_status` DISABLE KEYS */;
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(1, 1, 1);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(2, 1, 1);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(3, 1, 2);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(4, 1, 1);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(5, 1, 1);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(6, 1, 1);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(7, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(8, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(9, 1, 1);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(10, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(11, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(12, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(13, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(14, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(15, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(16, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(17, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(18, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(19, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(20, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(21, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(22, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(23, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(24, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(25, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(26, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(27, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(28, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(29, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(30, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(31, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(32, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(33, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(34, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(35, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(36, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(37, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(38, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(39, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(40, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(41, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(42, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(43, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(44, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(45, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(46, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(47, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(48, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(49, 0, NULL);
INSERT INTO `frame_instance_status` (`frame_instance_id`, `status`, `user_id`) VALUES
	(50, 0, NULL);
/*!40000 ALTER TABLE `frame_instance_status` ENABLE KEYS */;


-- Dumping structure for table validator.frame_slot
CREATE TABLE IF NOT EXISTS `frame_slot` (
  `frame_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  PRIMARY KEY (`frame_id`,`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.frame_slot: ~197 rows (approximately)
DELETE FROM `frame_slot`;
/*!40000 ALTER TABLE `frame_slot` DISABLE KEYS */;
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 1);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 2);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 3);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 4);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 5);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 6);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 7);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 8);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 9);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 10);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 11);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 12);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 13);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 14);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 15);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 16);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 17);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 18);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 19);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 20);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 21);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 22);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 23);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 24);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 25);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 26);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 27);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 28);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 29);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 30);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 31);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 32);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 33);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 34);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 35);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 36);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 37);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 38);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 39);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 40);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 41);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 42);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 43);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 44);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 45);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 46);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 47);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 48);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 49);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 50);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 51);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 52);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 53);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 54);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 55);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 56);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 57);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 58);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 59);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 60);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 61);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 62);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 63);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 64);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 65);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 66);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 67);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 68);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 69);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 70);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 71);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 72);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 73);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 74);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 75);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 76);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 77);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 78);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 79);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 80);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 81);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 82);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 83);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 84);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 85);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 86);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 87);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 88);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 89);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 90);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 91);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 92);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 93);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 94);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 95);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 96);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 97);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 98);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 99);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 100);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 101);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 102);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 103);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 104);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 105);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 106);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 107);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 108);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 109);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 110);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 111);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 112);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 113);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 114);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 115);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 116);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 117);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 118);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 119);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 120);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 121);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 122);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 123);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 124);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 125);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 126);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 127);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 128);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 129);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 130);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 131);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 132);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 133);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 134);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 135);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 136);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 137);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 138);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 139);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 140);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 141);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 142);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 143);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 144);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 145);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 146);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 147);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 148);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 149);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 150);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 151);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 152);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 153);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 154);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 155);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 156);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 157);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 158);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 159);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 160);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 161);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 162);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 163);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 164);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 165);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 166);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 167);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 168);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 169);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 170);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 171);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 172);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 173);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 174);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 175);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 176);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 177);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 178);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 179);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 180);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 181);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 182);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 183);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 184);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 185);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 186);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 187);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 188);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 189);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 190);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 191);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 192);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 193);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 194);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 195);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 196);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(1, 197);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(2, 198);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(2, 199);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(2, 200);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(2, 201);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(2, 202);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(2, 203);
INSERT INTO `frame_slot` (`frame_id`, `slot_id`) VALUES
	(2, 204);
/*!40000 ALTER TABLE `frame_slot` ENABLE KEYS */;


-- Dumping structure for table validator.history
CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `act` varchar(255) DEFAULT NULL,
  `html_id` varchar(255) DEFAULT NULL,
  `extra_information` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- Dumping data for table validator.history: ~45 rows (approximately)
DELETE FROM `history`;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(1, 'add', 'exam_date_0_0', 'start:250; end:270');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(2, 'add', 'exam_date_0_0', 'start:252; end:273');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(3, 'add', 'date_of_birth_0_0', 'start:67; end:78');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(4, 'add', 'age_0_0', 'start:257; end:273');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(5, 'add', 'date_of_birth_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(6, 'add', 'age_0_0', 'start:856; end:864');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(7, 'add', 'date_of_birth_0_0', 'start:268; end:273');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(8, 'add', 'date_of_birth_0_0', 'start:268; end:273');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(9, 'add', 'date_of_birth_0_0', 'start:268; end:273');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(10, 'add', 'date_of_birth_0_0', 'start:67; end:78');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(11, 'add', 'age_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(12, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(13, 'add', 'age_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(14, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(15, 'add', 'age_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(16, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(17, 'add', 'age_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(18, 'add', 'age_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(19, 'add', 'race_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(20, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(21, 'add', 'age_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(22, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(23, 'add', 'age_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(24, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(25, 'add', 'age_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(26, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(27, 'add', 'age_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(28, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(29, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(30, 'add', 'comparison_exam_yes_0_0', 'start:101; end:108');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(31, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(32, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(33, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(34, 'add', 'other_sig_findings_specify_0_0', 'start:2016; end:2026');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(35, 'add', 'date_of_birth_0_0', 'start:57; end:64');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(36, 'add', 'date_of_birth_0_0', 'start:0; end:4');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(37, 'add', 'date_of_birth_0_0', 'start:57; end:64');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(38, 'add', 'date_of_birth_0_0', 'start:101; end:108');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(39, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(40, 'add', 'date_of_birth_0_0', 'start:234; end:243');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(41, 'add', 'date_of_birth_0_0', 'start:101; end:108');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(42, 'add', 'date_of_birth_0_0', 'start:704; end:713');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(43, 'add', 'date_of_birth_0_0', 'start:856; end:864');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(44, 'add', 'age_0_0', 'start:111; end:233');
INSERT INTO `history` (`id`, `act`, `html_id`, `extra_information`) VALUES
	(45, 'add', 'unclear_0_0', 'start:1452; end:1462');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;


-- Dumping structure for table validator.project
CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table validator.project: ~0 rows (approximately)
DELETE FROM `project`;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` (`project_id`, `name`) VALUES
	(1, 'Lung Cancer Screening');
INSERT INTO `project` (`project_id`, `name`) VALUES
	(2, 'p22');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;


-- Dumping structure for table validator.project_frame_instance
CREATE TABLE IF NOT EXISTS `project_frame_instance` (
  `project_id` int(11) NOT NULL,
  `frame_instance_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`frame_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.project_frame_instance: ~50 rows (approximately)
DELETE FROM `project_frame_instance`;
/*!40000 ALTER TABLE `project_frame_instance` DISABLE KEYS */;
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 1);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 2);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 3);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 4);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 5);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 6);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 7);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 8);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 9);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 10);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 11);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 12);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 13);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 14);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 15);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 16);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 17);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 18);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 19);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 20);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 21);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 22);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 23);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 24);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 25);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 26);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 27);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 28);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 29);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 30);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 31);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 32);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 33);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 34);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 35);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 36);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 37);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 38);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 39);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 40);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 41);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 42);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 43);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 44);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 45);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 46);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 47);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 48);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(1, 49);
INSERT INTO `project_frame_instance` (`project_id`, `frame_instance_id`) VALUES
	(2, 50);
/*!40000 ALTER TABLE `project_frame_instance` ENABLE KEYS */;


-- Dumping structure for table validator.provenance
CREATE TABLE IF NOT EXISTS `provenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table validator.provenance: ~0 rows (approximately)
DELETE FROM `provenance`;
/*!40000 ALTER TABLE `provenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `provenance` ENABLE KEYS */;


-- Dumping structure for table validator.slot
CREATE TABLE IF NOT EXISTS `slot` (
  `slot_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `annotation_type` varchar(100) DEFAULT NULL,
  `slot_type` int(11) NOT NULL,
  `cond` text,
  PRIMARY KEY (`slot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.slot: ~197 rows (approximately)
DELETE FROM `slot`;
/*!40000 ALTER TABLE `slot` DISABLE KEYS */;
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(1, 'age', 'lungrads-age', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(2, 'years_since_quit_smoking', 'lungrads-years-since-quit-smoking', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(3, 'pack-years', 'lungrads-pack-years', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(4, 'dlp', 'lungrads-dlp', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(5, 'nodule-number', 'lungrads-nodule-number', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(6, 'series', 'lungrads-series', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(7, 'image', 'lungrads-image', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(8, 'nodule_size_1', 'lungrads-nodule-size', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(9, 'nodule_size_2', 'lungrads-nodule-size', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(10, 'nodule_mean_diameter', 'lungrads-nodule-mean-diameter', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(11, 'psn_solid_component', 'lungrads-nodule-solid-component', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(12, 'lungrads_cat_2_nodule_size', 'lungrads-cat-2-nodule-size', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(13, 'lungrads_cat_2_series', 'lungrads-cat-2-series', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(14, 'lungrads_cat_2_image', 'lungrads-cat-2-image', 1, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(15, 'exam_date', 'lungrads-exam-date', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(16, 'comparison_exam_yes', 'lungrads-comparison-exam', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(17, 'comparison_exam_no', 'lungrads-comparison-exam', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(18, 'reason_for_exam_baseline_lung_cancer_screen', 'lungrads-reason-for-exam', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(19, 'reason_for_exam_incidence_lung_cancer_screen', 'lungrads-reason-for-exam', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(20, 'reason_for_exam_early_repeat_ct_for_indeterminate_nodule', 'lungrads-reason-for-exam', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(21, 'reason_for_exam_unrelated_to_screening', 'lungrads-reason-for-exam', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(22, 'date_of_birth', 'lungrads-date-of-birth', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(23, 'sex', 'lungrads-sex', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(24, 'race', 'lungrads-race', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(25, 'race_declined_yes', 'lungrads-race-declined', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(26, 'race_declined_no', 'lungrads-race-declined', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(27, 'ethnicity_hispanic', 'lungrads-ethnicity', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(28, 'ethnicity_non-hispanic', 'lungrads-ethnicity', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(29, 'ethnicity_declined_to_answer', 'lungrads-ethnicity', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(30, 'smoking_status_non_smoker', 'lungrads-smoking-status', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(31, 'smoking_status_current_smoker', 'lungrads-smoking-status', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(32, 'smoking_status_former_smoker', 'lungrads-smoking-status', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(33, 'ctdivol', 'lungrads-cdtivol', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(34, 'lung_rads_cat_3_5_none', 'lungrads-nodules-cat-3-5', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(35, 'lung_rads_cat_3_5_present', 'lungrads-nodules-cat-3-5', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(36, 'consistency_solid_nodule', 'lungrads-nodule-consistency', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(37, 'consistency_part-solid_nodule_(psn)', 'lungrads-nodule-consistency', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(38, 'consistency_ground_glass_nodule_/_non-solid_nodule_(ggn)', 'lungrads-nodule-consistency', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(39, 'anatomic_location_right_upper_lobe', 'lungrads-nodule-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(40, 'anatomic_location_right_lower_lobe', 'lungrads-nodule-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(41, 'anatomic_location_right_middle_lobe', 'lungrads-nodule-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(42, 'anatomic_location_left_upper_lobe', 'lungrads-nodule-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(43, 'anatomic_location_left_lower_lobe', 'lungrads-nodule-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(44, 'evolution_not_applicable,_baseline_scan', 'lungrads-nodule-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(45, 'evolution_new', 'lungrads-nodule-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(46, 'evolution_stable', 'lungrads-nodule-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(47, 'evolution_resolved', 'lungrads-nodule-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(48, 'evolution_increased_size', 'lungrads-nodule-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(49, 'evolution_decreased_size', 'lungrads-nodule-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(50, 'evolution_increased_attenuation', 'lungrads-nodule-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(51, 'evolution_decreased_attenuation', 'lungrads-nodule-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(52, 'margins_smooth', 'lungrads-nodule-margins', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(53, 'margins_lobulated', 'lungrads-nodule-margins', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(54, 'margins_spiculated_or_serrated', 'lungrads-nodule-margins', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(55, 'margins_poorly_marginated', 'lungrads-nodule-margins', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(56, 'margins_decreased_attenuation', 'lungrads-nodule-margins', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(57, 'level_of_suspicion_low', 'lungrads-nodule-level-of-suspicion', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(58, 'level_of_suspicion_moderately_low', 'lungrads-nodule-level-of-suspicion', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(59, 'level_of_suspicion_intermediate', 'lungrads-nodule-level-of-suspicion', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(60, 'level_of_suspicion_moderately_high', 'lungrads-nodule-level-of-suspicion', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(61, 'level_of_suspicion_high', 'lungrads-nodule-level-of-suspicion', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(62, 'lungrads_nodule_category_3', 'lungrads-nodule-category', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(63, 'lungrads_nodule_category_4a', 'lungrads-nodule-category', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(64, 'lungrads_nodule_category_4b', 'lungrads-nodule-category', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(65, 'lungrads_nodule_category_4x', 'lungrads-nodule-category', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(66, 'lungrads_nodule_cat_3_5_comment', 'lungrads-nodule-cat-3-5-comment', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(67, 'lungrads_cat_2_nodules-present_none', 'lungrads-cat-2-nodules-present', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(68, 'lungrads_cat_2_nodules-present_present', 'lungrads-cat-2-nodules-present', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(69, 'lungrads_cat_2_nodules_quantity', 'lungrads-cat-2-nodules-quantity', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(70, 'lungrads_cat_2_nodule_consistency', 'lungrads-cat-2-nodule-consistency', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(71, 'lungrads_cat_2_nodule_location', 'lungrads-cat-2-nodule-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(72, 'lungrads_cat_2_evolution_increased_size', 'lungrads-cat-2-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(73, 'lungrads_cat_2_evolution_decreased_size', 'lungrads-cat-2-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(74, 'lungrads_cat_2_evolution_stable', 'lungrads-cat-2-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(75, 'lungrads_cat_2_evolution_other', 'lungrads-cat-2-evolution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(76, 'lungrads_cat_1_nodules-present_none', 'lungrads-cat-1-nodules-present', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(77, 'lungrads_cat_1_nodules-present_present', 'lungrads-cat-1-nodules-present', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(78, 'lungrads_cat_1_nodule_consistency', 'lungrads-cat-1-nodule-consistency', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(79, 'lungrads_cat_1_nodule_location', 'lungrads-cat-1-nodule-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(80, 'lungrads_cat_1_nodule_description_granuloma', 'lungrads-cat-1-nodule-description', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(81, 'lungrads_cat_1_nodule_description_scar', 'lungrads-cat-1-nodule-description', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(82, 'lungrads_cat_1_nodule_description_hamartoma', 'lungrads-cat-1-nodule-description', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(83, 'lungrads_cat_1_nodule_description_intrapulmonary_lymph_node', 'lungrads-cat-1-nodule-description', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(84, 'emphysema_yes', 'lungrads-emphysema', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(85, 'emphysema_no', 'lungrads-emphysema', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(86, 'emphysema_severity_trace_(<_5%)', 'lungrads-emphysema-severity', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(87, 'emphysema_severity_mild_(6-25%)', 'lungrads-emphysema-severity', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(88, 'emphysema_severity_moderate_(26-50%)', 'lungrads-emphysema-severity', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(89, 'emphysema_severity_severe_(51-75%)', 'lungrads-emphysema-severity', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(90, 'emphysema_severity_extensive_(76-100%)', 'lungrads-emphysema-severity', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(91, 'emphysema_type_centrilobular', 'lungrads-emphysema-type', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(92, 'emphysema_type_panacinar', 'lungrads-emphysema-type', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(93, 'emphysema_type_paraseptal', 'lungrads-emphysema-type', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(94, 'emphysema_type_paracicatricial', 'lungrads-emphysema-type', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(95, 'emphysema_distribution_apices', 'lungrads-emphysema-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(96, 'emphysema_distribution_upper_lobe', 'lungrads-emphysema-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(97, 'emphysema_distribution_mid-lung', 'lungrads-emphysema-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(98, 'emphysema_distribution_lower_lobe_predominant', 'lungrads-emphysema-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(99, 'emphysema_distribution_diffuse', 'lungrads-emphysema-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(100, 'emphysema_distribution_diffuse_with_upper_lobe_predominance', 'lungrads-emphysema-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(101, 'emphysema_distribution_diffuse_with_lower_lobe_predominance', 'lungrads-emphysema-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(102, 'airways_disease_yes', 'lungrads-airways-disease', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(103, 'airways_disease_no', 'lungrads-airways-disease', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(104, 'airways_distribution_upper_lobe', 'lungrads-airways-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(105, 'airways_distribution_lower_lobe', 'lungrads-airways-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(106, 'airways_distribution_diffuse', 'lungrads-airways-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(107, 'airways_distribution_focal', 'lungrads-airways-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(108, 'airways_distribution_multifocal', 'lungrads-airways-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(109, 'airways_location_right_upper_lobe', 'lungrads-airways-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(110, 'airways_location_right_lower_lobe', 'lungrads-airways-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(111, 'airways_location_right_middle_lobe', 'lungrads-airways-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(112, 'airways_location_left_upper_lobe', 'lungrads-airways-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(113, 'airways_location_left_lower_lobe', 'lungrads-airways-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(114, 'fibrosis_yes', 'lungrads-fibrosis', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(115, 'fibrosis_no', 'lungrads-fibrosis', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(116, 'fibrosis_type_focal_fibrosis', 'lungrads-fibrosis-type', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(117, 'fibrosis_type_diffuse_or_subpleural_fibrosis', 'lungrads-fibrosis-type', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(118, 'fibrosis_type_perilymphatic_micronodularity', 'lungrads-fibrosis-type', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(119, 'fibrosis_type_centrilobular_micronodules', 'lungrads-fibrosis-type', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(120, 'fibrosis_type_non-specific', 'lungrads-fibrosis-type', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(121, 'fibrosis_non_specific', 'lungrads-fibrosis-non-specific', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(122, 'fibrosis_anatomic_distribution_right_apices', 'lungrads-fibrosis-anatomic-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(123, 'fibrosis_anatomic_distribution_left_apices', 'lungrads-fibrosis-anatomic-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(124, 'fibrosis_anatomic_distribution_bilateral_apices', 'lungrads-fibrosis-anatomic-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(125, 'fibrosis_anatomic_distribution_subpleural_predominant', 'lungrads-fibrosis-anatomic-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(126, 'fibrosis_anatomic_distribution_basilar_predominant', 'lungrads-fibrosis-anatomic-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(127, 'fibrosis_anatomic_distribution_upper_lobe(s)', 'lungrads-fibrosis-anatomic-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(128, 'fibrosis_anatomic_distribution_middle_lobe(s)', 'lungrads-fibrosis-anatomic-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(129, 'fibrosis_anatomic_distribution_lower_lobe(s)', 'lungrads-fibrosis-anatomic-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(130, 'fibrosis_etiology_combined_pulmonary_fibrosis_and_emphysema', 'lungrads-fibrosis-etiology', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(131, 'fibrosis_etiology_uip', 'lungrads-fibrosis-etiology', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(132, 'fibrosis_etiology_nsip', 'lungrads-fibrosis-etiology', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(133, 'fibrosis_etiology_hp', 'lungrads-fibrosis-etiology', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(134, 'fibrosis_etiology_sarcoidosis', 'lungrads-fibrosis-etiology', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(135, 'fibrosis_etiology_non-specific', 'lungrads-fibrosis-etiology', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(136, 'fibrosis_etiology_post-inflammatory', 'lungrads-fibrosis-etiology', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(137, 'fibrosis_etiology_other', 'lungrads-fibrosis-etiology', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(138, 'lymph_nodes_no_intrathoracic_adenopathy', 'lungrads-lymph-nodes', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(139, 'lymph_nodes_reactive_nodes_in_(x_nodal_stations)', 'lungrads-lymph-nodes', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(140, 'lymph_nodes_potentially_abnormal_nodes_in_ats_region_x', 'lungrads-lymph-nodes', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(141, 'pleural_disease_yes', 'lungrads-pleural-disease', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(142, 'pleural_disease_no', 'lungrads-pleural-disease', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(143, 'pleural_anatomic_location_right', 'lungrads-pleural-anatomic-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(144, 'pleural_anatomic_location_left', 'lungrads-pleural-anatomic-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(145, 'pleural_anatomic_location_bilateral', 'lungrads-pleural-anatomic-location', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(146, 'pleural_abnormality_effusion(s)', 'lungrads-pleural-abnormality', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(147, 'pleural_abnormality_pleural_plaque(s),_likely_asbestos-related_or_post-inflammatory', 'lungrads-pleural-abnormality', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(148, 'pleural_abnormality_pleural_nodularity', 'lungrads-pleural-abnormality', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(149, 'pleural_abnormality_focal_or_diffuse_pleural_thickening,_likely_asbestos-related,_post-inflammatory', 'lungrads-pleural-abnormality', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(150, 'pleural_abnormality_of_indeterminate_etiology', 'lungrads-pleural-abnormality', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(151, 'cardiac_heart_size_normal', 'lungrads-cardiac-heart-size', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(152, 'cardiac_heart_size_upper_limits_of_normal', 'lungrads-cardiac-heart-size', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(153, 'cardiac_heart_size_enlarged', 'lungrads-cardiac-heart-size', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(154, 'cardiac_pericardium_normal_pericardial_effusion', 'lungrads-cardiac-pericardium', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(155, 'cardiac_pericardium_mild_pericardial_effusion', 'lungrads-cardiac-pericardium', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(156, 'cardiac_pericardium_moderate_pericardial_effusion', 'lungrads-cardiac-pericardium', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(157, 'cardiac_pericardium_large_pericardial_effusion', 'lungrads-cardiac-pericardium', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(158, 'cardiac_pericardium_pericardial_thickening', 'lungrads-cardiac-pericardium', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(159, 'cardiac_pericardium_pericardial_calcification', 'lungrads-cardiac-pericardium', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(160, 'cardiac_artery_calcification_none', 'lungrads-cardiac-artery-calcification', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(161, 'cardiac_artery_calcification_mild', 'lungrads-cardiac-artery-calcification', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(162, 'cardiac_artery_calcification_moderate', 'lungrads-cardiac-artery-calcification', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(163, 'cardiac_artery_calcification_severe', 'lungrads-cardiac-artery-calcification', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(164, 'cardiac_artery_calcification_distribution_lad', 'lungrads-cardiac-artery-calcification-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(165, 'cardiac_artery_calcification_distribution_rca', 'lungrads-cardiac-artery-calcification-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(166, 'cardiac_artery_calcification_distribution_circumflex', 'lungrads-cardiac-artery-calcification-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(167, 'cardiac_artery_calcification_distribution_left_main_coronary_artery', 'lungrads-cardiac-artery-calcification-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(168, 'cardiac_artery_calcification_distribution_multiple_vessels', 'lungrads-cardiac-artery-calcification-distribution', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(169, 'cardiac_artery_other_aortic_valve_calcifications', 'lungrads-cardiac-artery-other', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(170, 'cardiac_artery_other_ascending_aortic_enlargement', 'lungrads-cardiac-artery-other', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(171, 'cardiac_artery_other_mitral_annular_calcification', 'lungrads-cardiac-artery-other', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(172, 'cardiac_artery_other_possible_pulmonary_hypertension', 'lungrads-cardiac-artery-other', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(173, 'other_sig_findings_thyroid_findings', 'lungrads-other-sig-findings', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(174, 'other_sig_findings_osseous_or_chest_wall_findings', 'lungrads-other-sig-findings', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(175, 'other_sig_findings_liver_findings', 'lungrads-other-sig-findings', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(176, 'other_sig_findings_adrenal_findings', 'lungrads-other-sig-findings', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(177, 'other_sig_findings_kidney_findings', 'lungrads-other-sig-findings', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(178, 'other_sig_findings_biliary_or_gall_bladder_findings', 'lungrads-other-sig-findings', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(179, 'other_sig_findings_gastric_findings', 'lungrads-other-sig-findings', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(180, 'other_sig_findings_bowel_pathology', 'lungrads-other-sig-findings', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(181, 'other_sig_findings_other_(specify)_findings_requiring_follow-up', 'lungrads-other-sig-findings', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(182, 'other_sig_findings_specify', 'lungrads-other-sig-findings-specify', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(183, 'lungrads_cat_overall_0', 'lunrads-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(184, 'lungrads_cat_overall_1', 'lunrads-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(185, 'lungrads_cat_overall_2', 'lunrads-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(186, 'lungrads_cat_overall_3', 'lunrads-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(187, 'lungrads_cat_overall_4a', 'lunrads-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(188, 'lungrads_cat_overall_4b', 'lunrads-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(189, 'lungrads_cat_overall_4x', 'lunrads-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(190, 'additional_cat_overall_none', 'lungrads-additional-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(191, 'additional_cat_overall_s', 'lungrads-additional-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(192, 'additional_cat_overall_c', 'lungrads-additional-cat-overall', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(193, 'recommendation_recommend_annual_screening_in_12_months', 'lungrads-recommendation', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(194, 'recommendation_recommend_6_month_follow-up_low_dose_ct_to_assess_for_interval_change', 'lungrads-recommendation', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(195, 'recommendation_recommend_early_follow-up_ldct_in_3_months_to_assess_for_interval_change', 'lungrads-recommendation', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(196, 'recommendation_recommend_tissue_sampling_percutaneously_/_bronchoscopically_or_pet-ct_scan_or_diagnostic_chest_ct_or_surgical_consultation', 'lungrads-recommendation', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(197, 'unclear', 'lungrads-unclear', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(198, 'cancer_subtype', 'cancer_subtype', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(199, 'clinical_stage', 'clinical_stage', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(200, 'pathology_stage', 'pathological_stage', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(201, 'biopsy', 'biopsy', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(202, 'metastatic_diagnosis_date', 'metastatic_diagnosis_date', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(203, 'platinum_containing_chemo_yes', 'platinum_containing_chemo', 2, '');
INSERT INTO `slot` (`slot_id`, `name`, `annotation_type`, `slot_type`, `cond`) VALUES
	(204, 'platinum_containing_chemo_no', 'platinum_containing_chemo', 2, '');
/*!40000 ALTER TABLE `slot` ENABLE KEYS */;


-- Dumping structure for table validator.tablename_lookup
CREATE TABLE IF NOT EXISTS `tablename_lookup` (
  `annotation_type` varchar(500) DEFAULT NULL,
  `table_type` varchar(100) DEFAULT NULL,
  `table_name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table validator.tablename_lookup: ~3 rows (approximately)
DELETE FROM `tablename_lookup`;
/*!40000 ALTER TABLE `tablename_lookup` DISABLE KEYS */;
INSERT INTO `tablename_lookup` (`annotation_type`, `table_type`, `table_name`) VALUES
	('lungrads-age', 'index', 'msa_profile_match_index_lungrads_age');
INSERT INTO `tablename_lookup` (`annotation_type`, `table_type`, `table_name`) VALUES
	('lungrads-age', 'profile', 'msa_profile_lungrads_age');
INSERT INTO `tablename_lookup` (`annotation_type`, `table_type`, `table_name`) VALUES
	('lungrads-age', 'final', 'msa_profile_final_lungrads_age');
/*!40000 ALTER TABLE `tablename_lookup` ENABLE KEYS */;


-- Dumping structure for table validator.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(500) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `frame_instance_id` int(11) DEFAULT NULL,
  `pw` text,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.user: ~2 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `user_name`, `project_id`, `frame_instance_id`, `pw`) VALUES
	(1, 'test', 1, 2, '1');
INSERT INTO `user` (`user_id`, `user_name`, `project_id`, `frame_instance_id`, `pw`) VALUES
	(2, 'fmeng', 1, 3, '1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for table validator.validated_document
CREATE TABLE IF NOT EXISTS `validated_document` (
  `document_id` bigint(20) NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table validator.validated_document: ~0 rows (approximately)
DELETE FROM `validated_document`;
/*!40000 ALTER TABLE `validated_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `validated_document` ENABLE KEYS */;


-- Dumping structure for table validator.value
CREATE TABLE IF NOT EXISTS `value` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(500) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `html_id` varchar(500) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- Dumping data for table validator.value: ~197 rows (approximately)
DELETE FROM `value`;
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(1, 'Date of Exam', 15, 'exam_date');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(2, 'Yes', 16, 'comparison_exam_yes');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(3, 'No', 17, 'comparison_exam_no');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(4, 'Baseline lung cancer screen', 18, 'reason_for_exam_baseline_lung_cancer_screen');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(5, 'Incidence lung cancer screen', 19, 'reason_for_exam_incidence_lung_cancer_screen');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(6, 'Early Repeat CT for Indeterminate nodule', 20, 'reason_for_exam_early_repeat_ct_for_indeterminate_nodule');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(7, 'Unrelated to screening', 21, 'reason_for_exam_unrelated_to_screening');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(8, 'Date of Birth', 22, 'date_of_birth');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(9, 'Age', 1, 'age');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(10, 'Sex', 23, 'sex');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(11, 'Race', 24, 'race');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(12, 'Yes', 25, 'race_declined_yes');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(13, 'No', 26, 'race_declined_no');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(14, 'Hispanic', 27, 'ethnicity_hispanic');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(15, 'Non-Hispanic', 28, 'ethnicity_non-hispanic');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(16, 'Declined to Answer', 29, 'ethnicity_declined_to_answer');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(17, 'Non smoker', 30, 'smoking_status_non_smoker');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(18, 'Current smoker', 31, 'smoking_status_current_smoker');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(19, 'Former smoker', 32, 'smoking_status_former_smoker');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(20, 'Years Since Quit Smoking', 2, 'years_since_quit_smoking');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(21, 'Pack Years', 3, 'pack-years');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(22, 'CTDIvol (CT Dose Index-Volume)', 33, 'ctdivol');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(23, 'DLP (Dose Length Product)', 4, 'dlp');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(24, 'None', 34, 'lung_rads_cat_3_5_none');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(25, 'Present', 35, 'lung_rads_cat_3_5_present');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(26, 'Nodule Number', 5, 'nodule-number');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(27, 'Solid nodule', 36, 'consistency_solid_nodule');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(28, 'Part-solid nodule (PSN)', 37, 'consistency_part-solid_nodule_(psn)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(29, 'Ground glass nodule / Non-solid nodule (GGN)', 38, 'consistency_ground_glass_nodule_/_non-solid_nodule_(ggn)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(30, 'Right upper lobe', 39, 'anatomic_location_right_upper_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(31, 'Right lower lobe', 40, 'anatomic_location_right_lower_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(32, 'Right middle lobe', 41, 'anatomic_location_right_middle_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(33, 'Left upper lobe', 42, 'anatomic_location_left_upper_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(34, 'Left lower lobe', 43, 'anatomic_location_left_lower_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(35, 'Series Number', 6, 'series');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(36, 'Image Number', 7, 'image');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(37, 'Nodule Size (mm)', 8, 'nodule_size_1');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(38, 'Nodule Size (mm)', 9, 'nodule_size_2');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(39, 'Nodule Mean Diameter (mm)', 10, 'nodule_mean_diameter');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(40, 'For PSN: diameter of SOLID component', 11, 'psn_solid_component');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(41, 'Not applicable, baseline scan', 44, 'evolution_not_applicable,_baseline_scan');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(42, 'New', 45, 'evolution_new');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(43, 'Stable', 46, 'evolution_stable');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(44, 'Resolved', 47, 'evolution_resolved');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(45, 'Increased Size', 48, 'evolution_increased_size');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(46, 'Decreased Size', 49, 'evolution_decreased_size');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(47, 'Increased Attenuation', 50, 'evolution_increased_attenuation');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(48, 'Decreased Attenuation', 51, 'evolution_decreased_attenuation');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(49, 'Smooth', 52, 'margins_smooth');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(50, 'Lobulated', 53, 'margins_lobulated');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(51, 'Spiculated or Serrated', 54, 'margins_spiculated_or_serrated');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(52, 'Poorly Marginated', 55, 'margins_poorly_marginated');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(53, 'Decreased Attenuation', 56, 'margins_decreased_attenuation');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(54, 'Low', 57, 'level_of_suspicion_low');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(55, 'Moderately low', 58, 'level_of_suspicion_moderately_low');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(56, 'Intermediate', 59, 'level_of_suspicion_intermediate');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(57, 'Moderately high', 60, 'level_of_suspicion_moderately_high');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(58, 'High', 61, 'level_of_suspicion_high');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(59, '3', 62, 'lungrads_nodule_category_3');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(60, '4A', 63, 'lungrads_nodule_category_4a');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(61, '4B', 64, 'lungrads_nodule_category_4b');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(62, '4X', 65, 'lungrads_nodule_category_4x');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(63, 'Comments (Provide rationale if recommendation will deviate from LungRADS algorithm)', 66, 'lungrads_nodule_cat_3_5_comment');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(64, 'None', 67, 'lungrads_cat_2_nodules-present_none');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(65, 'Present', 68, 'lungrads_cat_2_nodules-present_present');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(66, 'LungRADS Category 2 Nodules Quantity', 69, 'lungrads_cat_2_nodules_quantity');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(67, 'Consistency', 70, 'lungrads_cat_2_nodule_consistency');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(68, 'Size (mm)', 12, 'lungrads_cat_2_nodule_size');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(69, 'Location', 71, 'lungrads_cat_2_nodule_location');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(70, 'Series', 13, 'lungrads_cat_2_series');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(71, 'Image', 14, 'lungrads_cat_2_image');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(72, 'Increased Size', 72, 'lungrads_cat_2_evolution_increased_size');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(73, 'Decreased Size', 73, 'lungrads_cat_2_evolution_decreased_size');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(74, 'Stable', 74, 'lungrads_cat_2_evolution_stable');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(75, 'Other', 75, 'lungrads_cat_2_evolution_other');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(76, 'None', 76, 'lungrads_cat_1_nodules-present_none');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(77, 'Present', 77, 'lungrads_cat_1_nodules-present_present');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(78, 'Consistency', 78, 'lungrads_cat_1_nodule_consistency');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(79, 'Location', 79, 'lungrads_cat_1_nodule_location');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(80, 'Granuloma', 80, 'lungrads_cat_1_nodule_description_granuloma');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(81, 'Scar', 81, 'lungrads_cat_1_nodule_description_scar');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(82, 'Hamartoma', 82, 'lungrads_cat_1_nodule_description_hamartoma');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(83, 'Intrapulmonary lymph node', 83, 'lungrads_cat_1_nodule_description_intrapulmonary_lymph_node');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(84, 'Yes', 84, 'emphysema_yes');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(85, 'No', 85, 'emphysema_no');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(86, 'Trace (< 5%)', 86, 'emphysema_severity_trace_(<_5%)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(87, 'Mild (6-25%)', 87, 'emphysema_severity_mild_(6-25%)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(88, 'Moderate (26-50%)', 88, 'emphysema_severity_moderate_(26-50%)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(89, 'Severe (51-75%)', 89, 'emphysema_severity_severe_(51-75%)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(90, 'Extensive (76-100%)', 90, 'emphysema_severity_extensive_(76-100%)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(91, 'Centrilobular', 91, 'emphysema_type_centrilobular');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(92, 'Panacinar', 92, 'emphysema_type_panacinar');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(93, 'Paraseptal', 93, 'emphysema_type_paraseptal');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(94, 'Paracicatricial', 94, 'emphysema_type_paracicatricial');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(95, 'Apices', 95, 'emphysema_distribution_apices');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(96, 'Upper lobe', 96, 'emphysema_distribution_upper_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(97, 'Mid-lung', 97, 'emphysema_distribution_mid-lung');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(98, 'Lower lobe predominant', 98, 'emphysema_distribution_lower_lobe_predominant');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(99, 'Diffuse', 99, 'emphysema_distribution_diffuse');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(100, 'Diffuse with upper lobe predominance', 100, 'emphysema_distribution_diffuse_with_upper_lobe_predominance');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(101, 'Diffuse with lower lobe predominance', 101, 'emphysema_distribution_diffuse_with_lower_lobe_predominance');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(102, 'Yes', 102, 'airways_disease_yes');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(103, 'No', 103, 'airways_disease_no');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(104, 'Upper lobe', 104, 'airways_distribution_upper_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(105, 'Lower lobe', 105, 'airways_distribution_lower_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(106, 'Diffuse', 106, 'airways_distribution_diffuse');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(107, 'Focal', 107, 'airways_distribution_focal');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(108, 'Multifocal', 108, 'airways_distribution_multifocal');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(109, 'Right upper lobe', 109, 'airways_location_right_upper_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(110, 'Right lower lobe', 110, 'airways_location_right_lower_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(111, 'Right middle lobe', 111, 'airways_location_right_middle_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(112, 'Left upper lobe', 112, 'airways_location_left_upper_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(113, 'Left lower lobe', 113, 'airways_location_left_lower_lobe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(114, 'Yes', 114, 'fibrosis_yes');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(115, 'No', 115, 'fibrosis_no');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(116, 'Focal fibrosis', 116, 'fibrosis_type_focal_fibrosis');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(117, 'Diffuse or subpleural fibrosis', 117, 'fibrosis_type_diffuse_or_subpleural_fibrosis');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(118, 'Perilymphatic micronodularity', 118, 'fibrosis_type_perilymphatic_micronodularity');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(119, 'Centrilobular micronodules', 119, 'fibrosis_type_centrilobular_micronodules');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(120, 'Non-specific', 120, 'fibrosis_type_non-specific');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(121, 'Fibrosis Non-Specific Description', 121, 'fibrosis_non_specific');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(122, 'Right apices', 122, 'fibrosis_anatomic_distribution_right_apices');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(123, 'Left apices', 123, 'fibrosis_anatomic_distribution_left_apices');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(124, 'Bilateral apices', 124, 'fibrosis_anatomic_distribution_bilateral_apices');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(125, 'Subpleural predominant', 125, 'fibrosis_anatomic_distribution_subpleural_predominant');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(126, 'Basilar predominant', 126, 'fibrosis_anatomic_distribution_basilar_predominant');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(127, 'Upper lobe(s)', 127, 'fibrosis_anatomic_distribution_upper_lobe(s)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(128, 'Middle lobe(s)', 128, 'fibrosis_anatomic_distribution_middle_lobe(s)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(129, 'Lower lobe(s)', 129, 'fibrosis_anatomic_distribution_lower_lobe(s)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(130, 'Combined pulmonary fibrosis and emphysema', 130, 'fibrosis_etiology_combined_pulmonary_fibrosis_and_emphysema');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(131, 'UIP', 131, 'fibrosis_etiology_uip');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(132, 'NSIP', 132, 'fibrosis_etiology_nsip');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(133, 'HP', 133, 'fibrosis_etiology_hp');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(134, 'Sarcoidosis', 134, 'fibrosis_etiology_sarcoidosis');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(135, 'Non-specific', 135, 'fibrosis_etiology_non-specific');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(136, 'Post-inflammatory', 136, 'fibrosis_etiology_post-inflammatory');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(137, 'Other', 137, 'fibrosis_etiology_other');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(138, 'No intrathoracic adenopathy', 138, 'lymph_nodes_no_intrathoracic_adenopathy');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(139, 'Reactive nodes in (X nodal stations)', 139, 'lymph_nodes_reactive_nodes_in_(x_nodal_stations)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(140, 'Potentially abnormal nodes in ATS region X', 140, 'lymph_nodes_potentially_abnormal_nodes_in_ats_region_x');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(141, 'Yes', 141, 'pleural_disease_yes');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(142, 'No', 142, 'pleural_disease_no');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(143, 'Right', 143, 'pleural_anatomic_location_right');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(144, 'Left', 144, 'pleural_anatomic_location_left');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(145, 'Bilateral', 145, 'pleural_anatomic_location_bilateral');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(146, 'Effusion(s)', 146, 'pleural_abnormality_effusion(s)');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(147, 'Pleural plaque(s), likely asbestos-related or post-inflammatory', 147, 'pleural_abnormality_pleural_plaque(s),_likely_asbestos-related_or_post-inflammatory');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(148, 'Pleural nodularity', 148, 'pleural_abnormality_pleural_nodularity');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(149, 'Focal or diffuse pleural thickening, likely asbestos-related, post-inflammatory', 149, 'pleural_abnormality_focal_or_diffuse_pleural_thickening,_likely_asbestos-related,_post-inflammatory');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(150, 'Of indeterminate etiology', 150, 'pleural_abnormality_of_indeterminate_etiology');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(151, 'Normal', 151, 'cardiac_heart_size_normal');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(152, 'Upper limits of normal', 152, 'cardiac_heart_size_upper_limits_of_normal');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(153, 'Enlarged', 153, 'cardiac_heart_size_enlarged');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(154, 'Normal pericardial effusion', 154, 'cardiac_pericardium_normal_pericardial_effusion');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(155, 'Mild pericardial effusion', 155, 'cardiac_pericardium_mild_pericardial_effusion');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(156, 'Moderate pericardial effusion', 156, 'cardiac_pericardium_moderate_pericardial_effusion');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(157, 'Large pericardial effusion', 157, 'cardiac_pericardium_large_pericardial_effusion');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(158, 'Pericardial thickening', 158, 'cardiac_pericardium_pericardial_thickening');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(159, 'Pericardial calcification', 159, 'cardiac_pericardium_pericardial_calcification');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(160, 'None', 160, 'cardiac_artery_calcification_none');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(161, 'Mild', 161, 'cardiac_artery_calcification_mild');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(162, 'Moderate', 162, 'cardiac_artery_calcification_moderate');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(163, 'Severe', 163, 'cardiac_artery_calcification_severe');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(164, 'LAD', 164, 'cardiac_artery_calcification_distribution_lad');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(165, 'RCA', 165, 'cardiac_artery_calcification_distribution_rca');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(166, 'Circumflex', 166, 'cardiac_artery_calcification_distribution_circumflex');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(167, 'Left main coronary artery', 167, 'cardiac_artery_calcification_distribution_left_main_coronary_artery');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(168, 'Multiple vessels', 168, 'cardiac_artery_calcification_distribution_multiple_vessels');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(169, 'Aortic valve calcifications', 169, 'cardiac_artery_other_aortic_valve_calcifications');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(170, 'Ascending aortic enlargement', 170, 'cardiac_artery_other_ascending_aortic_enlargement');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(171, 'Mitral annular calcification', 171, 'cardiac_artery_other_mitral_annular_calcification');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(172, 'Possible pulmonary hypertension', 172, 'cardiac_artery_other_possible_pulmonary_hypertension');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(173, 'Thyroid findings', 173, 'other_sig_findings_thyroid_findings');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(174, 'Osseous or chest wall findings', 174, 'other_sig_findings_osseous_or_chest_wall_findings');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(175, 'Liver findings', 175, 'other_sig_findings_liver_findings');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(176, 'Adrenal findings', 176, 'other_sig_findings_adrenal_findings');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(177, 'Kidney findings', 177, 'other_sig_findings_kidney_findings');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(178, 'Biliary or gall bladder findings', 178, 'other_sig_findings_biliary_or_gall_bladder_findings');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(179, 'Gastric findings', 179, 'other_sig_findings_gastric_findings');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(180, 'Bowel pathology', 180, 'other_sig_findings_bowel_pathology');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(181, 'Other (specify) findings requiring follow-up', 181, 'other_sig_findings_other_(specify)_findings_requiring_follow-up');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(182, 'Other Significant Findings Specify', 182, 'other_sig_findings_specify');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(183, '0', 183, 'lungrads_cat_overall_0');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(184, '1', 184, 'lungrads_cat_overall_1');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(185, '2', 185, 'lungrads_cat_overall_2');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(186, '3', 186, 'lungrads_cat_overall_3');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(187, '4A', 187, 'lungrads_cat_overall_4a');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(188, '4B', 188, 'lungrads_cat_overall_4b');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(189, '4X', 189, 'lungrads_cat_overall_4x');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(190, 'None', 190, 'additional_cat_overall_none');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(191, 'S', 191, 'additional_cat_overall_s');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(192, 'C', 192, 'additional_cat_overall_c');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(193, 'Recommend annual screening in 12 months', 193, 'recommendation_recommend_annual_screening_in_12_months');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(194, 'Recommend 6 month follow-up low dose CT to assess for interval change', 194, 'recommendation_recommend_6_month_follow-up_low_dose_ct_to_assess_for_interval_change');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(195, 'Recommend early follow-up LDCT in 3 months to assess for interval change', 195, 'recommendation_recommend_early_follow-up_ldct_in_3_months_to_assess_for_interval_change');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(196, 'Recommend tissue sampling percutaneously / bronchoscopically or PET-CT scan or diagnostic Chest CT or surgical consultation', 196, 'recommendation_recommend_tissue_sampling_percutaneously_/_bronchoscopically_or_pet-ct_scan_or_diagnostic_chest_ct_or_surgical_consultation');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(197, 'Unclear', 197, 'unclear');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(198, 'Cancer Subtype', 198, 'cancer_subtype');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(199, 'Clinical Stage', 199, 'clinical_stage');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(200, 'Pathology Stage', 200, 'pathology_stage');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(201, 'Type of biopsy', 201, 'biopsy');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(202, 'Metastatic Diagnosis Date', 202, 'metastatic_diagnosis_date');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(203, 'Yes', 203, 'platinum_containing_chemo_yes');
INSERT INTO `value` (`value_id`, `display_name`, `slot_id`, `html_id`) VALUES
	(204, 'No', 204, 'platinum_containing_chemo_no');
/*!40000 ALTER TABLE `value` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
