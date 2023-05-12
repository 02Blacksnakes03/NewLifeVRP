USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_unicorn', 'Unicorn', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_unicorn', 'Unicorn', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_unicorn', 'Unicorn', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('unicorn','Unicorn')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('unicorn',0,'recruit','Praktikant',2000,'{}','{}'),
	('unicorn',1,'officer','Barkeeper',2300,'{}','{}'),
	('unicorn',2,'sergeant','Tänzer/in',2500,'{}','{}'),
	('unicorn',3,'lieutenant','Büro',2800,'{}','{}'),
	('unicorn',4,'boss','Boss Bitch',3500,'{}','{}')
;

