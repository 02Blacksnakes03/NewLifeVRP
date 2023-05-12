USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_ballas', 'Ballas', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_ballas', 'Ballas', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_ballas', 'Ballas', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('ballas','Ballas')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('ballas',0,'recruit','Runner',1500,'{}','{}'),
	('ballas',1,'officer','Lil Hustler',1500,'{}','{}'),
	('ballas',2,'sergeant','Hustler',1500,'{}','{}'),
	('ballas',3,'lieutenant','Thug',1500,'{}','{}'),
	('ballas',4,'lieutenant','Street OG',1500,'{}','{}'),
	('ballas',5,'lieutenant','Sec.OG',1500,'{}','{}'),
	('ballas',6,'boss','OG',1500,'{}','{}')
;

