USE `qbtoesx`;

CREATE TABLE `licenses` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  
  PRIMARY KEY (`id`)
);

CREATE TABLE `user_licenses` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `licenses` (`type`, `label`) VALUES
	('dmv', 'Traffic Laws'),
	('drive', 'Drivers license'),
	('drive_bike', 'Motorcycle licence'),
	('drive_truck', 'Truck license')
;