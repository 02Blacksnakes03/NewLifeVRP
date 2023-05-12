USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_bloods', 'Bloods', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_bloods', 'Bloods', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_bloods', 'Bloods', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('bloods','Bloods')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('bloods',0,'recruit','Runner',1500,'{}','{}'),
	('bloods',1,'officer','Member',1500,'{}','{}'),
	('bloods',2,'sergeant','Executer',1500,'{}','{}'),
	('bloods',3,'lieutenant','Co-OG',1500,'{}','{}'),
	('bloods',4,'boss','OG',1500,'{}','{}')
;

