use bibliotek;
#test
select * 
from bog;
#opgave 1: alle bøger sorteret efter forfatters efternavn
select b.titel, f.f_navn, f.e_navn
from bog b join forfatter f
on b.bog_nr = f.bog
order by f.e_navn
;
#opgave 2: bøger med mere end en forfatter
select count(f.for_id) as authors, b.titel  
from forfatter as f join bog as b
on f.bog = b.bog_nr	
group by f.bog
having authors > 1
;
#opgave 3: bøger skrevet af døde forfatter
select b.titel as bog, f.f_navn as fornavn, f.e_navn as efternavn, f.d_dato
from bog b join forfatter f
on b.bog_nr = f.bog
where d_dato < "2023-01-04"
;
