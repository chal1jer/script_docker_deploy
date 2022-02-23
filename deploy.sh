#!/bin/bash


###########################################################
#
# Description : déploiement à la volée de conteneurs docker
# 
#
###########################################################



# si option --create
if [ "$1" == "--create" ];then

	# définition du nombre de conteneurs
	nb_machines=1
	[ "$2" != "" ] && nb_machines=$2

    # création des conteneurs
	echo "Début de la création des conteneurs..."
	for i in $(seq 1 $nb_machines);do 
      docker run -tid --name $USER-alpine-$i alpine:latest
      echo "Conteneur $USER-alpine-$i créé" 
    done 

	echo "Nombre de machines créées : ${nb_machines}"

# si option --drop
elif [ "$1" == "--drop" ];then
    echo ""
	echo "Suppression des conteneurs..."
	echo ""

    docker rm -f $(docker ps -a | grep $USER-alpine | awk '{print $1}')
	
	echo ""
    echo "Les conteneurs ont été supprimés."

# si option --infos
elif [ "$1" == "--infos" ];then
    echo ""
	echo " notre option est --infos"
	echo ""

# si option --start
elif [ "$1" == "--start" ];then
    echo ""
	echo " notre option est --start"
	echo ""

# si option --ansible
elif [ "$1" == "--ansible" ];then
    echo ""
	echo " notre option est --ansible"
	echo ""

# si aucune option affichage de l'aide
else

echo "

Options : 
	- --create : lancer des conteneurs
	- --drop : supprimer les conteneurs créés par le deploy.sh
	- --infos : caractéristiques des conteneurs (ip, nom, user, ...)
	- --start : redémarrage des conteneurs
	- --ansible : déploiement de l'arborescence ansible
"
fi