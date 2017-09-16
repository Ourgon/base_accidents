# base_accidents
Ce projet vise à charger les données accident de l'open data data.gouv.fr dans une base de données postgresql

Les données accidents sont disponibles ici : https://www.data.gouv.fr/fr/datasets/base-de-donnees-accidents-corporels-de-la-circulation/


Les données géographiques sont disponibles ici : https://www.insee.fr/fr/information/2666684
Télécharger les txt de communes, départements, régions.

Ce qui est réalisé :

* Uniformiser les jeux de caractères des fichiers plats mis à disposition
* Charger les fichiers plats dans la base postgresql
* Charger la nomenclature réalisée à la main à partir du pdf explicatif de l'ONSISR
* Charger les tables communes, département et région de l'Insee

Ce qui reste à faire :

* Mise à disposition d'archives compressées pour ceux qui voudraient aller plus vite que de tout rejouer :
	* Fichiers source
	* dumps de base de données
	* la base de données elle même
* Valider la qualité des chargements
* Valider la qualité des colonnes de confort (numéro de commune par ex) ajoutées aux tables
* Valider la qualité des tables dérivées des tables brutes issues du chargement
* Valider la méthode de calcul du véhicule impliqué (premier jet bientôt)
* Faire un outil web d'interrogation dynamique des données + graphiques

# Marche à suivre
Les indications ci-dessous sont minimalistes, tout n'est pas décrit loin de là.

Cloner le dépot, compléter l'arborescence comme ci-dessous :
```
.
├── chargement
│   ├── divers
│   ├── donnees_brutes
│   │   └── log
│   ├── reencode
│   └── scripts
└── sql
    ├── exploration
    └── verifications
```

Placer toutes les sources dans le répertoire donnees_brutes

Exécuter le script bash conv.bash

Créer la base de données accident

Lancer le chargement avec charge.py