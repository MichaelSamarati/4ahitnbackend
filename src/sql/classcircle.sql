DROP DATABASE classcircle;

SET NAMES 'utf8mb4';

CREATE DATABASE IF NOT EXISTS classcircle
	CHARACTER SET = 'utf8mb4'
	COLLATE 'utf8mb4_unicode_ci';

USE classcircle;

CREATE TABLE IF NOT EXISTS persons (
	personid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	forename VARCHAR(40) NOT NULL,
	lastname VARCHAR(40) NOT NULL,
	gender VARCHAR(20) NOT NULL,
	personRole VARCHAR(40) NOT NULL,
	birthday DATE,
	age VARCHAR(30),
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
	specialClassFunction VARCHAR(200),
	socialmedia VARCHAR(200),
	subjects VARCHAR(200),
	holidayDream VARCHAR(300),
	schoolFromYouth VARCHAR(200),
	formerJobs VARCHAR(300),
	sideJobs VARCHAR(300),
	drink VARCHAR(100),
	operatingSystem VARCHAR(200),
	vehicle VARCHAR(200),
	CONSTRAINT PRIMARY KEY(personid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci; 

CREATE TABLE IF NOT EXISTS comments(
	commentid INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(40) NOT NULL,
	message VARCHAR(500) NOT NULL,
	dat DATE NOT NULL,
	personid INTEGER UNSIGNED NOT NULL,
	CONSTRAINT FOREIGN KEY(personid) REFERENCES persons(personid),
	CONSTRAINT PRIMARY KEY(commentid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
	"2004-10-04",
	"190282@studierende.htl-donaustadt.at",
	"1",
	"tarik_akpinar.png",
	"100%",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
	"2004-11-17",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	birthday,
	email,
	siblings,
	imageName,
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
	"Roberto",
	"Ghiriti",
	"m",
	"Schüler",
	"2005-04-13",
	"190226@studierende.htl-donaustadt.at",
	"0",
	"roberto_ghiriti.jpg",
	"eine andere Farbe",
	"Nichts davon",
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
	"Klassendieb"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	birthday,
	email,
	siblings,
	imageName,
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
	"Noel",
	"Groiß",
	"m",
	"Schüler",
	"2004-08-01",
	"190205@studierende.htl-donaustadt.at",
	"1",
	"noel_groiss.png",
	"eine andere Farbe",
	"Nichts davon",
	"To get to the other side",
	"Keine Ahnung",
	"Bissl Sport",
	"Ja",
	"Ja",
	"AHS",
	"🍔",
	"BSPK",
	"#0b0be7",
	"iOS",
	"Burger",
	"Breaking Bad",
	"Mitschüler"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
	"2005-06-03",
	"190182@studierende.htl-donaustadt.at",
	"6",
	"michael_samarati.jpg",
	"100%",
	"eine andere Farbe",
	"Nichts davon",
	"Kavinsky - Nightcall",
	"Chicken-Wings im Sale!!1 bei Lidl",
	"Lieber im Stehen scheißen, als in der Scheiße stehen.",
	"Nachdenken",
	"Keine",
	"Keine",
	"NMS",
	"🥑",
	"ITP2",
	"#2986cc",
	"Windows-Phone",
	"Palatschinken/Блины",
	"Serie: Violet Evergarden - Film: Der gezähmte Widerspenstige",
	"Klassenstreber",
	"https://github.com/MichaelSamarati"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	birthday,
	email,
	siblings,
	imageName,
	eyeColor,
	piercingTattoos,
	favouriteSong,
	chickenCrossReason,
	pets,
	allergies,
  schoolBeforeHTL,
	burgerPizzaAvocado,
	favouriteSubject,
	phone,
	socialmedia
) VALUES (
	"Viktor",
	"Trojan",
	"m",
	"Schüler",
	"2003-05-11",
	"190191@studierende.htl-donaustadt.at",
	"1",
	"viktor_trojan.png",
	"Braun",
	"Nichts davon",
	"Atemlos",
	"🖕",
	"Yes",
	"Keine",
	"AHS",
	"🍕",
	"SEW",
	"Android",
	"github.com/ViktorTrojan/"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
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
	"Schüler",
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







INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	birthday,
	email,
	imageName,
	subjects,
	holidayDream,
	formerJobs,
	sideJobs,
	pets,
	drink,
	operatingSystem,
	favouriteFood,
	vehicle,
	specialClassFunction
) VALUES (
	"Veronika",
	"Schippani-Stockinger",
	"f",
	"Lehrer",
	"1991-09-13",
	"SCHI@htl-donaustadt.at",
	"veronika_schippani.jpg",
	"Mathematik, Ethik, SOPK",
	"Pizza essen in Neapel",
	"Buchhalterin (Schwerpunkt Steuern)",
	"Schulungstätigkeit als Fachkraft für Gewaltprävention",
	"Katzen",
	"Kaffee",
	"Windows",
	"Pizza oder Pommes",
	"am liebsten das Fahrrad",
	"Nicht schockiert sein - ich bin eure JVin"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName,
	subjects,
	favouriteSubject,
	schoolFromYouth,
	formerJobs,
	sideJobs,
	quote,
	pets,
	hobbies,
	drink,
	favouriteColor,
	operatingSystem,
	vehicle
) VALUES (
	"Patrick",
	"Zivkovic",
	"m",
	"Lehrer",
	"ZIVK@htl-donaustadt.at",
	"patrick_zivkovic.jpg",
	"SEW, NWT, MEDT",
	"Netzwerktechnik - Security Bereich",
	"HTL Donaustadt",
	"Cloud Systems Engineer, Security Engineer",
	"IT Consulting",
	"Wann immer du fällst, hebe etwas auf.",
	"Hund",
	"Fotographie, Zeichnen, Musik",
	"Kaffee",
	"#097953",
	"macOS Ventura (immer die Aktuellste Version)",
	"U-Bahn hpts. U6"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	age,
	email,
	imageName,
	subjects,
	holidayDream,
	schoolFromYouth,
	formerJobs,
	sideJobs,
	pets,
	hobbies,
	favouriteColor,
	vehicle
) VALUES (
	"Lucie",
	"Langer",
	"f",
	"Lehrer",
	"42",
	"LANG@htl-donaustadt.at",
	"lucie_langer.jpg",
	"AM, NWT (Kryptografie)",
	"Mischung aus Entspannung und Erkundung von Neuem, draußen sein",
	"Gymnasium in Deutschland",
	"IT-Beraterin, Managerin von Forschungsprojekten",
	"Lektorin an einer FH",
	"Keine",
	"Zeit mit meinem Kind verbringen; wenn ich mal alleine bin: lesen",
	"bunt :-)",
	"Fahrrad"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	age,
	email,
	imageName,
	subjects,
	favouriteSubject,
	schoolFromYouth,
	formerJobs,
	sideJobs,
	pets,
	hobbies,
	drink,
	favouriteColor,
	operatingSystem,
	vehicle
) VALUES (
	"Thomas",
	"Angermayer",
	"m",
	"Lehrer",
	"43",
	"ANGE@htl-donaustadt.at",
	"thomas_angermayer.jpg",
	"NWT1, ITP2 (DA-Betreuung)",
	"NWT1",
	"VS, AHS (Unterstufe), HTL, FH",
	"Ja",
	"Keine",
	"Keine",
	"Wandern, Geocaching",
	"Kaffee",
	"#ffff00",
	"Windows 10, Debian GNU/Linux",
	"Wiener Linien"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	age,
	email,
	imageName,
	subjects,
	holidayDream,
	schoolFromYouth,
	formerJobs,
	sideJobs,
	quote,
	pets,
	hobbies,
	drink,
	operatingSystem,
	vehicle,
	specialClassFunction
) VALUES (
	"Thomas",
	"Spachinger",
	"m",
	"Lehrer",
	"54",
	"SPAC@htl-donaustadt.at",
	"thomas_spachinger.jpg",
	"SEW, NWT, LA1, KSN, ITP2",
	"Entspannen, ein bisschen Sport, ein bisschen Kultur",
	"Unterstufe BRG, dann HTL Elektrotechnik",
	"Selbstständig und Softwareentwickler",
	"Keine",
	"Für den Optimisten ist das Glas halb voll.",
	"Einen Hund (Havaneser)",
	"Lesen, Wandern, Tanzen",
	"Kaffee",
	"Windows 10 Noch Win10",
	"Meist öffentlich unterwegs",
	"Jahrgangsvorstand der 3BHIT"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	age,
	email,
	imageName,
	subjects,
	favouriteSubject,
	holidayDream,
	schoolFromYouth,
	formerJobs,
	sideJobs,
	quote,
	favouriteSong,
	pets,
	hobbies,
	drink,
	favouriteColor,
	operatingSystem,
	favouriteFood,
	vehicle
) VALUES (
	"Martina",
	"Hiesinger",
	"f",
	"Lehrer",
	"58",
	"HIES@htl-donaustadt.at",
	"default.jpg",
	"ITP2, SEW, INSY",
	"Kann mich nicht entscheiden!",
	"Möglichst weit weg fremde Länder/Kulturen erkunden",
	"HAK, Pädagogische Akademie",
	"IT-Consultant, IT-Projektmanager",
	"Selbständigkeit",
	"Jeder, der sich die Fähigkeit erhält, Schönes zu erkennen, wird nie alt werden. - Franz Kafka",
	"L'altra parte del mondo - Lucio Dalla",
	"Keine",
	"Reisen, Lesen, Garten",
	"Kaffee",
	"#C0C0C0",
	"macOS Ventura, Big Sur",
	"Meine selbst gebackene Sachertorte",
	"Jaguar XJ8"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Merisa",
	"Mesanovic",
	"f",
	"Lehrer",
	"MESA@htl-donaustadt.at",
	"merisa_mesanovic.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Walter",
	"Mantl-Mussak",
	"m",
	"Lehrer",
	"MAMU@htl-donaustadt.at",
	"default.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Thomas",
	"Wurst",
	"m",
	"Lehrer",
	"WURT@htl-donaustadt.at",
	"thomas_wurst.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Bernhard",
	"Loibner",
	"m",
	"Lehrer",
	"LOIB@htl-donaustadt.at",
	"bernhard_loibner.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Peter",
	"Kovar",
	"m",
	"Lehrer",
	"KOVA@htl-donaustadt.at",
	"peter_kovar.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Sebastian",
	"Braunsberger",
	"m",
	"Lehrer",
	"BRAU@htl-donaustadt.at",
	"sebastian_braunsberger.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Lieselotte",
	"Schmelz",
	"f",
	"Lehrer",
	"SMEZ@htl-donaustadt.at",
	"default.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Sarina",
	"Wareyka",
	"f",
	"Lehrer",
	"WASA@htl-donaustadt.at",
	"default.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Monika",
	"Bauer",
	"f",
	"Lehrer",
	"BAUE@htl-donaustadt.at",
	"monika_bauer.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Katrin",
	"Vlcek",
	"f",
	"Lehrer",
	"VLCK@htl-donaustadt.at",
	"default.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Michael",
	"Putzenlechner",
	"m",
	"Lehrer",
	"PULE@htl-donaustadt.at",
	"default.jpg"
);

INSERT INTO persons (
	forename,
	lastname,
	gender,
	personRole,
	email,
	imageName
) VALUES (
	"Wilhelm",
	"Frysak",
	"m",
	"Lehrer",
	"FRYS@htl-donaustadt.at",
	"wilhelm_frysak.jpg"
);



INSERT INTO comments (name,message,dat,personid) 
VALUES ("Test User","Very good profile!😍💕😘", "2023-04-04", (select personid from persons where lastname="Samarati" LIMIT 1));

INSERT INTO comments (name,message,dat,personid) 
VALUES ("Trashtalker","Huan 🤐🫠🫤😕😤", "2023-05-02", (select personid from persons where lastname="Samarati" LIMIT 1));





