#!/bin/bash

###########################################################
#
# Description : déploiement à la volée de conteneurs docker
#
#
###########################################################

# si option --create
if [ "$1" == "--create" ];then
    echo ""
	echo " notre option est --create"
	echo ""

# si option --drop
elif [ "$1" == "--drop" ];then
    echo ""
	echo " notre option est --drop"
	echo ""

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

echo "

Options : 
	- --create : lancer des conteneurs
	- --drop : supprimer les conteneurs créés par le deploy.sh
	- --infos : caractéristiques des conteneurs (ip, nom, user, ...)
	- --start : redémarrage des conteneurs
	- --ansible : déploiement de l'arborescence ansible
"
fi