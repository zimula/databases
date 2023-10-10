drop database if exists film_production;
create database film_production;
use film_production;
drop table if exists film;
drop table if exists genre;
drop table if exists rolle;
drop table if exists skuespiller;
drop table if exists sprog;



create table genre(
genre_id int auto_increment, navn text, beskrivelse text,
primary key(genre_id)
)
;
create table sprog(
sprog_id int not null auto_increment, 
sprog varchar(25), 
#hard to make language a table because movies can have multiple languades. It's a dropdown in the form. 
land varchar(25), 
primary key(sprog_id)
)
;

create table film(
film_id int not null auto_increment, 
film_titel varchar(25), 
UdgivelsesÅr year, 
genre int,
sprog int,
primary key (film_id), 
foreign key(genre) references genre(genre_id),
foreign key(sprog) references sprog(sprog_id)
)
;

create table skuespiller(
skusp_id int not null auto_increment, 
F_navn varchar(25), #concatenate with E_navn
E_navn varchar(25), 
fødselsår year, 
kvalifikation text, 
film int,
primary key(skusp_id),
foreign key(film) references film(film_id)
)
;

create table rolle(
rolle_id int not null auto_increment, 
navn text, 
beskrivelse text, 
film int,
skuespiller int,
foreign key(film) references film(film_id),
foreign key(skuespiller) references skuespiller(skusp_id),
primary key (rolle_id, film)
)
;
