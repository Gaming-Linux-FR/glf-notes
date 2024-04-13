---
title: Tutoriel SuperTuxKart
date: 2024-04-13
author: Darkone Linux
tags: ['game']
---

> Ce tutoriel est disponible en [version PDF](https://github.com/DarkoneSTK/stk-tutorials/blob/main/fr/tutoriel-stk-darkone.md.pdf) et depuis [ce dépôt](https://github.com/DarkoneSTK/stk-tutorials/).

Voici quelques conseils pour optimiser ses performances et son jeu avec SuperTuxKart. Ces informations issues de mon expérience ne sont pas forcément exhaustives mais peuvent peut-être vous aider à progresser. Rendez-vous sur le [site officiel de STK](https://supertuxkart.net/) pour découvrir le jeu avant d'aborder ce tutoriel.

Pour améliorer ce document, vous pouvez me contacter ([darkone-stk@gmail.com](mailto:darkone-stk@gmail.com)) ou proposer une issue / request dans le [repository github](https://github.com/DarkoneSTK/stk-tutorials).

# Améliorer son temps

On vous dira que **l'entraînement et l'expérience sont la clé**. C'est vrai. Cependant, les meilleurs joueurs observent certaines règles importantes.

## Règles de base pour une conduite efficace

- **Prendre le chemin[^chemin] le plus court.** Entre l'intérieur et l'extérieur d'un virage, la différence de distance et de temps est importante. Quand on multiplie par tous les virages, ça fait une GROSSE différence. Il est donc important, toujours, de couper au plus court. Cependant, quelques raisons de déroger à la règle&nbsp;:
  - Faire un écart pour aller chercher une nitro (surtout une grosse).
  - Faire un écart pour aller chercher un accélérateur.
  - Manoeuvrer pour se protéger d'un adversaire.
  - Aller jusqu'au bout d'un dérapage.
- **Maîtriser l'art du dérapage.** Il existe un petit (jaune) et un gros (rouge) dérapage. Dès que la couleur voulue apparaît, il faut lâcher la touche au plus tôt, puis recommencer à déraper (faire durer le dérapage ne sert à rien).
  - L'idéal est de **faire le plus de dérapages possible**, jusqu'au rouge si possible, tout en gardant le chemin le plus court. Une anticipation à acquérir avec l'expérience.
  - Quand on est à l'arrêt, **deux dérapages jaunes** sont plus efficaces qu'un rouge pour accélérer jusqu'à la vitesse optimale, sauf avec de la nitro (un seul jaune sera suffisant) ou si la géométrie du circuit requiert une autre stratégie.
- **Connaître et maîtriser les raccourcis.** Ils permettent de réduire encore plus la longueur du chemin parcouru. Il faut composer entre la difficulté du raccourci et son gain... pour un record on se risquera davantage que pour une course avec des concurrents. Voir _"Savoir où sont les checkpoints"_ un peu plus loin pour savoir comment trouver les raccourcis.
- **Attraper un maximum de nitro.** Les nitros sont très importantes pour avancer plus vite et rattraper le premier. S'il y a le choix, préférer les nitros aux cadeaux, sauf si vous êtes dernier et que la probabilité d'avoir des zippers est importante.
- **Utiliser la nitro au bon moment.** C'est à dire quand il est encore possible d'accélérer. Donc quand on va pas vite ou qu'on ralentit (écouter le bruit du moteur). Un bon réflexe est d'utiliser la nitro pendant un dérapage rouge (pour maintenir la vitesse du kart) et non juste après.
- **Utiliser le zipper[^zipper] au bon moment.** Il est dommage d'annuler prématurément l'effet du zipper avec un virage serré ou un obstacle. Il vaut mieux choisir une ligne droite ou une portion de circuit facile pour profiter du zipper.

[^chemin]: Le "chemin" est la trace réelle du kart.
[^zipper]: Option d'accélération (flèche jaune) obtenue dans un cadeau.

## Connaître les circuits

- **Savoir où sont les "checkpoints"[^checkpoint].** Cela permet entre autre de trouver des raccourcis et savoir à quel point on peut couper certains virages, pour optimiser le chemin. On peut rendre les checkpoints visibles en mettant `artist_debug_mode` à `true` dans `config.xml`.
- **Choisir le bon kart en fonction du circuit.** Pour établir des records, un kart lourd est presque toujours le bon choix. Mais pour des courses classiques il vaut mieux avoir des karts plus maniables sur les circuits sinueux et compliqués.

[^checkpoint]: Les checkpoints sont l'ensemble des zones à franchir pour valider un tour de course. S'il y en a peu, il est possible de trouver des raccourcis entre ces checkpoints pour optimiser son chemin.

## Autres paramètres importants

- **Avoir une bonne configuration matérielle.** Un bon clavier gamer (avec un temps de réponse très rapide), un ordinateur puissant avec une carte graphique imposante, ainsi qu'une connexion internet fibre et un réseau filaire rapide (pour jouer en ligne) sont autant d'atouts pour ne pas être limité par le matériel. On peut cependant jouer avec une configuration moindre (j'ai personnellement un vieux laptop de bureau avec une connexion 4G) mais c'est parfois un peu frustrant de perdre à cause de ralentissements matériels.
- **Minimiser les effets visuels.** Les effets visuels consomment beaucoup de CPU / GPU. Pour optimiser les temps de réponse (surtout sur un ordinateur dont la configuration matérielle est limitée), mettre au minimum (ou presque) les options d'effets visuels.
- **Libérer des ressources.** Fermer les logiciels qui consomment du CPU et de la RAM. Mais également tout ce qui consomme du réseau et de l'internet (streaming vidéo, etc.). Le fameux "lag" est souvent dû à des perturbations réseau.

## Conseils moins importants

- **Désactiver la musique** (ou baisser son volume) permet de mieux se concentrer sur le jeu et d'entendre les sons importants (en revanche il faut laisser les effets sonores activés&nbsp;!).

# Interagir avec les autres

- **Se détacher à tout prix de la foule.** En début de course on est empêtré dans la "foule" de karts avec de grandes chances d'être poussé, explosé, freiné. L'idéal est d'arriver à rapidement s'en écarter sans se faire exploser, ce qui est plus facile avec un kart léger malgré sa vitesse limitée par la suite. Une fois devant tout le monde, la voie est libre.
- **Éviter d'être derrière un autre kart (mode normal).** Quand il y a des cadeaux partout et beaucoup de karts, se retrouver juste derrière un autre comporte un fort risque d'être freiné par un cake, une boule, un chewing-gum, une tapette, etc.
- **Profiter de l'effet d'aspiration (time trial).** En mode "time trial" en revanche, on peut profiter de l'aspiration des autres karts en se mettant derrière. C'est particulièrement visible sur les circuits de course où deux bons joueurs qui vont sensiblement à la même vitesse font souvent un yoyo entre 1er et 2ème.
- **Préférer un kart maniable s'il y a du monde.** Un kart léger aura pour avantage de mieux se faufiler et de redémarrer plus vite en cas d'arrêts intempestifs. Quans il y a beaucoup de monde, c'est un vrai atout, car il y a plus de chance d'être freiné par les cadeaux des autres.
- **Alternative : démarrer dernier et prendre des cadeaux-zippers.** Une technique risquée mais qui peut porter ses fruits, car les cadeaux des derniers ont de grande chance de comporter des zippers qui permettent de rapidement rattraper puis dépasser les concurrents.
- **Utiliser la protection chewing-gum au bon moment.** Cette protection peut être activée juste avant l'arrivée d'un ballon de basket, un nouveau cadeau ou au moment de croiser un concurrent... il est important de l'activer quand les probabilités qu'elle soit utile sont fortes.
- **S'entraîner à viser avec les boules.** C'est pas évident (et j'avoue que ce n'est pas mon point fort) mais arriver à bien viser avec les boules est un atout. Le kart concurrent doit être juste devant et s'il est loin, ne pas trop tourner (ou anticiper son mouvement).

# Réflexes à avoir

Quand on est débutant, on ne connaît pas toujours certaines astuces importantes qui doivent devenir des réflexes.

## Astuces basiques

- **Utiliser le zipper du départ.** Au départ, il y a trois temps "Ready!", "Set!", "Go!". Appuyer sur l'accélérateur au début de "Set!" permet d'avoir un zipper au début.
- **Enlever une bombe.** Le chewing-gum et la tapette permettent de retirer une bombe. Mais il est aussi possible de toucher un concurrent pour lui transmettre la bombe.
- **Enlever un parachute.** Pour cela il faut piller (freiner fortement) puis redémarrer. Dans la majorité des cas c'est plus bénéfique que de continuer à accélérer.
- **Utiliser le filin.** Quand il y a un concurrent pas trop loin devant, le filin permet de l'accrocher pour accélérer et souvent le dépasser.
- **Envoyer un cake au bon moment.** Les cakes fonctionnent quand le concurrent est relativement prêt et que sa vitesse ne diffère pas trop de la vôtre.
- **Laisser le ballon de basket au poursuivant.** Quand on est premier avec un poursuivant assez proche et qu'un ballon de basket arrive, ralentir et se laisser dépasser pour éviter le ballon.

## Astuces avancées

- **Ne pas regarder son kart.** Même s'il est beau. Fixer plutôt le circuit et tout ce qui se passe devant le kart&nbsp;! Ça permettra d'optimiser la course en anticipant beaucoup mieux les virages et les obstacles (en particulier les gums).
- **Enlever une bombe en lançant un "rescue" au bon moment.** Dans l'absolu on ne perdra pas plus de temps en faisant ça, mais si on est sur le point d'exploser, autant le faire avant un accélérateur que juste après.
- **Dérapage + virage sans accélération.** Lâcher temporairement la touche d'accélération puis déraper permet de mieux amorcer un virage serré. Un bon réflexe à avoir pour optimiser le chemin parcouru en évitant de se retrouver à l'extérieur du virage, voir dans le ravin.
- **Optimiser le chemin grâce à la bulle du chewing-gum.** Elle permet de passer sur les bananes sans en subir le sort. Ne pas hésiter à passer sur la banane située à l'intérieur d'un virage pour raccourcir le chemin.

# Erreurs à éviter

- **Se faire frapper.** Les tapettes ralentissent beaucoup et longtemps. Il est important de ne pas s'approcher de celui qui en sort une. Il est possible d'anticiper l'apparition des tapettes en jetant un oeil sur la liste des adversaires à gauche.
- **Confondre les boules et les cadeaux.** Sur certains circuits, on peut confondre les boules et les cadeaux. Il faut se méfier quand un bruit de boule se fait entendre et savoir où se trouvent les cadeaux.
- **Gâcher une nitro pendant une accélération.** Utiliser une nitro juste après un zipper, un accélérateur ou un grand dérapage n'est pas efficace. Comme nous l'avons vu, les nitro ont plus d'effet quand le kart ralentit.
- **Insister sur les dérapages.** Faire un énorme dérapage de 30 secondes ne sert à rien. Dès que la devient rouge, le gain est maximal, il faut alors lâcher la touche dérapage au plus tôt.

# S'entraîner

- **Faites des courses en ligne avec (un peu) plus fort que vous.** Même si c'est frustrant de perdre, on progresse mieux avec des concurrents de même niveau ou un peu plus forts. Avec les débutants, soyez sympa et conseillez-leur ce document ;). Un concurrent beaucoup plus fort vous distancera rapidement et ne vous apprendra pas grand chose tant que vous n'aurez pas ses réflexes.
- **Faites des courses hors ligne avec 19 bots.** Les bots des courses hors-ligne sont plus performants que les bots en ligne, même si avec l'expérience ils seront rapidement des concurrents faciles à battre. Pour s'entraîner à rouler dans la foule, choisir un circuit très court avec plein de cadeaux et un maximum de concurrents.
- **Étudier les records et les challenges sur youtube.** De nombreux joueurs passionnés publient leurs courses et records sur le net. Les regarder et les analyser est très bénéfique pour apprendre.
- **Participer aux concours, grands prix et autres événements.** Pour cela, un bon point d'entrée est [ce site](https://stk.kimden.online) qui propose des rendez-vous et compile les records des circuits "Francfurt".
- **Télécharger des fichiers "records" sur discord.** De la même manière, on peut télécharger les fichiers "records" et s'entraîner à jouer contre ces enregistrements.
- **Télécharger beaucoup de circuits.** S'entraîner sur une multitude de circuits différents permet de se diversifier et améliorer son jeu.
- **Savoir prendre la nitro entre les deux bananes.** Souvent, il y a une grosse nitro entre deux bananes. Cela demande de faire un petit écart de conduite pour l'attraper sans trop ralentir.

# Exploiter les effets de bord (ou non)

- **Les checkpoints manquants.** Sur certains circuits, il est possible d'optimiser le temps en faisant demi-tour pour passer tous les check-points plus rapidement. Selon moi, il s'agit davantage d'une erreur de conception (ou d'une possibilité voulue par le concepteur, mais c'est rare) que d'une possibilité de tricherie, car si c'était le cas, le moindre raccourci serait aussi une tricherie.

# Configuration avancée

- **Minimiser les effets visuels.** Aller dans la configuration du jeu et mettre au plus bas les effets visuels, sauf les FPS si possible. Il existe d'autres paramètres dans les fichiers de configuration, par exemple pour modifier les angles de vues, qui peuvent être utiles pour optimiser le confort de jeu.
- **Compiler un binaire optimisé.** Pour ceux qui compilent le jeu, se référer à la documentation en ligne pour optimiser le binaire en fonction de sa configuration matérielle.
