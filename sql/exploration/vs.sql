/* cyclistes accidentés
 *
1	Indemne
2	Tué
3	Blessé hospitalisé
4	Blessé léger
 * */

select annee,
sum (case when grav='1' then 1 else 0 end) "Indemne",
sum (case when grav='2' then 1 else 0 end) "Tué",
sum (case when grav='3' then 1 else 0 end) "Blessé hospitalisé",
sum (case when grav='4' then 1 else 0 end) "Blessé léger"
from stat.usagers
where mode_transport2='01'
and metropole
group by annee