USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_vagos', 'Vagos', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_vagos', 'Vagos', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_vagos', 'Vagos', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('vagos','Vagos')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('vagos',0,'recruit','Runner',2000,'{}','{}'),
	('vagos',1,'officer','Member',2300,'{}','{}'),
	('vagos',2,'sergeant','Executer',2500,'{}','{}'),
	('vagos',3,'lieutenant','El Cabeza',2800,'{}','{}'),
	('vagos',4,'boss','Patron',3500,'{}','{}')
;

