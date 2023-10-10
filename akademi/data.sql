use akademi;
insert into afdeling(afdelingNavn, afdelingChef
)
values
("Dramaturgi", "Mette F."),
("Naturvidenskab", "Mary J."),
("IT", "Morten S"),
("Retorik", "Mads D.")
;
insert into underviser(underviserNavn, kvalifikation
)
values
("Tonny", "IT"),
("John", "kemi"),
("Marie", "retorik"),
("Anne", "drama")
;
insert into kursus(kursusNavn, semester, forudsætning, afdeling, underviser
)
values
("coding 101", 1, 0, 3, 1),
("kemi 101", 1, 0, 2, 2),
("retorik 101", 1,0,4, 3),
("drama 101", 1, 0, 1, 4),
("drama 102", 2, 1, 1, 4),
("coding 102", 2, 1, 3,1)
;
insert into studerende(studentFnavn, StudentEnavn, zipcode, street, streetNumber, afdeling
)
values
("martin", "zimula", "6000", "helm", "155",1),
("jack", "Zol", "6000", "torn", "111",4),
("Jill", "Hill", "9000", "ztreet", "911",3),
("Allan", "Hugh", "2000", "uphill", "700",2),
("dan", "nad", "5000", "gade", "999",3)
;
insert into overblik(exam_id, semester, karaktere, bestået, kursus, studentNr, statuss
)
values
(1,1,4,1,4,1,"ok"),
(2,1,7,1,3,2,"ok"),
(3, 1,10,1,2,4,"ok"),
(4,1,10,1,1,3,"ok"),
(5,1,0,0,1,5,"ok")
;