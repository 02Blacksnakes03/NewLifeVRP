ALTER TABLE `users` ADD COLUMN `hdjail_data` LONGTEXT NOT NULL DEFAULT '{"cell":0,"chest":[],"jailtime":0,"items":[],"clothes":[],"job":0,"breaks":0,"soli":0,"jobo":"nil","grade":0}';

INSERT INTO `jobs` (name, label) VALUES
	('prisoner', 'Gefängnis Wart')	
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('prisoner',0,'wärter','Wärter',10,'{}','{}')
;


INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES 
('HD_jspoon', 'Gebrochener Löffel', 100, 0, 1),
('HD_spoon', 'Löffel', 100, 0, 1),
('HD_bCloth', 'Zerbrochener Löffel mit nassem Lappen', 100, 0, 1),
('HD_wCloth', 'Feuchte Tücher', 100, 0, 1),
('HD_cloth', 'Tuch', 100, 0, 1),
('HD_cleaner', 'Reiniger', 100, 0, 1),
('HD_file', 'Datei', 100, 0, 1),
('HD_sMetal', 'Scharfes Metall', 100, 0, 1),
('HD_metal', 'Metall', 100, 0, 1),
('HD_rock', 'Felsen', 100, 0, 1),
('HD_ladle', 'Schöpfkelle', 100, 0, 1),
('HD_bLadle', 'Zerbrochene Schöpfkelle', 100, 0, 1),
('HD_dLiquid', 'Schmutzige Flüssigkeit', 100, 0, 1),
('HD_acid', 'Säure', 100, 0, 1),
('HD_grease', 'Schmierfett', 100, 0, 1),
('HD_bottle', 'Flasche', 100, 0, 1),
('HD_sChange', 'Kleingeld', 100, 0, 1),
('HD_Shank', 'Schaft', 100, 0, 1),
('HD_miniH', 'Mini Hammer', 100, 0, 1),
('HD_fPacket', 'Geschmackspaket', 100, 0, 1),
('HD_pPunch', 'Gefängnis Kasperle', 100, 0, 1),
('HD_iHeat', 'Eintauchheizkörper', 100, 0, 1),
('HD_plug', 'Stecker', 100, 0, 1),
('HD_booze', 'Schnaps', 100, 0, 1)
;