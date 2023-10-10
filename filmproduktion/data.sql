use film_production;
insert into genre(navn, beskrivelse
)
values
("drama", "tears and stuff"),
("comedy", "laughter"),
("action", "violence and stunts"),
("sci-fi", "fringe science"),
("romantic", "emotional")
;

insert into sprog(sprog, land
)
values
("English", "United Kingdom"),
("Danish", "Denmark"),
("Mandarin", "China"),
("Swedish", "Sweden"),
("Spanish", "Spain")
;
insert into film(film_titel, UdgivelsesÅr, genre, sprog
)
values
("Dior", "2000", 1, 2),
("West", "1999", 2, 1),
("East", "2001", 3, 4),
("Jacob", "2022", 1, 3),
("2012", "2004", 4, 5),
("Who", "2011", 5, 2),
("Linda", "2021", 1, 1),
("Aha", "2022", 1, 1),
("North", "1988", 4, 1)
;
insert into skuespiller(F_navn, E_navn, fødselsår, kvalifikation, film
)
values
("Mark", "Jacobs", "2000", "acting and dance", 1),
("Mary", "Jane", "1999", "acting and singingj", 4),
("Bon", "Jovi", "1980", "miming and acting", 7),
("Dan", "Buzz", "1988", "sound and acting", 8),
("Phiona", "Naba", "1992","acting", 2),
("Jacob", "Solveig", "1950","acting", 3),
("Moses", "Thomsen", "2007", "acting", 5),
("Jack", "Black", "1970", "acting", 6),
("Tori", "Jackson", "2000", "acting and singing", 9)
;
insert into rolle(navn, beskrivelse, film, skuespiller
)
values
("maid", "cleans the house", 1, 1),
("cowboy", "shoots sherrif", 2, 2),
("cat", "cool cat", 3, 3),
("doctor", "treats patients", 4, 4),
("doorman", "guards door", 5, 5),
("driver", "drives ambulance", 6, 6),
("teacher", "teaches", 7, 7),
("dog", "barks", 8, 8),
("singer", "sings at party", 9, 9)
;