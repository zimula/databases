use football;
#opgave 1: top 3 scorer, antal mål og hold
select m.spiller, s.spillerNavn, count(m.mål) as goals, m.minuttet, m.hold, m.kamp
from mål m join spiller s 
on m.spiller = s.spillerNr 
join hold h on s.hold = hold_nr
group by spiller
order by mål
;
#opgave2: kamp, holda, holdb, score_a, scored_b, stadium
select k.kampNr, h.holdNavn, i.holdNavn, r.holdA as ScoreA, r.holdB as ScoreB,
s.byen
from kamp k join hold h
on k.holdA = h.hold_nr
join hold i on k.holdB = i.hold_nr 
join results r on k.kampNr = r.kampNr
join stadium s on k.stadium = s.stadium_id
;
#opgave 3: hold, point og mål. Bruge conditional til tidligere udtræk men ikke mere tid. 
select k.kampNr, h.holdNavn, i.holdNavn, r.holdA as ScoreA, r.holdB as ScoreB
from kamp k join hold h
on k.holdA = h.hold_nr
join hold i on k.holdB = i.hold_nr 
join results r on k.kampNr = r.kampNr
join stadium s on k.stadium = s.stadium_id
;
