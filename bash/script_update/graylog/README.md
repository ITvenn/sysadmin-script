# Script de mise à jour automatique de Graylog vers la version souhaitée.

## Fonctionnalités

- Téléchargement et installation de la nouvelle version de Graylog.

## Prérequis

- Un serveur avec Graylog déjà installé.
- Accès SSH au serveur.
- Droits d'administrateur ou de superutilisateur.
- wget installés sur le serveur.

## Installation

1. Téléchargez le script sur votre serveur où Graylog est installé.
2. Assurez-vous que le script est exécutable :
   ```bash
   chmod +x script_upgrade_graylog.bash
   ```

## Utilisation

Pour lancer la mise à jour de Graylog, exécutez simplement le script :
```bash
./script_upgrade_graylog.bash
```

Le script effectuera les opérations suivantes :
- Téléchargement de la nouvelle version de Graylog.
- Redémarrage du service graylog pour appliquer les changements.
- Suppression du script.

## Sécurité

Vérifiez toujours les scripts avant de les exécuter pour éviter les problèmes de sécurité inattendus. Assurez-vous que les sources de téléchargement sont fiables. N'oubliez pas de faire une snapshot !!!

## Contribution

Les suggestions et contributions sont bienvenues via des issues sur le dépôt GitHub associé à ce projet.

## Licence

Ce projet est distribué sous la licence MIT, permettant une utilisation libre dans les limites définies par cette licence.

## Support

Pour toute question ou problème, n'hésitez pas à soumettre une issue sur le dépôt GitHub du projet.

Ce script offre une base solide que tu peux personnaliser selon les spécificités de ton environnement ou tes préférences personnelles. Assure-toi de tester le script dans un environnement de développement ou de test avant de l'exécuter en production pour éviter tout impact inattendu.
