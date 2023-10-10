drop database if exists akademi;
create database akademi;
use akademi;
drop table if exists afdeling;
drop table if exists kursus;
drop table if exists underviser;
drop table if exists studerende;
drop table if exists overblik;

create table afdeling(
afdelingId int not null auto_increment,
afdelingNavn varchar(25),
afdelingChef varchar (25),
primary key (afdelingId)
)
;
create table underviser(
underviser_id int auto_increment not null,
underviserNavn varchar(25), 
kvalifikation text, 
primary key (underviser_id)
)
;
create table kursus(
kode int auto_increment not null,
kursusNavn varchar(25),
semester int,
forudsætning int, # 0 for ikke bestået 1 for bestået all første semester fage.
afdeling int,  
underviser int,
primary key (kode),
foreign key (afdeling) references afdeling(afdelingId),
foreign key (underviser) references underviser(underviser_id)
)
;
create table studerende(
studentNr int not null auto_increment,
studentFnavn varchar (25),
studentEnavn varchar (25), 
zipcode varchar (10),
city varchar(25),
street varchar(25),
streetNumber varchar(5),
afdeling int,
primary key (studentNr),
foreign key (afdeling) references afdeling(afdelingId)
)
;
create table overblik(
exam_id int not null,
semester int,
karaktere int,
bestået int,
kursus int,
studentNr int,
statuss varchar(25),
foreign key (kursus) references kursus(kode),
foreign key (studentNr) references studerende(studentNr),
primary key (kursus, studentNr)
)
;