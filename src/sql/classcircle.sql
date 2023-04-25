
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
	siblings VARCHAR(50),
	imageName VARCHAR(256),
	visionScore VARCHAR(10),
	eyeColor VARCHAR(20),
	piercingTattoos VARCHAR(30),
	favouriteSong VARCHAR(50),
	chickenCrossReason VARCHAR(50),
	quote VARCHAR(800),
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
	siblings,
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
) VALUES (
	"Michael",
	"Samarati",
	"2005-06-03",
	"190182@studierende.htl-donaustadt.at",
	"6",
	"michael_samarati.gif",
	"100%",
	"eine andere Farbe",
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

select 'here' as "here";

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
	imageName,
	visionScore,
	eyeColor,
	piercingTattoos,
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
	favouriteMedia,
	specialClassFunction
) VALUES (
	"Taisir",
	"Khalifa",
	"2004-12-12",
	"190315@studierende.htl-donaustadt.at",
	"halt kein Einzelkind",
	"taisir_khalifa.jpg",
	"???",
	"braun",
	"Nichts davon",
	"To get to the other side",
	"3 kleine Mäus, schau wie sie rennen. Sie rannten zur Bäuerin unverwand..  die nahm ein Großes Messer in die Hand und hackte den Mäusen die Schwänze ab .. Hast du schon mal sowas gesehen gehabt wie drei blinde mäus.",
	"zu viele",
	"Keine",
	"Keine",
	"AHS",
	"🥑",
	"NW2",
	"#07f6e7",
	"Android",
	"Detektiv Conan",
	"Klassenseele"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
	specialClassFunction
) VALUES (
	"Philipp",
	"Vollmann",
	"2004-02-11",
	"180194@studierende.htl-donaustadt.at",
	"0",
	"philipp_vollmann.gif",
	"100%",
	"braun",
	"Nichts davon",
	"Aqua - Barbie Girl",
	"🖕",
	"Idk, I just got here",
	"Sportschutz-Training",
	"Ja",
	"Keine",
	"NMS",
	"🍕",
	"WIR3",
	"#096079",
	"iOS",
	"Spaghetti",
	"Tribute von Panem",
	"Phantom (der Klasse) & Repetent (der Klügere) & Gründervater der V-Mann-Gang"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
) VALUES (
	"Philipp",
	"Lueger",
	"2005-01-21",
	"190189@studierende.htl-donaustadt.at",
	"1",
	"philipp_lueger.gif",
	"100%",
	"eine andere Farbe",
	"Nichts davon",
	"lied",
	"To get to the other side",
	"Sein oder nicht sein, das ist hier die Frage",
	"TRINKEN GEHEN!",
	"Katze",
	"Keine",
	"AHS",
	"🍕",
	"SEW",
	"#c67979",
	"iOS",
	"Asiatisch",
	"Lucifer",
	"Abteilungssprecher; Klassensprecher",
	"https://www.linkedin.com/in/philipp-lueger/"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
	imageName,
	visionScore,
	eyeColor,
	piercingTattoos,
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
	specialClassFunction
) VALUES (
	"Luka",
	"Ramljak",
	"2005-01-06",
	"190187@studierende.htl-donaustadt.at",
	"2",
	"luka_ramljak.gif",
	"100%",
	"braun",
	"Nichts davon",
	"Das Name des Pferdes war Freitag",
	"Wenn der Keks redet hat der Krümel zu schweigenö",
	"Mathe, Netzwerktechnik und Depressionen",
	"Keine",
	"Hausstaub und Katzen",
	"AHS",
	"🍕",
	"GGP",
	"#4169E1",
	"Android",
	"Hofer backbox kornspitz und argeta",
	"Malcom Mittendrin und die lore videos von fnaf by gametheory",
	"Immer Anwesend (ich bin ein sklave meiner disziplin)"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
) VALUES (
	"Lukas",
	"Milicic",
	"2005-04-27",
	"190312@studierende.htl-donaustadt.at",
	"2",
	"lukas_milicic.gif",
	"Ich bin blind. kys\nHoffentlich schlaft ihr gut",
	"eine andere Farbe",
	"Nichts davon",
	"SongSongSongSongSongSongSongSong",
	"No hablo inglés",
	"Change ..... is good",
	"Gaming/Zeichnen/Volleyball",
	"Keine",
	"Keine",
	"NMS",
	"🍕",
	"E1",
	"#0bc46b",
	"iOS",
	"Lasagne",
	"JoJo´s Bizarre Adventure",
	"Schlüsselmann",
	"Insta: lukas._.r6"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
) VALUES (
	"Salih",
	"Bilgin",
	"2005-11-17",
	"190252@studierende.htl-donaustadt.at",
	"3",
	"salih_bilgin.gif",
	"44%",
	"braun",
	"Nichts davon",
	"SongSongSongSongSongSongSong",
	"To get to the other side",
	'"Von unten nach oben ist der Weg weit, aber von oben nach unten ist er kurz." - Mero',
	"Autos, Fußball",
	"Keine",
	"Keine",
	"AHS",
	"🍕",
	"AM",
	"#e7feff",
	"iOS",
	"Döner",
	"Cars",
	"Computerbeauftragter",
	"Insta: sblgn17"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
) VALUES (
	"Josip",
	"Benkovic",
	"2004-06-09",
	"190199@studierende.htl-donaustadt.at",
	"0",
	"josip_benkovic.png",
	"94%",
	"eine andere Farbe",
	"Nichts davon",
	"Song",
	"weil cool",
	"Ich mag Züge",
	"fußball spieln, serien schaun, zocken",
	"Keine",
	"Keine",
	"NMS",
	"🍕",
	"WIR3",
	"#00d4ff",
	"iOS",
	"Schweinskoteletten mit Rahmsoße (idk obs so heißt + ratio)",
	"Black Clover",
	"Keine / einfach da",
	"twitch.tv/GetOnMyLvLTV"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
	specialClassFunction
) VALUES (
	"Florian",
	"Hedrich",
	"2003-06-11",
	"190181@studierende.htl-donaustadt.at",
	"0",
	"florian_hedrich.png",
	"100%",
	"eine andere Farbe",
	"Nichts davon",
	"Never gonna give u up",
	"🖕",
	"veni vidi violin, ich kam sah und vergeigte",
	"Programmieren",
	"Keine",
	"Sonnen Allergie",
	"FMS",
	"🍕",
	"WIR3",
	"#000000",
	"Android",
	"Pizza",
	"Neues vom Wixxer",
	"Nichts"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
	specialClassFunction
) VALUES (
	"Stefan",
	"Milojkovic",
	"2005-04-01",
	"190198@studierende.htl-donaustadt.at",
	"4",
	"stefan_milojkovic.png",
	"100%",
	"Braun",
	"Nichts davon",
	"Rick Astley - Never Gonna Give You Up",
	"🖕",
	"Silber ist Gold, reden ist schweigen",
	"Basketball",
	"Keine",
	"Keine",
	"NMS",
	"🥑",
	"E1",
	"#00f8ff",
	"iOS",
	"Pasulj",
	"Baki, I am Legend",
	"NPC"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
) VALUES (
	"Nagi",
	"Ibrahim",
	"2004-03-30",
	"190296@studierende.htl-donaustadt.at",
	"1",
	"nagi_ibrahim.png",
	"50%",
	"Braun",
	"Nichts davon",
	"Malboro rot",
	"To get to the other side",
	"Habe nie Erwartungen dann wirst nie enttäuscht",
	"Gym",
	"Keine",
	"Alle",
	"NMS",
	"🍔",
	"WIR3",
	"#e7feff",
	"iOS",
	"Hünchen mit Reis",
	"One piece",
	"Klassenschüler",
	"Instagram: nagi8237"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
) VALUES (
	"Tim",
	"Altmann",
	"2004-06-10",
	"180185@studierende.htl-donaustadt.at",
	"0",
	"tim_altmann.png",
	"17%",
	"eine andere Farbe",
	"Nichts davon",
	"Frozen Tears Luciano",
	"No hablo inglés",
	"Ein Bier ist kein Bier",
	"fusball, kraftsport, fortgehen",
	"2 Hunde",
	"Pollen und Gräßer",
	"AHS",
	"🍔",
	"BSPK",
	"#f4052a",
	"iOS",
	"Hühner Curry mit Reis aber nicht allzu Scharf",
	"12 Strong",
	"Chef Repetent",
	"Instagram: tim.altmn | snapchat: lol_txm"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
) VALUES (
	"Michael",
	"Falk",
	"2004-10-23",
	"190197@studierende.htl-donaustadt.at",
	"2",
	"michael_falk.png",
	"Nicht Farbenblind",
	"eine andere Farbe",
	"Nichts davon",
	"Krijo Stalka - Serienkilla RMX",
	"Um Kriegsverbrechen zu begehen",
	"Es wurde Orangensaft verschüttet",
	"Netzwerktechnikprotokoll schreiben",
	"2 x Hund",
	"Keine",
	"NMS",
	"🍕",
	"WIR3",
	"#00bdff",
	"Android",
	"Eibrennde Hund",
	"MA 2412",
	"Geist",
	"pornhub.com/johnnysins"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
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
	specialClassFunction
) VALUES (
	"Umut",
	"Sakar",
	"2003-02-21",
	"180191@studierende.htl-donaustadt.at",
	"1",
	"umut_sakar.png",
	"100%",
	"Braun",
	"Nichts davon",
	"Treachery - Sosuke Aizen's Theme oder Pain 1993 by Drake ft. Playboi Carti",
	"gott weiß",
	'"Ich ziehe dieses Schuljahr durch" ~Alexander Strasshof Don',
	"zocken",
	"Keine",
	"Keine",
	"NMS",
	"🍕",
	"WIR3",
	"#000000",
	"iOS",
	"Butter-Chicken Curry",
	"Bleach, Monster (beides Anime) ",
	"Klassenteddy"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
	imageName,
	visionScore,
	eyeColor,
	piercingTattoos,
	favouriteSong,
	chickenCrossReason,
	hobbies,
	pets,
	allergies,
  schoolBeforeHTL,
	burgerPizzaAvocado,
	favouriteSubject,
	favouriteColor,
	phone,
	favouriteMedia
) VALUES (
	"Alexander",
	"Mayerhofer",
	"2003-08-03",
	"160502@studierende.htl-donaustadt.at",
	"4",
	"alexander_mayerhofer.png",
	"100%",
	"Braun",
	"Nichts davon",
	"Eye spy - Night lovell",
	"No hablo inglés",
	"Zocken,sport",
	"3 Katzen",
	"Keine",
	"POLY",
	"🍔",
	"BSPK",
	"#81e452",
	"Android",
	"Peaky blinders"
);

INSERT INTO students (
	forename,
	lastname,
	birthday,
	email,
	siblings,
	imageName,
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
) VALUES (
	"Roberto",
	"Ghiriti",
	"2005-04-13",
	"199226@studierende.htl-donaustadt.at",
	"0",
	"vorname_nachname.png",
	"eine andere Farbe",
	"piercingTattoos Nichts davon",
	"Ni**as in Paris",
	"Popcorn",
	"Deine Geldbörse ist meine Geldbörse ",
	"Klauen, GYM",
	"Keine",
	"Staub",
	"NMS",
	"🍕",
	"SEW",
	"#696969",
	"Android",
	"Katze",
	"Bleach",
	"Klassendieb",
	"Nein"
);






INSERT INTO comments (name,message,dat,studentid) 
VALUES ("Test User","Very good profile!😍💕😘", "2023-04-04", (select studentid from students where lastname="Samarati" LIMIT 1));

INSERT INTO comments (name,message,dat,studentid) 
VALUES ("Trashtalker","Huan 🤐🫠🫤😕😤", "2023-05-02", (select studentid from students where lastname="Samarati" LIMIT 1));

-- INSERT INTO students (
-- 	forename,
-- 	lastname,
-- 	birthday,
-- 	email,
-- 	siblings,
-- 	imageName,
-- 	visionScore,
-- 	eyeColor,
-- 	piercingTattoos,
-- 	favouriteSong,
-- 	chickenCrossReason,
-- 	quote,
-- 	hobbies,
-- 	pets,
-- 	allergies,
--   schoolBeforeHTL,
-- 	burgerPizzaAvocado,
-- 	favouriteSubject,
-- 	favouriteColor,
-- 	phone,
-- 	favouriteFood,
-- 	favouriteMedia,
-- 	specialClassFunction,
-- 	socialmedia
-- ) VALUES (
-- 	"Vorname",
-- 	"Nachname",
-- 	"2005-06-03",
-- 	"aaaaaa@studierende.htl-donaustadt.at",
-- 	"Geschwisteranzahl",
-- 	"vorname_nachname.png",
-- 	"SichtProzent",
-- 	"Augenfarbe Braun eine andere Farbe",
-- 	"piercingTattoos Nichts davon",
-- 	"Song",
-- 	"huhn",
-- 	"zitat",
-- 	"hobbies",
-- 	"pets Keine",
-- 	"allergies Keine",
-- 	"schuledavor",
-- 	"🍔🍕🥑",
-- 	"Fach",
-- 	"#000000",
-- 	"Phone",
-- 	"Lienlingsessen",
-- 	"SerienFilm",
-- 	"FunktionKlasse",
-- 	"socialmedia"
-- );















