
DROP DATABASE classcircle;

SET NAMES 'utf8mb4';
/*SET character_set_connection = 'utf8mb4';*/

CREATE DATABASE IF NOT EXISTS classcircle
	CHARACTER SET = 'utf8'
	COLLATE 'utf8_german2_ci';

USE classcircle;

CREATE TABLE IF NOT EXISTS students(
studentid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
forename VARCHAR(20) NOT NULL,
lastname VARCHAR(20) NOT NULL,
birthday DATE,
imageName VARCHAR(256),
quote VARCHAR(400),
favouriteSubject VARCHAR(30),
favouriteColor VARCHAR(20),
phone VARCHAR(20),
eyeColor VARCHAR(20),
CONSTRAINT PRIMARY KEY(studentid)
);


CREATE TABLE IF NOT EXISTS comments(
commentid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(40) NOT NULL,
message VARCHAR(1000) NOT NULL,
CONSTRAINT PRIMARY KEY(commentid)
);


CREATE TABLE IF NOT EXISTS student_comments(
scid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
studentid INTEGER UNSIGNED NOT NULL,
commentid INTEGER UNSIGNED NOT NULL,
CONSTRAINT FOREIGN KEY(studentid) REFERENCES students(studentid),
CONSTRAINT FOREIGN KEY(commentid) REFERENCES comments(commentid),
CONSTRAINT PRIMARY KEY(scid)
);



INSERT INTO students (forename,lastname,birthday,imageName,quote,favouriteSubject,favouriteColor,phone,eyeColor) 
VALUES ("Michael", "Samarati", "2005-06-03", "p1.gif", "Lieber im Stehen scheißen, als in der Scheiße stehen", "ITP2", "#00fced", "Windows Phone", "blue");
INSERT INTO students (forename,lastname,birthday,imageName,quote,favouriteSubject,favouriteColor,phone,eyeColor) 
VALUES ("Taisir", "Khalifa", "2004-12-12", "p2.jpg", "3 kleine Mäus, schau wie sie rennen. Sie rannten zur Bäuerin unverwand..  die nahm ein Großes Messer in die Hand und hackte den Mäusen die Schwänze ab .. Hast du schon mal sowas gesehen gehabt wie drei blinde mäus.", "NW2", "#07f6e7", "Android", "brown");
INSERT INTO students (forename,lastname,birthday,imageName,quote,favouriteSubject,favouriteColor,phone,eyeColor) 
VALUES ("Philipp", "Vollmann", "2004-02-11", "p3.jpg", "Idk, I just got here", "WIR_3", "#005F6A", "IOS", "brown");



