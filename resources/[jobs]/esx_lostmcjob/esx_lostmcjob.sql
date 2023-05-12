USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_lostmc', 'lostmc', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_lostmc', 'lostmc', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_lostmc', 'lostmc', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('lostmc','The Lost MC')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('lostmc',0,'recruit','Wannabe',1500,'{}','{}'),
	('lostmc',1,'officer','Member',1500,'{}','{}'),
	('lostmc',2,'sergeant','Truster',1500,'{}','{}'),
	('lostmc',3,'lieutenant','Executer',1500,'{}','{}'),
	('lostmc',4,'boss','OG',1500,'{}','{}')
;

