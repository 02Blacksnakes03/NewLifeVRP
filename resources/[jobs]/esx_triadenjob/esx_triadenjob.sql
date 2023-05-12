USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_triaden', 'Triaden', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_triaden', 'Triaden', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_triaden', 'Triaden', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('triaden','Triaden')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('triaden',0,'recruit','Heung Chu',2000,'{}','{}'),
	('triaden',1,'officer','Heung Kwan',2300,'{}','{}'),
	('triaden',2,'sergeant','Sin Fung',2500,'{}','{}'),
	('triaden',3,'lieutenant','Fu Shan Chu',2800,'{}','{}'),
	('triaden',4,'boss','Shan Chu',3500,'{}','{}')
;

