USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_miri', 'miri', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_miri', 'miri', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_miri', 'miri', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('miri','Miri')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('miri',0,'recruit','Läufer',1500,'{}','{}'),
	('miri',1,'officer','Member',1500,'{}','{}'),
	('miri',2,'sergeant','Rechte Hand',1500,'{}','{}'),
	('miri',3,'lieutenant','Co-Don',1500,'{}','{}'),
	('miri',4,'boss','Don',1500,'{}','{}')
;

