
DROP DATABASE classcircle;

SET NAMES 'utf8mb4';

CREATE DATABASE IF NOT EXISTS classcircle
	CHARACTER SET = 'utf8mb4'
	COLLATE 'utf8mb4_unicode_ci';

USE classcircle;

CREATE TABLE IF NOT EXISTS students(
	studentid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	forename VARCHAR(20) NOT NULL,
	lastname VARCHAR(20) NOT NULL,
	birthday DATE,
	email VARCHAR(50) NOT NULL,
	imageName VARCHAR(256),
	visionScore VARCHAR(10),
	eyeColor VARCHAR(20),
	piercingTattoos VARCHAR(30),
	favouriteSong VARCHAR(50),
	chickenCrossReason VARCHAR(50),
	quote VARCHAR(500),
	hobbies VARCHAR(300),
	pets VARCHAR(20),
	allergies VARCHAR(20),
	schoolBeforeHTL VARCHAR(20),
	burgerPizzaAvocado VARCHAR(20),
	favouriteSubject VARCHAR(30),
	favouriteColor VARCHAR(20),
	phone VARCHAR(20),
	favouriteFood VARCHAR(40),
	favouriteMedia VARCHAR(300),
	specialClassFunction VARCHAR(30),
	socialmedia VARCHAR(200),
	CONSTRAINT PRIMARY KEY(studentid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci; 

CREATE TABLE IF NOT EXISTS comments(
	commentid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(40) NOT NULL,
	message VARCHAR(500) NOT NULL,
	dat DATE NOT NULL,
	studentid INTEGER UNSIGNED NOT NULL,
	CONSTRAINT FOREIGN KEY(studentid) REFERENCES students(studentid),
	CONSTRAINT PRIMARY KEY(commentid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	imageName,
	visionScore,
	eyeColor,
	piercingTattoos,
	favouriteSong,
	chickenCrossReason,
	quote,
	hobbies,
	pets,
	allergies,
  schoolBeforeHTL,
	burgerPizzaAvocado,
	favouriteSubject,
	favouriteColor,
	phone,
	favouriteFood,
	favouriteMedia,
	specialClassFunction,
	socialmedia
) 
VALUES (
	"Michael",
	"Samarati",
	"2005-06-03",
	"190182@studierende.htl-donaustadt.at",
	"p1.gif",
	"100%",
	"blue",
	"Nichts davon",
	"Aqua - Barbie Girl",
	"Chicken-Wings im Sale!!1 bei Lidl",
	"Netzwerktechnik-Maschine, der Router höchstpersönlich && Lieber im Stehen scheißen, als in der Scheiße stehen.",
  "Nachdenken",
  "Keine",
	"Keine",
	"NMS",
	"🥑",
	"ITP2",
	"#00fced",
	"Windows-Phone",
	"Pizza Hawaii",
	"Serien: Violet Evergarden; Alle hassen Chris; Filme: Die Eisprinzen; Der gezähmte Widerspenstige",
	"Klassenstreber",
	"https://github.com/MichaelSamarati"
);


INSERT INTO students (forename,lastname,birthday,email,imageName,quote,favouriteSubject,favouriteColor,phone,eyeColor) 
VALUES ("Taisir", "Khalifa", "2004-12-12", "190315@studierende.htl-donaustadt.at", "p2.jpg", "3 kleine Mäus, schau wie sie rennen. Sie rannten zur Bäuerin unverwand..  die nahm ein Großes Messer in die Hand und hackte den Mäusen die Schwänze ab .. Hast du schon mal sowas gesehen gehabt wie drei blinde mäus.", "NW2", "#07f6e7", "Android", "brown");
INSERT INTO students (forename,lastname,birthday,email,imageName,quote,favouriteSubject,favouriteColor,phone,eyeColor) 
VALUES ("Philipp", "Vollmann", "2004-02-11", "180194@studierende.htl-donaustadt.at", "p3.jpg", "Idk, I just got here", "WIR_3", "#005F6A", "IOS", "brown");


INSERT INTO comments (name,message,dat,studentid) 
VALUES ("Test User","Very good profile!😍💕😘", "2023-04-04", (select studentid from students where lastname="Samarati" LIMIT 1));

INSERT INTO comments (name,message,dat,studentid) 
VALUES ("Trashtalker","Huan 🤐🫠🫤😕😤", "2023-05-02", (select studentid from students where lastname="Samarati" LIMIT 1));


