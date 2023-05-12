USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_187', '187', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_187', '187', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_187', '187', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('187','187')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('187',0,'recruit','Wannabe',1500,'{}','{}'),
	('187',1,'officer','Member',1500,'{}','{}'),
	('187',2,'sergeant','Truster',1500,'{}','{}'),
	('187',3,'lieutenant','Executer',1500,'{}','{}'),
	('187',4,'boss','OG',1500,'{}','{}')
;

