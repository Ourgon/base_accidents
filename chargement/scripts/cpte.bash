#!/bin/bash
cd ../donnees_brutes;
mkdir -p log
fichier_log="./log/comptage.log"
echo 'fichier,nb_lignes,date_comptage' > $fichier_log
for file in *.*
do
	printf "$file," >> $fichier_log;
	printf "$(($(cat $file|wc -l)-1))," >> $fichier_log;
	printf "$(date +%d/%m/%Y)" >> $fichier_log;
	echo "" >> $fichier_log;
done
