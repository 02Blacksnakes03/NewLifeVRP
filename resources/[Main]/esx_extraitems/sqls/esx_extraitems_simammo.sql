USE `es_extended`;

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('darknet', 'Dark Net', 10, 0, 1),
	('bandage', 'Bandage', 10, 0, 1),
	('binoculars', 'Ferngläser', 10, 0, 1),
	('boxbig', 'Munition', 25, 0, 1),
	('bulletproof', 'Schutzweste', 25, 0, 1),
	('cleankit', 'Reinigungsset', 15, 0, 1),
	('defib', 'Defibrillator', 1, 0, 1),
	('drill', 'Bohrer', 15, 0, 1),
	('firework', 'Feuerwerk',5, 0, 1),
	('firstaidkit', 'Erste-Hilfe-Kasten', 15, 0, 1),
	('handcuffs', 'Seile', 15, 0, 1),
	('handcuffkey', 'Schere', 15, 0, 1),
	('lockpick', 'Dietrich', 15, 0, 1),
	('oxygenmask', 'Sauerstoffmaske', 15, 0, 1),
	('repairkit', 'Reparatur-Kit', 15, 0, 1),
	('tirekit', 'Reifenkit', 4, 0, 1),
	('vape', 'Vape', 100, 0, 1),
	('vehgps', 'Fahrzeug-GPS', 100, 0, 1),
	('weakit', 'Waffenset', 100, 0, 1)
;

INSERT INTO `shops` (store, item, price) VALUES
	('ExtraItemsShop', 'darknet', 25),
	('ExtraItemsShop', 'bandage', 2),
	('ExtraItemsShop', 'binoculars', 10),
	('ExtraItemsShop', 'boxbig', 60),
	('ExtraItemsShop', 'boxsmall', 25),
	('ExtraItemsShop', 'bulletproof', 300),
	('ExtraItemsShop', 'cleankit', 5),
	('ExtraItemsShop', 'defib', 1200),
	('ExtraItemsShop', 'drill', 180),
	('ExtraItemsShop', 'firework', 15),
	('ExtraItemsShop', 'firstaidkit', 80),
	('ExtraItemsShop', 'handcuffs', 27),
	('ExtraItemsShop', 'handcuffkey', 5),
	('ExtraItemsShop', 'lockpick', 20),
	('ExtraItemsShop', 'oxygenmask', 400),
	('ExtraItemsShop', 'repairkit', 150),
	('ExtraItemsShop', 'tirekit', 25),
	('ExtraItemsShop', 'vape', 50),
	('ExtraItemsShop', 'vehgps', 25),
	('ExtraItemsShop', 'weakit', 75)
;
