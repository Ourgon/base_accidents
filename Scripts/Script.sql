select mode_implique,
count(id) ensemble,
sum (case when grav='1' then 1 else 0 end) "Indemne",
sum (case when grav='2' then 1 else 0 end) "Tué",
sum (case when grav='3' then 1 else 0 end) "Blessé hospitalisé",
sum (case when grav='4' then 1 else 0 end) "Blessé léger"
from stat.usagers
where mode_transport2='01' and metropole and annee='2015' and trajet='1'
group by mode_implique
union
select 'zz_Total' mode_implique,
sum(1) ensemble,
sum (case when grav='1' then 1 else 0 end) "Indemne",
sum (case when grav='2' then 1 else 0 end) "Tué",
sum (case when grav='3' then 1 else 0 end) "Blessé hospitalisé",
sum (case when grav='4' then 1 else 0 end) "Blessé léger"
from stat.usagers
where mode_transport2='01' and metropole and annee='2015' and trajet='1'
order by mode_implique;

select annee,
sum(1) ensemble,
sum (case when grav='1' then 1 else 0 end) "Indemne",
sum (case when grav='2' then 1 else 0 end) "Tué",
sum (case when grav='3' then 1 else 0 end) "Blessé hospitalisé",
sum (case when grav='4' then 1 else 0 end) "Blessé léger"
from stat.usagers
where mode_transport2='01' and metropole and trajet='1'
group by annee
order by annee;



