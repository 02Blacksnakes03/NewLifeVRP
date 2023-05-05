-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Mai 2023 um 17:09
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
('society_fbi', 'FBI', 1),
('society_fisherman', 'Fisherman', 1),
('society_fueler', 'Fueler', 1),
('society_lumberjack', 'Lumberjack', 1),
('society_mechanic', 'Mechanic', 1),
('society_miner', 'Miner', 1),
('society_police', 'Police', 1),
('society_prisoner', 'Gefängnis Wart', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_reporter', 'Journalist', 1),
('society_slaughterer', 'Butcher', 1),
('society_tailor', 'Tailor', 1),
('society_taxi', 'Taxi', 1),
('society_unemployed', 'Unemployed', 1);

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
(23, 'society_lumberjack', 0, NULL);

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
('society_fbi', 'FBI', 1),
('society_fisherman', 'Fisherman', 1),
('society_fueler', 'Fueler', 1),
('society_lumberjack', 'Lumberjack', 1),
('society_mechanic', 'Mechanic', 1),
('society_miner', 'Miner', 1),
('society_police', 'Police', 1),
('society_prisoner', 'Gefängnis Wart', 1),
('society_realestateagent', 'Real Estate Agent', 1),
('society_reporter', 'Journalist', 1),
('society_slaughterer', 'Butcher', 1),
('society_tailor', 'Tailor', 1),
('society_taxi', 'Taxi', 1),
('society_unemployed', 'Unemployed', 1);

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
(2, 'steam:1100001166f2d38', 'Manuel', 'Savalas', '12.08.2001', 'm', '187');

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
('society_fbi', 'FBI', 1),
('society_fisherman', 'Fisherman', 1),
('society_fueler', 'Fueler', 1),
('society_lumberjack', 'Lumberjack', 1),
('society_mechanic', 'Mechanic', 1),
('society_miner', 'Miner', 1),
('society_police', 'Police', 1),
('society_prisoner', 'Gefängnis Wart', 1),
('society_realestateagent', 'Real Estate Agent', 1),
('society_reporter', 'Journalist', 1),
('society_slaughterer', 'Butcher', 1),
('society_tailor', 'Tailor', 1),
('society_taxi', 'Taxi', 1),
('society_unemployed', 'Unemployed', 1),
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
(27, 'society_reporter', NULL, '{}');

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
('steam:1100001166f2d38', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

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
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Alive Chicken', 20, 0, 1),
('aramidfasern', 'Aramidfasern', 20, 0, 1),
('bandage', 'Bandage', 20, 0, 1),
('black_phone', 'Black Phone', 10, 0, 1),
('blowpipe', 'Blowpipe', 10, 0, 1),
('blue_phone', 'Blue Phone', 10, 0, 1),
('bread', 'Bread', 10, 0, 1),
('bulletproof', 'Schutzweste', 10, 0, 1),
('bulletproof50', 'Halfplate', 10, 0, 1),
('cannabis', 'Cannabis', 40, 0, 1),
('carokit', 'Body kit', 3, 0, 1),
('carotool', 'Body Tools', 4, 0, 1),
('classic_phone', 'Classic Phone', 10, 0, 1),
('clothe', 'Clothing', 40, 0, 1),
('copper', 'Copper', 56, 0, 1),
('cutted_wood', 'Cut Wood', 20, 0, 1),
('diamond', 'Diamond', 50, 0, 1),
('essence', 'Essence', 24, 0, 1),
('fabric', 'Fabric', 80, 0, 1),
('fish', 'Fish', 100, 0, 1),
('fixkit', 'Repair Kit', 5, 0, 1),
('fixtool', 'Repair Tool', 6, 0, 1),
('gazbottle', 'Gaz Bottle', 11, 0, 1),
('gebuendeltearamidfasern', 'Gebündelte Aramidfasern', 15, 0, 1),
('gold', 'Gold', 21, 0, 1),
('gold_phone', 'Gold Phone', 10, 0, 1),
('greenlight_phone', 'Green Light Phone', 10, 0, 1),
('green_phone', 'Green Phone', 10, 0, 1),
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
('iron', 'Iron', 42, 0, 1),
('kevlar', 'Kevlar', 50, 0, 1),
('marijuana', 'Marijuana', 14, 0, 1),
('medikit', 'Medikit', 5, 0, 1),
('packaged_chicken', 'chicken fillet', 100, 0, 1),
('packaged_plank', 'packaged wood', 100, 0, 1),
('petrol', 'oil', 24, 0, 1),
('petrol_raffin', 'processed oil', 24, 0, 1),
('phone', 'Handy', 10, 0, 1),
('phone_hack', 'Phone Hack', 10, 0, 1),
('phone_module', 'Phone Module', 10, 0, 1),
('pink_phone', 'Pink Phone', 10, 0, 1),
('purple_phone', 'Purple Phone', 10, 0, 1),
('red_phone', 'Red Phone', 10, 0, 1),
('slaughtered_chicken', 'slaughtered chicken', 20, 0, 1),
('stone', 'Stone', 7, 0, 1),
('washed_stone', 'Washed Stone', 7, 0, 1),
('water', 'Water', 5, 0, 1),
('wet_black_phone', 'Wet Black Phone', 10, 0, 1),
('wet_blue_phone', 'Wet Blue Phone', 10, 0, 1),
('wet_classic_phone', 'Wet Classic Phone', 10, 0, 1),
('wet_gold_phone', 'Wet Gold Phone', 10, 0, 1),
('wet_greenlight_phone', 'Wet Green Light Phone', 10, 0, 1),
('wet_green_phone', 'Wet Green Phone', 10, 0, 1),
('wet_pink_phone', 'Wet Pink Phone', 10, 0, 1),
('wet_purple_phone', 'Wet Purple Phone', 10, 0, 1),
('wet_red_phone', 'Wet Red Phone', 10, 0, 1),
('wet_white_phone', 'Wet White Phone', 10, 0, 1),
('white_phone', 'White Phone', 10, 0, 1),
('wood', 'Wood', 20, 0, 1),
('wool', 'Wool', 40, 0, 1),
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
('ambulance', 'Ambulance', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('banker', 'Banker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('cardealer', 'Car Dealer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('fbi', 'FBI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('fisherman', 'Fisherman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('fueler', 'Fueler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('lumberjack', 'Lumberjack', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('mechanic', 'Mechanic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('miner', 'Miner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('police', 'LSPD', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('prisoner', 'Gefängnis Wart', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('realestateagent', 'Real Estate Agent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('reporter', 'Journalist', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('slaughterer', 'Butcher', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('tailor', 'Tailor', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('taxi', 'Taxi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0),
('unemployed', 'Unemployed', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0);

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
(7, 'public_marker', 'process', '{\"z\":28.8,\"x\":3.73,\"y\":-1108.45}', 0, '{\"itemToAddName\":\"bulletproof50\",\"animations\":[{\"type\":\"scenario\",\"scenarioDuration\":100,\"scenarioName\":\"WORLD_HUMAN_SMOKING\"}],\"itemToAddQuantity\":1,\"itemToRemoveQuantity\":2,\"timeToProcess\":10,\"itemToRemoveName\":\"kevlar\"}', 1, 0, 1, 'Westen verarbeiter 2', 1, 2, 2, 0.5, 255, 255, 0, 1, 'g_m_y_ballaeast_01', 290);

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
(1, 'steam:1100001166f2d38', 1, 'nero', '{}', NULL);

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
(46, 'prisoner', 0, 'wärter', 'Wärter', 10, '{}', '{}');

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
-- Tabellenstruktur für Tabelle `npwd_calls`
--

CREATE TABLE `npwd_calls` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) DEFAULT NULL,
  `transmitter` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `is_accepted` tinyint(4) DEFAULT 0,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL
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
-- Tabellenstruktur für Tabelle `npwd_darkchat_channel_members`
--

CREATE TABLE `npwd_darkchat_channel_members` (
  `channel_id` int(11) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `is_owner` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_darkchat_messages`
--

CREATE TABLE `npwd_darkchat_messages` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_image` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_marketplace_listings`
--

CREATE TABLE `npwd_marketplace_listings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reported` tinyint(4) NOT NULL DEFAULT 0
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
-- Tabellenstruktur für Tabelle `npwd_match_views`
--

CREATE TABLE `npwd_match_views` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) NOT NULL,
  `profile` int(11) NOT NULL,
  `liked` tinyint(4) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_messages`
--

CREATE TABLE `npwd_messages` (
  `id` int(11) NOT NULL,
  `message` varchar(512) NOT NULL,
  `user_identifier` varchar(48) NOT NULL,
  `conversation_id` varchar(512) NOT NULL,
  `isRead` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `author` varchar(255) NOT NULL,
  `is_embed` tinyint(4) NOT NULL DEFAULT 0,
  `embed` varchar(512) NOT NULL DEFAULT ''
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
-- Tabellenstruktur für Tabelle `npwd_messages_participants`
--

CREATE TABLE `npwd_messages_participants` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `participant` varchar(225) NOT NULL,
  `unread_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_notes`
--

CREATE TABLE `npwd_notes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_phone_contacts`
--

CREATE TABLE `npwd_phone_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `display` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_phone_gallery`
--

CREATE TABLE `npwd_phone_gallery` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_twitter_likes`
--

CREATE TABLE `npwd_twitter_likes` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL
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
-- Tabellenstruktur für Tabelle `npwd_twitter_reports`
--

CREATE TABLE `npwd_twitter_reports` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `npwd_twitter_tweets`
--

CREATE TABLE `npwd_twitter_tweets` (
  `id` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(48) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `images` varchar(1000) DEFAULT '',
  `retweet` int(11) DEFAULT NULL,
  `profile_id` int(11) NOT NULL
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
  `garage` varchar(200) DEFAULT 'Würfelpark Garage'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `job`, `stored`, `garage`) VALUES
('steam:1100001166f2d38', 'BCN 277', '{\"extras\":[],\"neonColor\":[0,0,255],\"modTank\":-1,\"fuelLevel\":65.0,\"engineHealth\":999.0,\"modAerials\":-1,\"modTransmission\":2,\"modTrunk\":-1,\"modFrontBumper\":1,\"modEngineBlock\":-1,\"modHorns\":-1,\"windows\":[1,1,1,false,false,false,false,false,false,false,false,false,false],\"modTrimB\":-1,\"modSmokeEnabled\":1,\"modRightFender\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modSuspension\":4,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modShifterLeavers\":-1,\"modRoof\":-1,\"modAPlate\":-1,\"modXenon\":1,\"modSteeringWheel\":-1,\"plateIndex\":1,\"wheels\":0,\"neonEnabled\":[1,1,1,1],\"modGrille\":-1,\"modWindows\":-1,\"modSeats\":-1,\"modSpoilers\":3,\"tyres\":[false,false,false,false,false,false,false],\"modAirFilter\":-1,\"pearlescentColor\":27,\"modExhaust\":3,\"modFrontWheels\":22,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modSpeakers\":-1,\"modEngine\":3,\"modHydrolic\":-1,\"model\":-998177792,\"plate\":\"BCN 277\",\"modBrakes\":2,\"modTurbo\":1,\"modArmor\":-1,\"wheelColor\":111,\"dirtLevel\":4.79506826400756,\"modHood\":0,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"health\":898,\"modFrame\":-1,\"color2\":134,\"bodyHealth\":901.3102416992188,\"modStruts\":-1,\"color1\":134,\"modRearBumper\":4,\"modBackWheels\":-1,\"modSideSkirt\":-1,\"modDial\":-1,\"doors\":[1,false,false,false,false,false],\"modArchCover\":-1,\"windowTint\":1,\"modTrimA\":-1}', 'car', NULL, 0, 'Würfelpark Garage'),
('steam:11000013d79d68d', 'BTW 521', '{\"modDial\":-1,\"modTank\":-1,\"modTrimA\":-1,\"modSmokeEnabled\":1,\"modSuspension\":2,\"modAPlate\":-1,\"modSeats\":-1,\"bodyHealth\":879.308837890625,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"modFrame\":-1,\"modSpeakers\":-1,\"modLivery\":-1,\"model\":-1848994066,\"modHydrolic\":-1,\"wheels\":0,\"modArchCover\":-1,\"modTurbo\":1,\"modSideSkirt\":3,\"modDashboard\":-1,\"modTrimB\":-1,\"plateIndex\":1,\"plate\":\"BTW 521\",\"modTransmission\":-1,\"modFender\":-1,\"modFrontWheels\":7,\"modEngineBlock\":-1,\"modStruts\":-1,\"fuelLevel\":65.0,\"modExhaust\":-1,\"dirtLevel\":10.12069416046142,\"pearlescentColor\":112,\"modBrakes\":2,\"modGrille\":-1,\"health\":877,\"engineHealth\":999.25,\"modSpoilers\":-1,\"modAirFilter\":-1,\"doors\":[false,false,false,false,false,false],\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1,\"modArmor\":4,\"modPlateHolder\":-1,\"modRoof\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"extras\":[],\"color1\":136,\"modWindows\":-1,\"color2\":136,\"modSteeringWheel\":-1,\"modHorns\":-1,\"modXenon\":1,\"modRearBumper\":0,\"modOrnaments\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":2,\"windowTint\":-1,\"modHood\":-1,\"wheelColor\":0,\"tyres\":[false,false,false,false,false,false,false],\"windows\":[1,1,1,false,false,false,false,false,false,false,false,false,false],\"modEngine\":3,\"neonColor\":[255,0,255],\"modVanityPlate\":-1}', 'car', NULL, 0, 'Würfelpark Garage');

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
(2, 'BTW521', 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_accounts`
--

CREATE TABLE `phone_accounts` (
  `app` varchar(50) NOT NULL,
  `id` varchar(80) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `interested` text NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_alertjobs`
--

CREATE TABLE `phone_alertjobs` (
  `id` int(11) NOT NULL,
  `job` varchar(255) NOT NULL,
  `alerts` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_bankhistory`
--

CREATE TABLE `phone_bankhistory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(2555) NOT NULL,
  `amount` int(255) NOT NULL,
  `reason` varchar(2555) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_bankhistory`
--

INSERT INTO `phone_bankhistory` (`id`, `identifier`, `amount`, `reason`, `date`) VALUES
(1, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 0, 'Einkommen', '2021-12-04'),
(2, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 0, 'Einkommen', '2021-12-04'),
(3, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 10000, 'GLMP Bonus', '2021-12-04'),
(4, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 0, 'Einkommen', '2021-12-05'),
(5, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -100, 'Haussteuer', '2021-12-05'),
(6, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -50, 'Rundfunkbeitrag', '2021-12-05'),
(7, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 10000, 'GLMP Bonus', '2021-12-05'),
(8, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 125, 'Sozialbonus', '2021-12-05'),
(9, 'cac22ab2b6f2ec5c90b1b654ce7743962240d51e', 0, 'Einkommen', '2021-12-05'),
(10, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', 0, 'Einkommen', '2021-12-05'),
(11, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 0, 'Einkommen', '2021-12-05'),
(12, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -50, 'Rundfunkbeitrag', '2021-12-05'),
(13, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -100, 'Haussteuer', '2021-12-05'),
(14, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 10000, 'GLMP Bonus', '2021-12-05'),
(15, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 125, 'Sozialbonus', '2021-12-05'),
(16, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 0, 'Einkommen', '2021-12-05'),
(17, 'e2b30103490202c96a0b636787139a342725d8ed', 0, 'Einkommen', '2021-12-05'),
(18, 'f3a1af8f1e83f6b35c4c49d36b8a2eedd6067d7f', 0, 'Einkommen', '2021-12-05'),
(19, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 0, 'Einkommen', '2021-12-05'),
(20, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -50, 'Rundfunkbeitrag', '2021-12-05'),
(21, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -100, 'Haussteuer', '2021-12-05'),
(22, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 10000, 'GLMP Bonus', '2021-12-05'),
(23, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 150, 'Sozialbonus', '2021-12-05'),
(24, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 0, 'Einkommen', '2021-12-05'),
(25, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -50, 'Rundfunkbeitrag', '2021-12-05'),
(26, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -100, 'Haussteuer', '2021-12-05'),
(27, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 10000, 'GLMP Bonus', '2021-12-05'),
(28, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 150, 'Sozialbonus', '2021-12-05'),
(29, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 0, 'Einkommen', '2021-12-05'),
(30, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 125, 'Sozialbonus', '2021-12-05'),
(31, 'f3a1af8f1e83f6b35c4c49d36b8a2eedd6067d7f', 0, 'Einkommen', '2021-12-05'),
(32, 'f3a1af8f1e83f6b35c4c49d36b8a2eedd6067d7f', 125, 'Sozialbonus', '2021-12-05'),
(33, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 0, 'Einkommen', '2021-12-05'),
(34, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -50, 'Rundfunkbeitrag', '2021-12-05'),
(35, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -100, 'Haussteuer', '2021-12-05'),
(36, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 10000, 'GLMP Bonus', '2021-12-05'),
(37, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -225, 'Fahrzeugsteuer', '2021-12-05'),
(38, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 150, 'Sozialbonus', '2021-12-05'),
(39, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 0, 'Einkommen', '2021-12-05'),
(40, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 5500, 'GLMP Bonus', '2021-12-05'),
(41, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', 0, 'Einkommen', '2021-12-05'),
(42, 'cac22ab2b6f2ec5c90b1b654ce7743962240d51e', 0, 'Einkommen', '2021-12-05'),
(43, 'cac22ab2b6f2ec5c90b1b654ce7743962240d51e', 125, 'Sozialbonus', '2021-12-05'),
(44, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 0, 'Einkommen', '2021-12-05'),
(45, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -50, 'Rundfunkbeitrag', '2021-12-05'),
(46, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 125, 'Sozialbonus', '2021-12-05'),
(47, 'e2b30103490202c96a0b636787139a342725d8ed', 25000, 'ATM Einzahlung ', '2021-12-05'),
(48, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', 0, 'Einkommen', '2021-12-05'),
(49, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', 125, 'Sozialbonus', '2021-12-05'),
(50, '8f1ab93eae4d2a56e5607418147d7d3a19935e00', 0, 'Einkommen', '2021-12-05'),
(51, '53e30ec145ec2a24e05bf26dde77657e78ef8b02', 30000, 'ATM Einzahlung ', '2021-12-05'),
(52, 'dc8ca240506b1489f4f6a62067d7479239810771', 40000, 'ATM Einzahlung ', '2021-12-05'),
(53, '919a3bae28268cddf7401906f09142fadc93f513', 45000, 'ATM Einzahlung ', '2021-12-05'),
(54, 'f92087dc18e6ae552051e8043dfbb3ba15affc12', 45000, 'ATM Einzahlung ', '2021-12-05'),
(55, 'f92087dc18e6ae552051e8043dfbb3ba15affc12', -20000, 'ATM Auszahlung ', '2021-12-05'),
(56, 'dc8ca240506b1489f4f6a62067d7479239810771', -40000, 'ATM Auszahlung ', '2021-12-05'),
(57, '919a3bae28268cddf7401906f09142fadc93f513', -19999, 'ATM Auszahlung ', '2021-12-05'),
(58, 'e4a7cb7ca8d60d49ff4e2b5345db019542efcf9f', 0, 'Einkommen', '2021-12-05'),
(59, 'f92087dc18e6ae552051e8043dfbb3ba15affc12', -4000, 'ATM Auszahlung ', '2021-12-05'),
(60, 'dc8ca240506b1489f4f6a62067d7479239810771', 40000, 'ATM Einzahlung ', '2021-12-05'),
(61, '53e30ec145ec2a24e05bf26dde77657e78ef8b02', -6000, 'ATM Auszahlung ', '2021-12-05'),
(62, '74b77f9906bfe3ececa3ac48bbe1d05d807eedee', 22450, 'ATM Einzahlung ', '2021-12-05'),
(63, '74b77f9906bfe3ececa3ac48bbe1d05d807eedee', -31, 'ATM Auszahlung ', '2021-12-05'),
(64, '663e9d44b7446c73d57f352109e6e45cb1f491cc', 40000, 'ATM Einzahlung ', '2021-12-05'),
(65, '04b7955f05a3da08e3b356281286e5e02b6d377c', 50000, 'ATM Einzahlung ', '2021-12-05'),
(66, '663e9d44b7446c73d57f352109e6e45cb1f491cc', -40000, 'ATM Auszahlung ', '2021-12-05'),
(67, '04b7955f05a3da08e3b356281286e5e02b6d377c', -1000, 'ATM Auszahlung ', '2021-12-05'),
(68, 'dc8ca240506b1489f4f6a62067d7479239810771', -26000, 'ATM Auszahlung ', '2021-12-05'),
(69, 'f92087dc18e6ae552051e8043dfbb3ba15affc12', -21000, 'ATM Auszahlung ', '2021-12-05'),
(70, 'f92087dc18e6ae552051e8043dfbb3ba15affc12', 10000, 'ATM Einzahlung ', '2021-12-05'),
(71, 'f92087dc18e6ae552051e8043dfbb3ba15affc12', 4000, 'ATM Einzahlung ', '2021-12-05'),
(72, '919a3bae28268cddf7401906f09142fadc93f513', 7000, 'ATM Einzahlung ', '2021-12-05'),
(73, '0d25d32fe0db14c00ee17544fe29dd830d34c526', 50000, 'ATM Einzahlung ', '2021-12-05'),
(74, '7928e0c832454a059eb52dee949444de8aaaa44f', 10190, 'ATM Einzahlung ', '2021-12-05'),
(75, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', -25000, 'ATM Auszahlung ', '2021-12-05'),
(76, '4fe94981d8e42ee934320a4b30b5d7d30d115fb6', 40000, 'ATM Einzahlung ', '2021-12-05'),
(77, '63275a461233e4810f97947446408b8743b9fb64', 0, 'Einkommen', '2021-12-05'),
(78, '7928e0c832454a059eb52dee949444de8aaaa44f', -10000, 'ATM Auszahlung ', '2021-12-05'),
(79, '7928e0c832454a059eb52dee949444de8aaaa44f', 9000, 'ATM Einzahlung ', '2021-12-05'),
(80, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 0, 'Einkommen', '2021-12-05'),
(81, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -50, 'Rundfunkbeitrag', '2021-12-05'),
(82, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -100, 'Haussteuer', '2021-12-05'),
(83, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 10000, 'GLMP Bonus', '2021-12-05'),
(84, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', -225, 'Fahrzeugsteuer', '2021-12-05'),
(85, 'b17143d56ed4a18417b32008d7ab00e8d64a1e0c', 150, 'Sozialbonus', '2021-12-05'),
(86, 'f3a1af8f1e83f6b35c4c49d36b8a2eedd6067d7f', 0, 'Einkommen', '2021-12-05'),
(87, 'f3a1af8f1e83f6b35c4c49d36b8a2eedd6067d7f', -50, 'Rundfunkbeitrag', '2021-12-05'),
(88, 'f3a1af8f1e83f6b35c4c49d36b8a2eedd6067d7f', 125, 'Sozialbonus', '2021-12-05'),
(89, '7928e0c832454a059eb52dee949444de8aaaa44f', -500, 'ATM Auszahlung ', '2021-12-05'),
(90, '74b77f9906bfe3ececa3ac48bbe1d05d807eedee', -40000, 'ATM Auszahlung ', '2021-12-05'),
(91, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 24000, 'ATM Einzahlung ', '2021-12-05'),
(92, 'b385d3841f7f652a63ebb8cb4be269799551a9a3', 20000, 'ATM Einzahlung ', '2021-12-05'),
(93, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -20000, 'ATM Auszahlung ', '2021-12-05'),
(94, '74b77f9906bfe3ececa3ac48bbe1d05d807eedee', 40000, 'ATM Einzahlung ', '2021-12-05'),
(95, 'b385d3841f7f652a63ebb8cb4be269799551a9a3', 6500, 'ATM Einzahlung ', '2021-12-05'),
(96, 'da34886767b6d0224b3c6886ea21d87f8388084c', 39500, 'ATM Einzahlung ', '2021-12-05'),
(97, 'da34886767b6d0224b3c6886ea21d87f8388084c', -5000, 'ATM Auszahlung ', '2021-12-05'),
(98, 'da34886767b6d0224b3c6886ea21d87f8388084c', -5000, 'ATM Auszahlung ', '2021-12-05'),
(99, '3e75e2bfbe91c53efd75ef55dcf3852b66542e90', 40000, 'ATM Einzahlung ', '2021-12-05'),
(100, '47e314068cbf274da7e1da5c95621e85c8edab68', 0, 'Einkommen', '2021-12-05'),
(101, '0d25d32fe0db14c00ee17544fe29dd830d34c526', -5000, 'ATM Auszahlung ', '2021-12-05'),
(102, '74b77f9906bfe3ececa3ac48bbe1d05d807eedee', -10000, 'ATM Auszahlung ', '2021-12-05'),
(103, '95d79485549d813004c0d4f7b03e523935b13cdb', 13000, 'ATM Einzahlung ', '2021-12-05'),
(104, '0d25d32fe0db14c00ee17544fe29dd830d34c526', -3000, 'ATM Auszahlung ', '2021-12-05'),
(105, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', -5000, 'ATM Auszahlung ', '2021-12-05'),
(106, 'da34886767b6d0224b3c6886ea21d87f8388084c', -7000, 'ATM Auszahlung ', '2021-12-05'),
(107, 'e2b30103490202c96a0b636787139a342725d8ed', -25000, 'ATM Auszahlung ', '2021-12-05'),
(108, 'da34886767b6d0224b3c6886ea21d87f8388084c', -8000, 'ATM Auszahlung ', '2021-12-05'),
(109, '0d25d32fe0db14c00ee17544fe29dd830d34c526', -30000, 'ATM Auszahlung ', '2021-12-05'),
(110, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', -15000, 'ATM Auszahlung ', '2021-12-05'),
(111, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', -5000, 'ATM Auszahlung ', '2021-12-05'),
(112, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 9000, 'Einkommen', '2021-12-05'),
(113, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -50, 'Rundfunkbeitrag', '2021-12-05'),
(114, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -100, 'Haussteuer', '2021-12-05'),
(115, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 5500, 'GLMP Bonus', '2021-12-05'),
(116, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 125, 'Sozialbonus', '2021-12-05'),
(117, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', 6000, 'Einkommen', '2021-12-05'),
(118, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', -50, 'Rundfunkbeitrag', '2021-12-05'),
(119, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', 125, 'Sozialbonus', '2021-12-05'),
(120, 'e4a7cb7ca8d60d49ff4e2b5345db019542efcf9f', 18000, 'ATM Einzahlung ', '2021-12-05'),
(121, 'e4a7cb7ca8d60d49ff4e2b5345db019542efcf9f', -1000, 'ATM Auszahlung ', '2021-12-05'),
(122, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -5000, 'ATM Auszahlung ', '2021-12-05'),
(123, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -200, 'ATM Auszahlung ', '2021-12-05'),
(124, '63275a461233e4810f97947446408b8743b9fb64', 0, 'Einkommen', '2021-12-05'),
(125, '63275a461233e4810f97947446408b8743b9fb64', 125, 'Sozialbonus', '2021-12-05'),
(126, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 0, 'Einkommen', '2021-12-06'),
(127, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 125, 'Sozialbonus', '2021-12-06'),
(128, '63275a461233e4810f97947446408b8743b9fb64', 175000, 'ATM Einzahlung ', '2021-12-06'),
(129, '63275a461233e4810f97947446408b8743b9fb64', 100000, 'ATM Einzahlung ', '2021-12-06'),
(130, '63275a461233e4810f97947446408b8743b9fb64', 120000, 'ATM Einzahlung ', '2021-12-06'),
(131, '63275a461233e4810f97947446408b8743b9fb64', 90000, 'ATM Einzahlung ', '2021-12-06'),
(132, '63275a461233e4810f97947446408b8743b9fb64', -470000, 'ATM Auszahlung ', '2021-12-06'),
(133, '63275a461233e4810f97947446408b8743b9fb64', 508000, 'ATM Einzahlung ', '2021-12-06'),
(134, '0343d91f8558cc7c7d276fa2eb32f789af34e67d', 0, 'Einkommen', '2021-12-06'),
(135, '834c8085cc6f707d4a493b532c1c65a55db13e77', 57500, 'ATM Einzahlung ', '2021-12-06'),
(136, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 72000, 'ATM Einzahlung ', '2021-12-06'),
(137, 'e2b30103490202c96a0b636787139a342725d8ed', 0, 'Einkommen', '2021-12-06'),
(138, 'e2b30103490202c96a0b636787139a342725d8ed', 125, 'Sozialbonus', '2021-12-06'),
(139, '834c8085cc6f707d4a493b532c1c65a55db13e77', -15000, 'ATM Auszahlung ', '2021-12-06'),
(140, '834c8085cc6f707d4a493b532c1c65a55db13e77', -5000, 'ATM Auszahlung ', '2021-12-06'),
(141, '63275a461233e4810f97947446408b8743b9fb64', 0, 'Einkommen', '2021-12-06'),
(142, '63275a461233e4810f97947446408b8743b9fb64', -50, 'Rundfunkbeitrag', '2021-12-06'),
(143, '63275a461233e4810f97947446408b8743b9fb64', 125, 'Sozialbonus', '2021-12-06'),
(144, '63275a461233e4810f97947446408b8743b9fb64', 130000, 'ATM Einzahlung ', '2021-12-06'),
(145, '63275a461233e4810f97947446408b8743b9fb64', -510000, 'ATM Auszahlung ', '2021-12-06'),
(146, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 90000, 'ATM Einzahlung ', '2021-12-06'),
(147, '834c8085cc6f707d4a493b532c1c65a55db13e77', 125000, 'ATM Einzahlung ', '2021-12-06'),
(148, '3a9e6e54f4f7feca53577e2ccc174eaffae12d37', 33650, 'ATM Einzahlung ', '2021-12-06'),
(149, '3a9e6e54f4f7feca53577e2ccc174eaffae12d37', -500, 'ATM Auszahlung ', '2021-12-06'),
(150, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 74000, 'ATM Einzahlung ', '2021-12-06'),
(151, '3a9e6e54f4f7feca53577e2ccc174eaffae12d37', -2000, 'ATM Auszahlung ', '2021-12-06'),
(152, '3a9e6e54f4f7feca53577e2ccc174eaffae12d37', -200, 'ATM Auszahlung ', '2021-12-06'),
(153, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', -164000, 'ATM Auszahlung ', '2021-12-06'),
(154, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 170000, 'ATM Einzahlung ', '2021-12-06'),
(155, '1089270a293523e7bdfed27e21b4aa6b9111f39f', 36000, 'ATM Einzahlung ', '2021-12-06'),
(156, '3a9e6e54f4f7feca53577e2ccc174eaffae12d37', -2000, 'ATM Auszahlung ', '2021-12-06'),
(157, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', -125, 'ATM Auszahlung ', '2021-12-06'),
(158, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -1000, 'Überweisung an Kelly_Adams', '2021-12-06'),
(159, '1089270a293523e7bdfed27e21b4aa6b9111f39f', 1000, 'Überweisung von Clemens_Adams', '2021-12-06'),
(160, 'e2b30103490202c96a0b636787139a342725d8ed', 1000, 'Überweisung von Clemens_Adams', '2021-12-06'),
(161, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -1000, 'Überweisung an Haku_Jones', '2021-12-06'),
(162, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 0, 'Einkommen', '2021-12-06'),
(163, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', -50, 'Rundfunkbeitrag', '2021-12-06'),
(164, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', -60000, 'ATM Auszahlung ', '2021-12-06'),
(165, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 121000, 'ATM Einzahlung ', '2021-12-06'),
(166, '834c8085cc6f707d4a493b532c1c65a55db13e77', 200000, 'ATM Einzahlung ', '2021-12-06'),
(167, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 86000, 'ATM Einzahlung ', '2021-12-06'),
(168, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', -256000, 'ATM Auszahlung ', '2021-12-06'),
(169, '47e314068cbf274da7e1da5c95621e85c8edab68', 15000, 'ATM Einzahlung ', '2021-12-06'),
(170, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', 25000, 'ATM Einzahlung ', '2021-12-06'),
(171, 'e2b30103490202c96a0b636787139a342725d8ed', 10000, 'ATM Einzahlung ', '2021-12-06'),
(172, '04b7955f05a3da08e3b356281286e5e02b6d377c', 9000, 'ATM Einzahlung ', '2021-12-06'),
(173, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', -4031, 'Überweisung an Clemens_Adams', '2021-12-06'),
(174, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 4031, 'Überweisung von Jordan_Lokomotiv', '2021-12-06'),
(175, '834c8085cc6f707d4a493b532c1c65a55db13e77', 115000, 'ATM Einzahlung ', '2021-12-06'),
(176, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', 11000, 'Einkommen', '2021-12-06'),
(177, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', -50, 'Rundfunkbeitrag', '2021-12-06'),
(178, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', -100, 'Haussteuer', '2021-12-06'),
(179, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', 7500, 'GLMP Bonus', '2021-12-06'),
(180, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', -75, 'Fahrzeugsteuer', '2021-12-06'),
(181, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', 30000, 'ATM Einzahlung ', '2021-12-06'),
(182, '8f1ab93eae4d2a56e5607418147d7d3a19935e00', 10000, 'Einkommen', '2021-12-06'),
(183, '8f1ab93eae4d2a56e5607418147d7d3a19935e00', -50, 'Rundfunkbeitrag', '2021-12-06'),
(184, '8f1ab93eae4d2a56e5607418147d7d3a19935e00', 125, 'Sozialbonus', '2021-12-06'),
(185, 'da34886767b6d0224b3c6886ea21d87f8388084c', 123000, 'ATM Einzahlung ', '2021-12-06'),
(186, 'b62dd9649e23b16c2472a73104970ea444a26c45', 110000, 'ATM Einzahlung ', '2021-12-06'),
(187, 'a51224ca159335bff64e29f4403f99c6523f35b1', 3000, 'ATM Einzahlung ', '2021-12-06'),
(188, 'a51224ca159335bff64e29f4403f99c6523f35b1', 3000, 'ATM Einzahlung ', '2021-12-06'),
(189, 'a51224ca159335bff64e29f4403f99c6523f35b1', -6000, 'Inhaftierung', '2021-12-06'),
(190, 'da34886767b6d0224b3c6886ea21d87f8388084c', -500, 'ATM Auszahlung ', '2021-12-06'),
(191, 'b62dd9649e23b16c2472a73104970ea444a26c45', 100000, 'ATM Einzahlung ', '2021-12-06'),
(192, '3e75e2bfbe91c53efd75ef55dcf3852b66542e90', -5000, 'ATM Auszahlung ', '2021-12-06'),
(193, '5088812cdc5b81a45b0f26224082a868a2e854fa', 40000, 'ATM Einzahlung ', '2021-12-06'),
(194, '834c8085cc6f707d4a493b532c1c65a55db13e77', -350000, 'ATM Auszahlung ', '2021-12-06'),
(195, '6c7dc0053cbb499e7753d9efbd760ee19406f78e', 35000, 'ATM Einzahlung ', '2021-12-06'),
(196, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 121000, 'ATM Einzahlung ', '2021-12-06'),
(197, '834c8085cc6f707d4a493b532c1c65a55db13e77', -127000, 'ATM Auszahlung ', '2021-12-06'),
(198, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 30000, 'ATM Einzahlung ', '2021-12-06'),
(199, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', -240000, 'ATM Auszahlung ', '2021-12-06'),
(200, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', -5000, 'ATM Auszahlung ', '2021-12-06'),
(201, '834c8085cc6f707d4a493b532c1c65a55db13e77', 202500, 'ATM Einzahlung ', '2021-12-06'),
(202, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', 0, 'Einkommen', '2021-12-07'),
(203, '63275a461233e4810f97947446408b8743b9fb64', -70000, 'ATM Auszahlung ', '2021-12-07'),
(204, '63275a461233e4810f97947446408b8743b9fb64', -14000, 'ATM Auszahlung ', '2021-12-07'),
(205, '63275a461233e4810f97947446408b8743b9fb64', 147000, 'ATM Einzahlung ', '2021-12-07'),
(206, 'e2b30103490202c96a0b636787139a342725d8ed', 0, 'Einkommen', '2021-12-07'),
(207, 'e2b30103490202c96a0b636787139a342725d8ed', -50, 'Rundfunkbeitrag', '2021-12-07'),
(208, 'e2b30103490202c96a0b636787139a342725d8ed', 125, 'Sozialbonus', '2021-12-07'),
(209, 'e2b30103490202c96a0b636787139a342725d8ed', 595, 'ATM Einzahlung ', '2021-12-07'),
(210, 'e2b30103490202c96a0b636787139a342725d8ed', -5000, 'ATM Auszahlung ', '2021-12-07'),
(211, 'd88f70f353e0097dc93d17af809b3793286904f2', 20000, 'ATM Einzahlung ', '2021-12-07'),
(212, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 140000, 'ATM Einzahlung ', '2021-12-07'),
(213, 'e2b30103490202c96a0b636787139a342725d8ed', -800, 'ATM Auszahlung ', '2021-12-07'),
(214, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 0, 'Einkommen', '2021-12-07'),
(215, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 0, 'Einkommen', '2021-12-07'),
(216, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -50, 'Rundfunkbeitrag', '2021-12-07'),
(217, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -100, 'Haussteuer', '2021-12-07'),
(218, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -75, 'Fahrzeugsteuer', '2021-12-07'),
(219, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 5500, 'GLMP Bonus', '2021-12-07'),
(220, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 125, 'Sozialbonus', '2021-12-07'),
(221, 'e2b30103490202c96a0b636787139a342725d8ed', 1000, 'Einkommen', '2021-12-07'),
(222, 'e2b30103490202c96a0b636787139a342725d8ed', -50, 'Rundfunkbeitrag', '2021-12-07'),
(223, 'e2b30103490202c96a0b636787139a342725d8ed', 125, 'Sozialbonus', '2021-12-07'),
(224, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 200000, 'ATM Einzahlung ', '2021-12-07'),
(225, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -135000, 'ATM Auszahlung ', '2021-12-07'),
(226, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 140000, 'ATM Einzahlung ', '2021-12-07'),
(227, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -150000, 'ATM Auszahlung ', '2021-12-07'),
(228, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 20000, 'ATM Einzahlung ', '2021-12-07'),
(229, '8f1ab93eae4d2a56e5607418147d7d3a19935e00', -10075, 'ATM Auszahlung ', '2021-12-07'),
(230, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -10000, 'Überweisung an Maxi_King-Smith', '2021-12-07'),
(231, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', 10000, 'Überweisung von Clemens_Adams', '2021-12-07'),
(232, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', -10000, 'ATM Auszahlung ', '2021-12-07'),
(233, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -8000, 'ATM Auszahlung ', '2021-12-07'),
(234, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -1000, 'Überweisung an Lynn_Taylor', '2021-12-07'),
(235, '04b7955f05a3da08e3b356281286e5e02b6d377c', 1000, 'Überweisung von Clemens_Adams', '2021-12-07'),
(236, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', -1000, 'ATM Auszahlung ', '2021-12-07'),
(237, 'b62dd9649e23b16c2472a73104970ea444a26c45', 70000, 'ATM Einzahlung ', '2021-12-07'),
(238, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -26000, 'Überweisung an Tim_Winkelmann', '2021-12-07'),
(239, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', 26000, 'Überweisung von Clemens_Adams', '2021-12-07'),
(240, 'b62dd9649e23b16c2472a73104970ea444a26c45', -265000, 'ATM Auszahlung ', '2021-12-07'),
(241, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 300000, 'ATM Einzahlung ', '2021-12-07'),
(242, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', -50000, 'ATM Auszahlung ', '2021-12-07'),
(243, '919a3bae28268cddf7401906f09142fadc93f513', -20000, 'ATM Auszahlung ', '2021-12-07'),
(244, '919a3bae28268cddf7401906f09142fadc93f513', -1000, 'ATM Auszahlung ', '2021-12-07'),
(245, 'dc8ca240506b1489f4f6a62067d7479239810771', 3000, 'ATM Einzahlung ', '2021-12-07'),
(246, 'dc8ca240506b1489f4f6a62067d7479239810771', -15000, 'ATM Auszahlung ', '2021-12-07'),
(247, 'dc8ca240506b1489f4f6a62067d7479239810771', 15000, 'ATM Einzahlung ', '2021-12-07'),
(248, 'dc8ca240506b1489f4f6a62067d7479239810771', -15000, 'ATM Auszahlung ', '2021-12-07'),
(249, '919a3bae28268cddf7401906f09142fadc93f513', -7500, 'ATM Auszahlung ', '2021-12-07'),
(250, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', 6000, 'ATM Einzahlung ', '2021-12-07'),
(251, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', -12000, 'ATM Auszahlung ', '2021-12-07'),
(252, '919a3bae28268cddf7401906f09142fadc93f513', 500, 'ATM Einzahlung ', '2021-12-07'),
(253, '71cc0ce33810ea789cc014145568f201dbf6815b', 40000, 'ATM Einzahlung ', '2021-12-07'),
(254, '3f2cd6ed1378c7ce12f9bd35c21c33e5b0c526b5', -100000, 'ATM Auszahlung ', '2021-12-07'),
(255, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', -1000, 'ATM Auszahlung ', '2021-12-07'),
(256, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 160000, 'ATM Einzahlung ', '2021-12-07'),
(257, '71cc0ce33810ea789cc014145568f201dbf6815b', -40000, 'ATM Auszahlung ', '2021-12-07'),
(258, '1089270a293523e7bdfed27e21b4aa6b9111f39f', -5000, 'ATM Auszahlung ', '2021-12-07'),
(259, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', -150000, 'ATM Auszahlung ', '2021-12-07'),
(260, '834c8085cc6f707d4a493b532c1c65a55db13e77', -103000, 'ATM Auszahlung ', '2021-12-07'),
(261, '834c8085cc6f707d4a493b532c1c65a55db13e77', -100000, 'ATM Auszahlung ', '2021-12-07'),
(262, '6c7dc0053cbb499e7753d9efbd760ee19406f78e', -35000, 'ATM Auszahlung ', '2021-12-07'),
(263, '71cc0ce33810ea789cc014145568f201dbf6815b', 32000, 'ATM Einzahlung ', '2021-12-07'),
(264, '04b7955f05a3da08e3b356281286e5e02b6d377c', 11000, 'Einkommen', '2021-12-07'),
(265, '04b7955f05a3da08e3b356281286e5e02b6d377c', -50, 'Rundfunkbeitrag', '2021-12-07'),
(266, '1089270a293523e7bdfed27e21b4aa6b9111f39f', -500, 'ATM Auszahlung ', '2021-12-07'),
(267, 'b62dd9649e23b16c2472a73104970ea444a26c45', 220000, 'ATM Einzahlung ', '2021-12-07'),
(268, 'b62dd9649e23b16c2472a73104970ea444a26c45', -100000, 'ATM Auszahlung ', '2021-12-07'),
(269, '919a3bae28268cddf7401906f09142fadc93f513', -1200, 'ATM Auszahlung ', '2021-12-07'),
(270, '919a3bae28268cddf7401906f09142fadc93f513', -2000, 'ATM Auszahlung ', '2021-12-07'),
(271, '919a3bae28268cddf7401906f09142fadc93f513', 339, 'ATM Einzahlung ', '2021-12-07'),
(272, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', -75, 'ATM Auszahlung ', '2021-12-07'),
(273, 'b62dd9649e23b16c2472a73104970ea444a26c45', -20000, 'ATM Auszahlung ', '2021-12-07'),
(274, 'b62dd9649e23b16c2472a73104970ea444a26c45', -10000, 'ATM Auszahlung ', '2021-12-07'),
(275, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 42000, 'ATM Einzahlung ', '2021-12-07'),
(276, '3a9e6e54f4f7feca53577e2ccc174eaffae12d37', 4600, 'ATM Einzahlung ', '2021-12-07'),
(277, '4e04bdeb9676079fd37b05ff49a133e69f238a00', 18647, 'ATM Einzahlung ', '2021-12-07'),
(278, 'b62dd9649e23b16c2472a73104970ea444a26c45', -20000, 'ATM Auszahlung ', '2021-12-07'),
(279, 'bcfc4106e7b400c58cd14dbfd228a2343ff4ca6a', 50000, 'ATM Einzahlung ', '2021-12-07'),
(280, 'bcfc4106e7b400c58cd14dbfd228a2343ff4ca6a', 43000, 'ATM Einzahlung ', '2021-12-07'),
(281, 'bcfc4106e7b400c58cd14dbfd228a2343ff4ca6a', -30000, 'ATM Auszahlung ', '2021-12-07'),
(282, 'da34886767b6d0224b3c6886ea21d87f8388084c', 190000, 'ATM Einzahlung ', '2021-12-07'),
(283, '3a9e6e54f4f7feca53577e2ccc174eaffae12d37', 35000, 'ATM Einzahlung ', '2021-12-07'),
(284, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 122000, 'ATM Einzahlung ', '2021-12-07'),
(285, '63275a461233e4810f97947446408b8743b9fb64', 31, 'Überweisung von Clemens_Adams', '2021-12-07'),
(286, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -31, 'Überweisung an Uvu_Usus-Shelby', '2021-12-07'),
(287, '6c7dc0053cbb499e7753d9efbd760ee19406f78e', 5000, 'ATM Einzahlung ', '2021-12-07'),
(288, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', -100000, 'ATM Auszahlung ', '2021-12-07'),
(289, '63275a461233e4810f97947446408b8743b9fb64', -100000, 'Überweisung an Clemens_Adams', '2021-12-07'),
(290, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 100000, 'Überweisung von Uvu_Usus-Shelby', '2021-12-07'),
(291, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 90000, 'ATM Einzahlung ', '2021-12-07'),
(292, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 0, 'Einkommen', '2021-12-07'),
(293, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -50, 'Rundfunkbeitrag', '2021-12-07'),
(294, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 150, 'Sozialbonus', '2021-12-07'),
(295, '919a3bae28268cddf7401906f09142fadc93f513', 1000, 'ATM Einzahlung ', '2021-12-08'),
(296, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 0, 'Einkommen', '2021-12-08'),
(297, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 125, 'Sozialbonus', '2021-12-08'),
(298, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 0, 'Einkommen', '2021-12-08'),
(299, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', -50, 'Rundfunkbeitrag', '2021-12-08'),
(300, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 125, 'Sozialbonus', '2021-12-08'),
(301, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', 25000, 'ATM Einzahlung ', '2021-12-08'),
(302, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 200000, 'ATM Einzahlung ', '2021-12-08'),
(303, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -20000, 'ATM Auszahlung ', '2021-12-08'),
(304, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 110000, 'ATM Einzahlung ', '2021-12-08'),
(305, 'e2b30103490202c96a0b636787139a342725d8ed', -4000, 'ATM Auszahlung ', '2021-12-08'),
(306, 'e2b30103490202c96a0b636787139a342725d8ed', 609000, 'ATM Einzahlung ', '2021-12-08'),
(307, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 2000000, 'ATM Einzahlung ', '2021-12-08'),
(308, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -300000, 'ATM Auszahlung ', '2021-12-08'),
(309, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 112432, 'ATM Einzahlung ', '2021-12-08'),
(310, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', -11200, 'ATM Auszahlung ', '2021-12-08'),
(311, 'e2b30103490202c96a0b636787139a342725d8ed', -5000, 'ATM Auszahlung ', '2021-12-08'),
(312, 'a51224ca159335bff64e29f4403f99c6523f35b1', 0, 'Einkommen', '2021-12-08'),
(313, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -114890, 'Überweisung an Clemens_Adams', '2021-12-08'),
(314, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 114890, 'Überweisung von Noah_Shelby', '2021-12-08'),
(315, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', -1000, 'ATM Auszahlung ', '2021-12-08'),
(316, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 127390, 'Überweisung von Noah_Shelby', '2021-12-08'),
(317, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -127390, 'Überweisung an Clemens_Adams', '2021-12-08'),
(318, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 105200, 'ATM Einzahlung ', '2021-12-08'),
(319, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', -5000, 'ATM Auszahlung ', '2021-12-08'),
(320, '3a9e6e54f4f7feca53577e2ccc174eaffae12d37', 22500, 'ATM Einzahlung ', '2021-12-08'),
(321, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -900000, 'ATM Auszahlung ', '2021-12-08'),
(322, 'a51224ca159335bff64e29f4403f99c6523f35b1', 300000, 'ATM Einzahlung ', '2021-12-08'),
(323, '71cc0ce33810ea789cc014145568f201dbf6815b', -5000, 'ATM Auszahlung ', '2021-12-08'),
(324, '3f2cd6ed1378c7ce12f9bd35c21c33e5b0c526b5', 0, 'Einkommen', '2021-12-08'),
(325, '3f2cd6ed1378c7ce12f9bd35c21c33e5b0c526b5', -50, 'Rundfunkbeitrag', '2021-12-08'),
(326, 'd70e470d95eac4d0248694dcdf6247cfd05273c4', 290625, 'ATM Einzahlung ', '2021-12-08'),
(327, 'd70e470d95eac4d0248694dcdf6247cfd05273c4', -40625, 'ATM Auszahlung ', '2021-12-08'),
(328, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 100350, 'ATM Einzahlung ', '2021-12-08'),
(329, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', -5090, 'ATM Auszahlung ', '2021-12-08'),
(330, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 50000, 'ATM Einzahlung ', '2021-12-08'),
(331, '47e314068cbf274da7e1da5c95621e85c8edab68', 100000, 'ATM Einzahlung ', '2021-12-08'),
(332, '3b9259b0af89f3aa23d674025fd9020a7eba9b0f', 0, 'Einkommen', '2021-12-08'),
(333, '6c7dc0053cbb499e7753d9efbd760ee19406f78e', 50000, 'ATM Einzahlung ', '2021-12-08'),
(334, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -65390, 'Überweisung an Clemens_Adams', '2021-12-08'),
(335, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 65390, 'Überweisung von Noah_Shelby', '2021-12-08'),
(336, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -24000, 'Überweisung an Clemens_Adams', '2021-12-08'),
(337, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 24000, 'Überweisung von Noah_Shelby', '2021-12-08'),
(338, 'd70e470d95eac4d0248694dcdf6247cfd05273c4', -100000, 'ATM Auszahlung ', '2021-12-08'),
(339, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -270000, 'ATM Auszahlung ', '2021-12-08'),
(340, 'e2b30103490202c96a0b636787139a342725d8ed', 250000, 'ATM Einzahlung ', '2021-12-08'),
(341, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 139090, 'ATM Einzahlung ', '2021-12-08'),
(342, 'b385d3841f7f652a63ebb8cb4be269799551a9a3', 50000, 'ATM Einzahlung ', '2021-12-08'),
(343, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 120000, 'ATM Einzahlung ', '2021-12-08'),
(344, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -102050, 'Überweisung an Clemens_Adams', '2021-12-08'),
(345, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 102050, 'Überweisung von Noah_Shelby', '2021-12-08'),
(346, '47e314068cbf274da7e1da5c95621e85c8edab68', -20000, 'ATM Auszahlung ', '2021-12-08'),
(347, '6c7dc0053cbb499e7753d9efbd760ee19406f78e', 52300, 'ATM Einzahlung ', '2021-12-08'),
(348, '6c7dc0053cbb499e7753d9efbd760ee19406f78e', -7000, 'ATM Auszahlung ', '2021-12-08'),
(349, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', -40000, 'ATM Auszahlung ', '2021-12-08'),
(350, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', 50000, 'ATM Einzahlung ', '2021-12-08'),
(351, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', -420000, 'ATM Auszahlung ', '2021-12-08'),
(352, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 99800, 'Überweisung von Noah_Shelby', '2021-12-08'),
(353, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -99800, 'Überweisung an Clemens_Adams', '2021-12-08'),
(354, 'e2b30103490202c96a0b636787139a342725d8ed', -5000, 'ATM Auszahlung ', '2021-12-08'),
(355, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -300000, 'ATM Auszahlung ', '2021-12-08'),
(356, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', -20000, 'ATM Auszahlung ', '2021-12-08'),
(357, 'dc8ca240506b1489f4f6a62067d7479239810771', 20000, 'ATM Einzahlung ', '2021-12-08'),
(358, 'dc8ca240506b1489f4f6a62067d7479239810771', -3000, 'ATM Auszahlung ', '2021-12-08'),
(359, '04b7955f05a3da08e3b356281286e5e02b6d377c', 58000, 'ATM Einzahlung ', '2021-12-08'),
(360, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', -3000, 'ATM Auszahlung ', '2021-12-08'),
(361, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -50650, 'Überweisung an Clemens_Adams', '2021-12-08'),
(362, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 50650, 'Überweisung von Noah_Shelby', '2021-12-08'),
(363, 'be04a144f82157f3e135bd3c65bb1b4d362be209', 50000, 'ATM Einzahlung ', '2021-12-08'),
(364, 'e2b30103490202c96a0b636787139a342725d8ed', 103200, 'ATM Einzahlung ', '2021-12-08'),
(365, 'e2b30103490202c96a0b636787139a342725d8ed', -500000, 'ATM Auszahlung ', '2021-12-08'),
(366, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', -5000, 'ATM Auszahlung ', '2021-12-08'),
(367, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', 182000, 'ATM Einzahlung ', '2021-12-08'),
(368, 'e2b30103490202c96a0b636787139a342725d8ed', 470000, 'ATM Einzahlung ', '2021-12-08'),
(369, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 50000, 'ATM Einzahlung ', '2021-12-08'),
(370, 'da34886767b6d0224b3c6886ea21d87f8388084c', -5000, 'ATM Auszahlung ', '2021-12-08'),
(371, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', -10000, 'ATM Auszahlung ', '2021-12-08'),
(372, 'e2b30103490202c96a0b636787139a342725d8ed', -5000, 'ATM Auszahlung ', '2021-12-08'),
(373, 'e2b30103490202c96a0b636787139a342725d8ed', -500000, 'ATM Auszahlung ', '2021-12-08'),
(374, 'e2ac71eb327c0e959e4394d5b62435fc10c7c455', 100000, 'ATM Einzahlung ', '2021-12-08'),
(375, 'dc8ca240506b1489f4f6a62067d7479239810771', -11000, 'ATM Auszahlung ', '2021-12-08'),
(376, 'cbdf3b7e160437a866ddd46eb6230c79ca9450ac', 0, 'Einkommen', '2021-12-08'),
(377, '24457ef4f8fb8419812a4361568d33df840b15a0', 11000, 'Einkommen', '2021-12-08'),
(378, '24457ef4f8fb8419812a4361568d33df840b15a0', -50, 'Rundfunkbeitrag', '2021-12-08'),
(379, 'da34886767b6d0224b3c6886ea21d87f8388084c', 50000, 'ATM Einzahlung ', '2021-12-08'),
(380, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 300000, 'ATM Einzahlung ', '2021-12-08'),
(381, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', -12000, 'ATM Auszahlung ', '2021-12-08'),
(382, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -740000, 'Überweisung an Clemens_Adams', '2021-12-08'),
(383, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 740000, 'Überweisung von Noah_Shelby', '2021-12-08'),
(384, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 160000, 'ATM Einzahlung ', '2021-12-08'),
(385, 'dc8ca240506b1489f4f6a62067d7479239810771', -1000, 'ATM Auszahlung ', '2021-12-08'),
(386, 'a51224ca159335bff64e29f4403f99c6523f35b1', 360000, 'ATM Einzahlung ', '2021-12-08'),
(387, 'f607be8e77f3f47c845e1e0a5389a0a5775e0fb2', -10000, 'ATM Auszahlung ', '2021-12-08'),
(388, '834c8085cc6f707d4a493b532c1c65a55db13e77', 0, 'Einkommen', '2021-12-08'),
(389, 'e2b30103490202c96a0b636787139a342725d8ed', 1000, 'Einkommen', '2021-12-09'),
(390, 'e2b30103490202c96a0b636787139a342725d8ed', -50, 'Rundfunkbeitrag', '2021-12-09'),
(391, 'e2b30103490202c96a0b636787139a342725d8ed', 150, 'Sozialbonus', '2021-12-09'),
(392, 'e2b30103490202c96a0b636787139a342725d8ed', 33999, 'ATM Einzahlung ', '2021-12-09'),
(393, 'e2b30103490202c96a0b636787139a342725d8ed', 1000, 'Einkommen', '2021-12-09'),
(394, 'e2b30103490202c96a0b636787139a342725d8ed', -50, 'Rundfunkbeitrag', '2021-12-09'),
(395, 'e2b30103490202c96a0b636787139a342725d8ed', 150, 'Sozialbonus', '2021-12-09'),
(396, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -500000, 'ATM Auszahlung ', '2021-12-09'),
(397, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 180000, 'ATM Einzahlung ', '2021-12-09'),
(398, '834c8085cc6f707d4a493b532c1c65a55db13e77', 0, 'Einkommen', '2021-12-09'),
(399, '834c8085cc6f707d4a493b532c1c65a55db13e77', 125, 'Sozialbonus', '2021-12-09'),
(400, 'a51224ca159335bff64e29f4403f99c6523f35b1', -660000, 'ATM Auszahlung ', '2021-12-09'),
(401, 'dc8ca240506b1489f4f6a62067d7479239810771', 40000, 'ATM Einzahlung ', '2021-12-09'),
(402, 'da34886767b6d0224b3c6886ea21d87f8388084c', -4000, 'ATM Auszahlung ', '2021-12-09'),
(403, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -510000, 'ATM Auszahlung ', '2021-12-09'),
(404, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 600000, 'ATM Einzahlung ', '2021-12-09'),
(405, 'dc8ca240506b1489f4f6a62067d7479239810771', 82000, 'ATM Einzahlung ', '2021-12-09'),
(406, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -31, 'Überweisung an Maxi_King-Smith', '2021-12-09'),
(407, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', 31, 'Überweisung von Noah_Shelby', '2021-12-09'),
(408, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 6000000, 'ATM Einzahlung ', '2021-12-09'),
(409, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -200000, 'Überweisung an Maxi_King-Smith', '2021-12-09'),
(410, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', 200000, 'Überweisung von Noah_Shelby', '2021-12-09'),
(411, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -200000, 'Überweisung an Clemens_Adams', '2021-12-09'),
(412, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 200000, 'Überweisung von Noah_Shelby', '2021-12-09'),
(413, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 810000, 'Überweisung von Noah_Shelby', '2021-12-09'),
(414, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -810000, 'Überweisung an Clemens_Adams', '2021-12-09'),
(415, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -60000, 'Überweisung an Clemens_Adams', '2021-12-09'),
(416, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 60000, 'Überweisung von Noah_Shelby', '2021-12-09'),
(417, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -810000, 'Überweisung an Clemens_Adams', '2021-12-09'),
(418, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 810000, 'Überweisung von Noah_Shelby', '2021-12-09'),
(419, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -120000, 'Überweisung an Noah_Shelby', '2021-12-09'),
(420, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 120000, 'Überweisung von Clemens_Adams', '2021-12-09'),
(421, '974f4d4f2f25cd9bbd7e15ece6c76d83b4de340c', -7500, 'Überweisung an Clemens_Adams', '2021-12-09'),
(422, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 7500, 'Überweisung von Tim_Winkelmann', '2021-12-09'),
(423, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 810000, 'Überweisung von Noah_Shelby', '2021-12-09'),
(424, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -810000, 'Überweisung an Clemens_Adams', '2021-12-09'),
(425, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -750000, 'Überweisung an Clemens_Adams', '2021-12-09'),
(426, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 750000, 'Überweisung von Noah_Shelby', '2021-12-09'),
(427, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -3000000, 'ATM Auszahlung ', '2021-12-09'),
(428, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 810000, 'Überweisung von Noah_Shelby', '2021-12-09'),
(429, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -810000, 'Überweisung an Clemens_Adams', '2021-12-09'),
(430, '04b7955f05a3da08e3b356281286e5e02b6d377c', -3000, 'ATM Auszahlung ', '2021-12-09'),
(431, 'da34886767b6d0224b3c6886ea21d87f8388084c', 200000, 'ATM Einzahlung ', '2021-12-09'),
(432, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', -710000, 'Überweisung an Clemens_Adams', '2021-12-09'),
(433, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 710000, 'Überweisung von Noah_Shelby', '2021-12-09'),
(434, '183181e8ce500156e7c7293d2fbd4083b6d09a74', -900000, 'ATM Auszahlung ', '2021-12-09'),
(435, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', -50000, 'ATM Auszahlung ', '2021-12-09'),
(436, '4f31c20f2760bbed938a0f34d5f7b9e39549464b', 100000, 'ATM Einzahlung ', '2021-12-09'),
(437, 'dc8ca240506b1489f4f6a62067d7479239810771', 125000, 'ATM Einzahlung ', '2021-12-09'),
(438, 'dc8ca240506b1489f4f6a62067d7479239810771', -254000, 'ATM Auszahlung ', '2021-12-09'),
(439, 'dc8ca240506b1489f4f6a62067d7479239810771', 16000, 'ATM Einzahlung ', '2021-12-09'),
(440, 'e2b30103490202c96a0b636787139a342725d8ed', 1000, 'Einkommen', '2021-12-10'),
(441, 'e2b30103490202c96a0b636787139a342725d8ed', -50, 'Rundfunkbeitrag', '2021-12-10'),
(442, 'e2b30103490202c96a0b636787139a342725d8ed', 150, 'Sozialbonus', '2021-12-10'),
(443, '2c2741fe6cc115f90074b6857275382772f2b7cf', 48000, 'ATM Einzahlung ', '2021-12-10'),
(444, '25c33576e0a8a8de27752c445344dba859e38347', 0, 'Einkommen', '2021-12-10'),
(445, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 287400, 'ATM Einzahlung ', '2021-12-10'),
(446, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 4324971, 'ATM Einzahlung ', '2021-12-11');

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
('LSPD', 'Die Frak-Infos sind ab Rang 10 Einstellbar.', 'steam:1100001320b2962'),
('null', '', 'steam:1100001093de21c'),
('FIB', 'Der neue Rang 12 ist jetzt erreichbar und hofft auf eine Gute Arbeit vom FIB und von der Police', 'steam:11000013f7250e9');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `num` varchar(10) NOT NULL,
  `time` varchar(50) NOT NULL,
  `accepts` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_chatrooms`
--

CREATE TABLE `phone_chatrooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_code` varchar(10) NOT NULL,
  `room_name` varchar(15) NOT NULL,
  `room_owner_id` varchar(50) DEFAULT NULL,
  `room_owner_name` varchar(60) DEFAULT NULL,
  `room_members` text DEFAULT NULL,
  `room_pin` varchar(50) DEFAULT NULL,
  `unpaid_balance` decimal(10,2) DEFAULT 0.00,
  `is_masked` tinyint(1) DEFAULT 0,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_chatrooms`
--

INSERT INTO `phone_chatrooms` (`id`, `room_code`, `room_name`, `room_owner_id`, `room_owner_name`, `room_members`, `room_pin`, `unpaid_balance`, `is_masked`, `is_pinned`, `created`) VALUES
(1, 'social', 'Social', 'official', 'Government', NULL, NULL, 0.00, 0, 1, '2023-05-05 16:09:36'),
(2, 'lounge', 'The Lounge', 'official', 'Government', NULL, NULL, 0.00, 0, 1, '2023-05-05 16:09:36'),
(3, 'events', 'Events', 'official', 'Government', NULL, NULL, 0.00, 0, 1, '2023-05-05 16:09:36');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_chatroom_messages`
--

CREATE TABLE `phone_chatroom_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` varchar(50) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_chats`
--

CREATE TABLE `phone_chats` (
  `app` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_contacts`
--

INSERT INTO `phone_contacts` (`id`, `identifier`, `name`, `number`) VALUES
(1, '47e314068cbf274da7e1da5c95621e85c8edab68', 'Lynn Taylor', '65063'),
(2, '3c3545c9e433ec7f044fe2105380f7dc1ee3faec', 'Jeron Bugatti Peky blinders', '76008'),
(3, '3c3545c9e433ec7f044fe2105380f7dc1ee3faec', 'Senosh Guzman', '53005'),
(4, '6ef9280c67f8b47a1aaa58324718e4fa0fe17732', 'Senosh guzmann', '53005'),
(5, '6ef9280c67f8b47a1aaa58324718e4fa0fe17732', 'seimen guzmann', '85239'),
(6, 'ecb239b0296068436b255b3d43b78debee55c138', 'Simon Guzman', '85239'),
(7, 'ecb239b0296068436b255b3d43b78debee55c138', 'Tuna Jeone', '76008'),
(8, '3e75e2bfbe91c53efd75ef55dcf3852b66542e90', 'Marlene', '65063'),
(9, '663e9d44b7446c73d57f352109e6e45cb1f491cc', 'Piere Dil', '97467'),
(12, '663e9d44b7446c73d57f352109e6e45cb1f491cc', 'Mehmet Mutlu', '72973'),
(13, 'd242fa79722e0e0ccf24aff7ca3b563a99f7e2e0', 'Elias Escobar', '57861'),
(14, '2610de4f7477b7d2765f706193b3bf70b34a4acf', 'Elias', '57861'),
(16, '4fe94981d8e42ee934320a4b30b5d7d30d115fb6', 'Ricardo Moskaev', '22079'),
(17, '8691e757cae5188d79eddfb51f51d792d5290caa', 'Ivan_Moskaev', '38270'),
(18, '8691e757cae5188d79eddfb51f51d792d5290caa', 'Yuri_Moskaev', '77307'),
(19, '834c8085cc6f707d4a493b532c1c65a55db13e77', 'pierre vogel', '97467'),
(20, '2610de4f7477b7d2765f706193b3bf70b34a4acf', 'vagos maus', '76681'),
(21, '47e314068cbf274da7e1da5c95621e85c8edab68', 'Benji Champion', '84297'),
(22, '451fa0af819db5cefa13fb15f97d4f996d21fbd1', 'Ben', '14575'),
(23, '3b9259b0af89f3aa23d674025fd9020a7eba9b0f', 'Guzmann Vagos 3er', '17470'),
(24, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 'Charlie Shelby', '51566'),
(25, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 'Miguel_Guzman', '92611'),
(26, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 'Uvu_Usus-Shelby', '11340'),
(27, '3b9259b0af89f3aa23d674025fd9020a7eba9b0f', 'Noah Shelby', '79609'),
(28, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 'Charlie_Shelby', '51566'),
(29, '583fc5da2a9857c758ce24211265b7cf333c8c6a', 'Peaky - Abi', '11340'),
(30, '63275a461233e4810f97947446408b8743b9fb64', 'Taco', '43947'),
(31, '3b9259b0af89f3aa23d674025fd9020a7eba9b0f', 'Nicklas', '11340'),
(32, '3a9e6e54f4f7feca53577e2ccc174eaffae12d37', 'Manuel', '27882'),
(33, 'da34886767b6d0224b3c6886ea21d87f8388084c', 'Miguel', '92611'),
(34, '1089270a293523e7bdfed27e21b4aa6b9111f39f', 'Papa', '19624'),
(35, '183181e8ce500156e7c7293d2fbd4083b6d09a74', 'Kelly Adams', '19088'),
(36, 'e2b30103490202c96a0b636787139a342725d8ed', 'Lynn Taylor', '65063'),
(37, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 'Enzo_Shelby', '78521'),
(38, 'cac22ab2b6f2ec5c90b1b654ce7743962240d51e', 'Tim Winkelmann', '98868'),
(39, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 'Miguel ', '92611'),
(40, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 'Fabian', '59567'),
(41, '3b9259b0af89f3aa23d674025fd9020a7eba9b0f', 'Haku �LCN�', '61350'),
(42, 'e2b30103490202c96a0b636787139a342725d8ed', 'Charlie Shelby', '51566'),
(43, '3b9259b0af89f3aa23d674025fd9020a7eba9b0f', 'LCN Don', '74248'),
(44, '3b9259b0af89f3aa23d674025fd9020a7eba9b0f', 'MG13 Leaderschaft', '40267'),
(45, '451fa0af819db5cefa13fb15f97d4f996d21fbd1', 'AK', '65063'),
(46, '04b7955f05a3da08e3b356281286e5e02b6d377c', 'Benji', '84297'),
(47, '47e314068cbf274da7e1da5c95621e85c8edab68', 'Adrian PD Kollege', '91274'),
(48, '25818150f982eaab8a46ff4c540c237002b3280a', 'Ben Keller', '14575'),
(49, 'b62dd9649e23b16c2472a73104970ea444a26c45', 'Eddi Suka', '17470'),
(50, 'bd7ed10a889a05f4c2182edb5d4695772df8580e', 'Fabian_Guzman', '59567'),
(51, 'b62dd9649e23b16c2472a73104970ea444a26c45', 'Andre', '76681'),
(52, '1c42b8562fc8d70d6ae0377dabd6b0c1361eea01', 'tim', '15240'),
(53, '1089270a293523e7bdfed27e21b4aa6b9111f39f', 'Papa', '19624'),
(54, '3b9259b0af89f3aa23d674025fd9020a7eba9b0f', 'MG13 Patron', '76681'),
(55, '3b9259b0af89f3aa23d674025fd9020a7eba9b0f', 'Cali Kartell Ansprechpartner', '49221'),
(56, '919a3bae28268cddf7401906f09142fadc93f513', 'Parton�EL Taco�', '75975'),
(57, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', 'Peaky - ?', '51566'),
(58, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', 'Cali - Tim ', '49221'),
(59, '39e0c95e299acda09854eeac4d862ffe942a2b1a', 'Padron Taco', '75975'),
(60, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 'Dominik_Yukihira', '72806'),
(61, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 'Mehmet_Mutlu', '72973'),
(62, 'da34886767b6d0224b3c6886ea21d87f8388084c', 'Mehmet                              PB', '72973'),
(63, 'd242fa79722e0e0ccf24aff7ca3b563a99f7e2e0', 'Dominik shelby', '72806'),
(64, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', 'LCN - Jeremy �12�', '74248'),
(65, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', 'Peaky - Charlie', '232645'),
(66, '1c42b8562fc8d70d6ae0377dabd6b0c1361eea01', 'noa schelbi', '4522'),
(67, 'd242fa79722e0e0ccf24aff7ca3b563a99f7e2e0', 'Noah Shelby', '79609'),
(68, '834c8085cc6f707d4a493b532c1c65a55db13e77', 'Denis Parasit', '40267'),
(69, '5e9f13e0b2af1d9a74aeba903fb3f81b0d0e7be0', 'Cali patron', '75975'),
(70, '51f552ca10d326345ce58cf9dd2e5b6d2283cc0d', 'MG13 - Andre �12�', '76681'),
(71, '1089270a293523e7bdfed27e21b4aa6b9111f39f', 'Ben', '14575'),
(72, '1089270a293523e7bdfed27e21b4aa6b9111f39f', 'Ben', '14575'),
(73, 'da34886767b6d0224b3c6886ea21d87f8388084c', 'Noah PB', '79609'),
(74, '75ff412c96e704507b8ca13f85c48da2e8f20e4e', 'Dominik_Yukihira', '72806'),
(75, 'da34886767b6d0224b3c6886ea21d87f8388084c', 'Noah', '79609'),
(76, 'd242fa79722e0e0ccf24aff7ca3b563a99f7e2e0', 'UVU', '11340'),
(77, 'd242fa79722e0e0ccf24aff7ca3b563a99f7e2e0', 'Charlie', '51566'),
(78, 'da34886767b6d0224b3c6886ea21d87f8388084c', 'Smith LSPD', '70768'),
(79, 'cbdf3b7e160437a866ddd46eb6230c79ca9450ac', 'smith', '70768'),
(80, 'da34886767b6d0224b3c6886ea21d87f8388084c', 'Fettsack', '49715'),
(81, 'cbdf3b7e160437a866ddd46eb6230c79ca9450ac', 'ukihira domin', '72806'),
(82, '834c8085cc6f707d4a493b532c1c65a55db13e77', 'Clemens gvrp', '19624'),
(83, 'dc8ca240506b1489f4f6a62067d7479239810771', 'Patron', '75975'),
(84, '7ab35fe1bf50e2ce9df2364fbb47e99cafc7809d', 'Kamilla', '187');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_information`
--

CREATE TABLE `phone_information` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `wallpaper` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_invoices`
--

CREATE TABLE `phone_invoices` (
  `id` int(10) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT 'current_timestamp()',
  `isgps` varchar(500) NOT NULL DEFAULT '0',
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  `isService` varchar(50) NOT NULL DEFAULT '0',
  `isAnonym` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_notifies`
--

CREATE TABLE `phone_notifies` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_head` varchar(50) NOT NULL DEFAULT '',
  `app_name` text NOT NULL,
  `msg_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_taxis`
--

CREATE TABLE `phone_taxis` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `price` int(99) NOT NULL,
  `requests` varchar(999) DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `phone_taxis`
--

INSERT INTO `phone_taxis` (`id`, `identifier`, `name`, `number`, `price`, `requests`) VALUES
(0, '4e04bdeb9676079fd37b05ff49a133e69f238a00', 'Mike_Wagner', '/', 1, '[{\"name\":\"Mike_Wagner\",\"id\":2,\"playerid\":4,\"message\":\"255\"},{\"name\":\"Mike_Wagner\",\"id\":3,\"playerid\":4,\"message\":\"255\"},{\"name\":\"Mike_Wagner\",\"id\":4,\"playerid\":4,\"message\":\"255\"},{\"name\":\"Max_Schmitt\",\"id\":2,\"playerid\":34,\"message\":\"w\"},{\"name\":\"Max_Schmitt\",\"id\":3,\"playerid\":34,\"message\":\"w\"},{\"name\":\"Max_Schmitt\",\"id\":4,\"playerid\":34,\"message\":\"würfel park\"},{\"name\":\"Max_Schmitt\",\"id\":5,\"playerid\":34,\"message\":\"würfel park\"},{\"name\":\"Max_Schmitt\",\"id\":6,\"playerid\":34,\"message\":\"würfel park 04562515484849489\"},{\"name\":\"Max_Schmitt\",\"id\":7,\"playerid\":34,\"message\":\"würfel park 04562515484849489\"}]');

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
(2, 'steam:1100001166f2d38', 0, 490180874, NULL, 'Blacksnakes');

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
(1, 'steam:1100001166f2d38', 1, 490170874, '2023-05-04 23:30:02', 1, 2);

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
  `skin` longtext DEFAULT NULL,
  `job` varchar(50) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `firstname` varchar(50) DEFAULT '',
  `lastname` varchar(50) DEFAULT '',
  `dateofbirth` varchar(25) DEFAULT '',
  `sex` varchar(10) DEFAULT '',
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
  `cryptocurrencytransfers` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `is_dead`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `phone_number`, `last_property`, `status`, `jail`, `hdjail_data`, `apps`, `widget`, `bt`, `charinfo`, `metadata`, `cryptocurrency`, `cryptocurrencytransfers`) VALUES
('steam:11000013d79d68d', 'license:7ce132c1bc9d7a5d7da81052bca6f797816f5189', 491745850, 'Julia', '{\"decals_1\":0,\"makeup_4\":16,\"mask_1\":0,\"pants_2\":7,\"blemishes_1\":0,\"glasses_1\":5,\"makeup_1\":1,\"chest_1\":0,\"complexion_2\":0,\"ears_1\":15,\"pants_1\":16,\"age_1\":0,\"hair_color_1\":29,\"glasses_2\":0,\"blush_3\":0,\"torso_1\":13,\"bproof_1\":0,\"age_2\":0,\"lipstick_4\":0,\"sun_2\":0,\"sex\":1,\"helmet_2\":0,\"eyebrows_2\":10,\"ears_2\":0,\"bracelets_1\":-1,\"chest_2\":0,\"mask_2\":0,\"beard_4\":0,\"makeup_2\":10,\"chest_3\":0,\"shoes_1\":15,\"skin\":29,\"eyebrows_4\":0,\"chain_2\":0,\"beard_3\":0,\"arms\":4,\"blemishes_2\":0,\"beard_1\":0,\"lipstick_2\":10,\"tshirt_2\":0,\"face\":31,\"bproof_2\":0,\"tshirt_1\":3,\"makeup_3\":20,\"blush_1\":3,\"torso_2\":0,\"hair_2\":0,\"bodyb_1\":0,\"moles_1\":0,\"complexion_1\":0,\"bodyb_2\":0,\"lipstick_3\":22,\"hair_color_2\":29,\"sun_1\":0,\"bracelets_2\":0,\"bags_2\":0,\"shoes_2\":12,\"moles_2\":0,\"blush_2\":4,\"chain_1\":6,\"eyebrows_3\":0,\"watches_2\":0,\"decals_2\":0,\"eye_color\":3,\"beard_2\":0,\"helmet_1\":-1,\"watches_1\":-1,\"lipstick_1\":3,\"arms_2\":0,\"bags_1\":0,\"eyebrows_1\":2,\"hair_1\":36}', 'unemployed', 0, '[{\"ammo\":0,\"components\":[],\"name\":\"WEAPON_GOLFCLUB\",\"label\":\"Golfschläger\"},{\"ammo\":0,\"components\":[],\"name\":\"WEAPON_SWITCHBLADE\",\"label\":\"Klappmesser\"}]', '{\"x\":231.2,\"z\":30.5,\"y\":-806.0}', 502005800, 0, 'superadmin', 0, 'Mina', 'Savalas', '1995.12.22', 'f', '175', 71971, NULL, '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":68.24,\"name\":\"hunger\",\"val\":682400},{\"percent\":76.18,\"name\":\"thirst\",\"val\":761800}]', 0, '{\"cell\":0,\"chest\":[],\"jailtime\":0,\"items\":[],\"clothes\":[],\"job\":0,\"breaks\":0,\"soli\":0,\"jobo\":\"nil\",\"grade\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('steam:1100001166f2d38', 'license:5aea227697fb8091b9efaf418ee3bee6fcdd0014', 0, 'Blacksnakes', '{\"moles_1\":0,\"helmet_1\":110,\"decals_1\":0,\"chain_1\":0,\"watches_2\":0,\"moles_2\":0,\"chest_2\":0,\"shoes_1\":8,\"makeup_4\":0,\"ears_2\":0,\"glasses_1\":18,\"eyebrows_3\":0,\"makeup_2\":0,\"glasses_2\":0,\"lipstick_4\":0,\"blush_1\":0,\"eyebrows_1\":0,\"chest_1\":0,\"eye_color\":0,\"complexion_1\":0,\"age_1\":0,\"sun_2\":0,\"age_2\":0,\"lipstick_3\":0,\"makeup_3\":0,\"sun_1\":0,\"bodyb_2\":0,\"bproof_2\":0,\"hair_color_1\":29,\"blemishes_2\":0,\"helmet_2\":2,\"face\":44,\"eyebrows_2\":0,\"blush_2\":0,\"eyebrows_4\":0,\"blush_3\":0,\"pants_2\":4,\"lipstick_1\":0,\"makeup_1\":0,\"pants_1\":24,\"hair_color_2\":0,\"torso_2\":4,\"lipstick_2\":0,\"bags_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"beard_2\":0,\"shoes_2\":0,\"hair_1\":21,\"skin\":4,\"bags_1\":0,\"chest_3\":0,\"bodyb_1\":0,\"sex\":0,\"arms_2\":0,\"hair_2\":4,\"mask_1\":95,\"watches_1\":-1,\"beard_4\":0,\"torso_1\":70,\"decals_2\":0,\"tshirt_2\":1,\"beard_1\":0,\"beard_3\":0,\"chain_2\":0,\"tshirt_1\":65,\"mask_2\":4,\"bracelets_1\":-1,\"arms\":1,\"complexion_2\":0,\"blemishes_1\":0,\"bracelets_2\":0}', 'police', 0, '[{\"ammo\":0,\"label\":\"Golfschläger\",\"components\":[],\"name\":\"WEAPON_GOLFCLUB\"},{\"ammo\":76,\"label\":\"Pistole\",\"components\":[\"clip_default\"],\"name\":\"WEAPON_PISTOL\"},{\"ammo\":0,\"label\":\"Minigun\",\"components\":[],\"name\":\"WEAPON_MINIGUN\"},{\"ammo\":14,\"label\":\"Haftbombe\",\"components\":[],\"name\":\"WEAPON_STICKYBOMB\"},{\"ammo\":15,\"label\":\"Feuerwerk\",\"components\":[],\"name\":\"WEAPON_FIREWORK\"},{\"ammo\":10,\"label\":\"Schneeball\",\"components\":[],\"name\":\"WEAPON_SNOWBALL\"},{\"ammo\":14,\"label\":\"Railgun\",\"components\":[],\"name\":\"WEAPON_RAILGUN\"},{\"ammo\":0,\"label\":\"Klappmesser\",\"components\":[],\"name\":\"WEAPON_SWITCHBLADE\"},{\"ammo\":76,\"label\":\"Double-Action Revolver\",\"components\":[],\"name\":\"WEAPON_DOUBLEACTION\"}]', '{\"y\":-820.2,\"x\":190.6,\"z\":31.2}', 500850520, 0, 'superadmin', 0, 'Manuel', 'Savalas', '12.08.2001', 'm', '187', 20159, NULL, '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":69.82000000000001,\"name\":\"hunger\",\"val\":698200},{\"percent\":77.365,\"name\":\"thirst\",\"val\":773650}]', 0, '{\"cell\":0,\"chest\":[],\"jailtime\":0,\"items\":[],\"clothes\":[],\"job\":0,\"breaks\":0,\"soli\":0,\"jobo\":\"nil\",\"grade\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(2, 'steam:1100001166f2d38', 'black_money', 0);

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
(10, 'steam:11000013d79d68d', 'medikit', 0),
(11, 'steam:11000013d79d68d', 'washed_stone', 0),
(12, 'steam:11000013d79d68d', 'blowpipe', 0),
(13, 'steam:11000013d79d68d', 'clothe', 0),
(14, 'steam:11000013d79d68d', 'stone', 0),
(15, 'steam:11000013d79d68d', 'carokit', 0),
(16, 'steam:11000013d79d68d', 'gazbottle', 0),
(17, 'steam:11000013d79d68d', 'bandage', 0),
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
(30, 'steam:11000013d79d68d', 'cannabis', 5),
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
(115, 'steam:1100001166f2d38', 'phone', 1),
(116, 'steam:11000013d79d68d', 'phone', 0),
(117, 'steam:1100001166f2d38', 'kevlar', 0),
(118, 'steam:1100001166f2d38', 'aramidfasern', 2),
(119, 'steam:1100001166f2d38', 'bulletproof50', 0),
(120, 'steam:1100001166f2d38', 'bulletproof', 0),
(121, 'steam:1100001166f2d38', 'gebündelte_aramidfasern', 5),
(122, 'steam:11000013d79d68d', 'kevlar', 4),
(123, 'steam:11000013d79d68d', 'gebündelte_aramidfasern', 97),
(124, 'steam:11000013d79d68d', 'bulletproof', 0),
(125, 'steam:11000013d79d68d', 'bulletproof50', 0),
(126, 'steam:11000013d79d68d', 'aramidfasern', 1),
(127, 'steam:1100001166f2d38', 'gebuendeltearamidfasern', 0),
(128, 'steam:11000013d79d68d', 'gebuendeltearamidfasern', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
-- Indizes für die Tabelle `billing`
--
ALTER TABLE `billing`
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
-- Indizes für die Tabelle `npwd_calls`
--
ALTER TABLE `npwd_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `darkchat_channels_channel_identifier_uindex` (`channel_identifier`) USING BTREE;

--
-- Indizes für die Tabelle `npwd_darkchat_channel_members`
--
ALTER TABLE `npwd_darkchat_channel_members`
  ADD KEY `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` (`channel_id`) USING BTREE;

--
-- Indizes für die Tabelle `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `darkchat_messages_darkchat_channels_id_fk` (`channel_id`) USING BTREE;

--
-- Indizes für die Tabelle `npwd_marketplace_listings`
--
ALTER TABLE `npwd_marketplace_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier_UNIQUE` (`identifier`);

--
-- Indizes für die Tabelle `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `match_profile_idx` (`profile`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `npwd_messages`
--
ALTER TABLE `npwd_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_identifier` (`user_identifier`);

--
-- Indizes für die Tabelle `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `message_participants_npwd_messages_conversations_id_fk` (`conversation_id`) USING BTREE;

--
-- Indizes für die Tabelle `npwd_notes`
--
ALTER TABLE `npwd_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `npwd_phone_contacts`
--
ALTER TABLE `npwd_phone_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `npwd_phone_gallery`
--
ALTER TABLE `npwd_phone_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  ADD KEY `profile_idx` (`profile_id`),
  ADD KEY `tweet_idx` (`tweet_id`);

--
-- Indizes für die Tabelle `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_name_UNIQUE` (`profile_name`),
  ADD KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  ADD KEY `profile_idx` (`profile_id`),
  ADD KEY `tweet_idx` (`tweet_id`);

--
-- Indizes für die Tabelle `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` (`profile_id`) USING BTREE;

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
-- Indizes für die Tabelle `phone_alertjobs`
--
ALTER TABLE `phone_alertjobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job` (`job`);

--
-- Indizes für die Tabelle `phone_bankhistory`
--
ALTER TABLE `phone_bankhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_chatrooms`
--
ALTER TABLE `phone_chatrooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_code` (`room_code`);

--
-- Indizes für die Tabelle `phone_chatroom_messages`
--
ALTER TABLE `phone_chatroom_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_information`
--
ALTER TABLE `phone_information`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indizes für die Tabelle `phone_invoices`
--
ALTER TABLE `phone_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_notifies`
--
ALTER TABLE `phone_notifies`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_taxis`
--
ALTER TABLE `phone_taxis`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT für Tabelle `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `darkchat_messages`
--
ALTER TABLE `darkchat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT für Tabelle `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `jobs_garages`
--
ALTER TABLE `jobs_garages`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT für Tabelle `npwd_calls`
--
ALTER TABLE `npwd_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT für Tabelle `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `npwd_marketplace_listings`
--
ALTER TABLE `npwd_marketplace_listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_messages`
--
ALTER TABLE `npwd_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_notes`
--
ALTER TABLE `npwd_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_phone_contacts`
--
ALTER TABLE `npwd_phone_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_phone_gallery`
--
ALTER TABLE `npwd_phone_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `phone_alertjobs`
--
ALTER TABLE `phone_alertjobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `phone_bankhistory`
--
ALTER TABLE `phone_bankhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT für Tabelle `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `phone_chatrooms`
--
ALTER TABLE `phone_chatrooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `phone_chatroom_messages`
--
ALTER TABLE `phone_chatroom_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT für Tabelle `phone_information`
--
ALTER TABLE `phone_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `phone_invoices`
--
ALTER TABLE `phone_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT für Tabelle `phone_notifies`
--
ALTER TABLE `phone_notifies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `stl_bank_transfers`
--
ALTER TABLE `stl_bank_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT für Tabelle `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `npwd_darkchat_channel_members`
--
ALTER TABLE `npwd_darkchat_channel_members`
  ADD CONSTRAINT `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`);

--
-- Constraints der Tabelle `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  ADD CONSTRAINT `darkchat_messages_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`);

--
-- Constraints der Tabelle `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  ADD CONSTRAINT `match_profile` FOREIGN KEY (`profile`) REFERENCES `npwd_match_profiles` (`id`);

--
-- Constraints der Tabelle `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  ADD CONSTRAINT `message_participants_npwd_messages_conversations_id_fk` FOREIGN KEY (`conversation_id`) REFERENCES `npwd_messages_conversations` (`id`);

--
-- Constraints der Tabelle `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  ADD CONSTRAINT `profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  ADD CONSTRAINT `tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  ADD CONSTRAINT `report_profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  ADD CONSTRAINT `report_tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  ADD CONSTRAINT `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
