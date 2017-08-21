
drop table if exists donnees.caracteristiques cascade;

create
	table donnees.caracteristiques as select * from	chargement.caracteristiques_2005
	union all select * from chargement.caracteristiques_2006
	union all select * from chargement.caracteristiques_2007
	union all select * from chargement.caracteristiques_2008
	union all select * from chargement.caracteristiques_2009
	union all select * from chargement.caracteristiques_2010
	union all select * from	chargement.caracteristiques_2011
	union all select * from	chargement.caracteristiques_2012
	union all select * from chargement.caracteristiques_2013
	union all select * from	chargement.caracteristiques_2014
	union all select * from	chargement.caracteristiques_2015
	union all select * from	chargement.caracteristiques_2016;

drop table if exists donnees.lieux cascade;

create table donnees.lieux as select * from	chargement.lieux_2005
	union all select * from chargement.lieux_2006
	union all select * from chargement.lieux_2007
	union all select * from	chargement.lieux_2008
	union all select * from	chargement.lieux_2009
	union all select * from	chargement.lieux_2010
	union all select * from	chargement.lieux_2011
	union all select * from	chargement.lieux_2012
	union all select * from	chargement.lieux_2013
	union all select * from	chargement.lieux_2014
	union all select * from	chargement.lieux_2015
	union all select * from	chargement.lieux_2016;;
			
drop
	table if exists	donnees.usagers cascade;

create table donnees.usagers as select * from chargement.usagers_2005
	union all select * from chargement.usagers_2006
	union all select * from	chargement.usagers_2007
	union all select * from	chargement.usagers_2008
	union all select * from chargement.usagers_2009
	union all select * from chargement.usagers_2010
	union all select * from	chargement.usagers_2011
	union all select * from	chargement.usagers_2012
	union all select * from	chargement.usagers_2013
	union all select * from	chargement.usagers_2014
	union all select * from	chargement.usagers_2015
	union all select * from	chargement.usagers_2016;
			
drop table if exists donnees.vehicules cascade;

create table donnees.vehicules as select * from chargement.vehicules_2005
	union all select * from chargement.vehicules_2006
	union all select * from	chargement.vehicules_2007
	union all select * from chargement.vehicules_2008
	union all select * from	chargement.vehicules_2009
	union all select * from chargement.vehicules_2010
	union all select * from chargement.vehicules_2011
	union all select * from	chargement.vehicules_2012
	union all select * from	chargement.vehicules_2013
	union all select * from chargement.vehicules_2014
	union all select * from chargement.vehicules_2015
	union all select * from chargement.vehicules_2016;


CREATE unique INDEX caracteristiques_num_acc_idx ON donnees.caracteristiques (num_acc) ;
CREATE unique INDEX lieux_num_acc_idx ON donnees.lieux (num_acc) ;
CREATE INDEX usagers_num_acc_idx ON donnees.usagers (num_acc) ;
CREATE INDEX usagers_num_acc_num_veh_idx ON donnees.usagers (num_acc,num_veh) ;
CREATE unique INDEX vehicules_num_acc_num_veh_idx ON donnees.vehicules (num_acc,num_veh) ;

COMMENT ON COLUMN donnees.caracteristiques.adr IS 'Adresse postale : variable renseignée pour les accidents survenus en agglomération';
COMMENT ON COLUMN donnees.caracteristiques.agg IS 'Localisation';
COMMENT ON COLUMN donnees.caracteristiques.an IS 'Année de l’accident';
COMMENT ON COLUMN donnees.caracteristiques.atm IS 'Conditions atmosphériques';
COMMENT ON COLUMN donnees.caracteristiques.col IS 'Type de collision';
COMMENT ON COLUMN donnees.caracteristiques.com IS 'Commune (code insee)';
COMMENT ON COLUMN donnees.caracteristiques.dep IS 'Departement (code insee)';
COMMENT ON COLUMN donnees.caracteristiques.gps IS 'Codage localisation';
COMMENT ON COLUMN donnees.caracteristiques.gps IS 'Codage localisation (métropole et ailleurs)';
COMMENT ON COLUMN donnees.caracteristiques.hrmn IS 'Heure Minute de l''accident';
COMMENT ON COLUMN donnees.caracteristiques.int IS 'Intersection';
COMMENT ON COLUMN donnees.caracteristiques.jour IS 'Jour de l’accident';
COMMENT ON COLUMN donnees.caracteristiques.lat IS 'Latitude';
COMMENT ON COLUMN donnees.caracteristiques.long IS 'Longitude';
COMMENT ON COLUMN donnees.caracteristiques.lum IS 'Lumière : conditions d''éclairage dans lesquelles l''accident s''est produit';
COMMENT ON COLUMN donnees.caracteristiques.mois IS 'Mois de l’accident';
COMMENT ON COLUMN donnees.caracteristiques.num_acc IS 'Numéro d’identifiant de l’accident';
COMMENT ON COLUMN donnees.lieux.catr IS 'Catégorie de route';
COMMENT ON COLUMN donnees.lieux.circ IS 'Régime de circulation';
COMMENT ON COLUMN donnees.lieux.env1 IS 'point école : proximité d''une école';
COMMENT ON COLUMN donnees.lieux.infra IS 'Aménagement - Infrastructure';
COMMENT ON COLUMN donnees.lieux.larrout IS 'Largeur de la chaussée affectée à la circulation des véhicules ne sont pas compris les bandes d''arrêt d''urgence, les TPC et les places de stationnement';
COMMENT ON COLUMN donnees.lieux.lartpc IS 'Largeur du terre plein central (TPC) s''il existe';
COMMENT ON COLUMN donnees.lieux.nbv IS 'Nombre total de voies de circulation';
COMMENT ON COLUMN donnees.lieux.num_acc IS 'Numéro d''identifiant de l''accident';
COMMENT ON COLUMN donnees.lieux.plan IS 'Tracé en plan';
COMMENT ON COLUMN donnees.lieux.pr IS 'Numéro du PR de rattachement (numéro de la borne amont)';
COMMENT ON COLUMN donnees.lieux.pr1 IS 'Distance en mètres au PR (par rapport à la borne amont)';
COMMENT ON COLUMN donnees.lieux.prof IS 'Profil en long décrit la déclivité de la route à l''endroit de l''accident';
COMMENT ON COLUMN donnees.lieux.situ IS 'Situation de l''accident';
COMMENT ON COLUMN donnees.lieux.surf IS 'Etat de la surface';
COMMENT ON COLUMN donnees.lieux.V1 IS 'Indice numérique du numéro de route (exemple : 2 bis, 3 ter etc.)';
COMMENT ON COLUMN donnees.lieux.V2 IS 'Lettre indice alphanumérique de la route';
COMMENT ON COLUMN donnees.lieux.voie IS 'Numéro de la route';
COMMENT ON COLUMN donnees.lieux.vosp IS 'Signale l’existence d’une voie réservée, indépendamment du fait que l’accident ait lieu ou non sur cette voie.';
COMMENT ON COLUMN donnees.usagers.actp IS 'Action du piéton';
COMMENT ON COLUMN donnees.usagers.an_nais IS 'Année de naissance de l''usager';
COMMENT ON COLUMN donnees.usagers.catu IS 'Catégorie d''usager';
COMMENT ON COLUMN donnees.usagers.etatp IS 'Le piéton accidenté était seul ou non';
COMMENT ON COLUMN donnees.usagers.grav IS 'Gravité de l''accident : Les usagers accidentés sont classés en trois catégories de victimes plus les indemnes';
COMMENT ON COLUMN donnees.usagers.locp IS 'Localisation du piéton';
COMMENT ON COLUMN donnees.usagers.num_acc IS 'Numéro d''identifiant de l''accident';
COMMENT ON COLUMN donnees.usagers.num_veh IS 'Identifiant du véhicule repris pour chacun des usagers occupant ce véhicule (y compris les piétons qui sont rattachés aux véhicules qui les ont heurtés) - Code alphanumérique';
COMMENT ON COLUMN donnees.usagers.place IS 'Permet de situer la place occupée dans le véhicule par l''usager au moment de l''accident';
COMMENT ON COLUMN donnees.usagers.secu IS 'Equipement de sécurité';
COMMENT ON COLUMN donnees.usagers.sexe IS 'Sexe de l''usager';
COMMENT ON COLUMN donnees.usagers.trajet IS 'Motif du déplacement au moment de l''accident';
COMMENT ON COLUMN donnees.vehicules.catv IS 'Catégorie du véhicule';
COMMENT ON COLUMN donnees.vehicules.choc IS 'Point de choc initial';
COMMENT ON COLUMN donnees.vehicules.manv IS 'Manœuvre principale avant l''accident';
COMMENT ON COLUMN donnees.vehicules.num_acc IS 'Numéro d''identifiant de l''accident';
COMMENT ON COLUMN donnees.vehicules.num_veh IS 'Identifiant du véhicule repris pour chacun des usagers occupant ce véhicule (y compris les piétons qui sont rattachés aux véhicules qui les ont heurtés) - Code alphanumérique';
COMMENT ON COLUMN donnees.vehicules.obsm IS 'Obstacle mobile heurté';
COMMENT ON COLUMN donnees.vehicules.occutc IS 'Nombre d''occupants dans le transport en commun';
COMMENT ON COLUMN donnees.vehicules.senc IS 'Sens de circulation';


ALTER TABLE donnees.lieux ADD  FOREIGN KEY(num_acc) REFERENCES donnees.caracteristiques(num_acc);
ALTER TABLE donnees.usagers ADD  FOREIGN KEY(num_acc) REFERENCES donnees.caracteristiques(num_acc);
ALTER TABLE donnees.vehicules ADD  FOREIGN KEY(num_acc) REFERENCES donnees.caracteristiques(num_acc);


alter table donnees.caracteristiques add column dep_r varchar;
update donnees.caracteristiques
set dep_r=substr(dep,1,2)
where dep similar to '[0-9]{2}0';

update donnees.caracteristiques
set dep_r=trim(dep)
where dep similar to '[0-9]{2}';

update donnees.caracteristiques
set dep_r='2A'
where dep similar to '201';
update donnees.caracteristiques
set dep_r='2B'
where dep similar to '202';

update donnees.caracteristiques
set dep_r=dep
where dep similar to '9[7-9]{1}[0-9]';

update donnees.caracteristiques
set dep_r=trim(dep_r);


alter table donnees.caracteristiques add column com_r varchar;
update donnees.caracteristiques
set com_r=substr(dep_r,1,2)||lpad(com, 3, '0');

alter table donnees.caracteristiques add column metropole boolean;
update donnees.caracteristiques set metropole = false;
update donnees.caracteristiques set metropole = true where length(dep_r)=2;

alter table donnees.caracteristiques add column date_acc date;
update donnees.caracteristiques set date_acc=make_date(2000+an::int, mois::int, jour::int);
alter table donnees.caracteristiques add column annee_mois varchar;
update donnees.caracteristiques set annee_mois=extract(year from date_acc)::varchar||'-'||lpad(extract(month from date_acc)::varchar,2,'0');
alter table donnees.caracteristiques add column annee varchar;
update donnees.caracteristiques set annee=extract(year from date_acc)::varchar;

alter table donnees.caracteristiques add column nb_usagers int;
update donnees.caracteristiques carac set nb_usagers=(select count (num_acc) from donnees.usagers usag where carac.num_acc=usag.num_acc);
alter table donnees.caracteristiques add column nb_usagers_indemne int;
update donnees.caracteristiques carac set nb_usagers_indemne=(select count (num_acc) from donnees.usagers usag where carac.num_acc=usag.num_acc and usag.grav='1');
alter table donnees.caracteristiques add column nb_usagers_tue int;
update donnees.caracteristiques carac set nb_usagers_tue=(select count (num_acc) from donnees.usagers usag where carac.num_acc=usag.num_acc and usag.grav='2');
alter table donnees.caracteristiques add column nb_usagers_blesse_hospitalise int;
update donnees.caracteristiques carac set nb_usagers_blesse_hospitalise=(select count (num_acc) from donnees.usagers usag where carac.num_acc=usag.num_acc and usag.grav='3');
alter table donnees.caracteristiques add column nb_usagers_blesse_leger int;
update donnees.caracteristiques carac set nb_usagers_blesse_leger=(select count (num_acc) from donnees.usagers usag where carac.num_acc=usag.num_acc and usag.grav='4');

alter table donnees.vehicules add column catv_rr varchar;
update donnees.vehicules set catv_rr=get_code_rr('vehicules','catv',catv);

alter table donnees.vehicules add column id serial;
alter table donnees.usagers add column id serial;


alter table donnees.usagers add column num_veh_r varchar;
update donnees.usagers set num_veh_r = case when catu in ('3','4') then num_veh||'P' else num_veh end;


/*accidents compilation lisible sans libelles*/
drop table if exists stat.accidents;
create table stat.accidents as 
with acc as (
select usag.num_acc,usag.id,substr(usag.num_acc,1,4) as annee, usag.catu, usag.an_nais, usag.place, usag.secu, usag.trajet, usag.grav,carac.col, vehic.obsm, vehic.catv, vehic.catv_rr, vehic.num_veh,dep_r,com_r,adr
from donnees.usagers usag
inner join donnees.vehicules vehic
on vehic.num_acc=usag.num_acc
/*and substr(usag.num_acc,1,4)='2015'*/
and vehic.num_veh=usag.num_veh
inner join donnees.caracteristiques carac
on carac.num_acc=usag.num_acc
)
select acc.num_acc, acc.annee,acc.dep_r,acc.com_r,adr,
acc.id,
annee::integer-an_nais age,
catu,
place,
col,
secu, 
trajet,
acc.grav, 
acc.catv,
acc.catv_rr,
acc.obsm,
num_veh from acc
;

alter table stat.accidents add column metropole boolean;
update stat.accidents set metropole = false;
update stat.accidents set metropole = true where length(dep_r)=2;

alter table stat.accidents add column mode_transport varchar;
update stat.accidents set mode_transport='01' where catv_rr='01' and catu in ('1','2');
update stat.accidents set mode_transport='02' where catv_rr='02' and catu in ('1','2');
update stat.accidents set mode_transport='03' where catv_rr='03' and catu in ('1','2');
update stat.accidents set mode_transport='04' where catv_rr='04' and catu in ('1','2');
update stat.accidents set mode_transport='05' where catv_rr='05' and catu in ('1','2');
update stat.accidents set mode_transport='06' where catv_rr='06' and catu in ('1','2');
update stat.accidents set mode_transport='07' where catv_rr='07' and catu in ('1','2');
update stat.accidents set mode_transport='08' where catu in ('3','4');
update stat.accidents set mode_transport='99' where catv_rr='99' and catu in ('1','2');


alter table stat.accidents add column mode_transport2 varchar;
update stat.accidents set mode_transport2='01' where catv_rr='01' and catu in ('1','2');
update stat.accidents set mode_transport2='02' where catv_rr='02' and catu in ('1','2');
update stat.accidents set mode_transport2='03' where catv_rr='03' and catu in ('1','2');
update stat.accidents set mode_transport2='04' where catv_rr='04' and catu in ('1','2');
update stat.accidents set mode_transport2='05' where catv_rr='05' and catu in ('1','2');
update stat.accidents set mode_transport2='0607' where catv_rr in ('06','07') and catu in ('1','2');
update stat.accidents set mode_transport2='08' where catu in ('3','4');
update stat.accidents set mode_transport2='99' where catv_rr='99' and catu in ('1','2');


alter table stat.accidents add column num_veh_r varchar;
update stat.accidents set num_veh_r = case when mode_transport='08' then num_veh||'P' else num_veh end;

/*alter table stat.accidents add column nb_impliques int;
update stat.accidents a set nb_impliques=(select count(num_acc) from stat.accidents where num_acc=a.num_acc);

alter table stat.accidents add column nb_mode_transport int;
update stat.accidents a set nb_mode_transport=(select count(distinct(mode_transport)) from stat.accidents where num_acc=a.num_acc);*/

CREATE INDEX accidents_idx ON stat.accidents (num_acc, mode_transport, num_veh) ;
CREATE INDEX accidents_idx2 ON stat.accidents (num_acc, mode_transport2, num_veh) ;


drop table if exists donnees.commune;
drop table if exists donnees.departement;
drop table if exists donnees.region;
create table donnees.commune as select *,nccenr||' '||case when artmin is null then '' else artmin end com_libelle from chargement.commune where actual!='9';
create table donnees.departement as select * from chargement.departement;
create table donnees.region as select * from chargement.region;

alter table donnees.commune add column com_r varchar;
update donnees.commune set com_r=dep||com;
CREATE INDEX commune_idx ON donnees.commune (com_r);




