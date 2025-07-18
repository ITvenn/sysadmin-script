# sysadmin-script

**sysadmin-script** est une collection de scripts Bash permettant d'automatiser des tâches d'administration système, telles que l'installation de logiciels, les mises à jour, la configuration initiale des serveurs et diverses opérations de maintenance.

## Objectifs

- Standardiser les procédures d'installation et de mise à jour
- Gagner du temps sur les tâches répétitives
- Réduire les erreurs humaines lors des déploiements
- Fournir une base réutilisable pour la gestion de serveurs Linux

## Fonctionnalités

- Installation automatisée de paquets courants
- Mises à jour système
- Configuration réseau de base
- Ajout d'utilisateurs et gestion des clés SSH
- Nettoyage et maintenance régulière

## Prérequis

- Distribution Linux compatible (Debian/Ubuntu recommandée)
- Accès root ou via `sudo`
- Bash ≥ 4.x

## Utilisation

```bash
git clone https://github.com/votre-utilisateur/sysadmin-script.git
cd sysadmin-script
chmod +x script.sh
./script.sh
```
Remplacez script.sh par le script que vous souhaitez exécuter.

## Arborescence type
```bash
sysadmin-script/
├── install/
│   ├── glpi
│   ├── centreon
├── update/
│   └── glpi

└── README.md
```

## Avertissement
Ces scripts sont fournis tels quels. Il est recommandé de les lire, les adapter à vos besoins spécifiques et les tester sur un environnement non critique avant toute mise en production.
