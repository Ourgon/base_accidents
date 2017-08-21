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