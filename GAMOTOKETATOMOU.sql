SET GLOBAL log_bin_trust_function_creators = 1;
drop database erecruit;
create database erecruit;
use erecruit;

CREATE TABLE etaireia (
AFM char(9) NOT NULL, 
DOY varchar(15),
name varchar(35) NOT NULL default 'NO-NAME registered',
tel bigint(16),
street varchar(15),
num tinyint,
city varchar(15),
country varchar(15),
PRIMARY KEY (AFM)
)engine=InnoDB;

insert into etaireia (AFM, DOY, name, tel, street, num, city, country) values 
('023453344', 'C Patras', 'EXPENDITURE Ltd', 2610256321, 'Maizonos', 123, 'Patra', 'Greece'), 
('023451232', 'A Patras', 'Typology Ltd', 2610231452, 'Korinthou', 56, 'Patra', 'Greece'),
('123432211', 'A Geraka', 'SoftSol A.E.', 2103452133, 'Ahepa', 44, 'Athina', 'Greece'), 
('18765549', 'C Peiraia', 'Unigram', 2103452672, 'Karaiskaki', 10, 'Peiraias', 'Greece'),
('561234561', 'GS 35321 L', 'InCodeWeTrust', 1242345612, 'Oxford', 12, 'London', 'United Kingdom'), 
('23122345', 'SF 1234 BG', 'SocialSc', 3200123451, 'General Sklevi', 35, 'Sofia', 'Bulgaria');


CREATE TABLE antikeim (
title VARCHAR(36) NOT NULL,
descr TINYTEXT,
belongs_to varchar(36),
PRIMARY KEY (title),
CONSTRAINT ANTIKEIMENO FOREIGN KEY (belongs_to) REFERENCES antikeim(title) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into antikeim (title, descr, belongs_to) values 
('Computer Science', 'Root element, no more general antikeim', NULL),
('Databases', 'Level one element, child of Computer Science', 'Computer Science'),
('AI', 'Level one element, child of Computer Science', 'Computer Science'),
('Algorithms', 'Level one element, child of Computer Science', 'Computer Science'),
('Networking', 'Level one element, child of Computer Science', 'Computer Science'),
('Graphics', 'Level one element, child of Computer Science', 'Computer Science'),
('2D', 'Level two element, child of Graphics', 'Graphics'),
('3D', 'Level two element, child of Graphics', 'Graphics'),
('Animation', 'Level two element, child of Graphics', 'Graphics'),
('Programming', 'Level one element, child of Computer Science', 'Computer Science'),
('Web Programming', 'Level two element, child of Programming', 'Programming'),
('Mobile Apps', 'Level two element, child of Programming', 'Programming'),
('Relational DBs', 'Level two element, child of Databases', 'Databases'),
('Object-Oriented DBs', 'Level two element, child of Databases', 'Databases'),
('NoSQL DBs', 'Level two element, child of Databases', 'Databases'),
('Robotics', 'Level two element, child of AI', 'AI'),
('NLP', 'Level two element, child of AI', 'AI'),
('Information Retieval', 'Level three element, child of NLP', 'NLP'),
('Language analysis', ' Level three element, child of NLP', 'NLP'),
('Data structures', 'Level two element, child of Algorithms', 'Algorithms'),
('Complexity and Efficiency', 'Level two element, child of Algorithms', 'Algorithms'),
('Network setup and maintainance', 'Level two element, child of Networking', 'Networking'),
('Device connectivity', 'Level two element, child of Networking', 'Networking')
;


CREATE TABLE `user` (
username varchar(12) NOT NULL,
`password` varchar(10),
`name` varchar (25) NOT NULL,
surname varchar (35) NOT NULL,
reg_date DATETIME,
email varchar(30),
PRIMARY KEY (username)
)engine=InnoDB;

/* add CANDIDATES */
insert into `user` (username, `password`, `name`, surname, reg_date, email) values 
('cleogeo', 'upL34r', 'Cleomenis', 'Georgiadis', '2018-02-13 12:23:34', 'cleom17@gmail.com'),
('zazahir23', 'zoolhger', 'Ahmet', 'Mobasher-Hirs', '2017-05-11 14:08:23', 'ahmetTech@yahoo.com'),
('lionarF', 'erg2378', 'Freddy', 'Lionar', '2018-10-07 20:09:10', 'Lionarfre@ezra.co.uk'),
('liagourma', 'sionpass', 'Maria', 'Liagkoumi', '2018-05-22 17:03:01', 'mliagkr@gmail.com'),
('mnikol', 'm@n0lis', 'Manolis', 'Nikopoloulos', '2017-11-08 21:07:12', 'nikolp@gmail.com'),
('abrown', 'w1lcoxon', 'Andrew', 'McBrown', '2018-01-27 16:02:56', 'andrewbr@yahoo.com');

/* add RECRUITERS */
insert into `user` (username, `password`, `name`, surname, reg_date, email) values 
('msmith', 'we3wd', 'Mike', 'Smith', '2017-06-23 13:12:34', 'smithm@unigram.com'),
('varcon82', 'gotop@s$', 'Nick', 'Varcon', '2018-12-03 18:12:39', 'varcni@incode.com'),
('bettyg', 'jUn38@', 'Betty', 'Georgiou', '2017-04-12 12:23:10', 'georb@softsol.gr'),
('papad', 'pdfr45t', 'Kostas', 'Papadatos', '2018-11-17 23:10:08', 'georb@softsol.gr'),
('n_tri', 'grt12wX', 'Nikol', 'Triantou', '2018-03-08 20:10:20', 'triantou@typology.gr'),
('Giankost', 'jUn38@', 'Giannis', 'Kostoglou', '2018-02-23 11:08:15', 'kostog@typology.gr'),
('pavkie', 'julie79', 'Pavel', 'Skiev', '2017-03-25 11:23:45', 'pskiev@social-sc.bg')
;

/* add ADMINS */
insert into `user` (username, `password`, `name`, surname, reg_date, email) values 
('PaNoSM', '19981998', 'Panagiotis', 'Mamasoulas', '2019-07-19 18:12:00', 'panosadmin@gmail.com'),
('zisilis9', 'DTramp', 'Zisimos', 'Tramparis', '2019-07-19 18:13:00', 'zisisadmin@gmail.com')
;

CREATE TABLE admin (
username VARCHAR(12) NOT NULL
)Engine=InnoDB;

INSERT INTO admin (username) values
('PaNoSM'),
('zisilis9')
;



CREATE TABLE recruiter (
username VARCHAR(12) NOT NULL,
exp_years TINYINT,
firm CHAR(9),
PRIMARY KEY (username),
CONSTRAINT RECR_USER FOREIGN KEY (username) REFERENCES `user`(username) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT RECR_ETAIREIA FOREIGN KEY (firm) REFERENCES etaireia(AFM) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into recruiter (username, exp_years, firm) values 
('msmith', 4, '18765549'),
('varcon82', 2 , '561234561'),
('bettyg', 6, '123432211'),
('papad', 5, '123432211'),
('n_tri', 8, '023451232'),
('Giankost', 8, '023451232'),
('pavkie', 10, '23122345')
;

CREATE TABLE candidate(
username VARCHAR(12) NOT NULL,
bio TEXT NOT NULL,
sistatikes VARCHAR(35),
certificates VARCHAR(35),
PRIMARY KEY (username),
CONSTRAINT CAND_USER FOREIGN KEY (username) REFERENCES `user`(username) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into candidate(username, bio, sistatikes, certificates) values
('cleogeo', 'Cleomenis is a secodary education graduate who has long work experience in web programming technologies (has worked for than 25 years in the field). He has been also certified as a CISCO security expert (CCIE Security) and an IT project manager (PMI Project Management Professional and Project Management Professional).', 'RecLetters.pdf', 'certifALL.pdf'),
('zazahir23', 'Mr Mobasher is a highly skilled web programmer who also has experience in 2d and 3d graphics generation as well as animation rendering. Moreover he has long experience with design, development and administration of large scale DBs, mostly relational.', 'Mobasher_rec.pdf', 'Mobasher-certif.pdf'),
('lionarF', 'Freddy is an experienced web programmer but has also worked on mobile apps development the last 5 years. He is a freelancer and can work from a distance. He can also manage 2d graphics and has long experience with DB scripting (My SQL, MariaDB, MS SQL Server and Oracle.', 'LionFr_letters.pdf', 'LionFR_cert.pdf'),
('liagourma', 'Mrs Liagkoumi has a long experience in NLP and more specifically Information Retrieval and has also long research background on both areas. In addition she has worked on large coprus datasets and data visualization algorithms.', 'lettersLiagk.pdf', 'trainingLiagk.pdf'),
('mnikol', 'Mr Nikolopoulos holds a Computer Science diploma and an MSc and has long work experience in AI applications as well as Robotics. He has also managed large R&D projects in these domains and has teaching and research experience as well. Please refer to his referral letters for more details.','referralLetNikol.pdf','degreesAndCertNikol.pdf'),
('abrown', 'Andrew has a strong theoretical background in Algorithms and Data Stuctures and has worked for more than a decade in a software house that specializes in high performance data management. He is well skilled in high complexity schemes and heavy load memory management.', 'lettersscannedMcBr.pdf', 'degrees-cert.pdf')
;


CREATE TABLE languages(
candid VARCHAR(12) NOT NULL,
lang SET('EN', 'FR', 'SP', 'GR'),
PRIMARY KEY (candid, lang),
CONSTRAINT CAND_LANG FOREIGN KEY (candid) REFERENCES candidate(username) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into languages (candid, lang) values 
('cleogeo', 'EN,SP,GR'),
('zazahir23', 'GR,EN'),
('lionarF', 'EN,FR'),
('liagourma', 'GR,EN'),
('mnikol', 'GR,FR'),
('abrown', 'EN,FR,SP')
;

CREATE TABLE project(
candid varchar(12) NOT NULL,
num TINYINT,
descr TEXT,
url varchar(60),
PRIMARY KEY (candid, num),
CONSTRAINT PROJ_CAND FOREIGN KEY (candid) REFERENCES candidate(username) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into project (candid, num, descr, url) values 
('abrown', 1, 'Minimal examples of data structures and algorithms in Python', 'https://github.com/a_brown/algorithms'),
('abrown', 2, 'Interactive Online Platform that Visualizes Algorithms from Code', 'https://github.com/a_brown/algorithm-visualizer'),
('abrown', 3, 'Repository which contains links and resources on different topics of Computer Science', 'https://github.com/a_brown/AlgoWiki'),
('mnikol', 1, 'Essential Cheat Sheets for deep learning and machine learning researchers', 'https://github.com/nikolo0p/cheatsheets-ai'),
('mnikol', 2, 'Python sample codes for robotics algorithms.', 'https://github.com/nikolo0p/PythonRobotics'),
('zazahir23',1,'Go Graphics - 2D rendering in Go with a simple API.','https://github.com/mob@s/gg'),
('zazahir23',2,'Draco is a library for compressing and decompressing 3D geometric meshes and point clouds. It is intended to improve the storage and transmission of 3D graphics.','https://github.com/mob@s/draco'),
('zazahir23',3,'Data Discovery and Lineage for Big Data Ecosystem.','https://github.com/linkedin/WhereHows'),
('lionarF', 1, 'HTML5 Mobile App UI templates created using Intel App Framework.', 'https://github.com/lionarGF/appframework-templates'),
('lionarF', 2, 'Mobile Version of Travel sample App using Couchbase Lite 2.0.', 'https://github.com/lionarFG/mobile-travel-sample'),
('lionarF', 3, 'Appium Demo App with clearly defined Page Object Pattern for React Native Mobile App. Test Language - Javascript.','https://github.com/lionarFG/Appium-Page-Object-Model-Demo'),
('liagourma', 1, 'WebGL2 powered geospatial visualization layers. offers an extensive catalog of pre-packaged visualization "layers", including ScatterplotLayer, ArcLayer, TextLayer, GeoJsonLayer, etc. The input to a layer is usually an array of JSON objects. Each layer offers highly-flexible API to customize how the data should be rendered.', 'https://github.com/liagk0R/deck.gl'),
('liagourma', 2, 'Messy datasets? Missing values? missingno provides a small toolset of flexible and easy-to-use missing data visualizations and utilities that allows a quick visual summary of the completeness (or lack thereof) of the dataset.','https://github.com/liagk0R/missingno'),
('liagourma', 3,'Repository to track the progress in Natural Language Processing (NLP), including the datasets and the current state-of-the-art for the most common NLP tasks','https://github.com/liagk0R/NLP-progress'),
('liagourma', 4,'Supporting Rapid Prototyping with a Toolkit (incl. Datasets and Neural Network Layers)', 'https://github.com/liagk0R/PyTorch-NLP')
;

CREATE TABLE degree (
titlos VARCHAR(50) NOT NULL,
idryma VARCHAR (40) NOT NULL,
bathmida ENUM ('LYKEIO', 'UNIV', 'MASTER', 'PHD'),
PRIMARY KEY (titlos, idryma)
)engine=InnoDB;

insert into degree (titlos, idryma, bathmida) values 
('Lysium certificate', '2nd Lysium of Aigaleo', 'LYKEIO'),
('Computer and Infromatics Eng.', ' Patras University', 'UNIV'),
('Electrical and Computer Eng.', 'Metsovio Polytexneio', 'UNIV'),
('Computer Science Dipl.', 'Lancster University', 'UNIV'),
('Computer Vision and Modelling', 'Princeton University', 'MASTER'),
('Artificial Intelligence', ' Cambrigde University', 'MASTER'),
('Big Data and Analytics', ' Imperial College London', 'MASTER'),
('Advanced Rendering Techniques', 'Delft University of Technology', 'MASTER'),
('Computer Science and Engineering', 'Delft University of Technology', 'UNIV'),
('Data Science Bachelor','Eindhoven University of Technology', 'UNIV'),
('PDEng Data Science', 'Eindhoven University of Technology', 'PHD'),
('NLP related high efficiency algorithms', 'Patras University', 'PHD'),
('Big Data Structures and Algorithms', 'Technical University of Denmark', 'MASTER')
;


CREATE TABLE has_degree (
degr_title VARCHAR(50) NOT NULL,
degr_idryma VARCHAR (40) NOT NULL,
cand_usrname VARCHAR(12) NOT NULL,
etos YEAR,
grade FLOAT(3,1),
PRIMARY KEY (degr_title, degr_idryma, cand_usrname),
CONSTRAINT HAS_DEGR FOREIGN KEY (degr_title, degr_idryma) REFERENCES degree(titlos, idryma) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT HAS_CAND FOREIGN KEY (cand_usrname) REFERENCES candidate(username) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;
show tables;

insert into has_degree (cand_usrname, degr_title, degr_idryma, etos, grade) values 
('cleogeo','Lysium certificate', '2nd Lysium of Aigaleo', 1999, 19.2),
('zazahir23', 'Computer Science and Engineering', 'Delft University of Technology',2000, 8.2),
('zazahir23', 'PDEng Data Science', 'Eindhoven University of Technology',2006, 9),
('lionarF', 'Electrical and Computer Eng.', 'Metsovio Polytexneio', 1998, 7.6),
('lionarF', 'Computer Vision and Modelling', 'Princeton University', 2001, 8.5),
('liagourma', 'Computer and Infromatics Eng.', ' Patras University', 2003, 8.6),
('liagourma', 'Artificial Intelligence', ' Cambrigde University', 2008, 8),
('liagourma', 'NLP related high efficiency algorithms', 'Patras University', 2013, 9),
('mnikol', 'Computer Science Dipl.', 'Lancster University', 2001, 8.4),
('mnikol', 'Computer Vision and Modelling', 'Princeton University', 2006, 7.4),
('abrown','Data Science Bachelor','Eindhoven University of Technology',2004, 9.2),
('abrown','Big Data and Analytics', ' Imperial College London', 2006, 8),
('abrown','Big Data Structures and Algorithms', 'Technical University of Denmark', 2008, 8.2)
;



CREATE TABLE job(
id int(4) NOT NULL AUTO_INCREMENT,
start_date DATE NOT NULL,
salary FLOAT(6,1),
position VARCHAR(40),
edra VARCHAR(45),
recruiter VARCHAR(12) NOT NULL,
announce_date DATETIME DEFAULT NOW(),
submission_date DATE NOT NULL,
PRIMARY KEY (id),
CONSTRAINT JOB_RECR FOREIGN KEY (recruiter) REFERENCES recruiter(username) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into job (start_date, salary, position, edra, recruiter, announce_date, submission_date) values 
('2019-01-01', 1800, 'data analyst', 'Patra, Greece', 'n_tri', '2018-07-13', '2018-12-20'),
('2019-02-01', 1450, 'web programmer', 'Patra, Greece', 'n_tri', '2018-07-13', '2019-01-10'),
('2019-02-01', 2100, 'mobile app developer', 'Patra, Greece', 'n_tri', '2018-10-24', '2019-01-12'),
('2018-12-25', 2700, 'NLP expert', 'Peiraias, Greece', 'msmith', '2018-10-10', '2018-11-10'),
('2019-03-01', 2100, 'Graphics designer', 'Peiraias, Greece', 'msmith', '2018-10-10', '2019-02-01'),
('201-03-01', 2300, 'Visualization expert', 'Peiraias, Greece','Giankost', '2018-10-20', '2019-01-10'),
('2019-05-01', 1850, 'web and mobile app programmer', 'Athina, Greece','papad', '2018-11-20', '2019-04-12'),
('2019-05-01', 1600, 'graphics expert', 'Athina, Greece','bettyg', '2018-11-20', '2019-04-12'),
('2019-05-01', 1850, 'DB expert', 'Athina, Greece','papad', '2018-11-20', '2019-04-12'),
('2019-04-01', 2100, 'AI expert', 'Sofia, Bulgaria', 'pavkie', '2018-11-21', '2019-03-10'),
('2019-02-01', 2600, 'Algorithmic efficiency expert', 'Sofia, Bulgaria', 'pavkie', '2018-11-01', '2019-01-16'),
('2019-03-01', 2800, 'web and media programmer', 'Oxford, London', 'varcon82', '2018-11-01', '2019-01-03')
;


CREATE TABLE requires(
job_id int(4) NOT NULL,
antikeim_title VARCHAR(36) NOT NULL,
PRIMARY KEY(job_id, antikeim_title),
CONSTRAINT REQ_JOB FOREIGN KEY (job_id) REFERENCES job(id) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT REQ_ANTIK FOREIGN KEY (antikeim_title) REFERENCES antikeim(title) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into requires (job_id, antikeim_title) values 
(1, 'Databases'),
(1,'Algorithms'),
(2,'Programming'),
(2,'Web Programming'),
(3, 'Mobile Apps'),
(3, 'Animation'),
(4, 'AI'),
(4, 'NLP'),
(5, 'Graphics'),
(6, 'Graphics'),
(6, 'Algorithms'),
(6, 'Programming'),
(7, 'Web Programming'),
(7, 'Mobile Apps'),
(8, '2D'),
(8, '3D'),
(9, 'Databases'),
(9, 'NoSQL DBs'),
(10, 'AI'),
(11, 'Complexity and Efficiency'),
(11, 'Algorithms'),
(12, 'Web Programming'),
(12, 'Mobile Apps'),
(12, 'Animation')
;

CREATE TABLE applies (
cand_usrname VARCHAR(12) NOT NULL,
job_id int(4) NOT NULL,
PRIMARY KEY (cand_usrname, job_id),
CONSTRAINT APPL_JOB FOREIGN KEY (job_id) REFERENCES job(id) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT APPL_CAND FOREIGN KEY (cand_usrname) REFERENCES candidate(username) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into applies (cand_usrname, job_id) values 
('cleogeo', 2),
('cleogeo',7),
('zazahir23', 2),
('zazahir23',3),
('zazahir23',6),
('zazahir23',7),
('zazahir23',8),
('zazahir23',12),
('lionarF', 2),
('lionarF',3),
('lionarF',5),
('lionarF',6),
('lionarF',7),
('lionarF',9),
('lionarF',12),
('liagourma', 4),
('liagourma',6),
('liagourma',10),
('mnikol', 4), 
('mnikol',11),
('abrown', 1),
('abrown', 9),
('abrown', 11)
;

/*Our stuff */
CREATE TABLE interview ( 
id int(4) NOT NULL AUTO_INCREMENT, 
cand_username VARCHAR(12) NOT NULL,
recruiter VARCHAR(12) NOT NULL,
int_date DATETIME NOT NULL,
int_length TIME NOT NULL,
comm TEXT,
personality float(2,1) NOT NULL,
PRIMARY KEY (id),
CONSTRAINT INT_CAND FOREIGN KEY (cand_username) REFERENCES candidate(username) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT INT_RECR FOREIGN KEY (recruiter) REFERENCES recruiter(username) ON DELETE CASCADE ON UPDATE CASCADE,
CHECK (personality<=5 AND personality>= 0)
)engine=InnoDB;

insert into interview (cand_username,recruiter,int_date,int_length,comm,personality) values 
('abrown','n_tri','2019-1-12 08:32:21','00:21:19',NULL,'3.4'),
('cleogeo','n_tri','2019-1-12 09:01:05','00:14:42',NULL,'4.2'),
('lionarF','n_tri','2019-1-12 09:16:14','00:12:02','Ήρθε 25 λεπτά αργοπορημένη','2.8'),
('zazahir23','n_tri','2019-1-12 09:30:37','00:19:22',NULL,'3.7'),
('liagourma','msmith','2018-11-11 10:32:37','00:08:14','Εξαίρετος νέος με όρεξη για δουλειά και κοινωνικότατος','4.6'),
('mnikol','msmith','2018-11-11 10:44:08','00:11:14','Ντροπαλή και παρά πολύ αγχωμένη','2.9'),
('lionarF','msmith','2018-11-11 10:57:43','00:06:24','Μεγάλη αφοσίοση για δουλειά εξετείας των δύο ανήλικων παιδιών της','4.1'),
('liagourma','Giankost','2019-1-11 16:10:54','00:12:34','Συστάσεις από τον φίλο msmith','4.3'),
('lionarF','Giankost','2019-1-11 16:25:14','00:09:09',NULL,'3.4'),
('zazahir23','Giankost','2019-1-11 16:37:29','00:10:01',NULL,'4.0'),
('cleogeo','papad','2019-4-14 08:00:39','00:00:00','N.S.','1.0'),
('lionarF','papad','2019-4-14 08:00:32','00:17:02',NULL,'3.6'),
('zazahir23','papad','2019-4-14 08:19:20','00:15:57',NULL,'3.6'),
('abrown','papad','2019-4-14 08:35:41','00:14:19',NULL,'3.5'),
('zazahir23','bettyg','2019-4-13 19:23:12','00:27:32','Ενεργητικός και δραστήριος,παθιασμένος με το αντικείμενο του','4.3'),
('liagourma','pavkie','2019-3-11 11:04:31','00:07:12',NULL,'4.8'),
('abrown','pavkie','2019-01-16 12:31:04','00:06:19',NULL,'3.8'),
('mnikol','pavkie','2019-01-16 12:48:26','00:05:49',NULL,'3.3'),
('lionarF','varcon82','2019-01-04 08:00:00','00:10:00','Difficulties in moving abroad','2.2'),
('zazahir23','varcon82','2019-01-04 08:19:20','00:15:57','Great but not very willing to stick in the compan time scheldude','3.1')
;

CREATE TABLE field (
title VARCHAR(36) NOT NULL,
descr TINYTEXT,
belongs_to varchar(36),
PRIMARY KEY (title),
CONSTRAINT ΤΟΜΕΑΣ FOREIGN KEY (belongs_to) REFERENCES field(title) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into field (title,descr,belongs_to) values
('Computer Engineering', 'Root element, no more general field', NULL),
('Signal processing', 'Level one element, child of Computer Engineering', 'Computer Engineering'),
('Computer vision', 'Level two element, child of Signal processing', 'Signal processing'),
('Robotics', 'Level two element, child of Signal processing', 'Signal processing'),
('Computer Architcture', 'Level one element, child of Computer Engineering', 'Computer Engineering'),
('Integrated circuits', 'Level two element, child of Computer Architcture', 'Computer Architcture'),
('VLSI design', 'Level two element, child of Computer Architcture', 'Computer Architcture')
;

CREATE TABLE specializes (
firm_title CHAR(9) NOT NULL,
field_title VARCHAR(36) NOT NULL,
PRIMARY KEY(field_title, firm_title),
CONSTRAINT SPEC_ETAIREIA FOREIGN KEY (firm_title) REFERENCES etaireia(AFM) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT SPEC_FIELD FOREIGN KEY (field_title) REFERENCES field(title) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into specializes (field_title,firm_title) values 
('VLSI design','023451232'),
('Integrated circuits','023453344'),
('Robotics','123432211'),
('Signal processing','18765549'),
('Integrated circuits','18765549'),
('Computer vision','23122345'),
('VLSI design','561234561'),
('Computer vision','561234561')
;

CREATE TABLE history (
user varchar(12) NOT NULL,
date DATETIME DEFAULT NOW(), 
status ENUM('Success','Not Success') NOT NULL,
type ENUM('Insert','Update','Delete'),
table_name varchar(20) NOT NULL,
CONSTRAINT HIST_XRISTIS FOREIGN KEY (user) REFERENCES user(username) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

/* Select statements */
select job.recruiter as 'Recruiter',etaireia.name as 'Company Name',job.id as 'Job ID',job.salary as 'Salary',count(*) as 'Number of Applications'from job inner join recruiter on job.recruiter = recruiter.username inner join etaireia on recruiter.firm = etaireia.AFM left join applies on job.id = applies.job_id group by job.id having job.salary >=1900;

select candidate.username as 'Name',candidate.certificates as 'Certificates',count(*) as 'Number of Degrees',round(avg(has_degree.grade),2) as 'Grade Avarage'from candidate left join has_degree on candidate.username=has_degree.cand_usrname group by candidate.username having count(*)>1;

select candidate.username as 'Name',count(*) as 'Numbe of appliances',round(AVG(job.salary),2) as 'Salary Avarage'from candidate left join applies on applies.cand_usrname = candidate.username left join job on applies.job_id = job.id group by candidate.username having AVG(job.salary) > 1800;

select etaireia.name as 'Company Name',job.position as 'Position',requires.antikeim_title as 'Object'from etaireia left join recruiter on etaireia.AFM = recruiter.firm left join job on recruiter.username = job.recruiter left join requires on job.id = requires.job_id where job.edra like 'Patra, Greece' AND requires.antikeim_title like '%Program%';

select p.username as 'Name',count(*) as 'no of Jobs',co as 'no of Interviews',round(avg(l.salary),2) as 'Salary Avarage' from recruiter p left join job l on p.username=l.recruiter inner join (select username,count(*) as co from recruiter left join interview on recruiter.username=interview.recruiter group by username) s on s.username = p.username group by s.username having count(*) >= 2 order by avg(l.salary) DESC;

/* Stored Procedure */
DROP FUNCTION IF EXISTS GRA;
Delimiter $ 
 
Create FUNCTION GRA ( bath enum('LYKEIO','UNIV','MASTER','PHD'),grad float(3,1) ) RETURNS float(3,1)
Begin
IF (bath = 'LYKEIO') THEN 
return (grad/20);
ELSEIF (bath = 'UNIV') THEN 
return (grad/2.5);
ELSEIF (bath = 'MASTER') THEN 
return (grad/10);
ELSEIF (bath = 'PHD') THEN 
return (grad/5);
END IF;
return 0;
END$ 

Delimiter ;

DROP PROCEDURE IF EXISTS jobApplications;
DELIMITER $

CREATE PROCEDURE jobApplications(IN jobId INT) 
loop_0:Begin
declare submission DATE;
declare submissionInt DATETIME;
declare Cname varchar(12);
declare cgrade FLOAT(3,1);
declare cprojects FLOAT(3,1);
declare cscore FLOAT(3,1);
declare cTotal FLOAT(3,1);
declare cInterviews INT;
DECLARE message varchar(100) default '';
DECLARE finishedFlag INT Default 0;
declare nameCursor CURSOR for 
select cand_usrname from job left join applies on job_id=id where job_id = jobId;
declare dateCursor CURSOR for 
select int_date from job left join applies on job_id=id left join interview on cand_username = applies.cand_usrname AND job.recruiter = interview.recruiter where job_id = jobId;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finishedFlag = 1;

DROP TABLE IF EXISTS jobApplicationSucceed;
CREATE TABLE jobApplicationSucceed(
username VARCHAR(12) NOT NULL,
grade FLOAT(3,1),
personality FLOAT(2,1),
project FLOAT(3,1),
total FLOAT(3,1),
interviews INT,
PRIMARY KEY (username),
CONSTRAINT SUC_LIST FOREIGN KEY (username) REFERENCES candidate(username) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

DROP TABLE IF EXISTS jobApplicationFail;
CREATE TABLE jobApplicationFail(
username VARCHAR(12) NOT NULL,
reason varchar(100),
PRIMARY KEY (username),
CONSTRAINT FAI_LIST FOREIGN KEY (username) REFERENCES candidate(username) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

Select submission_date into submission from job where id = jobId;
If(submission>NOW()) THEN
	Select "The submission date is still open!";
 	leave loop_0;  
END IF;

OPEN dateCursor;
FETCH dateCursor INTO submissionInt;

WHILE (finishedFlag = 0) DO
If(submissionInt>NOW()) THEN
	Select "The Interviews are yet to be completed!";
 	leave loop_0; 
END IF;

FETCH dateCursor INTO submissionInt;
END WHILE; 
close dateCursor;

OPEN nameCursor;
FETCH nameCursor INTO Cname;

set finishedFlag = 0;
loop_1: WHILE (finishedFlag = 0) DO
select COALESCE(education.grade,0), COALESCE(interview.score,0)  
into cgrade,cscore
from (select username as name,SUM(GRA(bathmida,grade)) + BIT_COUNT(lang)*0.1 as grade from candidate left join has_degree on username = cand_usrname left join degree on degr_title = titlos AND degr_idryma = idryma left join languages on languages.candid = username group by username) education left join project on project.candid = education.name left join (select cand_username,ROUND(AVG(personality),2) as score from interview group by cand_username) interview on interview.cand_username = education.name where Cname = education.name group by education.name ;
set cprojects = 0;

select Round(count(*)/2,1) into cprojects from project where candid = Cname group by candid;
if(cprojects = 0) then
set finishedFlag = 0;
END IF;
set cTotal = cprojects+cgrade+cscore;
IF (cgrade = 0 OR cprojects = 0 OR cscore = 0) THEN
	IF(cscore = 0) THEN
		set message = 'failed the interview ';
	END IF;
	IF(cgrade = 0) THEN
		Set message = concat(message,'inadequate education ');
	END IF;
	IF(cprojects= 0) THEN
		Set message = concat(message,'no prior experience');
	END IF;
    insert into jobApplicationFail values (Cname,message);
    set message = '';
	FETCH nameCursor INTO Cname;
    ITERATE loop_1;
END IF;
select count(*) into cInterviews from interview where cand_username = Cname group by cand_username;
insert into jobApplicationSucceed values (Cname,cgrade,cscore,cprojects,cTotal,cInterviews);
FETCH nameCursor INTO Cname;
END WHILE; 
Close nameCursor;

select * from jobApplicationSucceed order by total DESC;
select * from jobApplicationFail;

End$
DELIMITER ;

Set @curUser = 'abrown';

DROP TRIGGER IF EXISTS insUser;
DELIMITER $
CREATE TRIGGER insUser
After insert on user
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','user');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS upUser;
DELIMITER $
CREATE TRIGGER upUser
After update on user
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','user');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS delUser;
DELIMITER $
CREATE TRIGGER delUser
After delete on user
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','user');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS insCand;
DELIMITER $
CREATE TRIGGER insCand
After insert on candidate
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','Candidate');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS upCand;
DELIMITER $
CREATE TRIGGER upCand
After update on candidate
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','Candidate');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS delCand;
DELIMITER $
CREATE TRIGGER delCand
After delete on candidate
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','Candidate');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS insRec;
DELIMITER $
CREATE TRIGGER insRec
After insert on recruiter
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','recruiter');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS upRec;
DELIMITER $
CREATE TRIGGER upRec
After update on recruiter
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','recruiter');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS delRec;
DELIMITER $
CREATE TRIGGER delRec
After delete on recruiter
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','recruiter');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS insEtair;
DELIMITER $
CREATE TRIGGER insEtair
After insert on etaireia
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','etaireia');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS upEtairB;
DELIMITER $
CREATE TRIGGER upEtairB
Before update on etaireia
FOR EACH ROW
Begin
set new.name = old.name;
set new.DOY = old.DOY;
set new.AFM = old.AFM;
END$
DELIMITER ;

DROP TRIGGER IF EXISTS upEtair;
DELIMITER $
CREATE TRIGGER upEtair
After update on etaireia
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','etaireia');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS delEtair;
DELIMITER $
CREATE TRIGGER delEtair
After delete on etaireia
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','etaireia');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS insJob;
DELIMITER $
CREATE TRIGGER insJob
After insert on job
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','Job');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS upJob;
DELIMITER $
CREATE TRIGGER upJob
After update on job
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','Job');
END$
DELIMITER ;

DROP TRIGGER IF EXISTS delJob;
DELIMITER $
CREATE TRIGGER delJob
After delete on job
FOR EACH ROW
BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','Job');
END$
DELIMITER ;
