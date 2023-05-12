USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_camorra', 'Camorra', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_camorra', 'Camorra', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_camorra', 'Camorra', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('camorra','Camorra')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('camorra',0,'recruit','Membro di prova',1500,'{}','{}'),
	('camorra',1,'officer','Membro',1500,'{}','{}'),
	('camorra',2,'sergeant','Soldato',1500,'{}','{}'),
	('camorra',3,'lieutenant','Mercenario',1500,'{}','{}'),
	('camorra',4,'lieutenant','Angelo della Morte',1500,'{}','{}'),
	('camorra',5,'lieutenant','Capitano',1500,'{}','{}'),
	('camorra',6,'lieutenant','Picciotti',1500,'{}','{}'),
	('camorra',7,'lieutenant','Sgarrista',1500,'{}','{}'),
	('camorra',8,'lieutenant','Santista',1500,'{}','{}'),
	('camorra',9,'lieutenant','Pate',1500,'{}','{}'),
	('camorra',10,'lieutenant','Capo',1500,'{}','{}'),
	('camorra',11,'boss','Don',1500,'{}','{}')
;

