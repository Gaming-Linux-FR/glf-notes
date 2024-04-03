# Base de connaissances GLF

**Une base de connaissance Linux et Gaming by [GLF](https://www.gaminglinux.fr/)**

## Consulter

Consultez [la base de connaissance GLF sur github pages](https://gaming-linux-fr.github.io/glf-notes/).

## Participer

Ce projet utilise le générateur de site [hugo](https://gohugo.io/) et les données sont écrites en Markdown.

### En ligne

Proposition de contenu :

- Proposer le contenu dans [une issue]().

Si vous avez les droits d'écriture :

- Rendez-vous dans le dossier [content](content/).
- Modifiez un fichier.
- Proposez une pull request.

### En local

Forkez ou clonez le projet (selon vos droits), puis l'utiliser en local.

Installation :

```sh
git clone https://github.com/darkone-linux/glf-notes.git
cd glf-notes && ./bin/install.sh
```

Commandes utiles :

```sh
# Lancer le site de développement
./bin/launch-local.sh

# Mise à jour complète du projet
./bin/update.sh

# Créer une page (remplacer <chemin> par l'url relative de la page)
hugo new content <chemin>/index.md
```

Ce projet utilise le générateur de site statique [HUGO](https://gohugo.io/) avec le template [PaperMod](https://github.com/adityatelange/hugo-PaperMod/).