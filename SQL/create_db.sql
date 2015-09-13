CREATE DATABASE  IF NOT EXISTS `hazlo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hazlo`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: hazlo
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` binary(16) NOT NULL,
  `street_name` varchar(128) DEFAULT NULL,
  `pin_code` varchar(16) NOT NULL,
  `city_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`),
  UNIQUE KEY `address_id_UNIQUE` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audience_type`
--

DROP TABLE IF EXISTS `audience_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audience_type` (
  `audience_type_id` binary(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`audience_type_id`),
  UNIQUE KEY `audience_type_id_UNIQUE` (`audience_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `booking_transaction`
--

DROP TABLE IF EXISTS `booking_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_transaction` (
  `booking_transaction_id` binary(16) NOT NULL,
  `court_booking_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_transaction_id`),
  UNIQUE KEY `booking_transaction_id_UNIQUE` (`booking_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` binary(16) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `code` char(3) DEFAULT NULL,
  `state_id` binary(16) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_id_UNIQUE` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` binary(16) NOT NULL,
  `name` varchar(128) NOT NULL,
  `contact_id` binary(16) NOT NULL,
  `login_id` binary(16) DEFAULT NULL,
  `address_id` binary(16) NOT NULL,
  `company_bank_account_id` int(11) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL,
  `updated_by` varchar(32) NOT NULL,
  `added_utc` datetime NOT NULL,
  `updated_utc` datetime NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contact_id` binary(16) NOT NULL,
  `email_id` varchar(128) DEFAULT NULL,
  `mobile_number` int(11) NOT NULL,
  `landline_number` int(11) DEFAULT NULL,
  `website_url` varchar(256) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `counrt_type`
--

DROP TABLE IF EXISTS `counrt_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counrt_type` (
  `court_type_id` binary(16) NOT NULL,
  `type` varchar(32) NOT NULL,
  `description` varchar(64) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`court_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` binary(16) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `code` char(3) DEFAULT NULL,
  `region_id` binary(16) DEFAULT NULL,
  `currency_id` binary(16) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `court`
--

DROP TABLE IF EXISTS `court`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court` (
  `court_id` binary(16) NOT NULL,
  `name` varchar(64) NOT NULL,
  `venue_id` binary(16) NOT NULL,
  `court_type_id` binary(16) NOT NULL,
  `opening_time` float NOT NULL,
  `closing_time` float NOT NULL,
  `minimum_court_booking_duration_id` binary(16) NOT NULL,
  `is_in_maintenance` tinyint(1) NOT NULL,
  `audience_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`court_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `court_booking`
--

DROP TABLE IF EXISTS `court_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court_booking` (
  `court_booking_id` binary(16) NOT NULL,
  `court_id` binary(16) NOT NULL,
  `booking_date` datetime NOT NULL,
  `person_id` binary(16) NOT NULL,
  `is_cancelled` tinyint(1) NOT NULL,
  `availed_price` double NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`court_booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `court_booking_slot`
--

DROP TABLE IF EXISTS `court_booking_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court_booking_slot` (
  `court_booking_slot_id` binary(16) NOT NULL,
  `slot_id` binary(16) NOT NULL,
  `court_booking_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`court_booking_slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `court_peak_time_slot_map`
--

DROP TABLE IF EXISTS `court_peak_time_slot_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court_peak_time_slot_map` (
  `court_peak_time_slot_map_id` binary(16) NOT NULL,
  `court_id` binary(16) NOT NULL,
  `slot_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`court_peak_time_slot_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `court_price`
--

DROP TABLE IF EXISTS `court_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court_price` (
  `court_price_id` binary(16) NOT NULL,
  `court_id` binary(16) NOT NULL,
  `base_price` double NOT NULL,
  `peak_time_rate_in_percentage` float NOT NULL,
  `holiday_rate_in_percentage` float NOT NULL,
  `weekend_rate_in_percentage` float NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`court_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `court_rule`
--

DROP TABLE IF EXISTS `court_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court_rule` (
  `court_rule_id` binary(16) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `court_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`court_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `court_type_price`
--

DROP TABLE IF EXISTS `court_type_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court_type_price` (
  `court_type_price_id` binary(16) NOT NULL,
  `court_type_id` binary(16) NOT NULL,
  `base_price` double NOT NULL,
  `peak_time_rate_in_percentage` float NOT NULL,
  `holiday_time_rate_in_percentage` float NOT NULL,
  `weekend_time_rate_in_percentage` float NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`court_type_price_id`),
  UNIQUE KEY `court_type_price_id_UNIQUE` (`court_type_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `court_type_rule`
--

DROP TABLE IF EXISTS `court_type_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court_type_rule` (
  `court_type_rule_id` binary(16) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `court_type_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`court_type_rule_id`),
  UNIQUE KEY `court_type_rule_id_UNIQUE` (`court_type_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `currency_id` binary(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` char(3) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`currency_id`),
  UNIQUE KEY `currency_id_UNIQUE` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility` (
  `facility_id` binary(16) NOT NULL,
  `name` varchar(128) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`facility_id`),
  UNIQUE KEY `facility_id_UNIQUE` (`facility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facility_category`
--

DROP TABLE IF EXISTS `facility_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility_category` (
  `facility_category_id` binary(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `category_index` int(11) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`facility_category_id`),
  UNIQUE KEY `facility_category_id_UNIQUE` (`facility_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facility_category_map`
--

DROP TABLE IF EXISTS `facility_category_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility_category_map` (
  `facility_category_map_id` binary(16) NOT NULL,
  `facility_id` binary(16) NOT NULL,
  `category_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`facility_category_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `gender_id` binary(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`gender_id`),
  UNIQUE KEY `gender_id_UNIQUE` (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `login_id` binary(16) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `password` varchar(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `login_id_UNIQUE` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `minimum_court_booking_duration`
--

DROP TABLE IF EXISTS `minimum_court_booking_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minimum_court_booking_duration` (
  `minimum_court_booking_duration_id` binary(16) NOT NULL,
  `minimum_court_booking_duration` float NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`minimum_court_booking_duration_id`),
  UNIQUE KEY `minimum_court_booking_duration_id_UNIQUE` (`minimum_court_booking_duration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `national_holiday_calendar`
--

DROP TABLE IF EXISTS `national_holiday_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `national_holiday_calendar` (
  `national_holiday_calendar_id` binary(16) NOT NULL,
  `name` varchar(64) NOT NULL,
  `holiday_date` datetime NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`national_holiday_calendar_id`),
  UNIQUE KEY `national_holiday_calendar_id_UNIQUE` (`national_holiday_calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `national_holiday_calendar_country_map`
--

DROP TABLE IF EXISTS `national_holiday_calendar_country_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `national_holiday_calendar_country_map` (
  `national_holiday_calendar_country_map_id` binary(16) NOT NULL,
  `country_id` binary(16) NOT NULL,
  `national_holiday_calendar_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`national_holiday_calendar_country_map_id`),
  UNIQUE KEY `national_holiday_calendar_country_map_id_UNIQUE` (`national_holiday_calendar_country_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `person_id` binary(16) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `contact_id` binary(16) NOT NULL,
  `gender_id` binary(16) NOT NULL,
  `login_id` binary(16) DEFAULT NULL,
  `address_id` binary(16) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `person_id_UNIQUE` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `region_id` binary(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  `region_code` varchar(8) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `region_id_UNIQUE` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `regional_holiday_calendar`
--

DROP TABLE IF EXISTS `regional_holiday_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regional_holiday_calendar` (
  `regional_holiday_calendar_id` binary(16) NOT NULL,
  `holiday_date` datetime NOT NULL,
  `name` varchar(64) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`regional_holiday_calendar_id`),
  UNIQUE KEY `regional_holiday_calendar_id_UNIQUE` (`regional_holiday_calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `regional_holiday_calendar_city_map`
--

DROP TABLE IF EXISTS `regional_holiday_calendar_city_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regional_holiday_calendar_city_map` (
  `regional_holiday_calendar_city_map_id` binary(16) NOT NULL,
  `regional_holiday_calendar_id` binary(16) NOT NULL,
  `city_id` binary(16) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`regional_holiday_calendar_city_map_id`),
  UNIQUE KEY `regional_holiday_calendar_city_map_id_UNIQUE` (`regional_holiday_calendar_city_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slot` (
  `slot_id` binary(16) NOT NULL,
  `start_time` float NOT NULL,
  `end_time` float NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`slot_id`),
  UNIQUE KEY `slot_id_UNIQUE` (`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` binary(16) NOT NULL,
  `name` varchar(64) NOT NULL,
  `country_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_id_UNIQUE` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_wallet`
--

DROP TABLE IF EXISTS `user_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_wallet` (
  `user_wallet_id` binary(16) NOT NULL,
  `person_id` binary(16) NOT NULL,
  `points` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_wallet_id`),
  UNIQUE KEY `user_wallet_id_UNIQUE` (`user_wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue` (
  `venue_id` binary(16) NOT NULL,
  `name` varchar(128) NOT NULL,
  `address_id` binary(16) NOT NULL,
  `venue_facility_category_index` int(11) NOT NULL,
  `contact_id` binary(16) NOT NULL,
  `company_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`venue_id`),
  UNIQUE KEY `venue_id_UNIQUE` (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `venue_closure`
--

DROP TABLE IF EXISTS `venue_closure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_closure` (
  `venue_closure_id` binary(16) NOT NULL,
  `venue_id` binary(16) NOT NULL,
  `reason` varchar(128) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`venue_closure_id`),
  UNIQUE KEY `venue_closure_id_UNIQUE` (`venue_closure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `venue_facility_map`
--

DROP TABLE IF EXISTS `venue_facility_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_facility_map` (
  `venue_facility_map_id` binary(16) NOT NULL,
  `venue_id` binary(16) NOT NULL,
  `facility_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`venue_facility_map_id`),
  UNIQUE KEY `venue_facility_map_id_UNIQUE` (`venue_facility_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `venue_rating`
--

DROP TABLE IF EXISTS `venue_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_rating` (
  `venue_rating_id` binary(16) NOT NULL,
  `comment` varchar(64) NOT NULL,
  `rating` int(11) NOT NULL,
  `person_id` binary(16) NOT NULL,
  `venue_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`venue_rating_id`),
  UNIQUE KEY `venue_rating_id_UNIQUE` (`venue_rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `venue_type_promotional_item`
--

DROP TABLE IF EXISTS `venue_type_promotional_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_type_promotional_item` (
  `venue_type_promotional_item_id` binary(16) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `value_in_points` double NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`venue_type_promotional_item_id`),
  UNIQUE KEY `venue_type_promotional_item_id_UNIQUE` (`venue_type_promotional_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `venue_type_promotional_offer`
--

DROP TABLE IF EXISTS `venue_type_promotional_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_type_promotional_offer` (
  `venue_type_promotional_offer_id` binary(16) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `court_type_id` binary(16) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `venue_type_promotional_item_id` binary(16) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`venue_type_promotional_offer_id`),
  UNIQUE KEY `venue_type_promotional_offer_id_UNIQUE` (`venue_type_promotional_offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `venue_type_promotional_wallet`
--

DROP TABLE IF EXISTS `venue_type_promotional_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_type_promotional_wallet` (
  `venue_type_promotional_wallet_id` binary(16) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `points` double NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `added_by` varchar(32) NOT NULL DEFAULT 'System',
  `updated_by` varchar(32) NOT NULL DEFAULT 'System',
  `added_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_utc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`venue_type_promotional_wallet_id`),
  UNIQUE KEY `venue_type_promotional_wallet_id_UNIQUE` (`venue_type_promotional_wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-13  4:51:08
