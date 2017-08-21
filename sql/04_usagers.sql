drop table if exists stat.usagers;

create table stat.usagers as
select usag.*,
carac.annee,
carac.annee_mois,
carac.metropole,
carac.dep_r,
carac.com_r,
carac.hrmn,
carac.lum,
carac.agg,
carac.int,
carac.atm,
carac.col,
carac.adr,
carac.lat,
carac.long,
carac.gps,
veh.id veh_id,
senc,
catv,
occutc,
obs,
obsm,
choc,
manv,
catv_rr
from donnees.usagers  usag
left join donnees.caracteristiques carac
on usag.num_acc=carac.num_acc
left join donnees.vehicules veh
on usag.num_acc=veh.num_acc
and usag.num_veh=veh.num_veh;


CREATE INDEX usagers_idx ON stat.usagers (num_acc);
CREATE INDEX usagers_catv_rr_idx ON stat.usagers (catv_rr);
CREATE INDEX usagers_id_num_acc_idx ON stat.usagers (id,num_acc);

alter table stat.usagers add column mode_transport varchar;
update stat.usagers set mode_transport='01' where catv_rr='01' and catu in ('1','2');
update stat.usagers set mode_transport='02' where catv_rr='02' and catu in ('1','2');
update stat.usagers set mode_transport='03' where catv_rr='03' and catu in ('1','2');
update stat.usagers set mode_transport='04' where catv_rr='04' and catu in ('1','2');
update stat.usagers set mode_transport='05' where catv_rr='05' and catu in ('1','2');
update stat.usagers set mode_transport='06' where catv_rr='06' and catu in ('1','2');
update stat.usagers set mode_transport='07' where catv_rr='07' and catu in ('1','2');
update stat.usagers set mode_transport='08' where catu in ('3','4');
update stat.usagers set mode_transport='99' where catv_rr='99' and catu in ('1','2');
update stat.usagers set mode_transport='ND' where mode_transport is null;

alter table stat.usagers add column mode_transport2 varchar;
update stat.usagers set mode_transport2=mode_transport;
update stat.usagers set mode_transport2='0607' where catv_rr in ('06','07') and catu in ('1','2');


/*le piétion n'a pas de véhicule, il lui est attribué le véhicule de l'impliqué*/
alter table stat.usagers add column mode_transport_brut varchar;
update stat.usagers set mode_transport_brut='01' where catv_rr='01';
update stat.usagers set mode_transport_brut='02' where catv_rr='02';
update stat.usagers set mode_transport_brut='03' where catv_rr='03';
update stat.usagers set mode_transport_brut='04' where catv_rr='04';
update stat.usagers set mode_transport_brut='05' where catv_rr='05';
update stat.usagers set mode_transport_brut='0607' where catv_rr in ('06','07'); 
update stat.usagers set mode_transport_brut='99' where catv_rr='99';
update stat.usagers set mode_transport_brut='ND' where catv_rr is null;

/* on verra le calcul des impliqués plus tard
alter table stat.usagers add column mode_implique varchar;
update stat.usagers set mode_implique=null where annee='2015';
update stat.usagers set mode_implique=calc_vs3(id,mode_transport2) where annee='2015';

update stat.usagers set mode_implique=null;
update stat.usagers set mode_implique=calc_vs3(id,mode_transport2);
*/


