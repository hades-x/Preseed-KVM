README

Description du Projet
Ce projet contient un ensemble de scripts pour automatiser la création, la configuration et la suppression d'une machine virtuelle Debian. Le projet comprend trois fichiers principaux :

vminstall.sh
preseed.cfg
des-und.sh
Ces scripts facilitent la mise en place rapide d'une VM Debian avec une configuration spécifique, idéale pour les environnements de test ou de développement.

Fichiers
vminstall.sh
Ce script utilise virt-install pour créer une machine virtuelle Debian. Les paramètres incluent :

Nom de la VM : deb-test
Mémoire : 2048 Mo
CPU : 2 cœurs
Source : Image ISO de Debian (debian-12.iso)
Variant de l'OS : Debian 10
Disque : 10 Go, format qcow2
Réseau : Configuration par défaut
Injection du fichier preseed.cfg pour automatiser l'installation
preseed.cfg
Ce fichier de préconfiguration pour l'installateur Debian automatise le processus d'installation. Les paramètres configurés incluent :

Langue, disposition du clavier, et fuseau horaire
Informations de l'utilisateur root
Configuration du réseau et du nom d'hôte
Partitionnement du disque
Installation de SSH et d'un serveur web
Configuration des dépôts Debian et installation des paquets nécessaires
Configuration de GRUB
des-und.sh
Ce script nettoie l'environnement après les tests. Il :

Détruit la VM deb-test
Supprime la définition de la VM
Supprime le fichier disque de la VM
Utilisation
Installation de la VM
Pour créer la VM :

Assurez-vous que virt-install et les outils connexes sont installés sur votre système.
Exécutez le script vminstall.sh avec les privilèges appropriés.
Suppression de la VM
Pour supprimer la VM :

Exécutez le script des-und.sh.
Prérequis
KVM/QEMU installé sur votre système.
Les images ISO de Debian doivent être téléchargées et accessibles par le script vminstall.sh.
Contributions
Les contributions à ce projet sont les bienvenues. Pour proposer des améliorations ou des corrections, veuillez ouvrir une issue ou une pull request.
