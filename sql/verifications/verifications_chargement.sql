/* Nombre de lignes chargées */

/*communes*/
select count(*) from chargement.commune;

/* caractéristiques */

/* La relation avec les communes ne créé pas de doublons (une commune apparaît plusieurs fois dans la table source) */
/* Les 2 lignes doivent être identiques */

select count(*) from donnees.caracteristiques
union all
select count(*) from donnees.caracteristiques carac
left join donnees.commune com on carac.com_r=com.com_r 
;

alter table public.comptage add column en_base bigint;

update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2005) where fichier='caracteristiques_2005.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2006) where fichier='caracteristiques_2006.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2007) where fichier='caracteristiques_2007.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2008) where fichier='caracteristiques_2008.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2009) where fichier='caracteristiques_2009.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2010) where fichier='caracteristiques_2010.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2011) where fichier='caracteristiques_2011.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2012) where fichier='caracteristiques_2012.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2013) where fichier='caracteristiques_2013.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2014) where fichier='caracteristiques_2014.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2015) where fichier='caracteristiques_2015.csv';
update public.comptage set en_base=(select count(*) from  chargement.caracteristiques_2016) where fichier='caracteristiques_2016.csv';
update public.comptage set en_base=(select count(*) from  chargement.departement) where fichier='depts2016.txt';
update public.comptage set en_base=(select count(*) from  chargement.commune) where fichier='france2016.txt';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2005) where fichier='lieux_2005.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2006) where fichier='lieux_2006.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2007) where fichier='lieux_2007.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2008) where fichier='lieux_2008.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2009) where fichier='lieux_2009.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2010) where fichier='lieux_2010.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2011) where fichier='lieux_2011.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2012) where fichier='lieux_2012.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2013) where fichier='lieux_2013.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2014) where fichier='lieux_2014.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2015) where fichier='lieux_2015.csv';
update public.comptage set en_base=(select count(*) from  chargement.lieux_2016) where fichier='lieux_2016.csv';
update public.comptage set en_base=(select count(*) from  chargement.region) where fichier='reg2016.txt';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2005) where fichier='usagers_2005.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2006) where fichier='usagers_2006.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2007) where fichier='usagers_2007.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2008) where fichier='usagers_2008.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2009) where fichier='usagers_2009.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2010) where fichier='usagers_2010.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2011) where fichier='usagers_2011.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2012) where fichier='usagers_2012.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2013) where fichier='usagers_2013.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2014) where fichier='usagers_2014.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2015) where fichier='usagers_2015.csv';
update public.comptage set en_base=(select count(*) from  chargement.usagers_2016) where fichier='usagers_2016.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2005) where fichier='vehicules_2005.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2006) where fichier='vehicules_2006.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2007) where fichier='vehicules_2007.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2008) where fichier='vehicules_2008.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2009) where fichier='vehicules_2009.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2010) where fichier='vehicules_2010.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2011) where fichier='vehicules_2011.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2012) where fichier='vehicules_2012.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2013) where fichier='vehicules_2013.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2014) where fichier='vehicules_2014.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2015) where fichier='vehicules_2015.csv';
update public.comptage set en_base=(select count(*) from  chargement.vehicules_2016) where fichier='vehicules_2016.csv';

#rien si nb_lignes identique à nb ligne en base
select * from public.comptage where nb_lignes::bigint!=en_base;
