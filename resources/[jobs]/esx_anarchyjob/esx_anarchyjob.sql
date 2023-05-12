USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_anarchy', 'Anarchy', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_anarchy', 'Anarchy', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_anarchy', 'Anarchy', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('anarchy','Anarchy')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('anarchy',0,'recruit','President',1500,'{}','{}'),
	('anarchy',1,'officer','Vice President',1500,'{}','{}'),
	('anarchy',2,'sergeant','Secreptary',1500,'{}','{}'),
	('anarchy',3,'lieutenant','Sergeant at arms',1500,'{}','{}'),
	('anarchy',4,'lieutenant','Son',1500,'{}','{}'),
	('anarchy',5,'lieutenant','Member',1500,'{}','{}'),
	('anarchy',6,'boss','Prospect',1500,'{}','{}')
;

