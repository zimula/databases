use football;
insert into hold(holdNavn, trainer, land, gruppe
)
value
("Brazil", "Thomsen L.", "Brazil", "D"),
("Croatia", "Lauridsen S.", "Croatia", "D"),
("Kenya", "Semma M.", "Kenya", "D"),
("Denmark", "Jan P.", "Denmark", "D"),
("France", "Louis K.", "France", "D")
;
insert into stadium(stadiumNavn, byen, land
)
values
("Al Bayt", "Quatar city", "Qatar" ),
("Lusail","Lusail","Qatar"),
("974","Ras Abu Aboud","Qatar")
;
insert into spiller(spillerNavn, hold
)
values
("Neymar", 1),
("Luka", 2),
("Dennis", 3),
("Christian", 4),
("Mbappe", 5)
;
insert into kamp(dato, holdA, holdB, stadium
)
values
("2022-11-10", 1, 2, 1),
("2022-11-07", 3,4,2),
("2022-11-15",5,1,3)
;
insert into results(holdA, holdB, kampNr
)
values
(1,1,1),
(2,1,2),
(3,0, 3)
;
insert into mål(spiller, mål, minuttet, hold, kamp
)
values 
(1,1,20,1,1),
(2,1,50,2,1),
(3,1,5,3,2),
(3,1,30,3,2),
(4,1,25,4,2)
;
