USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_fib','FIB',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_fib','FIB',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_fib', 'FIB', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('fib', 'FIB')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('fib',0,'recruit','Rekrut',20,'{}','{}'),
	('fib',1,'officer','Trainee',40,'{}','{}'),
	('fib',2,'sergeant','Agent',60,'{}','{}'),
	('fib',3,'sergeant','Special Agent',85,'{}','{}'),
	('fib',4,'sergeant','Senior Agent',100,'{}','{}'),
	('fib',5,'sergeant','Special Agent',20,'{}','{}'),
	('fib',6,'sergeant','Senior Special Agent',40,'{}','{}'),
	('fib',7,'lieutenant','Section Chief',60,'{}','{}'),
	('fib',8,'boss','Deputy Chief',85,'{}','{}'),
	('fib',9,'boss','FIB Director',100,'{}','{}')
;

