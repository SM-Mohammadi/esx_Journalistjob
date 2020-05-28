INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_Journalist', 'Journalist', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_Journalist', 'Journalist', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_Journalist', 'Journalist', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('Journalist','Journalist')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('Journalist',0,'agent','Filmbardar',3000,'{}','{}'),
	('Journalist',1,'special','Sedabardar',4000,'{}','{}'),
	('Journalist',2,'supervisor','Gozareshgar',5000,'{}','{}'),
	('Journalist',3,'assistant','Moaven',5500,'{}','{}'),
	('Journalist',4,'boss','Rais',6000,'{}','{}')
;
