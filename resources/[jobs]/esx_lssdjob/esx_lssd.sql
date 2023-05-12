INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_lssd', 'LSSD', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_lssd', 'LSSD', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_lssd', 'LSSD', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('lssd','LSSD')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('lssd',0,'recruit','Recruit',2000,'{}','{}'),
	('lssd',1,'officer','Officer',2300,'{}','{}'),
	('lssd',2,'sergeant','Sergeant',2500,'{}','{}'),
	('lssd',3,'lieutenant','Lieutenant',2800,'{}','{}'),
	('lssd',4,'chief','Chief',3500,'{}','{}')
;

