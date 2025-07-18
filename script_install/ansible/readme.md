# Installation automatique d'Ansible sur Debian 12

Ce script Bash permet d'installer Ansible de manière automatisée sur un système **Debian 12**, en exécutant les étapes classiques de mise à jour, ajout de dépôt et installation.

## 📋 Prérequis

- Exécuter le script **en tant que root** (ne pas utiliser `sudo` dans le script).
- Une connexion à Internet est requise.
- Ce script ajoute un dépôt **PPA Ubuntu**, qui bien que fonctionnel, n'est pas officiellement recommandé pour Debian. Utiliser à vos risques et périls.

## ⚙️ Contenu du script

Le script effectue les opérations suivantes :

1. **Demande de confirmation** avant de mettre à jour le système.
2. **Mise à jour complète** des paquets.
3. **Installation des dépendances nécessaires** (`software-properties-common`, `gnupg`).
4. **Ajout du dépôt officiel Ansible (Ubuntu PPA)**.
5. **Importation de la clé GPG** du dépôt.
6. **Installation d'Ansible**.
7. **Vérification de l'installation** avec `ansible --version`.

## 🛠️ Utilisation

```bash
chmod +x install-ansible.sh
./install-ansible.sh
```

> Vous serez invité à confirmer la mise à jour du système. Tapez `y` pour continuer.

## 🔒 Remarque sur la sécurité

La commande `apt-key` utilisée pour importer la clé GPG est **dépréciée** dans les dernières versions de Debian. Une version alternative utilisant `gpg --dearmor` et `/usr/share/keyrings` peut être fournie si vous souhaitez suivre les recommandations de sécurité actuelles.

## ✅ Exemple de sortie attendue

```bash
==> Étape 1 : Mise à jour du système
==> Étape 2 : Installation des prérequis
==> Ajout du dépôt officiel d’Ansible
==> Importation de la clé GPG du dépôt
==> Mise à jour de la liste des paquets et installation d’Ansible
==> Étape 3 : Vérification de l'installation
ansible [core 2.x.x]
...
```

## 📦 Désinstallation

Pour supprimer Ansible :

```bash
apt remove --purge ansible -y
rm /etc/apt/sources.list.d/ansible.list
apt update
```

