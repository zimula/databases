drop database if exists taxa;
create database taxa;
use taxa;
drop table if exists chauffør;
drop table if exists vogn;
drop table if exists turtype;
drop table if exists adresse;
drop table if exists tur;
drop table if exists betaling;

create table vogn(
vognNr int not null auto_increment,
nummerPlade varchar(6),
primary key (vognNr)
)
;
create table chauffør(
chaufførId int not null auto_increment,
Fnavn varchar(25),
Enavn varchar(25),
vogn int,
primary key (chaufførId),
foreign key (vogn) references vogn(vognNr)
)
;
create table turtype(
typeNr int not null auto_increment,
turType varchar(10),
primary key (typeNr)
)
;
create table adresse(
addresseId int not null auto_increment, 
vej text, 
husNr varchar(25),
primary key (addresseId)
)
;
create table tur(
turNr int not null auto_increment,
dato date,
kundeType varchar (25),
startTid time,
slutTid time, 
turtype int,
vogn int, 
addresse1 int,
addresse2 int,
chauffør int, 
primary key (turNr),
foreign key (turtype) references turtype(typeNr),
foreign key (vogn) references vogn(vognNr),
foreign key (addresse1) references adresse(addresseId),
foreign key (addresse2) references adresse(addresseId),
foreign key (chauffør) references chauffør(chaufførId)
)
;
create table betaling(
tur_nr int,
distance float,
beløb float,
konto varchar(10),
statuss varchar(10),
foreign key (tur_nr) references tur(turNr),
primary key (tur_nr)
)
;