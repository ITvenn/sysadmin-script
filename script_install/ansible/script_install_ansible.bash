#!/bin/bash

# Script d'installation d'Ansible sur Debian 12 (à exécuter en tant que root)

set -e

echo "Ce script va mettre à jour votre système avant d'installer Ansible."
read -p "Souhaitez-vous continuer ? (y/n) : " confirm

if [[ "$confirm" != "y" ]]; then
    echo "Opération annulée."
    exit 1
fi

echo "==> Étape 1 : Mise à jour du système"
apt update && apt upgrade -y

echo "==> Étape 2 : Installation des prérequis"
apt install -y software-properties-common gnupg

echo "==> Ajout du dépôt officiel d’Ansible"
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu focal main" > /etc/apt/sources.list.d/ansible.list

echo "==> Importation de la clé GPG du dépôt"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

echo "==> Mise à jour de la liste des paquets et installation d’Ansible"
apt update && apt install -y ansible

echo "==> Étape 3 : Vérification de l'installation"
ansible --version
