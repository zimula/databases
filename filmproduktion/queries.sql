use film_produktion;
select* from film;
#opgave 1: film uden genre
select * 
from film
where genre = 6;
#opgave 2: skuespiller der har spillet is drama
#2.1: alle skuespiller
select * from skuespiller;
#2.2: dem fra dram film
select s.F_navn as fornavn, s.E_navn as efternavn, f.film_titel as film, g.navn as genre
from skuespiller s join film f on s.film = f.film_id
join genre g on f.genre = g.genre_id
where f.genre = 1;
#opgave 3: antal film per genre
select count(film_id) as "number of films", g.navn 
from film as f 
join genre as g on g.genre_id = f.genre
group by genre

