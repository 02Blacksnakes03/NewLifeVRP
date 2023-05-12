USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_mg13', 'MG13', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_mg13', 'MG13', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_mg13', 'MG13', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('mg13','MG13')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('mg13',0,'recruit','El Novato',1500,'{}','{}'),
	('mg13',1,'officer','El Miembro',1500,'{}','{}'),
	('mg13',2,'sergeant','Soldado',1500,'{}','{}'),
	('mg13',3,'lieutenant','El Carnicero',1500,'{}','{}'),
	('mg13',4,'lieutenant','El Cabeza',1500,'{}','{}'),
	('mg13',5,'boss','El Patron',1500,'{}','{}')
;

