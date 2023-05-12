USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_brokers', 'Brokers', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_brokers', 'Brokers', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_brokers', 'Brokers', 1) - ESX

;

INSERT INTO `jobs` (name, label) VALUES
	('brokers','Brokers')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('brokers',0,'officer','Runner',1500,'{}','{}'),
	('brokers',1,'sergeant','Young Broker',1500,'{}','{}'),
	('brokers',2,'lieutenant','Broker',1500,'{}','{}'),
	('brokers',3,'lieutenant','Big Broker',1500,'{}','{}'),
	('brokers',4,'lieutenant','ViceOG',1500,'{}','{}'),
	('brokers',5,'boss','OG',1500,'{}','{}')
;

