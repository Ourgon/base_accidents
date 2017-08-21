drop table if exists public.nomenclature;
CREATE TABLE public.nomenclature (
	tableau varchar NULL,
	colonne varchar NULL,
	libelle varchar NULL,
	code_modalite varchar NULL,
	libelle_modalite varchar NULL,
	code_modalite_r varchar NULL,
	libelle_modalite_r varchar NULL,
	code_modalite_rr varchar NULL,
	libelle_modalite_rr varchar NULL
)
WITH (
	OIDS=FALSE
) ;
CREATE UNIQUE INDEX nomenclature_idx ON nomenclature (tableau DESC,colonne DESC,code_modalite DESC) ;

INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','num_acc','Numéro d’identifiant de l’accident',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','jour','Jour de l’accident',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','mois','Mois de l’accident',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','an','Anné de l’accident',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','hmm','Heure Minute de l''accident',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','lum','Lumière : conditions d''éclairage dans lesquelles l''accident s''est produit','1','Plein jour',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','lum','Lumière : conditions d''éclairage dans lesquelles l''accident s''est produit','2','Crépuscule ou aube',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','lum','Lumière : conditions d''éclairage dans lesquelles l''accident s''est produit','3','Nuit sans éclairage public',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','lum','Lumière : conditions d''éclairage dans lesquelles l''accident s''est produit','4','Nuit avec éclairage public non allumé',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','lum','Lumière : conditions d''éclairage dans lesquelles l''accident s''est produit','5','Nuit avec éclairage public allumé',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','dep','Departement (code insee)',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','com','Commune (code insee)',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','agg','Localisation','1','Hors agglomération',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','agg','Localisation','2','En agglomération',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','int','Intersection','1','Hors intersection',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','int','Intersection','2','Intersection en X',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','int','Intersection','3','Intersection en T',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','int','Intersection','4','Intersection en Y',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','int','Intersection','5','Intersection à plus de 4 branches',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','int','Intersection','6','Giratoire',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','int','Intersection','7','Place',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','int','Intersection','8','Passage à niveau',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','int','Intersection','9','Autre intersection',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','atm','Conditions atmosphériques','1','Normale',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','atm','Conditions atmosphériques','2','Pluie légère',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','atm','Conditions atmosphériques','3','Pluie forte',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','atm','Conditions atmosphériques','4','Neige - grêle',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','atm','Conditions atmosphériques','5','Brouillard - fumée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','atm','Conditions atmosphériques','6','Vent fort - tempête',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','atm','Conditions atmosphériques','7','Temps éblouissant',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','atm','Conditions atmosphériques','8','Temps couvert',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','atm','Conditions atmosphériques','9','Autre',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','col','Type de collision','1','Deux véhicules - frontale',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','col','Type de collision','2','Deux véhicules - par l’arrière',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','col','Type de collision','3','Deux véhicules - par le coté',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','col','Type de collision','4','Trois véhicules et plus - en chaîne',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','col','Type de collision','5','Trois véhicules et plus - collisions multiples',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','col','Type de collision','6','Autre collision',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','col','Type de collision','7','Sans collision',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','adr','Adresse postale : variable renseignée pour les accidents survenus en agglomération',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','gps','Codage localisation (métropole et ailleurs)','M','Métropole',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','gps','Codage localisation','A','Antilles (Martinique ou Guadeloupe)',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','gps','Codage localisation','G','Guyane',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','gps','Codage localisation','R','Réunion',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','gps','Codage localisation','Y','Mayotte',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','lat','Latitude',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'caracteristique','long','Longitude',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','num_acc','Numéro d''''identifiant de l''accident',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','catr','Catégorie de route','1','Autoroute',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','catr','Catégorie de route','2','Route Nationale',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','catr','Catégorie de route','3','Route Départementale',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','catr','Catégorie de route','4','Voie Communale',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','catr','Catégorie de route','5','Hors réseau public',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','catr','Catégorie de route','6','Parc de stationnement ouvert à la circulation publique',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','catr','Catégorie de route','9','autre',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','voie','Numéro de la route',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','V1','Indice numérique du numéro de route (exemple : 2 bis, 3 ter etc.)',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','V2','Lettre indice alphanumérique de la route',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','circ','Régime de circulation','1','A sens unique',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','circ','Régime de circulation','2','Bidirectionnelle',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','circ','Régime de circulation','3','A chaussées séparées',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','circ','Régime de circulation','4','Avec voies d’affectation variable',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','nbv','Nombre total de voies de circulation',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','vosp','Signale l’existence d’une voie réservée, indépendamment du fait que l’accident ait lieu ou non sur cette voie.','1','Piste cyclable',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','vosp','Signale l’existence d’une voie réservée, indépendamment du fait que l’accident ait lieu ou non sur cette voie.','2','Banque cyclable',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','vosp','Signale l’existence d’une voie réservée, indépendamment du fait que l’accident ait lieu ou non sur cette voie.','3','Voie réservée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','prof','Profil en long décrit la déclivité de la route à l''''endroit de l''accident','1',' Plat',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','prof','Profil en long décrit la déclivité de la route à l''''endroit de l''accident','2',' Pente',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','prof','Profil en long décrit la déclivité de la route à l''''endroit de l''accident','3',' Sommet de côte',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','prof','Profil en long décrit la déclivité de la route à l''''endroit de l''accident','4',' Bas de côte',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','pr','Numéro du PR de rattachement (numéro de la borne amont)',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','pr1','Distance en mètres au PR (par rapport à la borne amont)',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','plan','Tracé en plan','1',' Partie rectiligne',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','plan','Tracé en plan','2',' En courbe à gauche',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','plan','Tracé en plan','3',' En courbe à droite',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','plan','Tracé en plan','4',' En « S »',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','lartpc','Largeur du terre plein central (TPC) s''''il existe',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','larrout','Largeur de la chaussée affectée à la circulation des véhicules ne sont pas compris les bandes d''''arrêt d''''urgence, les TPC et les places de stationnement',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','surf','Etat de la surface','1',' normale',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','surf','Etat de la surface','2',' mouillée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','surf','Etat de la surface','3',' flaques',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','surf','Etat de la surface','4',' inondée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','surf','Etat de la surface','5',' enneigée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','surf','Etat de la surface','6',' boue',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','surf','Etat de la surface','7',' verglacée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','surf','Etat de la surface','8',' corps gras - huile',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','surf','Etat de la surface','9',' autre',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','infra','Aménagement - Infrastructure','1',' Souterrain - tunnel',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','infra','Aménagement - Infrastructure','2',' Pont - autopont',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','infra','Aménagement - Infrastructure','3',' Bretelle d’échangeur ou de raccordement',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','infra','Aménagement - Infrastructure','4',' Voie ferrée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','infra','Aménagement - Infrastructure','5',' Carrefour aménagé',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','infra','Aménagement - Infrastructure','6',' Zone piétonne',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','infra','Aménagement - Infrastructure','7',' Zone de péage',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','situ','Situation de l''accident','1','Sur chaussée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','situ','Situation de l''accident','2','Sur bande d’arrêt d’urgence',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','situ','Situation de l''accident','3','Sur accotement',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','situ','Situation de l''accident','4','Sur trottoir',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','situ','Situation de l''accident','5','Sur piste cyclable',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'lieux','env1','point école : proximité d''''une école',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','num_acc','Numéro d''''identifiant de l''accident',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','num_veh','Identifiant du véhicule repris pour chacun des usagers occupant ce véhicule (y compris les piétons qui sont rattachés aux véhicules qui les ont heurtés) - Code alphanumérique',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','senc','Sens de circulation','1','PK ou PR ou numéro d’adresse postale croissant',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','senc','Sens de circulation','2','PK ou PR ou numéro d’adresse postale décroissant',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obsm','Obstacle mobile heurté','1','Piéton',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obsm','Obstacle mobile heurté','2','Véhicule',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obsm','Obstacle mobile heurté','4','Véhicule sur rail',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obsm','Obstacle mobile heurté','5','Animal domestique',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obsm','Obstacle mobile heurté','6','Animal sauvage',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obsm','Obstacle mobile heurté','9','Autre',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','choc','Point de choc initial','1','Avant',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','choc','Point de choc initial','2','Avant droit',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','choc','Point de choc initial','3','Avant gauche',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','choc','Point de choc initial','4','Arrière',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','choc','Point de choc initial','5','Arrière droit',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','choc','Point de choc initial','6','Arrière gauche',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','choc','Point de choc initial','7','Côté droit',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','choc','Point de choc initial','8','Côté gauche',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','choc','Point de choc initial','9','Chocs multiples (tonneaux)',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','1','Sans changement de direction',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','2','Même sens, même file',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','3','Entre 2 files',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','4','En marche arrière',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','5','A contresens',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','6','En franchissant le terre-plein central',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','7','Dans le couloir bus, dans le même sens',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','8','Dans le couloir bus, dans le sens inverse',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','9','En s’insérant',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','10','En faisant demi-tour sur la chaussée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','06','Référence plus utilisée depuis 2006 (side-car)','04','2RM > 50 cm3','03','Motocyclette');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','07','VL seul','07','Véhicule léger','04','Véhicule léger');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','08','Catégorie plus utilisée (VL + caravane)','07','Véhicule léger','04','Véhicule léger');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','02','Cyclomoteur <50cm3','02','2RM < 50cm3','02','Cyclomoteur');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','09','Catégorie plus utilisée (VL + remorque)','07','Véhicule léger','04','Véhicule léger');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','12','Référence plus utilisée depuis 2006 (VU (10) + remorque)','10','Véhicule utilitaire','05','Véhicule utilitaire');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','37','Autobus','18','Bus','07','Transport en commun');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','38','Autocar','18','Bus','07','Transport en commun');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','40','Tramway','19','Tramway','07','Transport en commun');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','20','Engin spécial','20','Engin spécial','99','Autre');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','21','Tracteur agricole','21','Tracteur agricole','99','Autre');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','31','Motocyclette > 50 cm et <= 125 cm³','04','2RM > 50 cm3','03','Motocyclette');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','32','Scooter > 50 cm et <= 125 cm³','04','2RM > 50 cm3','03','Motocyclette');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','33','Motocyclette > 125 cm³','04','2RM > 50 cm3','03','Motocyclette');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','13','PL seul 3,5T <PTCA <= 7,5T','13','Poid lourd','06','Poids lourd');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','99','Autre véhicule','99','Autre véhicule','99','Autre');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','14','PL seul > 7,5T','13','Poid lourd','06','Poids lourd');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','11','Changeant de file à gauche',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','39','Train','39','Train','07','Transport en commun');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','12','Changeant de file à droite',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','13','Déporté à gauche',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','14','Déporté à droite',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','15','Tournant à gauche',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','16','Tournant à droite',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','17','Dépassant à gauche',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','18','Dépassant à droite',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','19','Traversant la chaussée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','20','Manœuvre de stationnement',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','21','Manœuvre d’évitement',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','22','Ouverture de porte',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','manv','Manœuvre principale avant l''accident','23','Arrêté (hors stationnement)',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','occutc','Nombre d''''occupants dans le transport en commun','24','En stationnement (avec occupants)',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','num_acc','Numéro d''''identifiant de l''accident',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','num_veh','Identifiant du véhicule repris pour chacun des usagers occupant ce véhicule (y compris les piétons qui sont rattachés aux véhicules qui les ont heurtés) - Code alphanumérique',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','place','Permet de situer la place occupée dans le véhicule par l''''usager au moment de l''accident',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','catu','Catégorie d''''usager','1','Conducteur',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','catu','Catégorie d''''usager','2','Passager',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','catu','Catégorie d''''usager','3','Piéton',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','catu','Catégorie d''''usager','4','Piéton en roller ou en trottinette',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','grav','Gravité de l''accident : Les usagers accidentés sont classés en trois catégories de victimes plus les indemnes','1','Indemne',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','grav','Gravité de l''accident : Les usagers accidentés sont classés en trois catégories de victimes plus les indemnes','2','Tué',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','grav','Gravité de l''accident : Les usagers accidentés sont classés en trois catégories de victimes plus les indemnes','3','Blessé hospitalisé',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','grav','Gravité de l''accident : Les usagers accidentés sont classés en trois catégories de victimes plus les indemnes','4','Blessé léger',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','sexe','Sexe de l''''usager','1','Masculin',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','sexe','Sexe de l''''usager','2','Féminin',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','an_nais','Année de naissance de l''''usager',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','trajet','Motif du déplacement au moment de l''accident','2','Domicile - école',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','trajet','Motif du déplacement au moment de l''accident','3','Courses - achats',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','trajet','Motif du déplacement au moment de l''accident','4','Utilisation professionnelle',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','trajet','Motif du déplacement au moment de l''accident','5','Promenade - loisirs',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','trajet','Motif du déplacement au moment de l''accident','9','Autre',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','11','Ceinture oui',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','21','Casque oui',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','31','Dispositif enfants oui',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','41','Equipement réfléchissant oui',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','91','Autre oui',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','12','Ceinture non',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','22','Casque non',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','32','Dispositif enfants non',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','42','Equipement réfléchissant non',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','92','Autre non',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','13','Ceinture ND',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','23','Casque ND',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','33','Dispositif enfants ND',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','43','Equipement réfléchissant ND',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','secu','Equipement de sécurité','93','Autre ND',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','locp','Localisation du piéton','1','Sur chaussée à + 50 m du passage piéton',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','locp','Localisation du piéton','2','Sur chaussée à - 50 m du passage piéton',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','locp','Localisation du piéton','3','Sur passage piéton sans signalisation lumineuse',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','locp','Localisation du piéton','4','Sur passage piéton avec signalisation lumineuse',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','locp','Localisation du piéton','5','Sur trottoir',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','locp','Localisation du piéton','6','Sur accotement',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','locp','Localisation du piéton','7','Sur refuge ou BAU',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','locp','Localisation du piéton','8','Sur contre allée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','actp','Action du piéton','0','Se déplaçant non renseigné ou sans objet',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','actp','Action du piéton','1','Se déplaçant dans le sens véhicule heurtant',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','actp','Action du piéton','2','Se déplaçant dans le sens inverse du véhicule',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','actp','Action du piéton','3','Divers - traversant',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','actp','Action du piéton','4','Divers - Masqué',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','actp','Action du piéton','5','Divers - Jouant - courant',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','actp','Action du piéton','6','Divers - Avec animal',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','actp','Action du piéton','9','Divers - Autre',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','etatp','Le piéton accidenté était seul ou non','1','Seul',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','etatp','Le piéton accidenté était seul ou non','2','Accompagné',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'usagers','etatp','Le piéton accidenté était seul ou non','3','En groupe',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','04','Référence plus utilisée depuis 2006 (scooter immatriculé)','04','2RM > 50 cm3','03','Motocyclette');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','01','Bicyclette','01','Bicyclette','01','Vélo');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','10','VU seul 1,5T <= PTAC <= 3,5T avec ou sans remorque (anciennement VU seul 1,5T <= PTAC <=3,5T)','10','Véhicule utilitaire','05','Véhicule utilitaire');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','30','Scooter < 50 cm3','02','2RM < 50cm3','02','Cyclomoteur');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','11','Référence plus utilisée depuis 2006 (VU (10) + caravane)','10','Véhicule utilitaire','05','Véhicule utilitaire');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','34','Scooter > 125 cm³','04','2RM > 50 cm3','03','Motocyclette');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','05','Référence plus utilisée depuis 2006 (motocyclette)','04','2RM > 50 cm3','03','Motocyclette');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','03','Voiturette (Quadricycle à moteur carrossé) (anciennement "voiturette ou tricycle à moteur")','03','Voiturette (Quadricycle à moteur carrossé) (anciennement "voiturette ou tricycle à moteur")','99','Autre');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','15','PL > 3,5T + remorque','13','Poid lourd','06','Poids lourd');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','16','Tracteur routier seul','13','Poid lourd','06','Poids lourd');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','17','Tracteur routier + semi-remorque','13','Poid lourd','06','Poids lourd');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','18','Référence plus utilisée depuis 2006 (transport en commun)','18','Transport en commun','07','Transport en commun');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','19','Référence plus utilisée depuis 2006 (tramway)','19','Tramway','07','Transport en commun');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','1','Véhicule en stationnement',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','2','Arbre',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','3','Glissière métallique',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','4','Glissière béton',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','5','Autre glissière',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','6','Bâtiment, mur, pile de pont',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','7','Support de signalisation verticale ou poste d’appel d’urgence',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','8','Poteau',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','9','Mobilier urbain',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','710','Parapet',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','11','Ilot, refuge, borne haute',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','12','Bordure de trottoir',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','13','Fossé, talus, paroi rocheuse',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','14','Autre obstacle fixe sur chaussée',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','15','Autre obstacle fixe sur trottoir ou accotement',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','obs','Obstacle fixe heurté','16','Sortie de chaussée sans obstacle',NULL,NULL,NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','36','Quad lourd > 50 cm³ (Quadricycle à moteur non carrossé)','35','Quad  > 50 cm3','99','Autre');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'vehicules','catv','Catégorie du véhicule','35','Quad léger <= 50 cm³ (Quadricycle à moteur non carrossé)','35','Quad < 50cm3','99','Autre');
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'accidents','mode_transport','Mode de transport','01','Vélo','01','Vélo',NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'accidents','mode_transport','Mode de transport','02','Cyclomoteur','02','Cyclomoteur',NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'accidents','mode_transport','Mode de transport','03','Motocyclette','03','Motocyclette',NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'accidents','mode_transport','Mode de transport','04','Véhicule léger','04','Véhicule léger',NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'accidents','mode_transport','Mode de transport','05','Véhicule utilitaire','05','Véhicule utilitaire',NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'accidents','mode_transport','Mode de transport','06','Poids lourd','0607','PL & TC',NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'accidents','mode_transport','Mode de transport','07','Transport en commun','0607','PL & TC',NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'accidents','mode_transport','Mode de transport','08','Piéton','08','Piéton',NULL,NULL);
INSERT INTO public.nomenclature (tableau,colonne,libelle,code_modalite,libelle_modalite,code_modalite_r,libelle_modalite_r,code_modalite_rr,libelle_modalite_rr) VALUES (
'accidents','mode_transport','Mode de transport','99','Autre','99','Autre',NULL,NULL);
