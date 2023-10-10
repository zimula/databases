drop database if exists football;
create database football;
use football;
drop table if exists spiller;
drop table if exists hold;
drop table if exists kamp;
drop table if exists stadium;
drop table if exists mål;
drop table if exists results;

create table hold(
hold_nr int not null auto_increment,
holdNavn varchar(10),
trainer varchar(25),
land varchar(10),
gruppe varchar(1),
primary key (hold_nr)
)
;
create table stadium(
stadium_id int not null auto_increment,
stadiumNavn varchar (25),
byen varchar (20),
land varchar (10),
primary key (stadium_id)
)
;
create table spiller(
spillerNr int not null auto_increment,
spillerNavn varchar (25),
hold int,
primary key (spillerNr),
foreign key (hold) references hold(hold_nr)
)
;
create table kamp(
kampNr int not null auto_increment,
dato date,
holdA int,
holdB int,
stadium int,
primary key (kampNr),
foreign key (stadium) references stadium(stadium_id),
foreign key (holdA) references hold(hold_nr),
foreign key (holdB) references hold(hold_nr)
)
;
create table results(
holdA int,
holdB int,
kampNr int,
foreign key (kampNr) references kamp(kampNr),
primary key (kampNr)
)
;
create table mål(
målNr int auto_increment,
spiller int, 
mål int, 
minuttet int,
hold int,
kamp int,
foreign key (spiller) references spiller(spillerNr),
foreign key (kamp) references kamp(kampNr),
foreign key (hold) references hold(hold_nr),
primary key (målNr, spiller, hold, kamp)
)
;
