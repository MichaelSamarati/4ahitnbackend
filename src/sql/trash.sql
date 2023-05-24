


INSERT INTO comments (name,message,dat,personid) 
VALUES ("Test User","Very good profile!😍💕😘", "2023-04-04", (select personid from persons where lastname="Samarati" LIMIT 1));

INSERT INTO comments (name,message,dat,personid) 
VALUES ("Trashtalker","Huan 🤐🫠🫤😕😤", "2023-05-02", (select personid from persons where lastname="Samarati" LIMIT 1));





INSERT INTO comments (name,message,dat,personid) 
VALUES ("Phil","Schlechter in Deutsch als ich", "2023-05-24", 20);

INSERT INTO comments (name,message,dat,personid) 
VALUES ("Phil","Wenn er aufhört zu rauchen, brechen die Malboro Aktien ins Bodenlose", "2023-05-24", 10);

INSERT INTO comments (name,message,dat,personid) 
VALUES ("Phil","habe ihn in 4 Jahren nur 3 mal gesehen...", "2023-05-24", 14);

INSERT INTO comments (name,message,dat,personid) 
VALUES ("euy","aint no way fam brother attended a NMS", "2023-05-24", 20);

INSERT INTO comments (name,message,dat,personid) 
VALUES ("testsubject","the cake is a lie.", "2023-05-24", 20);

INSERT INTO comments (name,message,dat,personid) 
VALUES ("euy","I like ramljack", "2023-05-24", 18);

INSERT INTO comments (name,message,dat,personid) 
VALUES ("euy","Zitat: Ich ziehe dieses Jahr durch\n Brother likes to cap a lot", "2023-05-24", 14);

INSERT INTO comments (name,message,dat,personid) 
VALUES ("euy","boosted Global in CS", "2023-05-24", 14);

INSERT INTO comments (name,message,dat,personid) 
VALUES ("freeviktor","freeviktor", "2023-05-24", 21);

INSERT INTO comments (name,message,dat,personid) 
VALUES ("heislbaugmbh","seas", "2023-05-24", 12);

-- select * from persons WHERE personid=(select personid from persons where lastname="Trojan" LIMIT 1);
-- UPDATE persons set imageName="viktor_trojan.webp" WHERE personid=(select personid from persons where lastname="Trojan" LIMIT 1);






