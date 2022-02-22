#!bin/bash

###########################################################
#
# Description : déploiement à la volée de conteneurs docker
#
#
###########################################################

echo "

Options : 
	- --create : lancer des conteneurs
	- --drop : supprimer les conteneurs créés par le deploy.sh
	- --infos : caractéristiques des conteneurs (ip, nom, user, ...)
	- --start : redémarrage des conteneurs
	- --ansible : déploiement de l'arborescence ansible
"
