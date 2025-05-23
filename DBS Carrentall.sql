CREATE DATABASE IF NOT EXISTS carrentall;
USE carrentall;

DROP TABLE IF EXISTS additions;
CREATE TABLE additions (
  ID int NOT NULL AUTO_INCREMENT,
  Description varchar(100) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO additions VALUES (1,'Los kinderzitje'),(2,'Trekhaak'),(3,'Hondenrek'),(4,'Dakdragers');

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
  ID int NOT NULL AUTO_INCREMENT,
  DealerID int NOT NULL,
  TypeID int NOT NULL,
  Brand varchar(100) NOT NULL,
  Model varchar(100) NOT NULL,
  Year int NOT NULL,
  PPD int NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO cars VALUES (1,1,4,'Mazda','CX5',2018,245),(2,1,1,'Peugeot','208',2021,245),(3,2,1,'Peugeot','3008',2020,295),(4,1,1,'Peugeot','2008',2020,245),(5,1,3,'Kia','Niro',2021,395),(6,2,1,'Kia','Sorento',2020,245),(7,2,1,'Opel','Zafira',2020,245),(8,1,1,'Opel','Cadett',2021,245),(9,3,2,'Opel','Astra',2019,395),(10,1,1,'Citroen','CX1',2019,245),(11,1,1,'Citroen','Cactus',2020,245),(12,5,1,'Renault','Clio',2018,245),(13,5,4,'Renault','Megane',2020,245),(14,1,1,'Ford','Escort',2022,245),(15,2,1,'Ford','Focus',2021,295),(16,1,2,'Volkswagen','Golf',2022,245),(17,4,1,'Volkswagen','Corsa',2011,245),(18,4,1,'Volkswagen','Passat',2014,245),(19,1,1,'Citroen','CX2',2020,245),(20,1,1,'Citroen','Cactus',2021,275),(21,5,1,'Renault','Clio T2',2019,345),(22,5,4,'Renault','Megane XL',2020,325),(23,1,1,'Ford','Escort+',2017,245),(24,2,1,'Ford','Focus',2020,295),(25,1,2,'Volkswagen','Golf GTI',2019,265),(26,4,1,'Volkswagen','Corsa',2018,245),(27,4,1,'Volkswagen','Passat',2022,245),(28,2,4,'Skoda','Fabia',2018,245),(29,4,4,'Mercedes','X90',2020,395),(30,2,1,'Kia','Sorento',2018,245);

DROP TABLE IF EXISTS cartypes;
CREATE TABLE cartypes (
  ID int NOT NULL AUTO_INCREMENT,
  Description varchar(100) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO cartypes VALUES (1,'Default'),(2,'Station'),(3,'Minivan'),(4,'SUV'),(5,'Convertible '),(6,'Sedan');

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  ID int NOT NULL AUTO_INCREMENT,
  Lastname varchar(100) NOT NULL,
  Firstname varchar(100) NOT NULL,
  Address varchar(100) NOT NULL,
  Zipcode varchar(10) DEFAULT NULL,
  City varchar(100) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO customers VALUES (1,'Verwegen','DF','Hoofdstraat 45',NULL,'Amsterdam'),(2,'Fruitsma','Henk','Koningin Wilhelminalaan 234a','1234 BN','Veendiep'),(3,'De Vries','Willem','Hoefijzer 12','2345 PL','Haaksbergen'),(4,'Sleutelmans','G','IJzerbaan 9','5623 AS','Rosmalen'),(5,'Wilchersma','Theo','Boorweg-Zuid 3','3478 MN','Beeksebergen'),(6,'Hassir','M','Verfbaan 72','9823 CX','Tiel'),(7,'Haalbergen','Jeanette','\'t Plein 34','5689 CD','Almelo'),(8,'Blokstaal','Martin','Landsman 65','9233 ZA','Borgersloo'),(9,'Hijsweek','Arnie','Kapitool 4','7854 GF','Veenwouden'),(10,'Hulstof','Peter','Jonckheer Brouwmeesterstraat 1','3887 PD','Diepstede'),(11,'Belde','Rick','Landerf 100','1011 AA','Dieperzand'),(12,'Chin Ho','Min','Meerzicht 6','6722 GH','Utrecht'),(13,'Schudde','Sandy','Waterkip 34','9943 QW','Drachten'),(14,'Mooij','Jasmijn','Weg van Michelangelo 10',NULL,'Haarlem'),(15,'Nieuwboer','H','Oude Schoolstraat 71','3552 GT','Bosdorp'),(16,'Oudenhuizen','Mike','Bosschestraat 34b','5566 GH','Veerkamp'),(17,'Brinks','Olga F','Spoorstraat 17','3885 XC','Spijk'),(18,'Van de Vlieg','Fam.','Mechelsestraat 9','2291 RT','Geinbeek'),(19,'Al Binar','Ahmad','2e Mauritslaan 4',NULL,'Wassenaar'),(20,'Visser','Arne','Havenkade 2','6544 GG','Volendam'),(21,'Sakasiri','MGS','Voordracht 14',NULL,'Zeilbergen'),(22,'Hashman','Dirk','Spoordiep 2','3383 DF','Geinbeek'),(23,'Graafsman','Marjan','Zadelmakerij 39','7328 KB','Grouwveen'),(24,'De Groote','Gert-Jan','Oude Slag 62','6432 RW','Ottoland'),(25,'Zevenaar','Gerrie','Vogelstrijder 3','9941 GZ','Prinsenbeek'),(26,'De Beer','Hannie','Bovendrift 94','5234 DF','Veenwouden'),(27,'Aldrich','Arne','Heemsdreef 90',NULL,'Prinsendam'),(28,'Van der Straette','Olivier','Nijlgans 18','5785 WH','Geinbeek'),(29,'Verlingen-Zijlstra','Annemarie','Veerweg 3','8332 MK','Almelo'),(30,'Wijsman','A','De Borgen 382','7742 GP','Volendam');


DROP TABLE IF EXISTS dealers;
CREATE TABLE dealers (
  ID int NOT NULL AUTO_INCREMENT,
  Name varchar(100) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO dealers VALUES (1,'Eurocars bv'),(2,'Veenstra & Veer'),(3,'Periveras'),(4,'Kalmberg Autohandel'),(5,'Brinckman & zn.'),(6,'Altering Cars'),(7,'QuickLease'),(8,'Gerardus B. Venema'),(9,'All Cars Coöperatie'),(10,'Ready2DRive');

DROP TABLE IF EXISTS caradditions;
CREATE TABLE caradditions (
  ID int NOT NULL AUTO_INCREMENT,
  AdditionID int NOT NULL,
  CarID int NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO caradditions VALUES (1,3,3),(2,4,12),(3,2,17),(4,3,21),(5,2,28),(6,4,29);

DROP TABLE IF EXISTS rentadditions;
CREATE TABLE rentadditions (
  ID int NOT NULL AUTO_INCREMENT,
  AdditionID int NOT NULL,
  RentID int NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO rentadditions VALUES (1,4,3),(2,1,34),(3,1,12);

DROP TABLE IF EXISTS rents;
CREATE TABLE rents (
  ID int NOT NULL AUTO_INCREMENT,
  CarID int NOT NULL,
  CustomerID int NOT NULL,
  Startdate DATE NOT NULL,
  Enddate DATE NOT NULL,
  Returned DATE,
  PRIMARY KEY (ID)
);

INSERT INTO rents VALUES (1,10,8,'2020-01-07','2020-01-11','2020-01-11'),(2,26,7,'2020-01-11','2020-01-15','2020-01-15'),(3,14,16,'2020-01-12','2020-01-23','2020-01-23'),(4,11,14,'2020-01-17','2020-01-30','2020-01-30'),(5,12,28,'2020-01-18','2020-01-29','2020-01-29'),(6,29,22,'2020-01-23','2020-01-31','2020-01-31'),(7,19,30,'2020-01-26','2020-01-30','2020-01-30'),(8,17,17,'2020-02-01','2020-02-07','2020-02-08'),(9,24,15,'2020-02-07','2020-02-12','2020-02-12'),(10,9,2,'2020-02-08','2020-02-11','2020-02-11'),(11,18,27,'2020-02-13','2020-02-19','2020-02-19'),(12,16,5,'2020-02-19','2020-02-21','2020-02-21'),(13,13,9,'2020-02-20','2020-02-24','2020-02-24'),(14,28,19,'2020-02-24','2020-03-04','2020-03-04'),(15,6,12,'2020-02-29','2020-03-03','2020-03-03'),(16,30,24,'2020-03-03','2020-03-15','2020-03-15'),(17,4,21,'2020-03-09','2020-03-18','2020-03-18'),(18,23,4,'2020-03-12','2020-03-24','2020-03-24'),(19,7,10,'2020-03-13','2020-03-16','2020-03-16'),(20,15,11,'2020-03-19','2020-03-27','2020-03-27'),(21,25,20,'2020-03-25','2020-04-03','2020-04-03'),(22,2,25,'2020-03-31','2020-04-12','2020-04-12'),(23,22,23,'2020-04-06','2020-04-18','2020-04-18'),(24,20,3,'2020-04-08','2020-04-09','2020-04-09'),(25,21,13,'2020-04-12','2020-04-19','2020-04-19'),(26,27,6,'2020-04-13','2020-04-17','2020-04-17'),(27,8,18,'2020-04-19','2020-04-20','2020-04-20'),(28,5,26,'2020-04-24','2020-04-27','2020-04-27'),(29,3,29,'2020-04-28','2020-05-02','2020-05-02'),(30,30,11,'2020-05-02','2020-05-12','2020-05-12'),(31,26,17,'2020-05-07','2020-05-13','2020-05-13'),(32,27,13,'2020-05-08','2020-05-12','2020-05-12'),(33,8,6,'2020-05-13','2020-05-16','2020-05-16'),(34,15,24,'2020-05-15','2020-05-23','2020-05-23'),(35,13,23,'2020-05-19','2020-05-31','2020-05-31'),(36,22,21,'2020-05-22','2020-05-26','2020-05-26'),(37,12,22,'2020-05-28','2020-06-08','2020-06-08'),(38,17,3,'2020-05-29','2020-06-10','2020-06-10'),(39,28,19,'2020-06-04','2020-06-13','2020-06-14'),(40,9,4,'2020-06-08','2020-06-15','2020-06-15'),(41,14,26,'2020-06-13','2020-06-25','2020-06-25'),(42,6,27,'2020-06-18','2020-06-24','2020-06-24'),(43,19,18,'2020-06-22','2020-06-23','2020-06-23'),(44,18,28,'2020-06-25','2020-07-08','2020-07-08'),(45,3,12,'2020-06-26','2020-07-03','2020-07-03'),(46,25,10,'2020-06-29','2020-07-09','2020-07-09'),(47,20,30,'2020-07-02','2020-07-09','2020-07-09'),(48,4,16,'2020-07-07','2020-07-11','2020-07-11'),(49,16,15,'2020-07-09','2020-07-15','2020-07-15'),(50,23,25,'2020-07-10','2020-07-19','2020-07-19'),(51,24,9,'2020-07-14','2020-07-16','2020-07-16'),(52,29,5,'2020-07-17','2020-07-24','2020-07-24'),(53,7,7,'2020-07-21','2020-07-27','2020-07-27'),(54,2,20,'2020-07-25','2020-07-27','2020-07-27'),(55,5,2,'2020-07-28','2020-08-08','2020-08-08'),(56,21,14,'2020-08-03','2020-08-13','2020-08-13'),(57,11,29,'2020-08-09','2020-08-11','2020-08-11'),(58,27,10,'2020-08-15','2020-08-25','2020-08-25'),(59,14,16,'2020-08-18','2020-08-24','2020-08-24'),(60,26,12,'2020-08-21','2020-08-23','2020-08-23'),(61,11,22,'2020-08-24','2020-08-26','2020-08-26'),(62,22,19,'2020-08-27','2020-08-28','2020-08-28'),(63,16,11,'2020-08-29','2020-09-06','2020-09-06'),(64,2,24,'2020-08-31','2020-09-07','2020-09-07'),(65,7,5,'2020-09-06','2020-09-07','2020-09-07'),(66,24,21,'2020-09-08','2020-09-14',NULL),(67,8,29,'2020-09-12','2020-09-21','2020-09-21'),(68,18,14,'2020-09-13','2020-09-24','2020-09-24'),(69,28,26,'2020-09-16','2020-09-27','2020-09-27'),(70,25,20,'2020-09-19','2020-09-20','2020-09-20'),(71,3,6,'2020-09-21','2020-09-22','2020-09-22'),(72,5,15,'2020-09-24','2020-09-28','2020-09-28'),(73,4,17,'2020-09-28','2020-09-29','2020-09-29'),(74,29,7,'2020-09-29','2020-10-09','2020-10-09'),(75,21,13,'2020-10-04','2020-10-05','2020-10-05'),(76,19,4,'2020-10-07','2020-10-12','2020-10-12'),(77,20,18,'2020-10-13','2020-10-15','2020-10-15'),(78,15,9,'2020-10-16','2020-10-17','2020-10-17'),(79,13,28,'2020-10-22','2020-10-29','2020-10-29'),(80,6,3,'2020-10-28','2020-11-04','2020-11-04'),(81,23,25,'2020-10-30','2020-11-12','2020-11-12'),(82,12,2,'2020-11-05','2020-11-06','2020-11-06'),(83,9,23,'2020-11-11','2020-11-18','2020-11-18'),(84,30,30,'2020-11-16','2020-11-28','2020-11-28'),(85,17,27,'2020-11-21','2020-12-04','2020-12-04'),(86,27,11,'2020-11-25','2020-12-04','2020-12-04'),(87,18,20,'2020-11-26','2020-12-09','2020-12-09'),(88,16,24,'2020-11-30','2020-12-05','2020-12-05'),(89,12,2,'2020-12-06','2020-12-07','2020-12-07'),(90,14,21,'2020-12-07','2020-12-17',NULL),(91,3,10,'2020-12-10','2020-12-12','2020-12-12'),(92,23,7,'2020-12-16','2020-12-18','2020-12-18'),(93,28,26,'2020-12-18','2020-12-31','2021-01-02'),(94,17,25,'2020-12-23','2020-12-26','2020-12-26'),(95,21,9,'2020-12-28','2021-01-10','2021-01-10'),(96,6,6,'2020-12-29','2021-01-09','2021-01-09'),(97,25,29,'2021-01-02','2021-01-11','2021-01-11'),(98,4,4,'2021-01-06','2021-01-13','2021-01-13'),(99,11,12,'2021-01-10','2021-01-13','2021-01-13'),(100,8,17,'2021-01-13','2021-01-19','2021-01-19');
