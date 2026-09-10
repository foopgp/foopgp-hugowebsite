---
Title:   "Cloner n'est pas exécuter"
Date:    2026-09-10T09:00:00+02:00
Tags:    [ "supply-chain", "hameçonnage", "npm", "openpgp", "identité" ]
categories: [ "Study" ]
draft: true
author: [ "Mnêmê", "Jean-Jacques Brucker" ]
description: "Une approche cordiale, un dépôt à cloner, et une charge qui ne se déclenche jamais là où on l'attend. Anatomie d'un hameçonnage qui vise les développeurs — et de la question qui y met fin."
lang: fr
bg_image: "images/backgrounds/library.jpg"
type: "post"
---

Un message sur un réseau professionnel. Une occasion intéressante, un projet qui
cherche exactement nos compétences, un lien de prise de rendez-vous. Puis un
appel en visioconférence, cordial, technique juste ce qu'il faut. Et au bout de
vingt minutes : *clonez ce dépôt, ouvrez-le, faites `npm install`, on regarde
ensemble.*

La réponse a été non : rien ne s'exécute avant d'avoir lu le code et su à qui
l'on parle. Notre interlocuteur a raccroché.

## Trois portes, dont aucune ne s'appelle « lancer le programme »

La charge ne se cache jamais derrière l'exécution du projet. Elle attend
derrière des gestes ordinaires, ceux qu'on fait sans les compter :

- **`.vscode/tasks.json`**, avec `"runOptions": { "runOn": "folderOpen" }` : une
  tâche que l'éditeur déclenche à l'ouverture du répertoire ;
- **`package.json`**, avec `preinstall`, `install`, `postinstall`, `prepare` :
  `npm install` les exécute, et exécute aussi ceux de chaque dépendance. Un
  paquet typosquatté trois niveaux plus bas suffit ;
- **`.devcontainer/devcontainer.json`**, avec `initializeCommand` : celui-là
  s'exécute **sur l'hôte**, avant même que le conteneur existe.

Aucun de ces chemins ne donne à la victime le sentiment d'avoir lancé quoi que
ce soit. C'est précisément l'intérêt.

## Les garde-fous existent ; c'est l'appel qui les désarme

Il faut le dire, parce que la version alarmiste circule : ouvrir un dossier ne
suffit pas. VS Code ouvre depuis plusieurs années tout répertoire inconnu en
*mode restreint* — ni tâche, ni débogueur, ni extension non déclarée. Les tâches
automatiques ne s'exécutent **jamais** dans un espace de travail non approuvé,
quel que soit le réglage, et `task.allowAutomaticTasks` vaut `off` par défaut.

La chaîne exige donc un clic de la victime. Et c'est exactement pour ce clic
qu'il y a quelqu'un au téléphone. Une boîte de dialogue lue seul est une
question ; lue pendant qu'un interlocuteur attend, c'est une formalité. L'outil
de l'escroc n'est pas le fichier JSON, c'est la hâte cordiale d'une conversation
en direct.

D'où la règle, qui tient en une ligne : **on ne clone, n'ouvre ni n'installe
rien pendant un appel.**

## Lire ou exécuter

La frontière est nette, et elle ne passe pas là où on la place spontanément.

Relèvent de la lecture : `git clone` — les crochets ne sont pas transférés —,
`cat`, `less`, `git log`, la consultation sur la forge. Relèvent de
l'exécution : l'ouverture dans un éditeur qui honore la configuration de
l'espace de travail, `npm install`, `make`, `direnv`, l'ouverture d'un
conteneur de développement.

Entre les deux, de quoi se faire une idée sans rien lancer :

```bash
git log --max-count=20 --date=short --format='%h %ad %an %s'
find . -path ./.git -prune -o -type f \( -name tasks.json -o -name settings.json \
     -o -name devcontainer.json -o -name .envrc -o -name Makefile \) -print
grep --recursive --exclude-dir=.git --extended-regexp \
     'folderOpen|initializeCommand|preinstall|postinstall|base64 |curl .*\| *(ba)?sh' .
```

Et, pour npm, `npm config set ignore-scripts true` : les scripts ne tournent
plus qu'à la demande. Le prix est réel — certaines dépendances natives ne se
compilent plus toutes seules et réclament qu'on lève l'option pour elles — mais
il se paie une fois, en connaissance de cause.

## L'historique dit ce que le code cache

Dans le cas documenté sur GitHub, la charge est arrivée par un envoi récent : le
dépôt s'était constitué un passé plausible avant de devenir hostile. Trois
regards valent mieux qu'une lecture ligne à ligne : la date de création du
compte, l'auteur des derniers envois, et l'existence de signatures. Ici, aucune.

## La question qui a mis fin à l'entretien

*Qui êtes-vous, et qu'attendez-vous de moi ?* L'appel s'est arrêté là. Ce n'est
pas un trait de caractère : un interlocuteur légitime répond à cette question.

Reste à constater que rien, dans le canal employé, n'aurait pu y répondre à sa place. Un
profil sur un réseau professionnel est déclaratif — il affirme un nom, un
employeur, une photographie, et rien ne certifie l'ensemble. Les envois du dépôt
n'étaient signés par personne. Les paquets npm avaient été publiés par des
comptes que personne ne cautionne.

## Un maillon vide

Notre chaîne d'approvisionnement logicielle a de l'intégrité : condensats,
fichiers de verrouillage, TLS. Nous savons vérifier que les octets reçus sont
bien ceux qui ont été publiés. Nous ne savons presque jamais vérifier **qui** les
a publiés, ni qui se porte garant de cette personne.

Une signature ne rend pas un code inoffensif — un escroc sait signer. Elle
déplace autre chose : elle rend l'auteur nommable d'une plateforme à l'autre, et
elle transporte avec lui les certifications qu'il a reçues. Sous une identité que d'autres ont
certifiée, un compte ouvert le mois dernier pour une campagne cesse d'être
indiscernable d'un contributeur qui a dix ans derrière lui.

C'est la couche que nous construisons, et il faut être honnête sur sa portée :
elle ne dispense pas de lire le code. Elle supprime la situation où *qui
êtes-vous ?* n'a d'autre réponse que ce que l'intéressé en dit.

## Six réflexes

1. Ne rien cloner, ouvrir ni installer pendant un appel.
2. Lire avant d'ouvrir : `.vscode/`, les `scripts` du `package.json`,
   `.devcontainer/`, `Makefile`, `.envrc`.
3. Ignorer les scripts d'installation par défaut.
4. Lire l'historique avant le code.
5. Poser la question d'identité, et observer ce qu'elle produit.
6. Si l'examen s'impose malgré tout : machine jetable, utilisateur sans
   privilège, aucun trousseau ni session ouverte à portée.

## Un procédé déjà documenté

Le prétexte varie — une offre d'emploi, une revue de code avant entretien, un
projet d'intelligence artificielle en quête de renfort. Le procédé, lui, ne
varie pas : une personne plausible, un dépôt d'apparence sérieuse, et un geste
qui semble anodin. La famille est documentée depuis 2023 sous le nom
*Contagious Interview*, et plusieurs éditeurs de sécurité l'attribuent à un
groupe étatique ; [Microsoft en a publié une analyse en mars
2026](https://www.microsoft.com/en-us/security/blog/2026/03/11/contagious-interview-malware-delivered-through-fake-developer-job-interviews/).
Le [fil de discussion GitHub](https://github.com/orgs/community/discussions/206577)
où nous avons retrouvé le mode opératoire en décrit une variante, avec un autre
prétexte et un dépôt qui répond aujourd'hui 404.

L'histoire nous aura coûté un quart d'heure, parce que le réflexe précédait la
rencontre.

Pour aller plus loin : la [documentation de VS Code sur l'approbation des
espaces de travail](https://code.visualstudio.com/docs/editing/workspaces/workspace-trust).
