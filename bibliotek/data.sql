use bibliotek;
insert into genre(genre_navn
)
values
("novelle"),
("eventyr"),
("kortprosa"),
("digt"),
("manuskript"),
("autofiktion"),
("faglig"),
("drama"),
("komed")
;
insert into forlag(forl_navn
)
values
("byens forlag"),
("forlaget carlsen"),
("gads forlag"),
("gyldendal"),
("turbine"),
("tellerup")
;
insert into emne(emne_navn
)
values
("dyr"),
("historie"),
("IT"),
("astonomi"),
("krige"),
("kemi"),
("ingen specifik")
;
insert into bog(titel, udgivelsesår, genre, forlag, emne

)
values
("kat", "1999",7, 1, 1),
("pc","2000",7,2,3),
("stjerner","1989",7,3,4),
("1945","2001",7,4,2),
("ww2","2010",7,5,5),
("atom","1970",7,6,6),
("Hjem","2012",1,2,7),
("Tom","1991",2,4,7),
("Australia","1988",3,6,7),
("Hans","2000",4,1,7),
("Kolding","1979",5,3,7),
("Mig","2015",6,4,7),
("Love","2000",8,6,7),
("Whaa","1987",9,6,7),
("Rain","1999",8,1,7),
("Thunder","2020",8,1,7),
("Himlem","2022",3,2,7),
("Helvede","2023",3,1,7)
;
insert into forfatter(f_navn, e_navn, f_dato, d_dato, f_sted, land, bog
)
values
("Mark","Zack","1972-10-04","2024-12-31","Odense", "Denmark",1),
("Rodi","Jensen","1975-04-25","2024-12-31","Thor", "Sweden",2),
("Tom","Cat","1976-10-20","2024-12-31","Smallvile", "Canada",3),
("James","Leeds","1980-02-22","2024-12-31","Bigville", "USA",4),
("Jack","Ma","1982-02-22","2024-12-31","Merida", "Mexico",5),
("Niels","Mark","1995-09-20","2024-12-31","Berlin", "Germany",6),
("Martin","Andersen","1979-10-10","2024-12-31","Madrid", "Spain",7),
("Zack","Elle","1988-08-10","2024-12-31","Valencia", "Spain",8),
("Thomas","Catts","1990-10-10","2024-12-31","City", "Spain",8),
("Hans","Chris","1975-06-20","2024-12-31","Granada", "Spain",8),
("Isaac","Amigo","1988-07-10","2024-12-31","Unknown", "Denmark",9),
("Raymond","Zurik","1966-06-10","2024-12-31","Unknown", "Spain",10),
("Dark","Ages","1954-09-09","2024-12-31","Unknown", "Spain",11),
("Clancy","Toms","1984-07-10","2024-12-31","Unknown", "Spain",12),
("Pablo","Neruda","1970-06-15","2024-12-31","Unknown", "Spain",13),
("Much","Work","1977-07-07","2024-12-31","Unknown", "Spain",14),
("Jamie","Sands","1990-10-10","2014-12-28","Unknown", "Spain",15),
("Cage","Thomsen","1945-10-10","2009-04-13","Unknown", "Spain",16),
("John","Rudi","1966-10-10","2006-11-04","Unknown", "Spain",17),
("Catalina","Han","1960-12-12","2003-01-28","Unknown", "Canada",18),
("Lin","Xu","1940-10-12","1996-07-27","Unknown", "Canada",18),
("May","Flower","1800-10-10","1999-06-06","Unknown", "Australia",18),
("Dan","Jameson","1970-10-12","2022-12-01","Unknown", "Australia",18),
("Ian","Tendo","1944-10-13","2001-10-01","Unknown", "Denmark",9)
;

