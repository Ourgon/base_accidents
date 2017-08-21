#!/bin/bash
for file in ../donnees_brutes/*.*; do
	echo "##############"
	echo "Traitement de $file"
	typec=$(file -bi $file | cut -d '=' -f 2 | tr '[:lower:]' '[:upper:]')
	nom_file=$(echo $file | cut -d "/" -f 3)
	echo "format original donné par la commande file : $(file -bi $file)"
	echo "format déterminé par la commande file + transformation : $typec"
	case $typec in
		"Non-ISO extended-ASCII text, with CRLF line terminators")
		typec="CP1250"
		;;
		"UNKNOWN-8BIT")
		typec="ISO-8859-15"
		;;
		*)
		typec="ISO-8859-15"
		;;

	esac

	if [ $typec != "UTF-8" ]
	then
		echo "va être considéré par iconv comme $typec"
		iconv -f $typec -t UTF-8 "$file" -o ../reencode/$nom_file
	
	fi
done
