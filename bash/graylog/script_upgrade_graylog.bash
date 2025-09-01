#!/bin/bash

# --------------------------------------------------------------------------------
# Auteur : HAMEL Vincent
#
# Description :
# Script de mise à jour automatique de Graylog vers la version souhaitée.
#
# --------------------------------------------------------------------------------

# Récuperation du chemin ou est executer le script
chemin=$(pwd);


# Choix de la version souhaité
echo -n "Veuillez entrer le numero de version de Graylog souhaité dans le format suivant X.X"
read version
echo
echo "Voulez-vous vraiment passer à la version ${version} de Graylog ? (o/n)"
read reponse
if [ "$reponse" = "o" ]; then
    echo "Mise à jour vers la version ${version}..."

    # Arrete du service Graylog
    echo "Arret du service Graylog..."
    systemctl stop graylog-server

    # Mise à jour du cache du package local
    echo "Mise à jour du cache local APT..."
    apt-get update

    # Mise à niveau du package Graylog

    # Récupération du package Graylog
    echo "Récupération du package Graylog..."
    wget https://packages.graylog2.org/repo/packages/graylog-${version}-repository_latest.deb && echo "Téléchargement réussi !" || { echo -e "\E[31mErreur : échec du téléchargement.\E[0m"; exit 1; }

    # Installation du Package
    echo "Installation du Package Graylog ${version}"
    dpkg -i graylog-${version}-repository_latest.deb && echo "Installation réussi !" || { echo -e "\E[31mErreur : échec de l'installation.\E[0m"; exit 1; }

    # Mise à jour du cache du package local
    echo "Mise à jour du cache local APT..."
    apt-get update
    echo "Install du package..."
    apt-get install graylog-server && echo "Installation réussi !" || { echo -e "\E[31mErreur : échec de l'installation.\E[0m"; exit 1; }

    # Marquez le package comme étant en attente afin que les mises à jour du package ne mettent pas accidentellement à niveau le serveur Graylog.
    apt-mark hold graylog-server

    # Redémarage du service Graylog
    echo "Redémarrage de Graylog..."
    systemctl restart graylog-server && echo "Graylog est maintenant à jour et en ligne !" || { echo -e "\E[31mErreur : échec du redémarrage de Graylog.\E[0m"; exit 1; }
    
    # Sécurité Suppression du script upgrade
    rm $chemin/script_upgrade_graylog.bash && echo "Suppression du script upgrade !" || { echo -e "\E[31mErreur : échec suppression du script upgrade.\E[0m"; exit 1; }
    
else
    echo "Mise à jour annulée."
    exit 1  # Quitte le script si l'utilisateur répond "non"
fi
