-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Mai 2023 um 20:05
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `fivem`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Bank Savings', 0),
('caution', 'caution', 0),
('property_black_money', 'Argent Sale Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_banker', 'Banker', 1),
('society_cardealer', 'Cardealer', 1),
('society_casino', 'Casino', 1),
('society_fbi', 'FBI', 1),
('society_fisherman', 'Fisherman', 1),
('society_fueler', 'Fueler', 1),
('society_lumberjack', 'Lumberjack', 1),
('society_mechanic', 'Mechanic', 1),
('society_mina', 'Unicorn', 1),
('society_miner', 'Miner', 1),
('society_police', 'Police', 1),
('society_prisoner', 'Gefängnis Wart', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_reporter', 'Journalist', 1),
('society_slaughterer', 'Butcher', 1),
('society_tailor', 'Tailor', 1),
('society_taxi', 'Taxi', 1),
('society_unemployed', 'Unemployed', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(22) NOT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 0, NULL),
(2, 'society_banker', 0, NULL),
(3, 'society_cardealer', 0, NULL),
(4, 'society_fbi', 0, NULL),
(5, 'society_mechanic', 0, NULL),
(6, 'society_police', 0, NULL),
(7, 'society_realestateagent', 0, NULL),
(8, 'society_taxi', 0, NULL),
(9, 'bank_savings', 0, 'steam:11000013d79d68d'),
(10, 'caution', 0, 'steam:11000013d79d68d'),
(11, 'property_black_money', 0, 'steam:11000013d79d68d'),
(12, 'bank_savings', 0, 'steam:1100001166f2d38'),
(13, 'caution', 0, 'steam:1100001166f2d38'),
(14, 'property_black_money', 0, 'steam:1100001166f2d38'),
(15, 'society_unemployed', 0, NULL),
(16, 'society_tailor', 0, NULL),
(17, 'society_fisherman', 0, NULL),
(18, 'society_prisoner', 0, NULL),
(19, 'society_miner', 0, NULL),
(20, 'society_fueler', 0, NULL),
(21, 'society_slaughterer', 0, NULL),
(22, 'society_reporter', 0, NULL),
(23, 'society_lumberjack', 0, NULL),
(24, 'society_mina', 0, NULL),
(25, 'society_vagos', 0, NULL),
(26, 'society_unicorn', 0, NULL),
(27, 'bank_savings', 0, 'steam:110000112ce923f'),
(28, 'property_black_money', 0, 'steam:110000112ce923f'),
(29, 'caution', 0, 'steam:110000112ce923f'),
(30, 'society_casino', 0, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_banker', 'Banker', 1),
('society_cardealer', 'Cardealer', 1),
('society_casino', 'Casino', 1),
('society_casino_fridge', 'casino (frigo)', 1),
('society_fbi', 'FBI', 1),
('society_fisherman', 'Fisherman', 1),
('society_fueler', 'Fueler', 1),
('society_lumberjack', 'Lumberjack', 1),
('society_mechanic', 'Mechanic', 1),
('society_mina', 'Unicorn', 1),
('society_miner', 'Miner', 1),
('society_police', 'Police', 1),
('society_prisoner', 'Gefängnis Wart', 1),
('society_realestateagent', 'Real Estate Agent', 1),
('society_reporter', 'Journalist', 1),
('society_slaughterer', 'Butcher', 1),
('society_tailor', 'Tailor', 1),
('society_taxi', 'Taxi', 1),
('society_unemployed', 'Unemployed', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ak4y_blackmarket`
--

CREATE TABLE `ak4y_blackmarket` (
  `#` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `currentXP` int(11) DEFAULT NULL,
  `tasks` longtext DEFAULT NULL,
  `taskResetTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `ak4y_blackmarket`
--

INSERT INTO `ak4y_blackmarket` (`#`, `citizenid`, `currentXP`, `tasks`, `taskResetTime`) VALUES
(5, 'steam:110000112ce923f', 0, '[{\"requiredCount\":2,\"taskId\":1,\"hasCount\":0,\"taken\":false,\"rewardEXP\":1500},{\"requiredCount\":50,\"taskId\":2,\"hasCount\":0,\"taken\":false,\"rewardEXP\":200},{\"requiredCount\":8,\"taskId\":3,\"hasCount\":0,\"taken\":false,\"rewardEXP\":300},{\"requiredCount\":20,\"taskId\":4,\"hasCount\":0,\"taken\":false,\"rewardEXP\":400},{\"requiredCount\":10,\"taskId\":5,\"hasCount\":0,\"taken\":false,\"rewardEXP\":500},{\"requiredCount\":5,\"taskId\":6,\"hasCount\":0,\"taken\":false,\"rewardEXP\":600},{\"requiredCount\":20,\"taskId\":7,\"hasCount\":0,\"taken\":false,\"rewardEXP\":700},{\"requiredCount\":10,\"taskId\":8,\"hasCount\":0,\"taken\":false,\"rewardEXP\":800}]', '2023-05-21 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ak4y_caseopening`
--

CREATE TABLE `ak4y_caseopening` (
  `#` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL DEFAULT '0',
  `goldcoin` int(11) NOT NULL DEFAULT 0,
  `silvercoin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `ak4y_caseopening`
--

INSERT INTO `ak4y_caseopening` (`#`, `citizenid`, `goldcoin`, `silvercoin`) VALUES
(2, 'steam:110000112ce923f', 36015, 49865);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ak4y_caseopening_codes`
--

CREATE TABLE `ak4y_caseopening_codes` (
  `code` varchar(255) DEFAULT NULL,
  `creditCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ak4y_playtimeshop`
--

CREATE TABLE `ak4y_playtimeshop` (
  `#` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL DEFAULT '0',
  `coin` int(11) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ak4y_playtimeshop_codes`
--

CREATE TABLE `ak4y_playtimeshop_codes` (
  `#` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(1, 'steam:11000013d79d68d', 'steam:1100001166f2d38', 'player', 'steam:1100001166f2d38', 'Strafe: Murder of an LEO', 30000),
(2, 'steam:11000013d79d68d', 'steam:1100001166f2d38', 'player', 'steam:1100001166f2d38', 'Strafe: Murder of an LEO', 30000),
(3, 'steam:11000013d79d68d', 'steam:1100001166f2d38', 'player', 'steam:1100001166f2d38', 'Strafe: Murder of an LEO', 30000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cardealer`
--

CREATE TABLE `cardealer` (
  `id` tinyint(4) NOT NULL DEFAULT 0,
  `label` varchar(50) DEFAULT NULL,
  `model` char(50) DEFAULT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `storage` smallint(6) DEFAULT 0,
  `ps` smallint(6) DEFAULT 0,
  `maxSpeed` smallint(6) DEFAULT 0,
  `speedUp` float DEFAULT 0,
  `modification` smallint(6) DEFAULT 0,
  `tankcapacity` smallint(6) DEFAULT 0,
  `lastorder` bigint(20) DEFAULT NULL,
  `producetotal` smallint(6) DEFAULT 0,
  `produced` smallint(6) DEFAULT 0,
  `time` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `cardealer`
--

INSERT INTO `cardealer` (`id`, `label`, `model`, `manufacturer`, `price`, `storage`, `ps`, `maxSpeed`, `speedUp`, `modification`, `tankcapacity`, `lastorder`, `producetotal`, `produced`, `time`) VALUES
(14, 'Reaper', 'reaper', 'Pegassi', 465700, 2, 360, 320, 2.9, 6, 60, 1619006830, 2, 1, 140),
(15, 'Penetrator', 'penetrator', 'Ocelot', 478200, 1, 360, 300, 2.8, 6, 60, 1615219805, 0, 0, 140),
(16, 'Entity XF', 'entityxf', 'Overflod', 432400, 2, 350, 122, 2.5, 6, 60, 1569005217, 0, 0, 140),
(17, 'Entity XXR', 'entity2', 'Overflod', 432400, 1, 410, 310, 2.6, 9, 65, 1615219808, 0, 0, 140),
(18, 'ETR1', 'sheava', 'Emperor', 400000, 1, 356, 298, 2.8, 12, 60, 1615219810, 0, 0, 140),
(19, 'FMJ', 'fmj', 'Vapid', 378000, 1, 343, 278, 2.4, 12, 60, 1604260527, 0, 0, 140),
(20, 'GP1', 'gp1', 'Progen', 423700, 1, 387, 256, 2.2, 12, 60, 1604260527, 0, 0, 140),
(21, 'Infernus', 'infernus', 'Pegassi', 353700, 1, 398, 287, 2.9, 12, 60, 1615219814, 0, 0, 140),
(22, 'Itali GTB Custom', 'italigtb2', 'Progen', 453600, 1, 412, 301, 2.7, 10, 60, 1604260527, 0, 0, 140),
(23, 'Nero', 'nero', 'Truffade', 400000, 1, 434, 300, 2.6, 10, 60, 1604260527, 0, 0, 140);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(1, 'steam:11000013d79d68d', 'Mina', 'Savalas', '1995.12.22', 'f', '175'),
(2, 'steam:1100001166f2d38', 'Manuel', 'Savalas', '12.08.2001', 'm', '187'),
(3, 'steam:11000013d79d68d', 'Mina', 'Savalas', '1995.12.22', 'f', '175'),
(4, 'steam:1100001166f2d38', 'test', 'test', '12.08.2001', 'm', '187'),
(5, 'steam:1100001166f2d38', 'Manuel', 'Savalas', '2001.08.12', 'm', '187'),
(6, 'steam:1100001166f2d38', 'Manuel', 'Savalas', '12.08.2001', 'm', '187'),
(7, 'steam:1100001166f2d38', 'Manuel', 'Savalas', '12.08.2001', 'm', '187'),
(8, 'steam:1100001166f2d38', 'Manuel', 'Savalas', '12.08.2001', 'm', '187'),
(9, 'steam:1100001166f2d38', 'Manuel', 'Savalas', '12.08.2001', 'm', '187'),
(10, 'steam:1100001166f2d38', 'Manuel', 'Savalas', '12.08.2001', 'm', '187'),
(11, 'steam:11000013d79d68d', 'Test', 'Test', '12.08.2001', 'm', '187'),
(12, 'steam:11000013d79d68d', 'Mina', 'Savalas', '01.01.1990', 'm', '187'),
(13, 'steam:11000013d79d68d', 'Test', 'Test', '01.01.2023', 'm', '187'),
(14, 'steam:11000013d79d68d', 'test', 'tear', '01.01.1990', 'm', '187'),
(15, 'steam:11000013d79d68d', 'Test', 'Test', '12.08.2001', 'm', '187'),
(16, 'steam:11000013d79d68d', 'Manuel', 'Test', '12.08.2001', 'm', '187'),
(17, 'steam:110000112ce923f', 'Nikolaj', 'Romanov', '30.07.1996', 'm', '187'),
(18, 'steam:11000013d79d68d', 'Mina', 'Savalas', '01.01.1990', 'f', '187'),
(19, 'steam:11000013d79d68d', 'Mina', 'Savalas', '12.08.2001', 'm', '187'),
(20, 'steam:11000013d79d68d', 'Test', 'Test', '01.01.1990', 'm', '187'),
(21, 'steam:11000013d79d68d', 'test', 'test', '1990.01.01', 'm', '187'),
(22, 'steam:11000013d79d68d', 'Mina', 'Savalas', '12.08.2001', 'f', '187');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `darkchat_messages`
--

CREATE TABLE `darkchat_messages` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT '',
  `messages` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_banker', 'Banker', 1),
('society_cardealer', 'Car Dealer', 1),
('society_casino', 'Casino', 1),
('society_fbi', 'FBI', 1),
('society_fisherman', 'Fisherman', 1),
('society_fueler', 'Fueler', 1),
('society_lumberjack', 'Lumberjack', 1),
('society_mechanic', 'Mechanic', 1),
('society_mina', 'Unicorn', 1),
('society_miner', 'Miner', 1),
('society_police', 'Police', 1),
('society_prisoner', 'Gefängnis Wart', 1),
('society_realestateagent', 'Real Estate Agent', 1),
('society_reporter', 'Journalist', 1),
('society_slaughterer', 'Butcher', 1),
('society_tailor', 'Tailor', 1),
('society_taxi', 'Taxi', 1),
('society_unemployed', 'Unemployed', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_fbi', NULL, '{}'),
(3, 'society_police', NULL, '{}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'user_mask', 'steam:11000013d79d68d', '{}'),
(6, 'user_helmet', 'steam:11000013d79d68d', '{}'),
(7, 'user_glasses', 'steam:11000013d79d68d', '{}'),
(8, 'property', 'steam:11000013d79d68d', '{}'),
(9, 'user_ears', 'steam:11000013d79d68d', '{}'),
(10, 'property', 'steam:1100001166f2d38', '{}'),
(11, 'user_ears', 'steam:1100001166f2d38', '{}'),
(12, 'user_glasses', 'steam:1100001166f2d38', '{}'),
(13, 'user_helmet', 'steam:1100001166f2d38', '{}'),
(14, 'user_mask', 'steam:1100001166f2d38', '{}'),
(15, 'society_realestateagent', NULL, '{}'),
(16, 'society_banker', NULL, '{}'),
(17, 'society_cardealer', NULL, '{}'),
(18, 'society_mechanic', NULL, '{}'),
(19, 'society_prisoner', NULL, '{}'),
(20, 'society_unemployed', NULL, '{}'),
(21, 'society_tailor', NULL, '{}'),
(22, 'society_fueler', NULL, '{}'),
(23, 'society_miner', NULL, '{}'),
(24, 'society_fisherman', NULL, '{}'),
(25, 'society_slaughterer', NULL, '{}'),
(26, 'society_lumberjack', NULL, '{}'),
(27, 'society_reporter', NULL, '{}'),
(28, 'society_mina', NULL, '{}'),
(29, 'society_vagos', NULL, '{}'),
(30, 'society_unicorn', NULL, '{}'),
(31, 'property', 'steam:110000112ce923f', '{}'),
(32, 'user_ears', 'steam:110000112ce923f', '{}'),
(33, 'user_mask', 'steam:110000112ce923f', '{}'),
(34, 'user_glasses', 'steam:110000112ce923f', '{}'),
(35, 'user_helmet', 'steam:110000112ce923f', '{}'),
(36, 'society_casino', NULL, '{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('steam:11000013d79d68d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001166f2d38', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000112ce923f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Misuse of a horn', 30, 0),
(2, 'Illegally Crossing a continuous Line', 40, 0),
(3, 'Driving on the wrong side of the road', 250, 0),
(4, 'Illegal U-Turn', 250, 0),
(5, 'Illegally Driving Off-road', 170, 0),
(6, 'Refusing a Lawful Command', 30, 0),
(7, 'Illegally Stopping a Vehicle', 150, 0),
(8, 'Illegal Parking', 70, 0),
(9, 'Failing to Yield to the right', 70, 0),
(10, 'Failure to comply with Vehicle Information', 90, 0),
(11, 'Failing to stop at a Stop Sign ', 105, 0),
(12, 'Failing to stop at a Red Light', 130, 0),
(13, 'Illegal Passing', 100, 0),
(14, 'Driving an illegal Vehicle', 100, 0),
(15, 'Driving without a License', 1500, 0),
(16, 'Hit and Run', 800, 0),
(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
(21, 'Impeding traffic flow', 110, 1),
(22, 'Public Intoxication', 90, 1),
(23, 'Disorderly conduct', 90, 1),
(24, 'Obstruction of Justice', 130, 1),
(25, 'Insults towards Civilans', 75, 1),
(26, 'Disrespecting of an LEO', 110, 1),
(27, 'Verbal Threat towards a Civilan', 90, 1),
(28, 'Verbal Threat towards an LEO', 150, 1),
(29, 'Providing False Information', 250, 1),
(30, 'Attempt of Corruption', 1500, 1),
(31, 'Brandishing a weapon in city Limits', 120, 2),
(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
(33, 'No Firearms License', 600, 2),
(34, 'Possession of an Illegal Weapon', 700, 2),
(35, 'Possession of Burglary Tools', 300, 2),
(36, 'Grand Theft Auto', 1800, 2),
(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
(38, 'Frabrication of an Illegal Substance', 1500, 2),
(39, 'Possession of an Illegal Substance ', 650, 2),
(40, 'Kidnapping of a Civilan', 1500, 2),
(41, 'Kidnapping of an LEO', 2000, 2),
(42, 'Robbery', 650, 2),
(43, 'Armed Robbery of a Store', 650, 2),
(44, 'Armed Robbery of a Bank', 1500, 2),
(45, 'Assault on a Civilian', 2000, 3),
(46, 'Assault of an LEO', 2500, 3),
(47, 'Attempt of Murder of a Civilian', 3000, 3),
(48, 'Attempt of Murder of an LEO', 5000, 3),
(49, 'Murder of a Civilian', 10000, 3),
(50, 'Murder of an LEO', 30000, 3),
(51, 'Involuntary manslaughter', 1800, 3),
(52, 'Fraud', 2000, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gas_station_balance`
--

CREATE TABLE `gas_station_balance` (
  `id` int(10) UNSIGNED NOT NULL,
  `gas_station_id` varchar(50) NOT NULL,
  `income` bit(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `gas_station_balance`
--

INSERT INTO `gas_station_balance` (`id`, `gas_station_id`, `income`, `title`, `amount`, `date`) VALUES
(54, 'gas_station_26', b'0', 'Депозирани Пари', 100000000, 1684172889),
(55, 'gas_station_26', b'1', 'Купено гориво: Small cargo of 50 Liters', 1750, 1684172893),
(56, 'gas_station_26', b'0', 'Fuel sold (1 Liters)', 12, 1684172974),
(57, 'gas_station_26', b'0', 'Fuel sold (34 Liters)', 340, 1684173011),
(58, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на запасите', 20000, 1684173022),
(59, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на запасите', 20000, 1684173024),
(60, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на запасите', 20000, 1684173026),
(61, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на запасите', 20000, 1684173027),
(62, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на запасите', 20000, 1684173028),
(63, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на камиона', 45000, 1684173032),
(64, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на камиона', 45000, 1684173034),
(65, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на камиона', 45000, 1684173036),
(66, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на камиона', 45000, 1684173037),
(67, 'gas_station_26', b'1', 'Купен ъпгрейд: Капацитет на камиона', 45000, 1684173058),
(68, 'gas_station_26', b'1', 'Купен ъпгрейд: Relationship', 60000, 1684173062),
(69, 'gas_station_26', b'1', 'Купен ъпгрейд: Relationship', 60000, 1684173073),
(70, 'gas_station_26', b'1', 'Купен ъпгрейд: Relationship', 60000, 1684173074),
(71, 'gas_station_26', b'1', 'Купен ъпгрейд: Relationship', 60000, 1684173075),
(72, 'gas_station_26', b'1', 'Купен ъпгрейд: Relationship', 60000, 1684173076),
(73, 'gas_station_26', b'1', 'Купено гориво: Large cargo of 300 Liters', 3600, 1684173084);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gas_station_business`
--

CREATE TABLE `gas_station_business` (
  `gas_station_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` varchar(50) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stock_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `truck_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `relationship_upgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_money_earned` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_money_spent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gas_bought` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gas_sold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `distance_traveled` double UNSIGNED NOT NULL DEFAULT 0,
  `total_visits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `customers` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `timer` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `gas_station_business`
--

INSERT INTO `gas_station_business` (`gas_station_id`, `user_id`, `stock`, `price`, `stock_upgrade`, `truck_upgrade`, `relationship_upgrade`, `money`, `total_money_earned`, `total_money_spent`, `gas_bought`, `gas_sold`, `distance_traveled`, `total_visits`, `customers`, `timer`) VALUES
('gas_station_26', 'steam:11000013d79d68d', 315, 1000, 5, 5, 5, 99370002, 352, 630350, 350, 35, 7.29, 5, 2, 1684181425);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gas_station_jobs`
--

CREATE TABLE `gas_station_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `gas_station_id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `reward` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `progress` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `instagram_account`
--

CREATE TABLE `instagram_account` (
  `id` varchar(90) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `instagram_followers`
--

CREATE TABLE `instagram_followers` (
  `username` varchar(50) NOT NULL,
  `followed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `instagram_posts`
--

CREATE TABLE `instagram_posts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(50) NOT NULL,
  `filter` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `instagram_stories`
--

CREATE TABLE `instagram_stories` (
  `owner` varchar(50) NOT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `insta_stories`
--

CREATE TABLE `insta_stories` (
  `username` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `filter` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Alive Chicken', 20, 0, 1),
('aramidfasern', 'Aramidfasern', 250, 0, 1),
('bandage', 'Bandage', 20, 0, 1),
('binoculars', 'Ferngläser', 10, 0, 1),
('blowpipe', 'Blowpipe', 10, 0, 1),
('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1),
('bolchips', 'Bol de chips', 5, 0, 1),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1),
('bolpistache', 'Bol de pistaches', 5, 0, 1),
('boxbig', 'Munition', 25, 0, 1),
('bread', 'Bread', 10, 0, 1),
('bulletproof', 'Schutzweste', 10, 0, 1),
('bulletproof50', 'Halfplate', 10, 0, 1),
('cannabis', 'Cannabis', 40, 0, 1),
('carokit', 'Body kit', 3, 0, 1),
('carotool', 'Body Tools', 4, 0, 1),
('case', 'Mystery Box', 100, 0, 1),
('casinochips', 'Casino Chips', 100000000, 0, 1),
('cleankit', 'Reinigungsset', 15, 0, 1),
('clothe', 'Clothing', 40, 0, 1),
('coffee', 'Café', 5, 0, 1),
('coke', 'Koks', 300, 0, 1),
('coke10g', 'Cocaine (10G)', 50, 0, 1),
('coke1g', 'Cocaine (1G)', 50, 0, 1),
('cokebrick', 'Cocaine Brick (100G)', 20, 0, 1),
('copper', 'Copper', 56, 0, 1),
('cutted_wood', 'Cut Wood', 20, 0, 1),
('darknet', 'Dark Net', 10, 0, 1),
('defib', 'Defibrillator', 1, 0, 1),
('diamond', 'Diamond', 50, 0, 1),
('drill', 'Bohrer', 15, 0, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1),
('drugbags', 'Bags', 80, 0, 1),
('drugItem', 'Black USB-C', 2, 0, 1),
('energy', 'Energy Drink', 5, 0, 1),
('essence', 'Essence', 24, 0, 1),
('fabric', 'Fabric', 80, 0, 1),
('fbulletproof', 'Fullplate', 100, 0, 1),
('firework', 'Feuerwerk', 5, 0, 1),
('firstaidkit', 'Erste-Hilfe-Kasten', 15, 0, 1),
('fish', 'Fish', 100, 0, 1),
('fixkit', 'Repair Kit', 5, 0, 1),
('fixtool', 'Repair Tool', 6, 0, 1),
('flashlight', 'Taschenlampe', 10, 0, 1),
('gazbottle', 'Gaz Bottle', 11, 0, 1),
('gebuendeltearamidfasern', 'Gebündelte Aramidfasern', 150, 0, 1),
('gold', 'Gold', 21, 0, 1),
('goldnecklace', 'Goldkette', 30, 0, 1),
('goldwatch', 'Gold Uhr', 30, 0, 1),
('golem', 'Golem', 5, 0, 1),
('grapperaisin', 'Grappe de raisin', 5, 0, 1),
('grip', 'Griff', 10, 0, 1),
('gym_membership', 'Gym Membership', -1, 0, 1),
('hackerDevice', 'Hacker Device', 25, 0, 1),
('handcuffkey', 'Schere', 15, 0, 1),
('handcuffs', 'Seile', 15, 0, 1),
('HD_acid', 'Säure', 100, 0, 1),
('HD_bCloth', 'Zerbrochener Löffel mit nassem Lappen', 100, 0, 1),
('HD_bLadle', 'Zerbrochene Schöpfkelle', 100, 0, 1),
('HD_booze', 'Schnaps', 100, 0, 1),
('HD_bottle', 'Flasche', 100, 0, 1),
('HD_cleaner', 'Reiniger', 100, 0, 1),
('HD_cloth', 'Tuch', 100, 0, 1),
('HD_dLiquid', 'Schmutzige Flüssigkeit', 100, 0, 1),
('HD_file', 'Datei', 100, 0, 1),
('HD_fPacket', 'Geschmackspaket', 100, 0, 1),
('HD_grease', 'Schmierfett', 100, 0, 1),
('HD_iHeat', 'Eintauchheizkörper', 100, 0, 1),
('HD_jspoon', 'Gebrochener Löffel', 100, 0, 1),
('HD_ladle', 'Schöpfkelle', 100, 0, 1),
('HD_metal', 'Metall', 100, 0, 1),
('HD_miniH', 'Mini Hammer', 100, 0, 1),
('HD_plug', 'Stecker', 100, 0, 1),
('HD_pPunch', 'Gefängnis Kasperle', 100, 0, 1),
('HD_rock', 'Felsen', 100, 0, 1),
('HD_sChange', 'Kleingeld', 100, 0, 1),
('HD_Shank', 'Schaft', 100, 0, 1),
('HD_sMetal', 'Scharfes Metall', 100, 0, 1),
('HD_spoon', 'Löffel', 100, 0, 1),
('HD_wCloth', 'Feuchte Tücher', 100, 0, 1),
('hqscale', 'High Quality Scale', 1, 0, 1),
('ice', 'Glaçon', 5, 0, 1),
('icetea', 'Ice Tea', 5, 0, 1),
('iron', 'Iron', 42, 0, 1),
('jager', 'Jägermeister', 5, 0, 1),
('jagerbomb', 'Jägerbomb', 5, 0, 1),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1),
('joint2g', 'Joint (2G)', 50, 0, 1),
('jusfruit', 'Jus de fruits', 5, 0, 1),
('kevlar', 'Kevlar', 50, 0, 1),
('limonade', 'Limonade', 5, 0, 1),
('lockpick', 'Dietrich', 15, 0, 1),
('marijuana', 'Marijuana', 14, 0, 1),
('martini', 'Martini blanc', 5, 0, 1),
('medikit', 'Medikit', 5, 0, 1),
('menthe', 'Feuille de menthe', 10, 0, 1),
('meth10g', 'Meth (10G)', 50, 0, 1),
('meth1g', 'Meth (1G)', 50, 0, 1),
('methbrick', 'Meth Brick (100G)', 20, 0, 1),
('metreshooter', 'Mètre de shooter', 3, 0, 1),
('mixapero', 'Mix Apéritif', 3, 0, 1),
('mojito', 'Mojito', 5, 0, 1),
('oxygenmask', 'Sauerstoffmaske', 15, 0, 1),
('packaged_chicken', 'chicken fillet', 100, 0, 1),
('packaged_plank', 'packaged wood', 100, 0, 1),
('petrol', 'oil', 24, 0, 1),
('petrol_raffin', 'processed oil', 24, 0, 1),
('phone', 'Handy', 10, 0, 1),
('powerade', 'Powerade', -1, 0, 1),
('protein_shake', 'Protein Shake', -1, 0, 1),
('repairkit', 'Reparatur-Kit', 15, 0, 1),
('rhum', 'Rhum', 5, 0, 1),
('rhumcoca', 'Rhum-coca', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1),
('rolpaper', 'Rolling Paper', 80, 0, 1),
('saucisson', 'Saucisson', 5, 0, 1),
('scratchcard', 'scratch & win ', 1000, 0, 1),
('slaughtered_chicken', 'slaughtered chicken', 20, 0, 1),
('soda', 'Soda', 5, 0, 1),
('sportlunch', 'Sportlunch', -1, 0, 1),
('stone', 'Stone', 7, 0, 1),
('suppressor', 'Schalldämpfer', 10, 0, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1),
('tequila', 'Tequila', 5, 0, 1),
('tirekit', 'Reifenkit', 4, 0, 1),
('vape', 'Vape', 100, 0, 1),
('vehgps', 'Fahrzeug-GPS', 100, 0, 1),
('vodka', 'Vodka', 5, 0, 1),
('vodkaenergy', 'Vodka-energy', 5, 0, 1),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1),
('washed_stone', 'Washed Stone', 7, 0, 1),
('water', 'Water', 5, 0, 1),
('weakit', 'Waffenset', 100, 0, 1),
('weapon_combatmg_mk2', 'Combat MG MKII', 20, 0, 1),
('weapon_marksmanrifle_mk2', 'Marksman MKII', 20, 0, 1),
('weapon_precisionrifle', 'Sniper', 20, 0, 1),
('weapon_tacticalrifle', 'Tactic Rifle', 20, 0, 1),
('weed20g', 'Weed (20G)', 100, 0, 1),
('weed4g', 'Weed (4G)', 200, 0, 1),
('weedbrick', 'Weed Brick (200G)', 25, 0, 1),
('whisky', 'Whisky', 5, 0, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1),
('wood', 'Wood', 20, 0, 1),
('wool', 'Wool', 40, 0, 1),
('yusuf', 'Waffen Farbe', 10, 0, 1),
('zarowki', 'Farbige Scheinwerfer ', 20, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `enable_billing` int(1) DEFAULT 0,
  `can_rob` int(1) DEFAULT 0,
  `can_handcuff` int(1) DEFAULT 0,
  `can_lockpick_cars` int(1) DEFAULT 0,
  `can_wash_vehicles` int(1) DEFAULT 0,
  `can_repair_vehicles` int(1) DEFAULT 0,
  `can_impound_vehicles` int(1) DEFAULT 0,
  `can_check_identity` int(1) DEFAULT 0,
  `can_check_vehicle_owner` int(1) DEFAULT 0,
  `can_check_driving_license` int(1) DEFAULT 0,
  `can_check_weapon_license` int(1) DEFAULT 0,
  `handyservice` varchar(2) NOT NULL DEFAULT '0',
  `hasapp` int(2) NOT NULL DEFAULT 0,
  `onlyboss` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `enable_billing`, `can_rob`, `can_handcuff`, `can_lockpick_cars`, `can_wash_vehicles`, `can_repair_vehicles`, `can_impound_vehicles`, `can_check_identity`, `can_check_vehicle_owner`, `can_check_driving_license`, `can_check_weapon_license`, `handyservice`, `hasapp`, `onlyboss`) VALUES
('ambulance', 'Ambulance', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', 1, 0),
('banker', 'Banker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('cardealer', 'Car Dealer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('casino', 'Casino', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('fbi', 'FBI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('fisherman', 'Fisherman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('fueler', 'Fueler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('lumberjack', 'Lumberjack', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('mechanic', 'Mechanic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', 1, 1),
('mina', 'Unicorn', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('miner', 'Miner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('police', 'LSPD', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', 1, 0),
('prisoner', 'Gefängnis Wart', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('realestateagent', 'Real Estate Agent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('reporter', 'Journalist', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('slaughterer', 'Butcher', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('tailor', 'Tailor', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('taxi', 'Taxi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('unemployed', 'Unemployed', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('unicorn', 'Unicorn', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('vagos', 'Vagos', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_armories`
--

CREATE TABLE `jobs_armories` (
  `id` int(11) NOT NULL,
  `weapon` varchar(50) NOT NULL,
  `components` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ammo` int(10) UNSIGNED NOT NULL,
  `tint` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_data`
--

CREATE TABLE `jobs_data` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `coords` varchar(300) NOT NULL DEFAULT '',
  `min_grade` smallint(6) NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `blip_id` int(11) DEFAULT NULL,
  `blip_color` int(11) DEFAULT 0,
  `blip_scale` float DEFAULT 1,
  `label` varchar(50) DEFAULT NULL,
  `marker_type` int(11) DEFAULT 1,
  `marker_scale_x` float DEFAULT 1.5,
  `marker_scale_y` float DEFAULT 1.5,
  `marker_scale_z` float DEFAULT 0.5,
  `marker_color_red` int(3) DEFAULT 150,
  `marker_color_green` int(3) DEFAULT 150,
  `marker_color_blue` int(3) DEFAULT 0,
  `marker_color_alpha` int(3) DEFAULT 50,
  `ped` varchar(50) DEFAULT NULL,
  `ped_heading` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `jobs_data`
--

INSERT INTO `jobs_data` (`id`, `job_name`, `type`, `coords`, `min_grade`, `data`, `blip_id`, `blip_color`, `blip_scale`, `label`, `marker_type`, `marker_scale_x`, `marker_scale_y`, `marker_scale_z`, `marker_color_red`, `marker_color_green`, `marker_color_blue`, `marker_color_alpha`, `ped`, `ped_heading`) VALUES
(2, 'public_marker', 'harvest', '{\"z\":162.06,\"y\":519.53,\"x\":1989.12}', 0, '{\"animations\":[{\"scenarioName\":\"amb@code_human_wander_smoking_fat@female@base\",\"type\":\"scenario\",\"scenarioDuration\":10}],\"harvestableItems\":[{\"chances\":100,\"name\":\"aramidfasern\",\"maxQuantity\":5,\"time\":5,\"minQuantity\":1}]}', NULL, NULL, NULL, 'Aramid Farm', 1, 1.5, 1.5, 0.5, 250, 250, 250, 255, NULL, NULL),
(3, 'public_marker', 'process', '{\"z\":33.74,\"x\":-1478.0,\"y\":-519.25}', 0, '{\"animations\":[{\"type\":\"scenario\",\"scenarioName\":\"WORLD_HUMAN_DRUG_DEALER\",\"scenarioDuration\":100}],\"itemToAddQuantity\":1,\"timeToProcess\":10,\"itemToRemoveName\":\"aramidfasern\",\"itemToRemoveQuantity\":3,\"itemToAddName\":\"gebuendeltearamidfasern\"}', NULL, NULL, NULL, 'Aramid Verarbeiter', 1, 5, 5, 0.5, 255, 255, 0, 50, 'g_m_y_ballaeast_01', 356),
(4, 'public_marker', 'process', '{\"z\":28.57,\"x\":910.34,\"y\":-2491.78}', 0, '{\"animations\":[{\"type\":\"scenario\",\"scenarioName\":\"WORLD_HUMAN_SMOKING\",\"scenarioDuration\":100}],\"itemToAddQuantity\":1,\"timeToProcess\":10,\"itemToRemoveName\":\"gebuendeltearamidfasern\",\"itemToRemoveQuantity\":2,\"itemToAddName\":\"kevlar\"}', NULL, NULL, NULL, 'Kevlar verarbeiter', 1, 5, 5, 0.5, 255, 255, 0, 1, 'g_m_y_ballaeast_01', 356),
(5, 'public_marker', 'process', '{\"z\":28.8,\"x\":13.92,\"y\":-1106.25}', 0, '{\"itemToAddName\":\"bulletproof\",\"animations\":[{\"type\":\"scenario\",\"scenarioDuration\":100,\"scenarioName\":\"WORLD_HUMAN_SMOKING\"}],\"itemToAddQuantity\":1,\"itemToRemoveQuantity\":2,\"timeToProcess\":10,\"itemToRemoveName\":\"kevlar\"}', NULL, NULL, NULL, 'Westen verarbeiter', 1, 1.5, 1.5, 0.5, 255, 255, 0, 1, 'g_m_y_ballaeast_01', 356),
(7, 'public_marker', 'process', '{\"z\":28.8,\"x\":3.73,\"y\":-1108.45}', 0, '{\"itemToAddName\":\"bulletproof50\",\"animations\":[{\"type\":\"scenario\",\"scenarioDuration\":100,\"scenarioName\":\"WORLD_HUMAN_SMOKING\"}],\"itemToAddQuantity\":1,\"itemToRemoveQuantity\":2,\"timeToProcess\":10,\"itemToRemoveName\":\"kevlar\"}', 1, 0, 1, 'Westen verarbeiter 2', 1, 2, 2, 0.5, 255, 255, 0, 1, 'g_m_y_ballaeast_01', 290),
(9, 'mina', 'boss', '{\"z\":28.27,\"x\":93.68,\"y\":-1291.51}', 11, '{\"canGrades\":true,\"washMoneyGoesToSocietyAccount\":true,\"canWashMoney\":true,\"canWithdraw\":true,\"canDeposit\":true,\"canEmployees\":true}', NULL, NULL, NULL, 'Boss', 1, 1.5, 1.5, 0.5, 253, 148, 255, 50, NULL, NULL),
(10, 'mina', 'garage_buyable', '{\"x\":94.55,\"y\":-1283.42,\"z\":28.26}', 0, '{\"spawnCoords\":{\"x\":88.58,\"y\":-1280.12,\"z\":27.68},\"vehicles\":{\"schafter6\":1,\"t20\":1},\"heading\":95.04}', NULL, NULL, NULL, 'Fahrzeuge kaufen', 1, 1.5, 1.5, 0.5, 255, 158, 247, 50, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_garages`
--

CREATE TABLE `jobs_garages` (
  `vehicle_id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `vehicle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `vehicle_props` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `jobs_garages`
--

INSERT INTO `jobs_garages` (`vehicle_id`, `identifier`, `marker_id`, `vehicle`, `vehicle_props`, `plate`) VALUES
(1, 'steam:1100001166f2d38', 1, 'nero', '{}', NULL),
(2, 'steam:11000013d79d68d', 10, 'schafter6', '{}', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_shops`
--

CREATE TABLE `jobs_shops` (
  `id` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs_wardrobes`
--

CREATE TABLE `jobs_wardrobes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `label` varchar(50) NOT NULL,
  `outfit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'ambulance', 0, 'ambulance', 'Ambulance', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(3, 'ambulance', 1, 'doctor', 'Doctor', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(4, 'ambulance', 2, 'chief_doctor', 'Chief Doctor', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(5, 'ambulance', 3, 'boss', 'Boss', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(6, 'banker', 0, 'advisor', 'Advisor', 10, '{}', '{}'),
(7, 'banker', 1, 'banker', 'Banker', 20, '{}', '{}'),
(8, 'banker', 2, 'business_banker', 'Business Banker', 30, '{}', '{}'),
(9, 'banker', 3, 'trader', 'Trader', 40, '{}', '{}'),
(10, 'banker', 4, 'boss', 'Boss', 0, '{}', '{}'),
(11, 'lumberjack', 0, 'employee', 'Intern', 0, '{}', '{}'),
(12, 'fisherman', 0, 'employee', 'Intern', 0, '{}', '{}'),
(13, 'fueler', 0, 'employee', 'Intern', 0, '{}', '{}'),
(14, 'reporter', 0, 'employee', 'Intern', 0, '{}', '{}'),
(15, 'tailor', 0, 'employee', 'Intern', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(16, 'miner', 0, 'employee', 'Intern', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(17, 'slaughterer', 0, 'employee', 'Intern', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(18, 'mechanic', 0, 'recrue', 'Recruit', 12, '{}', '{}'),
(19, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(20, 'mechanic', 2, 'experimente', 'Experienced', 36, '{}', '{}'),
(21, 'mechanic', 3, 'chief', 'Chief', 48, '{}', '{}'),
(22, 'mechanic', 4, 'boss', 'Boss', 0, '{}', '{}'),
(23, 'police', 0, 'recruit', 'Recruit', 20, '{}', '{}'),
(24, 'police', 1, 'officer', 'Officer', 40, '{}', '{}'),
(25, 'police', 2, 'sergeant', 'sergeant', 60, '{}', '{}'),
(26, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(27, 'police', 4, 'boss', 'Boss', 100, '{}', '{}'),
(28, 'realestateagent', 0, 'location', 'Location', 10, '{}', '{}'),
(29, 'realestateagent', 1, 'vendeur', 'Seller', 25, '{}', '{}'),
(30, 'realestateagent', 2, 'gestion', 'Management', 40, '{}', '{}'),
(31, 'realestateagent', 3, 'boss', 'Boss', 0, '{}', '{}'),
(32, 'taxi', 0, 'recrue', 'Recruit', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 2, 'experimente', 'Experienced', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(36, 'taxi', 4, 'boss', 'Boss', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(37, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
(38, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(39, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
(40, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
(41, 'fbi', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(42, 'fbi', 1, 'officer', 'Officier', 40, '{}', '{}'),
(43, 'fbi', 2, 'sergeant', 'Colonel', 60, '{}', '{}'),
(44, 'fbi', 3, 'lieutenant', 'Capitaine', 85, '{}', '{}'),
(45, 'fbi', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(46, 'prisoner', 0, 'wärter', 'Wärter', 10, '{}', '{}'),
(47, 'mina', 0, 'prakti', 'Praktikant', 100, '{}', '{}'),
(48, 'vagos', 0, 'recruit', 'Runner', 2000, '{}', '{}'),
(49, 'vagos', 1, 'officer', 'Member', 2300, '{}', '{}'),
(50, 'vagos', 2, 'sergeant', 'Executer', 2500, '{}', '{}'),
(51, 'vagos', 3, 'lieutenant', 'El Cabeza', 3500, '{}', '{}'),
(52, 'vagos', 4, 'boss', 'Patron', 3500, '{}', '{}'),
(53, 'unicorn', 0, 'recruit', 'Praktikant', 2000, '{}', '{}'),
(54, 'unicorn', 1, 'officer', 'Barkeeper', 2300, '{}', '{}'),
(55, 'unicorn', 2, 'sergeant', 'Tänzer/in', 2500, '{}', '{}'),
(56, 'unicorn', 3, 'lieutenant', 'Büro', 2800, '{}', '{}'),
(57, 'unicorn', 4, 'boss', 'Boss Bitch', 3500, '{}', '{}'),
(58, 'casino', 0, 'barman', 'Barman', 300, '{}', '{}'),
(59, 'casino', 1, 'secu', 'Sécurité', 300, '{}', '{}'),
(60, 'casino', 2, 'boss', 'Patron', 600, '{}', '{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boat', 'Boat License'),
('dmv', 'Traffic Laws'),
('drive', 'Driver\'s license'),
('drive_bike', 'Motorcycle licence'),
('drive_truck', 'Truck license'),
('weapon', 'License to carry a weapon'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mapbuilder`
--

CREATE TABLE `mapbuilder` (
  `id` int(11) NOT NULL,
  `objectHash` varchar(255) DEFAULT NULL,
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `heading` float DEFAULT NULL,
  `freeze` tinytext DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_darkchat_channels`
--

CREATE TABLE `npwd_darkchat_channels` (
  `id` int(11) NOT NULL,
  `channel_identifier` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_match_profiles`
--

CREATE TABLE `npwd_match_profiles` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) NOT NULL,
  `name` varchar(90) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(512) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `tags` varchar(255) NOT NULL DEFAULT '',
  `voiceMessage` varchar(512) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_messages_conversations`
--

CREATE TABLE `npwd_messages_conversations` (
  `id` int(11) NOT NULL,
  `conversation_list` varchar(225) NOT NULL,
  `label` varchar(60) DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_message_id` int(11) DEFAULT NULL,
  `is_group_chat` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_twitter_profiles`
--

CREATE TABLE `npwd_twitter_profiles` (
  `id` int(11) NOT NULL,
  `profile_name` varchar(90) NOT NULL,
  `identifier` varchar(48) NOT NULL,
  `avatar_url` varchar(255) DEFAULT 'https://i.file.glass/QrEvq.png',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `garage` varchar(200) DEFAULT 'Würfelpark Garage',
  `garage_id` varchar(32) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `job`, `stored`, `garage`, `garage_id`) VALUES
('steam:110000112ce923f', 'AVH463', '{\"plate\":\"AVH463\",\"model\":-808831384}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:1100001166f2d38', 'BCN 277', '{\"modAerials\":-1,\"extras\":[],\"tyres\":[false,false,false,false,false,false,false],\"modOrnaments\":-1,\"modHood\":0,\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"modWindows\":-1,\"modRightFender\":-1,\"modBrakes\":2,\"modArchCover\":-1,\"modTrimB\":-1,\"modGrille\":-1,\"modRearBumper\":4,\"doors\":[false,false,false,false,false,false],\"modPlateHolder\":-1,\"modSmokeEnabled\":1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[1,1,1,1],\"health\":998,\"modTurbo\":1,\"modArmor\":-1,\"dirtLevel\":5.83754014968872,\"modTrunk\":-1,\"windows\":[1,1,1,false,false,1,1,false,false,false,false,false,false],\"modAirFilter\":-1,\"pearlescentColor\":27,\"modTank\":-1,\"modEngine\":3,\"modHorns\":-1,\"modFrame\":-1,\"modSuspension\":4,\"modLivery\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"model\":-998177792,\"modAPlate\":-1,\"modExhaust\":3,\"modVanityPlate\":-1,\"modSpoilers\":3,\"plate\":\"BCN 277\",\"engineHealth\":1000.0,\"modTransmission\":2,\"fuelLevel\":6.36976814270019,\"windowTint\":1,\"color2\":134,\"modFender\":-1,\"modSeats\":-1,\"modStruts\":-1,\"modXenon\":1,\"modBackWheels\":-1,\"wheels\":0,\"plateIndex\":1,\"modHydrolic\":-1,\"modFrontWheels\":22,\"color1\":134,\"bodyHealth\":998.25,\"modFrontBumper\":1,\"neonColor\":[0,0,255],\"modDashboard\":-1,\"modDial\":-1,\"wheelColor\":111,\"modRoof\":-1,\"modSteeringWheel\":-1}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:11000013d79d68d', 'BTW 521', '{\"modEngine\":3,\"modFrontWheels\":7,\"modSuspension\":2,\"modXenon\":1,\"modSmokeEnabled\":1,\"model\":-1848994066,\"modTrunk\":-1,\"modSeats\":-1,\"windowTint\":-1,\"modHorns\":-1,\"fuelLevel\":64.97260284423828,\"wheels\":0,\"modFrontBumper\":2,\"color2\":136,\"modFrame\":-1,\"modVanityPlate\":-1,\"windows\":[1,1,1,false,false,1,1,false,false,false,false,false,false],\"plateIndex\":1,\"modArmor\":4,\"modSideSkirt\":3,\"modHydrolic\":-1,\"pearlescentColor\":112,\"modRightFender\":-1,\"modTank\":-1,\"modBrakes\":2,\"modAPlate\":-1,\"modAerials\":-1,\"modGrille\":-1,\"modDial\":-1,\"plate\":\"BTW 521\",\"modStruts\":-1,\"modPlateHolder\":-1,\"modHood\":-1,\"engineHealth\":1000.0,\"modTrimA\":-1,\"doors\":[false,false,false,false,false,false],\"extras\":[],\"modArchCover\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"wheelColor\":0,\"modAirFilter\":-1,\"modTurbo\":1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"modSpoilers\":-1,\"modDoorSpeaker\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255],\"bodyHealth\":995.45556640625,\"modDashboard\":-1,\"modRearBumper\":0,\"modBackWheels\":-1,\"modFender\":-1,\"color1\":136,\"modTransmission\":-1,\"dirtLevel\":0.03520703688263,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"health\":995,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false]}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'DAL829', '{\"plate\":\"DAL829\",\"model\":-1903012613}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'GWS688', '{\"model\":-1372848492,\"plate\":\"GWS688\"}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:11000013d79d68d', 'HYI 876', '{\"modRoof\":0,\"wheelColor\":136,\"modArchCover\":-1,\"modEngine\":3,\"modRightFender\":-1,\"modFender\":-1,\"dirtLevel\":0.03880087658762,\"modTrimA\":-1,\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modStruts\":-1,\"modFrame\":-1,\"wheels\":0,\"color1\":136,\"modEngineBlock\":-1,\"modLivery\":-1,\"modHydrolic\":-1,\"modBrakes\":2,\"plate\":\"HYI 876\",\"pearlescentColor\":3,\"modTrunk\":-1,\"modFrontWheels\":22,\"modDashboard\":-1,\"modDial\":-1,\"color2\":134,\"modRearBumper\":1,\"modSuspension\":-1,\"modSideSkirt\":0,\"modSpoilers\":-1,\"modTrimB\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"health\":1000,\"modGrille\":-1,\"modVanityPlate\":-1,\"windowTint\":1,\"modFrontBumper\":0,\"modAerials\":-1,\"modTurbo\":1,\"modExhaust\":1,\"modTank\":-1,\"extras\":[],\"neonColor\":[255,161,211],\"modDoorSpeaker\":-1,\"plateIndex\":0,\"modXenon\":1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"modShifterLeavers\":-1,\"model\":1663218586,\"modAPlate\":-1,\"modTransmission\":2,\"modPlateHolder\":-1,\"modHood\":0}', 'car', 'unicorn', 1, 'Würfelpark Garage', 'A'),
('steam:11000013d79d68d', 'LGD 122', '{\"modRoof\":-1,\"wheelColor\":136,\"modArchCover\":-1,\"modEngine\":3,\"modRightFender\":-1,\"modFender\":-1,\"dirtLevel\":0.04961737245321,\"modTrimA\":-1,\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modStruts\":-1,\"modFrame\":-1,\"wheels\":0,\"color1\":136,\"modEngineBlock\":-1,\"modLivery\":-1,\"modHydrolic\":-1,\"modBrakes\":2,\"plate\":\"LGD 122\",\"pearlescentColor\":136,\"modTrunk\":-1,\"modFrontWheels\":23,\"modDashboard\":-1,\"modDial\":-1,\"color2\":136,\"modRearBumper\":0,\"modSuspension\":3,\"modSideSkirt\":0,\"modSpoilers\":1,\"modTrimB\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"health\":1000,\"modGrille\":-1,\"modVanityPlate\":-1,\"windowTint\":1,\"modFrontBumper\":2,\"modAerials\":-1,\"modTurbo\":1,\"modExhaust\":1,\"modTank\":-1,\"extras\":[],\"neonColor\":[255,161,211],\"modDoorSpeaker\":-1,\"plateIndex\":0,\"modXenon\":1,\"modSeats\":-1,\"tyreSmokeColor\":[255,161,211],\"modArmor\":-1,\"modShifterLeavers\":-1,\"model\":1922255844,\"modAPlate\":-1,\"modTransmission\":2,\"modPlateHolder\":-1,\"modHood\":0}', 'car', 'unicorn', 1, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'MZG750', '{\"model\":1663218586,\"plate\":\"MZG750\"}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'QAG096', '{\"model\":-114291515,\"plate\":\"QAG096\"}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'QOW839', '{\"model\":-1903012613,\"plate\":\"QOW839\"}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'QXT782', '{\"plate\":\"QXT782\",\"model\":80636076}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:11000013d79d68d', 'VTU 050', '{\"plate\":\"VTU 050\",\"model\":\"adder\"}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'WCW146', '{\"model\":86520421,\"plate\":\"WCW146\"}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'WOE972', '{\"model\":-1403128555,\"plate\":\"WOE972\"}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'YOO348', '{\"model\":-808831384,\"plate\":\"YOO348\"}', 'car', NULL, 0, 'Würfelpark Garage', 'A'),
('steam:110000112ce923f', 'ZAN123', '{\"plate\":\"ZAN123\",\"model\":1349725314}', 'car', NULL, 0, 'Würfelpark Garage', 'A');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `owned_vehicles_headlights`
--

CREATE TABLE `owned_vehicles_headlights` (
  `id` int(11) NOT NULL,
  `plate` text NOT NULL,
  `color` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `owned_vehicles_headlights`
--

INSERT INTO `owned_vehicles_headlights` (`id`, `plate`, `color`) VALUES
(1, 'BCN277', 12),
(2, 'BTW521', 9),
(3, 'LGD122', 9),
(4, 'HYI876', 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_business`
--

CREATE TABLE `phone_business` (
  `job` varchar(50) NOT NULL,
  `motd` varchar(255) NOT NULL,
  `motdchanged` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_business`
--

INSERT INTO `phone_business` (`job`, `motd`, `motdchanged`) VALUES
('LSPD', 'Test', 'steam:11000013d79d68d');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `time` varchar(50) NOT NULL,
  `accepts` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `receiver`, `num`, `time`, `accepts`) VALUES
(56, '126-6694', '126', '05/12/23 11:37', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_contacts`
--

INSERT INTO `phone_contacts` (`identifier`, `name`, `number`) VALUES
('steam:11000013d79d68d', 'test', '126-6694');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_information`
--

CREATE TABLE `phone_information` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `wallpaper` varchar(255) NOT NULL DEFAULT 'https://cdn.discordapp.com/attachments/717040110641741894/802176415269257236/bright.png',
  `darkmode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_information`
--

INSERT INTO `phone_information` (`id`, `identifier`, `wallpaper`, `darkmode`) VALUES
(19, 'steam:11000013d79d68d', 'https://cdn.discordapp.com/attachments/717040110641741894/788435064475353098/wallpaper.png', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `sender`, `receiver`, `message`, `date`, `isRead`) VALUES
(7509, '126', '126-6694', 'test', '2005-07-23 17:28:00', 0),
(7510, '126', '126-6694', 'test', '2005-07-23 17:28:00', 0),
(7511, '126', '126', 'test', '2005-07-23 17:28:00', 0),
(7515, '126', 'yourambula', 'Unconscious person', '2005-08-23 07:17:00', 0),
(7514, '126', 'yourambula', 'Unconscious person', '2005-07-23 17:44:00', 0),
(7516, '126', '126-6694', 'Hallo', '2005-12-23 10:37:00', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_twitter_accounts`
--

CREATE TABLE `phone_twitter_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '0',
  `avatar` varchar(2555) NOT NULL DEFAULT 'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_twitter_accounts`
--

INSERT INTO `phone_twitter_accounts` (`id`, `identifier`, `username`, `userid`, `avatar`) VALUES
(15, 'steam:11000013d79d68d', 'Blacksnakes', '@blacksnakes', 'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_twitter_likes`
--

CREATE TABLE `phone_twitter_likes` (
  `identifier` varchar(50) DEFAULT NULL,
  `liked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_twitter_likes`
--

INSERT INTO `phone_twitter_likes` (`identifier`, `liked`) VALUES
('steam:11000013d79d68d', 27);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_twitter_messages`
--

CREATE TABLE `phone_twitter_messages` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '0',
  `avatar` varchar(2555) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `message` varchar(50) NOT NULL DEFAULT '0',
  `imageurl` varchar(266) NOT NULL DEFAULT '0',
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_twitter_messages`
--

INSERT INTO `phone_twitter_messages` (`id`, `identifier`, `username`, `userid`, `avatar`, `date`, `message`, `imageurl`, `likes`) VALUES
(27, 'steam:11000013d79d68d', 'Blacksnakes', '@blacksnakes', 'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png', '05/07/23 19:24', 'test', '0', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_yp`
--

CREATE TABLE `phone_yp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `advert` varchar(500) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `player_contacts`
--

CREATE TABLE `player_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  `display` varchar(50) DEFAULT NULL,
  `note` text NOT NULL,
  `pp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `player_gallery`
--

CREATE TABLE `player_gallery` (
  `id` int(11) NOT NULL,
  `identifier` text NOT NULL,
  `resim` text NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `player_mails`
--

CREATE TABLE `player_mails` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `player_notes`
--

CREATE TABLE `player_notes` (
  `id` int(11) NOT NULL,
  `identifier` text NOT NULL,
  `baslik` text NOT NULL,
  `aciklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rc_vehicleshop`
--

CREATE TABLE `rc_vehicleshop` (
  `id` int(11) NOT NULL,
  `car` varchar(250) NOT NULL,
  `genre` varchar(250) NOT NULL,
  `label` varchar(250) NOT NULL,
  `price` int(100) NOT NULL,
  `img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `rc_vehicleshop`
--

INSERT INTO `rc_vehicleshop` (`id`, `car`, `genre`, `label`, `price`, `img`) VALUES
(1, 'adder', 'car', 'Adder', 500000, 'https://i.imgur.com/azOor2s.png'),
(2, 'mule', 'truck', 'Mule', 55000, 'https://wiki.rage.mp/images/e/e7/Mule.png'),
(3, 'bati', 'bike', 'Bati', 10000, 'https://i.imgur.com/hXJJL7c.png');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `skill`
--

CREATE TABLE `skill` (
  `identifier` varchar(255) NOT NULL,
  `gym` varchar(255) NOT NULL,
  `gymstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `skill`
--

INSERT INTO `skill` (`identifier`, `gym`, `gymstatus`) VALUES
('steam:11000013d79d68d', '-9', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stl_bank_accounts`
--

CREATE TABLE `stl_bank_accounts` (
  `id` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `members` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `stl_bank_accounts`
--

INSERT INTO `stl_bank_accounts` (`id`, `owner`, `type`, `balance`, `members`, `password`) VALUES
(1, 'steam:1100001166f2d38', 1, 0, '[{\"identifier\":\"steam:11000013d79d68d\",\"name\":\"Julia\"}]', NULL),
(2, 'steam:1100001166f2d38', 0, 480180874, NULL, 'Blacksnakes'),
(3, 'steam:11000013d79d68d', 0, 0, NULL, 'julia1234');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stl_bank_transfers`
--

CREATE TABLE `stl_bank_transfers` (
  `id` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `action` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `service_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `stl_bank_transfers`
--

INSERT INTO `stl_bank_transfers` (`id`, `owner`, `action`, `amount`, `date`, `service_id`, `account_id`) VALUES
(1, 'steam:1100001166f2d38', 1, 490170874, '2023-05-04 23:30:02', 1, 2),
(2, 'steam:1100001166f2d38', 0, 10000000, '2023-05-05 16:18:08', 1, 2),
(3, 'steam:11000013d79d68d', 0, 10000, '2023-05-08 06:21:33', 1, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tim_gangwar`
--

CREATE TABLE `tim_gangwar` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `robbing` varchar(255) NOT NULL,
  `attacker` varchar(255) NOT NULL,
  `zone_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tinder_accounts`
--

CREATE TABLE `tinder_accounts` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `pp` text NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(50) NOT NULL,
  `targetGender` varchar(50) NOT NULL DEFAULT '0',
  `hobbies` varchar(50) NOT NULL DEFAULT '0',
  `age` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tinder_likes`
--

CREATE TABLE `tinder_likes` (
  `id` int(11) NOT NULL,
  `phone` varchar(1024) NOT NULL,
  `likeds` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tinder_messages`
--

CREATE TABLE `tinder_messages` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `messages` varchar(1024) DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `trunk_inventory`
--

INSERT INTO `trunk_inventory` (`id`, `plate`, `data`, `owned`) VALUES
(1, '20FJG974', '{\"coffre\":[]}', 0),
(2, 'BCN 277 ', '{\"coffre\":[]}', 0),
(3, '41SJM025', '{}', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tweets`
--

CREATE TABLE `tweets` (
  `handle` longtext NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `twitter_account`
--

CREATE TABLE `twitter_account` (
  `id` varchar(90) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `twitter_hashtags`
--

CREATE TABLE `twitter_hashtags` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `created` varchar(50) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `twitter_mentions`
--

CREATE TABLE `twitter_mentions` (
  `id` int(11) NOT NULL,
  `id_tweet` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mentioned` text NOT NULL,
  `created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(5) NOT NULL,
  `username` varchar(80) NOT NULL,
  `message` longtext NOT NULL,
  `hashtags` varchar(50) NOT NULL,
  `mentions` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `likes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT '',
  `job` varchar(50) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `height` varchar(5) DEFAULT '',
  `phone_number` int(64) DEFAULT NULL,
  `last_property` varchar(255) DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `hdjail_data` longtext NOT NULL DEFAULT '{"cell":0,"chest":[],"jailtime":0,"items":[],"clothes":[],"job":0,"breaks":0,"soli":0,"jobo":"nil","grade":0}',
  `apps` text DEFAULT NULL,
  `widget` text DEFAULT NULL,
  `bt` text DEFAULT NULL,
  `charinfo` text DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  `cryptocurrency` longtext DEFAULT NULL,
  `cryptocurrencytransfers` text DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `firstname` varchar(50) DEFAULT '',
  `lastname` varchar(50) DEFAULT '',
  `dateofbirth` varchar(25) DEFAULT '',
  `sex` varchar(10) DEFAULT '',
  `tattoos` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `is_dead`, `height`, `phone_number`, `last_property`, `status`, `jail`, `hdjail_data`, `apps`, `widget`, `bt`, `charinfo`, `metadata`, `cryptocurrency`, `cryptocurrencytransfers`, `skin`, `firstname`, `lastname`, `dateofbirth`, `sex`, `tattoos`) VALUES
('steam:1100001166f2d38', 'license:5aea227697fb8091b9efaf418ee3bee6fcdd0014', 5000, 'Blacksnakes', 'unemployed', 0, '[]', '{\"x\":-1043.0,\"z\":21.4,\"y\":-2746.6}', 50000, 0, 'superadmin', 0, '187', 2147483647, NULL, NULL, 0, '{\"cell\":0,\"chest\":[],\"jailtime\":0,\"items\":[],\"clothes\":[],\"job\":0,\"breaks\":0,\"soli\":0,\"jobo\":\"nil\",\"grade\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"helmet_1\":-1,\"torso_2\":1,\"face_md_weight\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"jaw_1\":0,\"chin_2\":0,\"cheeks_1\":0,\"dad\":2,\"pants_1\":28,\"eye_color\":26,\"glasses_2\":4,\"chin_3\":0,\"chain_1\":0,\"ears_2\":-1,\"bproof_1\":0,\"hair_color_2\":0,\"age_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"watches_2\":-1,\"makeup_2\":0,\"bodyb_1\":0,\"blush_2\":0,\"nose_4\":0,\"neck_thickness\":0,\"lipstick_4\":0,\"chin_1\":0,\"hair_2\":0,\"sex\":0,\"cheeks_2\":0,\"eyebrows_2\":10,\"eyebrows_5\":0,\"sun_2\":0,\"nose_2\":0,\"beard_3\":61,\"bags_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_2\":0,\"lip_thickness\":0,\"blemishes_1\":0,\"hair_color_1\":0,\"complexion_1\":0,\"face\":44,\"shoes_2\":9,\"eyebrows_1\":2,\"moles_2\":0,\"tshirt_2\":0,\"skin\":4,\"arms_2\":0,\"hair_1\":21,\"nose_1\":0,\"beard_1\":11,\"blush_3\":\"2\",\"bracelets_1\":-1,\"mask_2\":0,\"chest_1\":0,\"eyebrows_6\":0,\"lipstick_3\":32,\"age_1\":0,\"sun_1\":0,\"helmet_2\":-1,\"jaw_2\":0,\"bracelets_2\":0,\"lipstick_2\":0,\"bags_1\":0,\"bodyb_2\":0,\"complexion_2\":0,\"nose_3\":0,\"skin_md_weight\":50,\"decals_2\":0,\"mask_1\":0,\"glasses_1\":8,\"nose_6\":0,\"pants_2\":0,\"chest_2\":0,\"decals_1\":0,\"cheeks_3\":0,\"eyebrows_3\":0,\"arms\":1,\"chin_4\":0,\"torso_1\":308,\"beard_4\":0,\"ears_1\":-1,\"beard_2\":10,\"blush_1\":0,\"watches_1\":-1,\"nose_5\":0,\"shoes_1\":57,\"makeup_4\":0,\"chain_2\":0,\"tshirt_1\":15,\"moles_1\":0,\"eye_squint\":0}', 'Manuel', 'Savalas', '12.08.2001', 'm', NULL),
('steam:110000112ce923f', 'license:b49791832440a6ac502561c2f46642073cb1074f', 997500, '⭕⃤ Asaya', 'unemployed', 0, '[{\"components\":[\"clip_default\"],\"ammo\":1,\"label\":\"Kampfpistole\",\"name\":\"WEAPON_COMBATPISTOL\"}]', '{\"y\":-1276.2,\"x\":72.5,\"z\":28.5}', 3011800, 0, 'superadmin', 0, '187', NULL, NULL, NULL, 0, '{\"cell\":0,\"chest\":[],\"jailtime\":0,\"items\":[],\"clothes\":[],\"job\":0,\"breaks\":0,\"soli\":0,\"jobo\":\"nil\",\"grade\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"nose_3\":0,\"shoes_2\":0,\"chain_1\":79,\"chin_1\":3,\"ears_2\":-1,\"beard_4\":0,\"beard_2\":10,\"blemishes_1\":11,\"eyebrows_6\":1,\"hair_color_2\":28,\"bproof_2\":0,\"sun_1\":61,\"neck_thickness\":-10,\"blush_1\":61,\"ears_1\":-1,\"jaw_1\":-1,\"glasses_1\":5,\"nose_1\":0,\"chin_2\":0,\"arms\":5,\"skin\":4,\"lipstick_3\":32,\"bags_1\":0,\"eyebrows_5\":-6,\"eyebrows_1\":4,\"skin_md_weight\":68,\"eyebrows_2\":10,\"face_md_weight\":8,\"shoes_1\":5,\"torso_2\":2,\"eye_squint\":-2,\"dad\":8,\"tshirt_1\":15,\"cheeks_3\":0,\"makeup_3\":0,\"face\":0,\"pants_2\":0,\"eyebrows_3\":0,\"bags_2\":0,\"helmet_1\":-1,\"watches_2\":-1,\"blemishes_2\":10,\"beard_1\":11,\"decals_1\":0,\"makeup_4\":0,\"chain_2\":0,\"bproof_1\":0,\"sun_2\":0,\"lipstick_2\":0,\"cheeks_2\":0,\"mask_1\":0,\"eye_color\":18,\"hair_1\":57,\"mask_2\":0,\"blush_3\":0,\"chest_2\":0,\"lipstick_4\":0,\"bracelets_1\":-1,\"pants_1\":26,\"eyebrows_4\":0,\"bracelets_2\":0,\"jaw_2\":-5,\"nose_6\":0,\"makeup_2\":0,\"nose_2\":0,\"chin_4\":-1,\"moles_2\":0,\"hair_2\":0,\"chin_3\":0,\"decals_2\":0,\"age_2\":10,\"arms_2\":0,\"cheeks_1\":0,\"bodyb_1\":0,\"moles_1\":0,\"makeup_1\":0,\"nose_5\":0,\"nose_4\":0,\"bodyb_2\":0,\"torso_1\":5,\"hair_color_1\":0,\"tshirt_2\":0,\"helmet_2\":-1,\"watches_1\":-1,\"blush_2\":0,\"beard_3\":61,\"complexion_1\":0,\"complexion_2\":10,\"glasses_2\":4,\"lipstick_1\":0,\"sex\":0,\"chest_3\":0,\"lip_thickness\":7,\"chest_1\":0}', 'Nikolaj', 'Romanov', '30.07.1996', 'm', NULL),
('steam:11000013d79d68d', 'license:7ce132c1bc9d7a5d7da81052bca6f797816f5189', 5000, 'Julia', 'unemployed', 0, '[]', '{\"z\":26.4,\"y\":-1103.1,\"x\":-35.4}', 50400, 0, 'superadmin', 0, '187', NULL, NULL, NULL, 0, '{\"cell\":0,\"chest\":[],\"jailtime\":0,\"items\":[],\"clothes\":[],\"job\":0,\"breaks\":0,\"soli\":0,\"jobo\":\"nil\",\"grade\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"watches_1\":-1,\"complexion_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_2\":0,\"hair_color_2\":0,\"ears_2\":0,\"lipstick_3\":0,\"blush_1\":0,\"chest_3\":0,\"helmet_2\":0,\"face_similarity\":0,\"bodyb_1\":0,\"hair_color_1\":0,\"bodyb_2\":0,\"bproof_2\":0,\"age_1\":0,\"beard_4\":0,\"hair_2\":0,\"eyebrows_2\":0,\"sex\":0,\"chest_2\":0,\"sun_1\":0,\"arms\":0,\"decals_2\":0,\"pants_1\":0,\"chain_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"skin\":0,\"bags_2\":0,\"eye_color\":0,\"torso_1\":0,\"bracelets_2\":0,\"beard_1\":0,\"pants_2\":0,\"ears_1\":-1,\"tshirt_2\":0,\"helmet_1\":-1,\"arms_2\":0,\"face_complexion\":0,\"chest_1\":0,\"complexion_2\":0,\"sun_2\":0,\"lipstick_1\":0,\"shoes_1\":0,\"decals_1\":0,\"blush_3\":0,\"moles_1\":0,\"bracelets_1\":-1,\"glasses_2\":0,\"beard_2\":0,\"glasses_1\":0,\"tshirt_1\":0,\"chain_2\":0,\"eyebrows_4\":0,\"blush_2\":0,\"age_2\":0,\"mask_2\":0,\"hair_1\":0,\"makeup_1\":0,\"lipstick_2\":0,\"face_dad\":0,\"bproof_1\":0,\"mask_1\":0,\"face\":0,\"makeup_3\":0,\"bags_1\":0,\"makeup_4\":0,\"moles_2\":0,\"watches_2\":0,\"blemishes_2\":0,\"torso_2\":0,\"face_mom\":0,\"beard_3\":0,\"eyebrows_1\":0}', 'Mina', 'Savalas', '12.08.2001', 'f', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(1, 'steam:11000013d79d68d', 'black_money', 0),
(2, 'steam:1100001166f2d38', 'black_money', 0),
(3, 'steam:110000112ce923f', 'black_money', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_clothes`
--

CREATE TABLE `user_clothes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `clothesData` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:11000013d79d68d', 'iron', 0),
(2, 'steam:11000013d79d68d', 'packaged_chicken', 0),
(3, 'steam:11000013d79d68d', 'copper', 0),
(4, 'steam:11000013d79d68d', 'fish', 0),
(5, 'steam:11000013d79d68d', 'cutted_wood', 0),
(6, 'steam:11000013d79d68d', 'wood', 0),
(7, 'steam:11000013d79d68d', 'wool', 0),
(8, 'steam:11000013d79d68d', 'diamond', 0),
(9, 'steam:11000013d79d68d', 'alive_chicken', 0),
(10, 'steam:11000013d79d68d', 'medikit', 5),
(11, 'steam:11000013d79d68d', 'washed_stone', 0),
(12, 'steam:11000013d79d68d', 'blowpipe', 0),
(13, 'steam:11000013d79d68d', 'clothe', 0),
(14, 'steam:11000013d79d68d', 'stone', 0),
(15, 'steam:11000013d79d68d', 'carokit', 0),
(16, 'steam:11000013d79d68d', 'gazbottle', 0),
(17, 'steam:11000013d79d68d', 'bandage', 20),
(18, 'steam:11000013d79d68d', 'bread', 0),
(19, 'steam:11000013d79d68d', 'fabric', 0),
(20, 'steam:11000013d79d68d', 'essence', 0),
(21, 'steam:11000013d79d68d', 'slaughtered_chicken', 0),
(22, 'steam:11000013d79d68d', 'fixtool', 0),
(23, 'steam:11000013d79d68d', 'petrol', 0),
(24, 'steam:11000013d79d68d', 'water', 0),
(25, 'steam:11000013d79d68d', 'marijuana', 0),
(26, 'steam:11000013d79d68d', 'gold', 0),
(27, 'steam:11000013d79d68d', 'carotool', 0),
(28, 'steam:11000013d79d68d', 'petrol_raffin', 0),
(29, 'steam:11000013d79d68d', 'fixkit', 0),
(30, 'steam:11000013d79d68d', 'cannabis', 0),
(31, 'steam:11000013d79d68d', 'zarowki', 0),
(32, 'steam:11000013d79d68d', 'packaged_plank', 0),
(33, 'steam:1100001166f2d38', 'iron', 0),
(34, 'steam:1100001166f2d38', 'packaged_chicken', 0),
(35, 'steam:1100001166f2d38', 'copper', 0),
(36, 'steam:1100001166f2d38', 'fish', 0),
(37, 'steam:1100001166f2d38', 'cutted_wood', 0),
(38, 'steam:1100001166f2d38', 'wood', 0),
(39, 'steam:1100001166f2d38', 'wool', 0),
(40, 'steam:1100001166f2d38', 'diamond', 0),
(41, 'steam:1100001166f2d38', 'alive_chicken', 0),
(42, 'steam:1100001166f2d38', 'medikit', 0),
(43, 'steam:1100001166f2d38', 'washed_stone', 0),
(44, 'steam:1100001166f2d38', 'blowpipe', 0),
(45, 'steam:1100001166f2d38', 'clothe', 0),
(46, 'steam:1100001166f2d38', 'stone', 0),
(47, 'steam:1100001166f2d38', 'carokit', 0),
(48, 'steam:1100001166f2d38', 'gazbottle', 0),
(49, 'steam:1100001166f2d38', 'bandage', 0),
(50, 'steam:1100001166f2d38', 'fabric', 0),
(51, 'steam:1100001166f2d38', 'bread', 0),
(52, 'steam:1100001166f2d38', 'essence', 0),
(53, 'steam:1100001166f2d38', 'slaughtered_chicken', 0),
(54, 'steam:1100001166f2d38', 'fixtool', 0),
(55, 'steam:1100001166f2d38', 'petrol', 0),
(56, 'steam:1100001166f2d38', 'water', 0),
(57, 'steam:1100001166f2d38', 'marijuana', 0),
(58, 'steam:1100001166f2d38', 'gold', 0),
(59, 'steam:1100001166f2d38', 'carotool', 0),
(60, 'steam:1100001166f2d38', 'petrol_raffin', 0),
(61, 'steam:1100001166f2d38', 'fixkit', 0),
(62, 'steam:1100001166f2d38', 'cannabis', 0),
(63, 'steam:1100001166f2d38', 'zarowki', 0),
(64, 'steam:1100001166f2d38', 'packaged_plank', 0),
(65, 'steam:11000013d79d68d', 'HD_cleaner', 0),
(66, 'steam:11000013d79d68d', 'HD_grease', 0),
(67, 'steam:11000013d79d68d', 'HD_file', 0),
(68, 'steam:11000013d79d68d', 'HD_spoon', 0),
(69, 'steam:11000013d79d68d', 'HD_booze', 0),
(70, 'steam:11000013d79d68d', 'HD_bLadle', 0),
(71, 'steam:11000013d79d68d', 'HD_iHeat', 0),
(72, 'steam:11000013d79d68d', 'HD_bottle', 0),
(73, 'steam:11000013d79d68d', 'HD_ladle', 0),
(74, 'steam:11000013d79d68d', 'HD_fPacket', 0),
(75, 'steam:11000013d79d68d', 'HD_acid', 0),
(76, 'steam:11000013d79d68d', 'HD_jspoon', 0),
(77, 'steam:11000013d79d68d', 'HD_miniH', 0),
(78, 'steam:11000013d79d68d', 'HD_wCloth', 0),
(79, 'steam:11000013d79d68d', 'HD_rock', 0),
(80, 'steam:11000013d79d68d', 'HD_sMetal', 0),
(81, 'steam:11000013d79d68d', 'HD_dLiquid', 0),
(82, 'steam:11000013d79d68d', 'HD_pPunch', 0),
(83, 'steam:11000013d79d68d', 'HD_bCloth', 0),
(84, 'steam:11000013d79d68d', 'HD_sChange', 0),
(85, 'steam:11000013d79d68d', 'HD_plug', 0),
(86, 'steam:11000013d79d68d', 'HD_metal', 0),
(87, 'steam:11000013d79d68d', 'HD_cloth', 0),
(88, 'steam:11000013d79d68d', 'HD_Shank', 0),
(89, 'steam:1100001166f2d38', 'HD_grease', 0),
(90, 'steam:1100001166f2d38', 'HD_cleaner', 0),
(91, 'steam:1100001166f2d38', 'HD_spoon', 0),
(92, 'steam:1100001166f2d38', 'HD_file', 0),
(93, 'steam:1100001166f2d38', 'HD_booze', 0),
(94, 'steam:1100001166f2d38', 'HD_bLadle', 0),
(95, 'steam:1100001166f2d38', 'HD_iHeat', 0),
(96, 'steam:1100001166f2d38', 'HD_bottle', 0),
(97, 'steam:1100001166f2d38', 'HD_ladle', 0),
(98, 'steam:1100001166f2d38', 'HD_fPacket', 0),
(99, 'steam:1100001166f2d38', 'HD_acid', 0),
(100, 'steam:1100001166f2d38', 'HD_jspoon', 0),
(101, 'steam:1100001166f2d38', 'HD_miniH', 0),
(102, 'steam:1100001166f2d38', 'HD_wCloth', 0),
(103, 'steam:1100001166f2d38', 'HD_rock', 0),
(104, 'steam:1100001166f2d38', 'HD_dLiquid', 0),
(105, 'steam:1100001166f2d38', 'HD_sMetal', 0),
(106, 'steam:1100001166f2d38', 'HD_pPunch', 0),
(107, 'steam:1100001166f2d38', 'HD_bCloth', 0),
(108, 'steam:1100001166f2d38', 'HD_sChange', 0),
(109, 'steam:1100001166f2d38', 'HD_plug', 0),
(110, 'steam:1100001166f2d38', 'HD_metal', 0),
(111, 'steam:1100001166f2d38', 'HD_cloth', 0),
(112, 'steam:1100001166f2d38', 'HD_Shank', 0),
(113, 'steam:1100001166f2d38', 'handy', 1),
(114, 'steam:11000013d79d68d', 'handy', 0),
(115, 'steam:1100001166f2d38', 'phone', 0),
(116, 'steam:11000013d79d68d', 'phone', 0),
(117, 'steam:1100001166f2d38', 'kevlar', 0),
(118, 'steam:1100001166f2d38', 'aramidfasern', 2),
(119, 'steam:1100001166f2d38', 'bulletproof50', 0),
(120, 'steam:1100001166f2d38', 'bulletproof', 0),
(121, 'steam:1100001166f2d38', 'gebündelte_aramidfasern', 5),
(122, 'steam:11000013d79d68d', 'kevlar', 0),
(123, 'steam:11000013d79d68d', 'gebündelte_aramidfasern', 97),
(124, 'steam:11000013d79d68d', 'bulletproof', 0),
(125, 'steam:11000013d79d68d', 'bulletproof50', 0),
(126, 'steam:11000013d79d68d', 'aramidfasern', 0),
(127, 'steam:1100001166f2d38', 'gebuendeltearamidfasern', 0),
(128, 'steam:11000013d79d68d', 'gebuendeltearamidfasern', 0),
(129, 'steam:1100001166f2d38', 'classic_phone', 0),
(130, 'steam:1100001166f2d38', 'wet_black_phone', 0),
(131, 'steam:1100001166f2d38', 'green_phone', 0),
(132, 'steam:1100001166f2d38', 'wet_gold_phone', 0),
(133, 'steam:1100001166f2d38', 'purple_phone', 0),
(134, 'steam:1100001166f2d38', 'wet_blue_phone', 0),
(135, 'steam:1100001166f2d38', 'gold_phone', 0),
(136, 'steam:1100001166f2d38', 'white_phone', 0),
(137, 'steam:1100001166f2d38', 'phone_module', 0),
(138, 'steam:1100001166f2d38', 'greenlight_phone', 0),
(139, 'steam:1100001166f2d38', 'wet_red_phone', 0),
(140, 'steam:1100001166f2d38', 'phone_hack', 0),
(141, 'steam:1100001166f2d38', 'wet_pink_phone', 0),
(142, 'steam:1100001166f2d38', 'wet_green_phone', 0),
(143, 'steam:1100001166f2d38', 'wet_greenlight_phone', 0),
(144, 'steam:1100001166f2d38', 'wet_white_phone', 0),
(145, 'steam:1100001166f2d38', 'red_phone', 0),
(146, 'steam:1100001166f2d38', 'pink_phone', 0),
(147, 'steam:1100001166f2d38', 'wet_purple_phone', 0),
(148, 'steam:1100001166f2d38', 'blue_phone', 0),
(149, 'steam:1100001166f2d38', 'black_phone', 0),
(150, 'steam:1100001166f2d38', 'wet_classic_phone', 0),
(151, 'steam:11000013d79d68d', 'wet_white_phone', 0),
(152, 'steam:11000013d79d68d', 'greenlight_phone', 0),
(153, 'steam:11000013d79d68d', 'classic_phone', 0),
(154, 'steam:11000013d79d68d', 'wet_gold_phone', 0),
(155, 'steam:11000013d79d68d', 'phone_hack', 0),
(156, 'steam:11000013d79d68d', 'black_phone', 0),
(157, 'steam:11000013d79d68d', 'green_phone', 0),
(158, 'steam:11000013d79d68d', 'gold_phone', 0),
(159, 'steam:11000013d79d68d', 'wet_classic_phone', 0),
(160, 'steam:11000013d79d68d', 'white_phone', 0),
(161, 'steam:11000013d79d68d', 'wet_red_phone', 0),
(162, 'steam:11000013d79d68d', 'wet_pink_phone', 0),
(163, 'steam:11000013d79d68d', 'wet_black_phone', 0),
(164, 'steam:11000013d79d68d', 'wet_blue_phone', 0),
(165, 'steam:11000013d79d68d', 'wet_purple_phone', 0),
(166, 'steam:11000013d79d68d', 'wet_green_phone', 0),
(167, 'steam:11000013d79d68d', 'wet_greenlight_phone', 0),
(168, 'steam:11000013d79d68d', 'red_phone', 0),
(169, 'steam:11000013d79d68d', 'purple_phone', 0),
(170, 'steam:11000013d79d68d', 'pink_phone', 0),
(171, 'steam:11000013d79d68d', 'phone_module', 0),
(172, 'steam:11000013d79d68d', 'blue_phone', 0),
(173, 'steam:1100001166f2d38', 'methbrick', 0),
(174, 'steam:1100001166f2d38', 'coke1g', 0),
(175, 'steam:1100001166f2d38', 'drugbags', 0),
(176, 'steam:1100001166f2d38', 'cokebrick', 0),
(177, 'steam:1100001166f2d38', 'coke10g', 0),
(178, 'steam:1100001166f2d38', 'hackerDevice', 1),
(179, 'steam:1100001166f2d38', 'WeihnachtsCase', 0),
(180, 'steam:1100001166f2d38', 'weedbrick', 0),
(181, 'steam:1100001166f2d38', 'meth10g', 0),
(182, 'steam:1100001166f2d38', 'weed20g', 0),
(183, 'steam:1100001166f2d38', 'rolpaper', 0),
(184, 'steam:1100001166f2d38', 'drugItem', 0),
(185, 'steam:1100001166f2d38', 'hqscale', 0),
(186, 'steam:1100001166f2d38', 'meth1g', 0),
(187, 'steam:1100001166f2d38', 'joint2g', 0),
(188, 'steam:1100001166f2d38', 'weed4g', 0),
(189, 'steam:11000013d79d68d', 'methbrick', 0),
(190, 'steam:11000013d79d68d', 'coke1g', 0),
(191, 'steam:11000013d79d68d', 'drugbags', 0),
(192, 'steam:11000013d79d68d', 'coke10g', 0),
(193, 'steam:11000013d79d68d', 'cokebrick', 0),
(194, 'steam:11000013d79d68d', 'hackerDevice', 0),
(195, 'steam:11000013d79d68d', 'WeihnachtsCase', 1),
(196, 'steam:11000013d79d68d', 'weedbrick', 0),
(197, 'steam:11000013d79d68d', 'meth10g', 0),
(198, 'steam:11000013d79d68d', 'weed20g', 0),
(199, 'steam:11000013d79d68d', 'rolpaper', 0),
(200, 'steam:11000013d79d68d', 'drugItem', 0),
(201, 'steam:11000013d79d68d', 'hqscale', 0),
(202, 'steam:11000013d79d68d', 'meth1g', 0),
(203, 'steam:11000013d79d68d', 'joint2g', 0),
(204, 'steam:11000013d79d68d', 'weed4g', 0),
(205, 'steam:11000013d79d68d', 'case', 0),
(206, 'steam:1100001166f2d38', 'case', 2),
(207, 'steam:11000013d79d68d', 'sportlunch', 0),
(208, 'steam:11000013d79d68d', 'protein_shake', 0),
(209, 'steam:11000013d79d68d', 'gym_membership', 0),
(210, 'steam:11000013d79d68d', 'powerade', 0),
(211, 'steam:11000013d79d68d', 'firework', 0),
(212, 'steam:11000013d79d68d', 'weakit', 0),
(213, 'steam:11000013d79d68d', 'drill', 0),
(214, 'steam:11000013d79d68d', 'vehgps', 0),
(215, 'steam:11000013d79d68d', 'repairkit', 0),
(216, 'steam:11000013d79d68d', 'lockpick', 0),
(217, 'steam:11000013d79d68d', 'handcuffs', 0),
(218, 'steam:11000013d79d68d', 'vape', 0),
(219, 'steam:11000013d79d68d', 'firstaidkit', 0),
(220, 'steam:11000013d79d68d', 'boxbig', 0),
(221, 'steam:11000013d79d68d', 'defib', 0),
(222, 'steam:11000013d79d68d', 'oxygenmask', 0),
(223, 'steam:11000013d79d68d', 'handcuffkey', 0),
(224, 'steam:11000013d79d68d', 'darknet', 0),
(225, 'steam:11000013d79d68d', 'cleankit', 0),
(226, 'steam:11000013d79d68d', 'tirekit', 0),
(227, 'steam:11000013d79d68d', 'binoculars', 0),
(228, 'steam:11000013d79d68d', 'fbulletproof', 0),
(229, 'steam:110000112ce923f', 'meth1g', 0),
(230, 'steam:110000112ce923f', 'case', 0),
(231, 'steam:110000112ce923f', 'meth10g', 0),
(232, 'steam:110000112ce923f', 'HD_fPacket', 0),
(233, 'steam:110000112ce923f', 'fbulletproof', 0),
(234, 'steam:110000112ce923f', 'alive_chicken', 0),
(235, 'steam:110000112ce923f', 'HD_spoon', 0),
(236, 'steam:110000112ce923f', 'protein_shake', 0),
(237, 'steam:110000112ce923f', 'HD_wCloth', 0),
(238, 'steam:110000112ce923f', 'weakit', 0),
(239, 'steam:110000112ce923f', 'kevlar', 0),
(240, 'steam:110000112ce923f', 'water', 0),
(241, 'steam:110000112ce923f', 'HD_file', 0),
(242, 'steam:110000112ce923f', 'HD_miniH', 0),
(243, 'steam:110000112ce923f', 'repairkit', 0),
(244, 'steam:110000112ce923f', 'drugItem', 0),
(245, 'steam:110000112ce923f', 'vehgps', 0),
(246, 'steam:110000112ce923f', 'bulletproof50', 0),
(247, 'steam:110000112ce923f', 'weed4g', 0),
(248, 'steam:110000112ce923f', 'vape', 0),
(249, 'steam:110000112ce923f', 'fixtool', 0),
(250, 'steam:110000112ce923f', 'handcuffs', 0),
(251, 'steam:110000112ce923f', 'HD_plug', 0),
(252, 'steam:110000112ce923f', 'packaged_chicken', 0),
(253, 'steam:110000112ce923f', 'cokebrick', 0),
(254, 'steam:110000112ce923f', 'hackerDevice', 0),
(255, 'steam:110000112ce923f', 'zarowki', 0),
(256, 'steam:110000112ce923f', 'drugbags', 0),
(257, 'steam:110000112ce923f', 'firework', 0),
(258, 'steam:110000112ce923f', 'coke10g', 0),
(259, 'steam:110000112ce923f', 'carokit', 0),
(260, 'steam:110000112ce923f', 'wool', 0),
(261, 'steam:110000112ce923f', 'HD_iHeat', 0),
(262, 'steam:110000112ce923f', 'rolpaper', 0),
(263, 'steam:110000112ce923f', 'weedbrick', 0),
(264, 'steam:110000112ce923f', 'HD_Shank', 0),
(265, 'steam:110000112ce923f', 'bandage', 0),
(266, 'steam:110000112ce923f', 'weed20g', 0),
(267, 'steam:110000112ce923f', 'bread', 0),
(268, 'steam:110000112ce923f', 'essence', 0),
(269, 'steam:110000112ce923f', 'joint2g', 0),
(270, 'steam:110000112ce923f', 'gebuendeltearamidfasern', 0),
(271, 'steam:110000112ce923f', 'tirekit', 0),
(272, 'steam:110000112ce923f', 'stone', 0),
(273, 'steam:110000112ce923f', 'gazbottle', 0),
(274, 'steam:110000112ce923f', 'fixkit', 0),
(275, 'steam:110000112ce923f', 'sportlunch', 0),
(276, 'steam:110000112ce923f', 'slaughtered_chicken', 0),
(277, 'steam:110000112ce923f', 'wood', 0),
(278, 'steam:110000112ce923f', 'marijuana', 0),
(279, 'steam:110000112ce923f', 'aramidfasern', 0),
(280, 'steam:110000112ce923f', 'phone', 0),
(281, 'steam:110000112ce923f', 'fabric', 0),
(282, 'steam:110000112ce923f', 'cleankit', 0),
(283, 'steam:110000112ce923f', 'firstaidkit', 0),
(284, 'steam:110000112ce923f', 'HD_jspoon', 0),
(285, 'steam:110000112ce923f', 'packaged_plank', 0),
(286, 'steam:110000112ce923f', 'oxygenmask', 0),
(287, 'steam:110000112ce923f', 'copper', 0),
(288, 'steam:110000112ce923f', 'HD_dLiquid', 0),
(289, 'steam:110000112ce923f', 'coke1g', 0),
(290, 'steam:110000112ce923f', 'gym_membership', 0),
(291, 'steam:110000112ce923f', 'fish', 0),
(292, 'steam:110000112ce923f', 'HD_bCloth', 0),
(293, 'steam:110000112ce923f', 'methbrick', 0),
(294, 'steam:110000112ce923f', 'medikit', 0),
(295, 'steam:110000112ce923f', 'powerade', 0),
(296, 'steam:110000112ce923f', 'lockpick', 0),
(297, 'steam:110000112ce923f', 'iron', 0),
(298, 'steam:110000112ce923f', 'HD_bottle', 0),
(299, 'steam:110000112ce923f', 'blowpipe', 0),
(300, 'steam:110000112ce923f', 'HD_ladle', 0),
(301, 'steam:110000112ce923f', 'HD_sMetal', 0),
(302, 'steam:110000112ce923f', 'washed_stone', 0),
(303, 'steam:110000112ce923f', 'defib', 0),
(304, 'steam:110000112ce923f', 'cutted_wood', 0),
(305, 'steam:110000112ce923f', 'HD_sChange', 0),
(306, 'steam:110000112ce923f', 'HD_rock', 0),
(307, 'steam:110000112ce923f', 'HD_pPunch', 0),
(308, 'steam:110000112ce923f', 'darknet', 0),
(309, 'steam:110000112ce923f', 'bulletproof', 0),
(310, 'steam:110000112ce923f', 'petrol_raffin', 0),
(311, 'steam:110000112ce923f', 'carotool', 0),
(312, 'steam:110000112ce923f', 'cannabis', 0),
(313, 'steam:110000112ce923f', 'petrol', 0),
(314, 'steam:110000112ce923f', 'clothe', 0),
(315, 'steam:110000112ce923f', 'HD_bLadle', 0),
(316, 'steam:110000112ce923f', 'drill', 0),
(317, 'steam:110000112ce923f', 'binoculars', 0),
(318, 'steam:110000112ce923f', 'hqscale', 0),
(319, 'steam:110000112ce923f', 'HD_cloth', 0),
(320, 'steam:110000112ce923f', 'boxbig', 0),
(321, 'steam:110000112ce923f', 'HD_cleaner', 0),
(322, 'steam:110000112ce923f', 'HD_metal', 0),
(323, 'steam:110000112ce923f', 'diamond', 15),
(324, 'steam:110000112ce923f', 'HD_grease', 0),
(325, 'steam:110000112ce923f', 'HD_acid', 0),
(326, 'steam:110000112ce923f', 'gold', 0),
(327, 'steam:110000112ce923f', 'HD_booze', 0),
(328, 'steam:110000112ce923f', 'handcuffkey', 0),
(329, 'steam:110000112ce923f', 'weapon_precisionrifle', 0),
(330, 'steam:110000112ce923f', 'suppressor', 0),
(331, 'steam:110000112ce923f', 'grip', 0),
(332, 'steam:110000112ce923f', 'weapon_tacticalrifle', 0),
(333, 'steam:110000112ce923f', 'yusuf', 0),
(334, 'steam:110000112ce923f', 'weapon_combatmg_mk2', 0),
(335, 'steam:110000112ce923f', 'flashlight', 0),
(336, 'steam:110000112ce923f', 'coke', 0),
(337, 'steam:110000112ce923f', 'weapon_marksmanrifle_mk2', 0),
(338, 'steam:11000013d79d68d', 'weapon_precisionrifle', 0),
(339, 'steam:11000013d79d68d', 'suppressor', 0),
(340, 'steam:11000013d79d68d', 'grip', 0),
(341, 'steam:11000013d79d68d', 'weapon_tacticalrifle', 0),
(342, 'steam:11000013d79d68d', 'yusuf', 0),
(343, 'steam:11000013d79d68d', 'weapon_combatmg_mk2', 0),
(344, 'steam:11000013d79d68d', 'flashlight', 0),
(345, 'steam:11000013d79d68d', 'coke', 0),
(346, 'steam:11000013d79d68d', 'weapon_marksmanrifle_mk2', 0),
(347, 'steam:110000112ce923f', 'scratchcard', 0),
(348, 'steam:11000013d79d68d', 'scratchcard', 4),
(349, 'steam:11000013d79d68d', 'casinochips', 0),
(350, 'steam:11000013d79d68d', 'jagercerbere', 0),
(351, 'steam:11000013d79d68d', 'golem', 0),
(352, 'steam:11000013d79d68d', 'mojito', 0),
(353, 'steam:11000013d79d68d', 'menthe', 0),
(354, 'steam:11000013d79d68d', 'metreshooter', 0),
(355, 'steam:11000013d79d68d', 'bolchips', 0),
(356, 'steam:11000013d79d68d', 'jusfruit', 0),
(357, 'steam:11000013d79d68d', 'ice', 0),
(358, 'steam:11000013d79d68d', 'saucisson', 0),
(359, 'steam:11000013d79d68d', 'vodka', 0),
(360, 'steam:11000013d79d68d', 'rhumcoca', 0),
(361, 'steam:11000013d79d68d', 'bolnoixcajou', 0),
(362, 'steam:11000013d79d68d', 'rhumfruit', 0),
(363, 'steam:11000013d79d68d', 'martini', 0),
(364, 'steam:11000013d79d68d', 'goldnecklace', 0),
(365, 'steam:11000013d79d68d', 'goldwatch', 0),
(366, 'steam:11000013d79d68d', 'mixapero', 0),
(367, 'steam:11000013d79d68d', 'whiskycoca', 0),
(368, 'steam:11000013d79d68d', 'energy', 0),
(369, 'steam:11000013d79d68d', 'jagerbomb', 0),
(370, 'steam:11000013d79d68d', 'vodkafruit', 0),
(371, 'steam:11000013d79d68d', 'vodkaenergy', 0),
(372, 'steam:11000013d79d68d', 'tequila', 0),
(373, 'steam:11000013d79d68d', 'soda', 0),
(374, 'steam:11000013d79d68d', 'coffee', 0),
(375, 'steam:11000013d79d68d', 'jager', 0),
(376, 'steam:11000013d79d68d', 'rhum', 0),
(377, 'steam:11000013d79d68d', 'whisky', 0),
(378, 'steam:11000013d79d68d', 'icetea', 0),
(379, 'steam:11000013d79d68d', 'bolcacahuetes', 0),
(380, 'steam:11000013d79d68d', 'drpepper', 0),
(381, 'steam:11000013d79d68d', 'grapperaisin', 0),
(382, 'steam:11000013d79d68d', 'limonade', 0),
(383, 'steam:11000013d79d68d', 'bolpistache', 0),
(384, 'steam:11000013d79d68d', 'teqpaf', 0),
(385, 'steam:110000112ce923f', 'bolnoixcajou', 0),
(386, 'steam:110000112ce923f', 'goldwatch', 0),
(387, 'steam:110000112ce923f', 'jusfruit', 0),
(388, 'steam:110000112ce923f', 'rhumfruit', 0),
(389, 'steam:110000112ce923f', 'bolchips', 0),
(390, 'steam:110000112ce923f', 'ice', 0),
(391, 'steam:110000112ce923f', 'mixapero', 0),
(392, 'steam:110000112ce923f', 'energy', 0),
(393, 'steam:110000112ce923f', 'casinochips', 0),
(394, 'steam:110000112ce923f', 'metreshooter', 0),
(395, 'steam:110000112ce923f', 'icetea', 0),
(396, 'steam:110000112ce923f', 'vodkafruit', 0),
(397, 'steam:110000112ce923f', 'martini', 0),
(398, 'steam:110000112ce923f', 'grapperaisin', 0),
(399, 'steam:110000112ce923f', 'coffee', 0),
(400, 'steam:110000112ce923f', 'tequila', 0),
(401, 'steam:110000112ce923f', 'saucisson', 0),
(402, 'steam:110000112ce923f', 'bolcacahuetes', 0),
(403, 'steam:110000112ce923f', 'jagercerbere', 0),
(404, 'steam:110000112ce923f', 'rhumcoca', 0),
(405, 'steam:110000112ce923f', 'mojito', 0),
(406, 'steam:110000112ce923f', 'vodkaenergy', 0),
(407, 'steam:110000112ce923f', 'bolpistache', 0),
(408, 'steam:110000112ce923f', 'golem', 0),
(409, 'steam:110000112ce923f', 'jager', 0),
(410, 'steam:110000112ce923f', 'vodka', 0),
(411, 'steam:110000112ce923f', 'whiskycoca', 0),
(412, 'steam:110000112ce923f', 'goldnecklace', 0),
(413, 'steam:110000112ce923f', 'limonade', 0),
(414, 'steam:110000112ce923f', 'soda', 0),
(415, 'steam:110000112ce923f', 'teqpaf', 0),
(416, 'steam:110000112ce923f', 'whisky', 0),
(417, 'steam:110000112ce923f', 'jagerbomb', 0),
(418, 'steam:110000112ce923f', 'rhum', 0),
(419, 'steam:110000112ce923f', 'menthe', 0),
(420, 'steam:110000112ce923f', 'drpepper', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'dmv', 'steam:1100001166f2d38');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 300),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(5, 'GunShop', 'WEAPON_MACHETE', 90),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 100),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(11, 'GunShop', 'WEAPON_STUNGUN', 50),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(25, 'GunShop', 'WEAPON_GRENADE', 500),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(27, 'GunShop', 'WEAPON_BZGAS', 200),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(31, 'GunShop', 'WEAPON_BALL', 50),
(32, 'BlackWeashop', 'WEAPON_BALL', 50),
(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whatsapp_accounts`
--

CREATE TABLE `whatsapp_accounts` (
  `id` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whatsapp_chats`
--

CREATE TABLE `whatsapp_chats` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `messages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whatsapp_groups`
--

CREATE TABLE `whatsapp_groups` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whatsapp_groups_messages`
--

CREATE TABLE `whatsapp_groups_messages` (
  `id` int(11) NOT NULL,
  `id_group` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created` varchar(50) NOT NULL,
  `read` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whatsapp_groups_users`
--

CREATE TABLE `whatsapp_groups_users` (
  `number_group` varchar(50) NOT NULL,
  `admin` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whatsapp_stories`
--

CREATE TABLE `whatsapp_stories` (
  `phone` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `filter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(70) NOT NULL,
  `last_connection` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ban_reason` text DEFAULT NULL,
  `ban_until` timestamp NULL DEFAULT NULL,
  `vip` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `yellowpages_posts`
--

CREATE TABLE `yellowpages_posts` (
  `id` int(11) NOT NULL,
  `owner` text NOT NULL,
  `mesaj` text NOT NULL,
  `isim` text NOT NULL,
  `telno` text NOT NULL,
  `resim` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indizes für die Tabelle `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indizes für die Tabelle `ak4y_blackmarket`
--
ALTER TABLE `ak4y_blackmarket`
  ADD PRIMARY KEY (`#`);

--
-- Indizes für die Tabelle `ak4y_caseopening`
--
ALTER TABLE `ak4y_caseopening`
  ADD PRIMARY KEY (`#`);

--
-- Indizes für die Tabelle `ak4y_playtimeshop`
--
ALTER TABLE `ak4y_playtimeshop`
  ADD PRIMARY KEY (`#`);

--
-- Indizes für die Tabelle `ak4y_playtimeshop_codes`
--
ALTER TABLE `ak4y_playtimeshop_codes`
  ADD PRIMARY KEY (`#`);

--
-- Indizes für die Tabelle `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `cardealer`
--
ALTER TABLE `cardealer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `darkchat_messages`
--
ALTER TABLE `darkchat_messages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indizes für die Tabelle `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `gas_station_balance`
--
ALTER TABLE `gas_station_balance`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `gas_station_business`
--
ALTER TABLE `gas_station_business`
  ADD PRIMARY KEY (`gas_station_id`) USING BTREE;

--
-- Indizes für die Tabelle `gas_station_jobs`
--
ALTER TABLE `gas_station_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `instagram_posts`
--
ALTER TABLE `instagram_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `instagram_stories`
--
ALTER TABLE `instagram_stories`
  ADD PRIMARY KEY (`owner`) USING BTREE;

--
-- Indizes für die Tabelle `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `jobs_armories`
--
ALTER TABLE `jobs_armories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`,`marker_id`,`identifier`) USING BTREE;

--
-- Indizes für die Tabelle `jobs_data`
--
ALTER TABLE `jobs_data`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `jobs_garages`
--
ALTER TABLE `jobs_garages`
  ADD PRIMARY KEY (`vehicle_id`) USING BTREE,
  ADD KEY `identifier` (`identifier`,`marker_id`) USING BTREE;

--
-- Indizes für die Tabelle `jobs_shops`
--
ALTER TABLE `jobs_shops`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `marker_id` (`marker_id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indizes für die Tabelle `jobs_wardrobes`
--
ALTER TABLE `jobs_wardrobes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `identifier` (`identifier`) USING BTREE;

--
-- Indizes für die Tabelle `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indizes für die Tabelle `mapbuilder`
--
ALTER TABLE `mapbuilder`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `darkchat_channels_channel_identifier_uindex` (`channel_identifier`) USING BTREE;

--
-- Indizes für die Tabelle `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier_UNIQUE` (`identifier`);

--
-- Indizes für die Tabelle `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_name_UNIQUE` (`profile_name`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indizes für die Tabelle `owned_vehicles_headlights`
--
ALTER TABLE `owned_vehicles_headlights`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_information`
--
ALTER TABLE `phone_information`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_twitter_accounts`
--
ALTER TABLE `phone_twitter_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_twitter_messages`
--
ALTER TABLE `phone_twitter_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_yp`
--
ALTER TABLE `phone_yp`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `player_contacts`
--
ALTER TABLE `player_contacts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `identifier` (`identifier`) USING BTREE;

--
-- Indizes für die Tabelle `player_gallery`
--
ALTER TABLE `player_gallery`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `player_mails`
--
ALTER TABLE `player_mails`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `identifier` (`identifier`) USING BTREE;

--
-- Indizes für die Tabelle `player_notes`
--
ALTER TABLE `player_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rc_vehicleshop`
--
ALTER TABLE `rc_vehicleshop`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indizes für die Tabelle `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`identifier`);

--
-- Indizes für die Tabelle `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `stl_bank_accounts`
--
ALTER TABLE `stl_bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `stl_bank_transfers`
--
ALTER TABLE `stl_bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tim_gangwar`
--
ALTER TABLE `tim_gangwar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `tinder_accounts`
--
ALTER TABLE `tinder_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tinder_likes`
--
ALTER TABLE `tinder_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tinder_messages`
--
ALTER TABLE `tinder_messages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indizes für die Tabelle `twitter_hashtags`
--
ALTER TABLE `twitter_hashtags`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `twitter_mentions`
--
ALTER TABLE `twitter_mentions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `index_users_phone_number` (`phone_number`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `user_clothes`
--
ALTER TABLE `user_clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`);

--
-- Indizes für die Tabelle `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`);

--
-- Indizes für die Tabelle `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indizes für die Tabelle `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `whatsapp_chats`
--
ALTER TABLE `whatsapp_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `whatsapp_groups`
--
ALTER TABLE `whatsapp_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `whatsapp_groups_messages`
--
ALTER TABLE `whatsapp_groups_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- Indizes für die Tabelle `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ak4y_blackmarket`
--
ALTER TABLE `ak4y_blackmarket`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `ak4y_caseopening`
--
ALTER TABLE `ak4y_caseopening`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `ak4y_playtimeshop`
--
ALTER TABLE `ak4y_playtimeshop`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `ak4y_playtimeshop_codes`
--
ALTER TABLE `ak4y_playtimeshop_codes`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `darkchat_messages`
--
ALTER TABLE `darkchat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT für Tabelle `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT für Tabelle `gas_station_balance`
--
ALTER TABLE `gas_station_balance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT für Tabelle `gas_station_jobs`
--
ALTER TABLE `gas_station_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `instagram_posts`
--
ALTER TABLE `instagram_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `jobs_armories`
--
ALTER TABLE `jobs_armories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `jobs_data`
--
ALTER TABLE `jobs_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `jobs_garages`
--
ALTER TABLE `jobs_garages`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `jobs_shops`
--
ALTER TABLE `jobs_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `jobs_wardrobes`
--
ALTER TABLE `jobs_wardrobes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT für Tabelle `mapbuilder`
--
ALTER TABLE `mapbuilder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT für Tabelle `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT für Tabelle `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `owned_vehicles_headlights`
--
ALTER TABLE `owned_vehicles_headlights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT für Tabelle `phone_information`
--
ALTER TABLE `phone_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT für Tabelle `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7517;

--
-- AUTO_INCREMENT für Tabelle `phone_twitter_accounts`
--
ALTER TABLE `phone_twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `phone_twitter_messages`
--
ALTER TABLE `phone_twitter_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT für Tabelle `phone_yp`
--
ALTER TABLE `phone_yp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `player_contacts`
--
ALTER TABLE `player_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT für Tabelle `player_gallery`
--
ALTER TABLE `player_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `player_mails`
--
ALTER TABLE `player_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `player_notes`
--
ALTER TABLE `player_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT für Tabelle `rc_vehicleshop`
--
ALTER TABLE `rc_vehicleshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT für Tabelle `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `stl_bank_accounts`
--
ALTER TABLE `stl_bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `stl_bank_transfers`
--
ALTER TABLE `stl_bank_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `tim_gangwar`
--
ALTER TABLE `tim_gangwar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `tinder_accounts`
--
ALTER TABLE `tinder_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `tinder_likes`
--
ALTER TABLE `tinder_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `tinder_messages`
--
ALTER TABLE `tinder_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `twitter_hashtags`
--
ALTER TABLE `twitter_hashtags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `twitter_mentions`
--
ALTER TABLE `twitter_mentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT für Tabelle `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `user_clothes`
--
ALTER TABLE `user_clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT für Tabelle `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT für Tabelle `whatsapp_chats`
--
ALTER TABLE `whatsapp_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT für Tabelle `whatsapp_groups`
--
ALTER TABLE `whatsapp_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `whatsapp_groups_messages`
--
ALTER TABLE `whatsapp_groups_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
