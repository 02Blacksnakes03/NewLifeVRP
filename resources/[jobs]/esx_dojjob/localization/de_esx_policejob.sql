USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_doj','DOJ',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_doj','DOJ',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_doj', 'DOJ', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('doj', 'DOJ')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('doj',0,'recruit','Justice Anwärter',1500,'{}','{}'),
	('doj',1,'officer','Justice Anwalt',2000,'{}','{}'),
	('doj',2,'officer','Justice Rechtsanwalt',2200,'{}','{}'),
	('doj',3,'sergeant','Justice Staatsanwalt',2500,'{}','{}'),
	('doj',4,'sergeant','Justice Oberstaatsanwalt ',2700,'{}','{}'),
	('doj',5,'lieutenant','Justice Richter',3000,'{}','{}'),
	('doj',6,'boss','Chief of Justice',3500,'{}','{}')
;
