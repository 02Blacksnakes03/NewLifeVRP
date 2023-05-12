USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_brigada', 'Brigada', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_brigada', 'Brigada', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_brigada', 'Brigada', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('brigada','Brigada')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('brigada',0,'recruit','Rekrut',1500,'{}','{}'),
	('brigada',1,'officer','Soldat',1500,'{}','{}'),
	('brigada',2,'sergeant','Genosse',1500,'{}','{}'),
	('brigada',3,'lieutenant','Feldwebel',1500,'{}','{}'),
	('brigada',4,'lieutenant','Oberfeldwebel',1500,'{}','{}'),
	('brigada',5,'lieutenant','Stabsfeldwebel',1500,'{}','{}'),
	('brigada',6,'lieutenant','Leutnant',1500,'{}','{}'),
	('brigada',7,'lieutenant','Major',1500,'{}','{}'),
	('brigada',8,'lieutenant','Vize-Kommandeur',1500,'{}','{}'),
	('brigada',9,'lieutenant','Kommandeur',1500,'{}','{}'),
	('brigada',10,'lieutenant','Vize-General',1500,'{}','{}'),
	('brigada',11,'boss','General',1500,'{}','{}')
;

