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
DROP DATABASE IF EXISTS `validator`;
CREATE DATABASE IF NOT EXISTS `validator` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `validator`;


-- Dumping structure for table validator.annotation
DROP TABLE IF EXISTS `annotation`;
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

-- Data exporting was unselected.


-- Dumping structure for table validator.crf
DROP TABLE IF EXISTS `crf`;
CREATE TABLE IF NOT EXISTS `crf` (
  `crf_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `html_id` varchar(500) NOT NULL,
  `frame_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`crf_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.crf_element
DROP TABLE IF EXISTS `crf_element`;
CREATE TABLE IF NOT EXISTS `crf_element` (
  `crf_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  PRIMARY KEY (`crf_id`,`element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.crf_project
DROP TABLE IF EXISTS `crf_project`;
CREATE TABLE IF NOT EXISTS `crf_project` (
  `crf_project_id` int(11) NOT NULL AUTO_INCREMENT,
  `crf_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`crf_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.crf_project_frame_instance
DROP TABLE IF EXISTS `crf_project_frame_instance`;
CREATE TABLE IF NOT EXISTS `crf_project_frame_instance` (
  `crf_project_id` int(11) NOT NULL,
  `frame_instance_id` int(11) NOT NULL,
  PRIMARY KEY (`crf_project_id`,`frame_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.crf_section
DROP TABLE IF EXISTS `crf_section`;
CREATE TABLE IF NOT EXISTS `crf_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `crf_id` int(11) NOT NULL,
  `repeat` int(11) DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.data_type
DROP TABLE IF EXISTS `data_type`;
CREATE TABLE IF NOT EXISTS `data_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.documents
DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `document_id` bigint(20) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `doc_text` text,
  `date` datetime DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `mrn` int(11) DEFAULT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table validator.document_status
DROP TABLE IF EXISTS `document_status`;
CREATE TABLE IF NOT EXISTS `document_status` (
  `document_namespace` varchar(500) NOT NULL,
  `document_table` varchar(500) NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `status` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`document_namespace`,`document_table`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table validator.element
DROP TABLE IF EXISTS `element`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.element_type
DROP TABLE IF EXISTS `element_type`;
CREATE TABLE IF NOT EXISTS `element_type` (
  `element_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `element_type_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`element_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.element_value
DROP TABLE IF EXISTS `element_value`;
CREATE TABLE IF NOT EXISTS `element_value` (
  `element_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  PRIMARY KEY (`element_id`,`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.frame
DROP TABLE IF EXISTS `frame`;
CREATE TABLE IF NOT EXISTS `frame` (
  `frame_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`frame_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_instance
DROP TABLE IF EXISTS `frame_instance`;
CREATE TABLE IF NOT EXISTS `frame_instance` (
  `frame_instance_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `frame_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`frame_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_instance_annotation
DROP TABLE IF EXISTS `frame_instance_annotation`;
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

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_instance_data
DROP TABLE IF EXISTS `frame_instance_data`;
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

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_instance_document
DROP TABLE IF EXISTS `frame_instance_document`;
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

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_instance_document_history
DROP TABLE IF EXISTS `frame_instance_document_history`;
CREATE TABLE IF NOT EXISTS `frame_instance_document_history` (
  `frame_instance_id` int(11) DEFAULT NULL,
  `document_namespace` varchar(500) DEFAULT NULL,
  `document_table` varchar(500) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_instance_element_repeat
DROP TABLE IF EXISTS `frame_instance_element_repeat`;
CREATE TABLE IF NOT EXISTS `frame_instance_element_repeat` (
  `frame_instance_id` int(11) NOT NULL,
  `element_id` int(11) DEFAULT NULL,
  `section_slot_num` int(11) DEFAULT NULL,
  `repeat_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_instance_lock
DROP TABLE IF EXISTS `frame_instance_lock`;
CREATE TABLE IF NOT EXISTS `frame_instance_lock` (
  `frame_instance_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`frame_instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_instance_section_repeat
DROP TABLE IF EXISTS `frame_instance_section_repeat`;
CREATE TABLE IF NOT EXISTS `frame_instance_section_repeat` (
  `frame_instance_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `repeat_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_instance_status
DROP TABLE IF EXISTS `frame_instance_status`;
CREATE TABLE IF NOT EXISTS `frame_instance_status` (
  `frame_instance_id` bigint(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`frame_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table validator.frame_slot
DROP TABLE IF EXISTS `frame_slot`;
CREATE TABLE IF NOT EXISTS `frame_slot` (
  `frame_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  PRIMARY KEY (`frame_id`,`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.history
DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `act` varchar(255) DEFAULT NULL,
  `html_id` varchar(255) DEFAULT NULL,
  `extra_information` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table validator.project
DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table validator.project_frame_instance
DROP TABLE IF EXISTS `project_frame_instance`;
CREATE TABLE IF NOT EXISTS `project_frame_instance` (
  `project_id` int(11) NOT NULL,
  `frame_instance_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`frame_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.provenance
DROP TABLE IF EXISTS `provenance`;
CREATE TABLE IF NOT EXISTS `provenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.slot
DROP TABLE IF EXISTS `slot`;
CREATE TABLE IF NOT EXISTS `slot` (
  `slot_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `annotation_type` varchar(100) DEFAULT NULL,
  `slot_type` int(11) NOT NULL,
  `cond` text,
  PRIMARY KEY (`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.tablename_lookup
DROP TABLE IF EXISTS `tablename_lookup`;
CREATE TABLE IF NOT EXISTS `tablename_lookup` (
  `annotation_type` varchar(500) DEFAULT NULL,
  `table_type` varchar(100) DEFAULT NULL,
  `table_name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table validator.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(500) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `frame_instance_id` int(11) DEFAULT NULL,
  `pw` text,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table validator.validated_document
DROP TABLE IF EXISTS `validated_document`;
CREATE TABLE IF NOT EXISTS `validated_document` (
  `document_id` bigint(20) NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table validator.value
DROP TABLE IF EXISTS `value`;
CREATE TABLE IF NOT EXISTS `value` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(500) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `html_id` varchar(500) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
