use akademi;
#test
select * from studerende;
#opgave1: antal studerende i hver afdeling.
select count(s.studentNr) as students, a.afdelingNavn
from studerende s join afdeling a 
on s.afdeling = a.afdelingId
group by afdeling
;
#opgave 2:kurser på 2. semester givet forudsætninger
#antage at alle studerende er på første semester.
#1 for bestået 0 for dumpet på første semesterr.  
select s.studentFnavn, k.kode, k.kursusNavn, k.semester, k.forudsætning
from studerende s join kursus k 
on s.afdeling = k.afdeling
where k.semester = 2
;
#opgave3: undervisere i flere afdelinger
select u.underviser_id,u.underviserNavn, count(k.afdeling)
from underviser u join kursus k
on u.underviser_id = k.underviser 
group by u.underviser_id
;
