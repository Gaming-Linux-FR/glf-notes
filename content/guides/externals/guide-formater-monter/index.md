+++
title = "Guide débutant pour formater et monter au démarrage ses disques / SSD internes sur Linux"
author = ["Cardiac", "Didic"]
date = 2024-04-02
+++

# Guide débutant pour formater et monter au démarrage ses disques / SSD internes sur Linux

Vidéo de démonstration en utilisant Partition Manager de Plasma au lieu de Gnome Disque : 

[ Formater et monter au démarrage un SSD ou disque interne sur Linux ](https://www.youtube.com/watch?v=z7aqPGs_YWQ)

## Formater

Pour cette tâche, je vous recommande d'utiliser Gnome Disks, accessible facilement depuis la logithèque de votre distribution. Il fonctionne aussi bien sur Gnome que sur KDE ou autres DE.

1. **Installer Gnome Disques**: Cet outil facilite la gestion de vos disques. Vous le trouverez en cherchant "disques" dans la logithèque de votre distribution. Il est généralement près installé sur les distributions utilisants Gnome.

   ![Ouvrir Gnome Disks](https://github.com/Gaming-Linux-FR/guide-formater-monter/assets/83916775/bd37277a-e24e-400b-9f3e-fa4866fad21c)

2. **Supprimer les anciennes partitions**: Si vous souhaitez effacer des partitions existantes, cliquez sur le bouton ![image](https://github.com/Gaming-Linux-FR/guide-formater-monter/assets/83916775/bc66afd1-4ffe-4464-8778-eee4726db290)
situé à droite de la partition concernée dans l'interface de Gnome Disks.

   ![Supprimer les anciennes partitions](https://github.com/Gaming-Linux-FR/guide-formater-monter/assets/83916775/6d9fa809-bdff-4e49-95fe-04fe40804c49)

3. **Formatage de la partition**: Cliquez sur les petits engrenages pour ouvrir le menu d'options, puis choisissez "Formater la partition". Une boîte de dialogue de formatage s'ouvrira.

   ![Formatage de la partition](https://github.com/Gaming-Linux-FR/guide-formater-monter/assets/83916775/ce843486-0320-47c8-86e6-c6ba91c1d051)

4. **Choisir le système de fichiers**: Il est fortement conseillé d'éviter les systèmes de fichiers NTFS ou exFAT sur Linux, en particulier si vous prévoyez de partager la partition avec Windows, car cela peut causer des problèmes. Nommez votre volume et sélectionnez Ext4 comme système de fichiers pour une compatibilité optimale avec Linux.

   ![Choisir le système de fichiers](https://github.com/Gaming-Linux-FR/guide-formater-monter/assets/83916775/559e76b9-bbcf-44f7-b829-2df22fbc5119)

5. **Finaliser le formatage**: Assurez-vous de n'avoir commis aucune erreur avant de procéder. Cliquer sur "Formater" lancera le processus de formatage.

   ![Finaliser le formatage](https://github.com/Gaming-Linux-FR/guide-formater-monter/assets/83916775/358a6d00-f67e-40bb-9ab7-7134bbf9e770)

## Monter au démarrage

Pour que votre disque ou SSD soit automatiquement monté au démarrage :

1. **Modifier les options de montage**: Recliquez sur les petits engrenages, mais cette fois-ci, allez dans "Modifier les options de montage".

   ![Modifier les options de montage](https://github.com/Gaming-Linux-FR/guide-formater-monter/assets/83916775/3cd029b9-cd3b-4973-9b1d-249ab369bcd5)

2. **Configurer le montage automatique** :
    - Cochez "Monter au démarrage".
    - Mettez les options "defaults" et, pour les SSD, ajoutez "noatime" pour réduire l'usure et améliorer la performance. Attention, toute erreur dans ces options peut empêcher le volume de se monter correctement.
    - Montez dans `/media`, le dossier prévu pour cela, pour éviter les problèmes de démarrage liés au montage dans `/home`.
    - Utilisez l'identification par UUID, qui est la méthode la plus fiable.
    - Laissez le type de système de fichiers sur "auto" ou spécifiez "ext4" si c'est votre choix lors du formatage.

   ![Configurer le montage automatique](https://github.com/Gaming-Linux-FR/guide-formater-monter/assets/83916775/ddb3c44c-58ea-4d7f-b049-766d148e8ba9)

### Explications des options `defaults` et `noatime`

- **`defaults`** offre un ensemble d'options de montage par défaut, incluant les permissions de lecture/écriture pour l'utilisateur, entre autres, convenant à la majorité des usages.

- **`noatime`** évite la mise à jour de l'heure d'accès des fichiers à chaque lecture, réduisant ainsi les écritures sur le disque. C'est particulièrement bénéfique pour les SSD, où cela peut augmenter la performance et la durée de vie du disque.

---
_Dernier import depuis [guide-formater-monter](https://github.com/Gaming-Linux-FR/guide-formater-monter.git) le 07/04/2024 par [Darkone Linux](https://darkone.yt)_
