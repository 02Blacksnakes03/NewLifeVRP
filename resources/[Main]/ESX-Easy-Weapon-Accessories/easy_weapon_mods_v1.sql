INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('yusuf', 'Waffen Farbe', 10, 0, 1),
('grip', 'Griff', 10, 0, 1),
('flashlight', 'Taschenlampe', 10, 0, 1),
('suppressor', 'Schalldämpfer', 10, 0, 1);

INSERT INTO `shops` ( `store`, `item`, `price`) VALUES
( 'RobsLiquor', 'yusuf', 400),
( 'RobsLiquor', 'grip', 250),
( 'RobsLiquor', 'flashlight', 60),
( 'RobsLiquor', 'suppressor', 750);