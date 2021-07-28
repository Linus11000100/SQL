
--Datenbank erzeugen
CREATE OR REPLACE DATABASE mv2;
--Datenbank benutzen
USE mv2;
--Tabellen erzeugen
--Region
/*CREATE TABLE region(
	r_id INT UNSIGNED AUTO_INCREMENT,
	region_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(r_id)
);
--Land
CREATE TABLE land(
	l_id INT UNSIGNED AUTO_INCREMENT,
	land_name VARCHAR(30) NOT NULL,
	r_id INT UNSIGNED,
	PRIMARY KEY(l_id)
);
--Standort
CREATE TABLE standort(
	s_id INT UNSIGNED AUTO_INCREMENT,
	stadt VARCHAR(30) NOT NULL,
	l_id INT UNSIGNED,
	PRIMARY KEY(s_id)
);
--Abteilung
CREATE TABLE abteilung(
	a_id INT UNSIGNED AUTO_INCREMENT,
	bezeichnung VARCHAR(30) NOT NULL,
	s_id INT UNSIGNED,
	abteilungsleiter INT UNSIGNED,
	PRIMARY KEY(a_id)
);
--Beruf
CREATE TABLE beruf(
	b_id INT UNSIGNED AUTO_INCREMENT,
	bezeichnung VARCHAR(30) NOT NULL,
	max_gehalt DECIMAL(19, 4) NOT NULL,
	min_gehalt DECIMAL(19, 4) NOT NULL,
	PRIMARY KEY(b_id)
);
--Mitarbeiter
CREATE TABLE mitarbeiter(
	m_id INT UNSIGNED AUTO_INCREMENT,
	vorname VARCHAR(30) NOT NULL,
	nachname VARCHAR(30) NOT NULL,
	geb_dat DATE,
	gehalt DECIMAL(19, 4) NOT NULL,
	vorgesetzter_id INT UNSIGNED,
	a_id INT UNSIGNED,
	b_id INT UNSIGNED,
	PRIMARY KEY(m_id)
);

--Fremdschlüssel
ALTER TABLE land
ADD CONSTRAINT land_region_r_id_FK
FOREIGN KEY(r_id)
REFERENCES region(r_id);

ALTER TABLE standort
ADD CONSTRAINT standort_land_l_id_FK
FOREIGN KEY(l_id)
REFERENCES land(l_id);

ALTER TABLE abteilung
ADD CONSTRAINT abteilung_standort_s_id_FK
FOREIGN KEY(s_id)
REFERENCES standort(s_id);

ALTER TABLE abteilung
ADD CONSTRAINT abteilung_mitarbeiter_m_id_FK
FOREIGN KEY(abteilungsleiter)
REFERENCES mitarbeiter(m_id);

ALTER TABLE mitarbeiter
ADD CONSTRAINT mitarbeiter_abteilung_a_id_FK
FOREIGN KEY(a_id)
REFERENCES abteilung(a_id);

ALTER TABLE mitarbeiter
ADD CONSTRAINT mitarbeiter_beruf_b_id_FK
FOREIGN KEY(b_id)
REFERENCES beruf(b_id);

ALTER TABLE mitarbeiter
ADD CONSTRAINT mitarbeiter_mitarbeiter_m_id_FK
FOREIGN KEY(vorgesetzter_id)
REFERENCES mitarbeiter(m_id);




INSERT INTO region(region_name) VALUES ("Europa");
INSERT INTO region(region_name) VALUES ("Asien");
INSERT INTO region(region_name) VALUES ("Nordamerika");
INSERT INTO region(region_name) VALUES ("Nordafrika");
INSERT INTO region(region_name) VALUES ("Kaukasus");








INSERT INTO land(land_name,r_id) VALUES ("Deutschland",1);
INSERT INTO land(land_name,r_id) VALUES ("Frankreich",1);
INSERT INTO land(land_name,r_id) VALUES ("Südkorea",2);
INSERT INTO land(land_name,r_id) VALUES ("Japan",2);
INSERT INTO land(land_name,r_id) VALUES ("USA",3);
INSERT INTO land(land_name,r_id) VALUES ("Kanada",3);
INSERT INTO land(land_name,r_id) VALUES ("Marokko",4);
INSERT INTO land(land_name,r_id) VALUES ("Algerien",4);
INSERT INTO land(land_name,r_id) VALUES ("Aserbaidschan",5);
INSERT INTO land(land_name,r_id) VALUES ("Russland",5);
*/
INSERT INTO standort(stadt,l_id) VALUES ("Paris",2);
INSERT INTO standort(stadt,l_id) VALUES ("Marseille",2);
INSERT INTO standort(stadt,l_id) VALUES ("Seoul",3);
INSERT INTO standort(stadt,l_id) VALUES ("Busan",3);
INSERT INTO standort(stadt,l_id) VALUES ("Kyoto",4);
INSERT INTO standort(stadt,l_id) VALUES ("Tokio",4);
INSERT INTO standort(stadt,l_id) VALUES ("New York City",5);
INSERT INTO standort(stadt,l_id) VALUES ("Los Angeles",5);
INSERT INTO standort(stadt,l_id) VALUES ("Toronto",6);
INSERT INTO standort(stadt,l_id) VALUES ("Montreal",6);
INSERT INTO standort(stadt,l_id) VALUES ("Marrakesch",7);
INSERT INTO standort(stadt,l_id) VALUES ("Rabat",7);
INSERT INTO standort(stadt,l_id) VALUES ("Algier",8);
INSERT INTO standort(stadt,l_id) VALUES ("Oran",8);
INSERT INTO standort(stadt,l_id) VALUES ("Ganja",9);
INSERT INTO standort(stadt,l_id) VALUES ("Baku",9);
INSERT INTO standort(stadt,l_id) VALUES ("Moskau",10);
INSERT INTO standort(stadt,l_id) VALUES ("Kasan",10);
