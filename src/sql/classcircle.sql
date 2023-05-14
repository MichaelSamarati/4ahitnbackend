
DROP DATABASE classcircle;

SET NAMES 'utf8mb4';

CREATE DATABASE IF NOT EXISTS classcircle
	CHARACTER SET = 'utf8mb4'
	COLLATE 'utf8mb4_unicode_ci';

USE classcircle;

CREATE TABLE IF NOT EXISTS students(
	studentid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	forename VARCHAR(40) NOT NULL,
	lastname VARCHAR(40) NOT NULL,
	gender VARCHAR(20) NOT NULL,
	birthday DATE,
	email VARCHAR(100) NOT NULL,
	siblings VARCHAR(100),
	imageName VARCHAR(256),
	visionScore VARCHAR(100),
	eyeColor VARCHAR(100),
	piercingTattoos VARCHAR(100),
	favouriteSong VARCHAR(150),
	chickenCrossReason VARCHAR(200),
	quote VARCHAR(800),
	hobbies VARCHAR(300),
	pets VARCHAR(100),
	allergies VARCHAR(100),
	schoolBeforeHTL VARCHAR(100),
	burgerPizzaAvocado VARCHAR(100),
	favouriteSubject VARCHAR(100),
	favouriteColor VARCHAR(100),
	phone VARCHAR(100),
	favouriteFood VARCHAR(100),
	favouriteMedia VARCHAR(300),
	specialClassFunction VARCHAR(100),
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
	gender,
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
	"Tarik",
	"Akpinar",
	"m",
	"2004-10-04",
	"190282@studierende.htl-donaustadt.at",
	"1",
	"tarik_akpinar.png",
	"17%",
	"eine andere Farbe",
	"Nichts davon",
	"Habe viele",
	"🖕",
	"Vertraue niemanden",
	"Sport",
	"Nichts",
	"Nichts",
	"NMS",
	"🍕",
	"NWT1",
	"#000000",
	"iOS",
	"Döner Kebap",
	"Harry Potter",
	"Klassischer Klassenmitglied",
	"Instagram: 2tarik0"
);

INSERT INTO students (
	forename,
	lastname,
	gender,
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
	"m",
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
	gender,
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
	"Hatiǆa",
	"Begagić",
	"f",
	"2003-01-21",
	"210431@studierende.htl-donaustadt.at",
	"1",
	"hatidza_begagic.png",
	"100%",
	"eine andere Farbe",
	"Tattoo und Piercing",
	"The Good Left Undone - Rise Against",
	"No hablo inglés",
	"play stupid games, win stupid prizes",
	"hobbylos",
	"Keine",
	"Keine",
	"HTL (gewechselt)",
	"🥑",
	"WIR3",
	"#2d3c2d",
	"iOS",
	"pochiertes Ei mit Schmelzkäse- und Rahmsauce ",
	"Breaking Bad",
	"selten da",
	"https://www.instagram.com/president_vladimir_putin/"
);

INSERT INTO students (
	forename,
	lastname,
	gender,
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
	"m",
	"2004-06-09",
	"190199@studierende.htl-donaustadt.at",
	"0",
	"josip_benkovic.png",
	"94%",
	"eine andere Farbe",
	"Nichts davon",
	"La La La von Voyage",
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
	gender,
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
	specialClassFunction,
	socialmedia
) VALUES (
	"Salih",
	"Bilgin",
	"m",
	"2005-11-17",
	"190252@studierende.htl-donaustadt.at",
	"3",
	"salih_bilgin.jpg",
	"44%",
	"braun",
	"Nichts davon",
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
	gender,
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
	"Zerda",
	"Cakir",
	"f",
	"2005-05-03",
	"190251@studierende.htl-donaustadt.at",
	"2",
	"zerda_cakir.jpg",
	"94%",
	"Braun",
	"Piercing",
	"No Role",
	"To get to the other side",
	"Schule gefällt mir am besten wenn sie zu ist",
	"Volleyball",
	"Keine",
	"Keine",
	"AHS",
	"🍔",
	"AM",
	"#095f79",
	"iOS",
	"Pasta",
	"Greys Anatomy",
	"Mitschülerin",
	"noelgroiss - snap"
);

INSERT INTO students (
	forename,
	lastname,
	gender,
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
	"m",
	"2004-10-23",
	"190197@studierende.htl-donaustadt.at",
	"2",
	"michael_falk.jpg",
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
	gender,
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
	"m",
	"2005-04-13",
	"190226@studierende.htl-donaustadt.at",
	"0",
	"roberto_ghiriti.jpg",
	"eine andere Farbe",
	"Nichts davon",
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

INSERT INTO students (
	forename,
	lastname,
	gender,
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
	"m",
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
	gender,
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
	"m",
	"2004-03-30",
	"190296@studierende.htl-donaustadt.at",
	"1",
	"nagi_ibrahim.jpg",
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
	gender,
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
	"f",
	"2004-12-12",
	"190315@studierende.htl-donaustadt.at",
	"halt kein Einzelkind",
	"taisir_khalifa.png",
	"94%",
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
	gender,
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
	"m",
	"2005-01-21",
	"190189@studierende.htl-donaustadt.at",
	"1",
	"philipp_lueger.jpg",
	"100%",
	"eine andere Farbe",
	"Nichts davon",
	"Du Entschuldige I kenn di ~Peter Cornelius",
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
	gender,
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
	favouriteMedia,
	specialClassFunction
) VALUES (
	"Alexander",
	"Mayerhofer",
	"m",
	"2003-08-03",
	"160502@studierende.htl-donaustadt.at",
	"4",
	"alexander_mayerhofer.jpg",
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
	"Peaky blinders",
	"/"
);

INSERT INTO students (
	forename,
	lastname,
	gender,
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
	"m",
	"2005-04-27",
	"190312@studierende.htl-donaustadt.at",
	"2",
	"lukas_milicic.png",
	"Ich bin blind. kys\nHoffentlich schlaft ihr gut",
	"eine andere Farbe",
	"Nichts davon",
	"夜は仄か - Eve MV",
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
	gender,
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
	"m",
	"2005-04-01",
	"190198@studierende.htl-donaustadt.at",
	"4",
	"stefan_milojkovic.jpg",
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
	gender,
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
	favouriteFood,
	favouriteMedia,
	specialClassFunction,
	socialmedia
) VALUES (
	"Alexander",
	"Pauer",
	"m",
	"2005-04-06",
	"190202@studierende.htl-donaustadt.at",
	"2",
	"alexander_pauer.jpg",
	"100%",
	"Braun",
	"Nichts davon",
	"Walk of Life - Dire Straits",
	"No hablo inglés",
	"Fußball, Billard",
	"Keine",
	"Keine",
	"AHS",
	"🍔",
	"NWT1",
	"#03fcec",
	"iOS",
	"Grillkotelett mit Pommes und Salat",
	"Serie: Peaky Blinders, Film: Forrest Gump",
	"Gastmitwirkender",
	"https://www.instagram.com/alexx_p01/ Snap: axp_thereal"
);

INSERT INTO students (
	forename,
	lastname,
	gender,
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
	"Luka",
	"Ramljak",
	"m",
	"2005-01-06",
	"190187@studierende.htl-donaustadt.at",
	"2",
	"luka_ramljak.png",
	"100%",
	"braun",
	"Nichts davon",
	"Pornography - Travis Scott ",
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
	gender,
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
	"m",
	"2003-02-21",
	"180191@studierende.htl-donaustadt.at",
	"1",
	"umut_sakar.jpg",
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
	gender,
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
	"m",
	"2005-06-03",
	"190182@studierende.htl-donaustadt.at",
	"6",
	"michael_samarati.jpg",
	"100%",
	"eine andere Farbe",
	"Nichts davon",
	"Aqua - Barbie Girl",
	"Chicken-Wings im Sale!!1 bei Lidl",
	"Lieber im Stehen scheißen, als in der Scheiße stehen.",
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

INSERT INTO students (
	forename,
	lastname,
	gender,
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
	"m",
	"2004-02-11",
	"180194@studierende.htl-donaustadt.at",
	"0",
	"philipp_vollmann.jpg",
	"100%",
	"braun",
	"Nichts davon",
	"Ciao Adios  - Anne Marie",
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
	gender,
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
	"Linda",
	"Yusupova",
	"f",
	"2003-12-31",
	"190222@studierende.htl-donaustadt.at",
	"3",
	"linda_yusupova.jpg",
	"100%",
	"Braun",
	"Nichts davon",
	"Sieben Sünden",
	"🖕",
	"Wir dürfen uns nicht durch die begrenzten Vorstellungen anderer Leute definieren lassen.",
	"Sport",
	"Keine",
	"Keine",
	"AHS",
	"🍔",
	"D",
	"#da79c1",
	"iOS",
	"Erdbeeren",
	"Shameless",
	"Mitschüler",
	"Instagram: noelgroiss"
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















