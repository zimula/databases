use taxa;
#opgave 1: ulemper: indtastningsfejl. Man undgår forvirring ved dele data op sådan man ikke behøver at indtaste det hele. 
#opgave2: chauffør og beløb. Til link mellem chauffør og tur. 
select t.turNr, c.Fnavn, sum(b.beløb)
from tur t join betaling b 
on t.turNr = b.tur_nr
join chauffør c 
on t.chauffør = c.chaufførId
where t.dato between "2021-08-01"  and  "2021-08-12"
group by t.chauffør
;
#opgave 3: tur gruppering (om de er skærm eller gade. 
#Har tur kategori som kolonne i tur tabellen. 
select turNr, kundeType as kategori
from tur;
