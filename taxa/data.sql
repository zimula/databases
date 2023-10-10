use taxa;

insert into vogn(nummerPlade
)
values
("6705")
;

insert into chauffør(Fnavn, Enavn, vogn
)
values
("Nehat", "M", 1),
("Ali", "B", 1),
("Taha", "J", 1)
;

insert into turtype(turType
)
values
("kreditkort"),
("kontant")
;
insert into adresse(vej, husNr
)
values
("Kirkegade","27"),
("nær havnegade","ved vejen"),
("finlandsvej","ved vejen"),
("nær løget høj","ved vejen"),
("nær banegårdspladsen","ved vejen"),
("superbrugsen","ved vejen"),
("forlod bilen","ukendt"),
("nær klydevej","ved vejen"),
("nær brandbjergvej","ved vejen"),
("gormsgade","26b"),
("lokaltur","ukendt"),
("nær grundet bygade","ukendt"),
("dæmningen","42h"),
("burger king vejle","ukendt"),
("havneøen","7"),
("nær svendgade","ukendt")
;
insert into tur(dato, kundeType, startTid, slutTid,turtype,vogn,addresse1, addresse2, chauffør
)
values
("2021-08-01","skærm","00:10:00","00:32:00",1,1,1,3,1),
("2021-08-01","gade tur", "00:37:00","00:45:00", 1,1,2,4,1),
("2021-08-02", "gade tur", "13:49:00","13:53:00",1,1,5,7,2),
("2021-08-02","skærm", "15:06:00","15:14:00", 1,1,6, 8 ,2),
("2021-08-02","gade tur", "17:19:00", "17:38:00",1,1, 5,9,2),
("2021-08-11","skærm","01:46:00","01:55:00", 2,1,10,11,3),
("2021-08-11","gade tur", "02:55:00","03:02:00",1,1,5, 12,3),
("2021-08-12","skærm", "00:39:00","00:45:00",1,1,13,15,3),
("2021-08-12","skærm","01:23:00","01:29:00",1, 1, 14,16,3),
("2021-08-12","skærm", "01:23:00","01:29:00",2,1,14,16,3)
;
insert into betaling(tur_nr, distance, beløb, statuss
)
values
(1, 15.36,377,"afregnet"),
(2,5.08,157,"afregnet"),
(3,1.34,81,"afregnet"),
(4,1.34,140,"afregnet"),
(5,12.1,289,"afregnet"),
(6,4.74,170,"ok"),
(7,3.19,132,"afregnet"),
(8,2.51,121,"ok"),
(9,3.64,30,"ok"),
(10,3.64,100,"ok")
