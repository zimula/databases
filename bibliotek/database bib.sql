drop database if exists bibliotek;
create database bibliotek;
use bibliotek;
drop table if exists bog;
drop table if exists genre;
drop table if exists forfatter;
drop table if exists forlag;
drop table if exists emne;

create table genre(
genre_nr int not null auto_increment,
genre_navn varchar(25),
primary key (genre_nr)
)
;
create table forlag(
forl_nr int not null auto_increment, 
forl_navn varchar(25),
primary key (forl_nr)
)
;
create table emne(
emne_nr int not null auto_increment,
emne_navn varchar(25),
primary key (emne_nr)
)
;
create table bog(
bog_nr int not null auto_increment,
titel varchar(25),
udgivelsesår year,
genre int,
forlag int,
emne int,
primary key(bog_nr),
foreign key(genre) references genre(genre_nr),
foreign key(forlag) references forlag(forl_nr),
foreign key(emne) references emne(emne_nr)
)
;
create table forfatter(
for_id int not null auto_increment,
f_navn varchar(25),
e_navn varchar(25), 
f_dato date,
d_dato date,
f_sted varchar(25),
land varchar(25),
bog int,
primary key (for_id),
foreign key (bog) references bog(bog_nr)
)
;


