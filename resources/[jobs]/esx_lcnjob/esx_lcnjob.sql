USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_lcn', 'Lcn', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_lcn', 'Lcn', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_lcn', 'Lcn', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('lcn','Lcn')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('lcn',0,'recruit','Soldier',2000,'{}','{}'),
	('lcn',1,'officer','Member',2300,'{}','{}'),
	('lcn',2,'sergeant','Capo',2500,'{}','{}'),
	('lcn',3,'lieutenant','Co-Don',2800,'{}','{}'),
	('lcn',4,'boss','Don',3500,'{}','{}')
;

