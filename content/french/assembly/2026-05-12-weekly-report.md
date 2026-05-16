---
title: "2026 S20 Rapport Hebdomadaire"
lang: fr
date: 2026-05-12T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 19 mai 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Revue du plan stratégique (ébauché avec Mnème : <https://foopgp.org/documents/fr/strategy/strategie-foopgp-complet.pdf> )
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 12 mai)

- Revue de presse.
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Pour mai, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** :

```bash
$ bl-foopgp --verbose giftarray --with-header --max 11
bl-foopgp: Info: stingynalty=1.12155201612476790176
|          EUR |          DJI |
|--------------|--------------|
|       1.00 € |   89.1621 cɈ |
|       1.18 € |  100.0000 cɈ |
|       2.00 € |  141.3186 cɈ |
|       3.74 € |  200.0000 cɈ |
|       5.00 € |  230.4808 cɈ |
|       9.31 € |  300.0000 cɈ |
|      10.00 € |  308.4503 cɈ |
|      20.00 € |  391.6285 cɈ |
|      21.42 € |  400.0000 cɈ |
|      47.77 € |  500.0000 cɈ |
|      50.00 € |  505.7656 cɈ |
|     100.00 € |  593.6605 cɈ |
|     105.11 € |  600.0000 cɈ |
|     200.00 € |  682.1842 cɈ |
|     229.86 € |  700.0000 cɈ |
|     500.00 € |  799.6657 cɈ |
|     501.31 € |  800.0000 cɈ |
|    1000.00 € |  888.6994 cɈ |
|    1091.92 € |  900.0000 cɈ |
|    2000.00 € |  977.7973 cɈ |
|    2376.98 € | 1000.0000 cɈ |
|    5000.00 € | 1095.6246 cɈ |
|    5173.03 € | 1100.0000 cɈ |
```

Rappel, si vous avez déjà cotisé, il faut appliquer la formule :

> **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

Et pour cela, il faut utiliser les options *--tokens* et *--gifts* :

```
$ bl-foopgp giftarray --help
Usage: bl-foopgp giftarray [OPTIONS]

Afficher un tableau indiquant combien de djis (Ɉ) seront créés à partir d’une cotisation en euros (€).

OPTIONS:
  -t, --tokens DJISUM  Définir la base de djis (Ɉ) déjà créés (par défaut : 0)
  -g, --gifts EURSUM   Définir la base des montants déjà cotisés en euros (€) (par défaut : 0)
  -m, --max VALUE      Définir une limite en nombre de djis ciblés (par défaut : 12)
  -M, --max-line NUM   Limiter le nombre de lignes (par défaut : 24)
  -H, --header-only    Afficher uniquement la ligne d’en-tête, puis quitter.
  -F, --with-header    Afficher également la ligne d’en-tête et une ligne de séparation au début du tableau.
```

#### Chiffres de l’association

*Au 31 décembre 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

- Total members : 40 - Total certified members : 16 / 40
- Total contribs : 70 - Total certified contribs : 33 / 70
- Total contribution : 59503.14 € - Total certified contribution : 50812.51 € / 59503.14 €
- Total created : 236.044486 Ɉ - Total certified created : 129.063714 Ɉ / 236.044486 Ɉ

### Revue de presse

- <https://www.youtube.com/watch?v=7PAweKMC110>
- Attention à cette arnaque d’un nouveau genre, l’appel silencieux est plus dangereux qu’il n’y paraît

  <https://www.universfreebox.com/article/593966/attention-a-cette-arnaque-dun-nouveau-genre-lappel-silencieux-est-plus-dangereux-quil-ny-parait>

  Dire « allô » pourrait déjà être une erreur. Les appels silencieux, en forte hausse, serviraient à repérer les numéros actifs et à préparer des arnaques plus sophistiquées. Les appels silencieux se multiplient, et derrière leur apparente banalité pourrait…
- #Chrome télécharge silencieusement #Gemini Nano, un modèle #IA de 4 Go appelé weights.bin, dans un dossier sans demander la permission, et le réinstalle automatiquement si vous le supprimez.

  Entre 100 millions et 1 milliard de machines concernées, générant entre 6 000 et 60 000 tonnes de #CO2 rien que pour le réseau du déploiement.

  Le déploiement viole la directive ePrivacy européenne qui interdit de stocker quoi que ce soit sur l'appareil sans consentement explicite.

  <https://korben.info/chrome-installe-en-douce-un-modele-ia-de-4-go-sur-votre-disque-sans-rien-demander.html>

  <https://tooting.ch/@lahminewski/116528257205760349>

  <https://next.ink/237140/chrome-peut-stocker-4-go-associes-a-gemini-sur-votre-machine-sans-crier-gare/>

  Google Chrome silently installs a 4 GB AI model on your device without consent. At a billion-device scale the climate costs are insane.

  <https://www.thatprivacyguy.com/blog/chrome-silent-nano-install/>

  <https://chaos.social/@doener/116521115476291195>
- Google détecte pour la première fois une attaque zero-day développée par IA : <https://www.zdnet.fr/actualites/google-detecte-pour-la-premiere-fois-une-attaque-zero-day-developpee-par-ia-494884.htm>
- Hadopi c’est fini : <https://www.zdnet.fr/blogs/l-esprit-libre/piratage-en-ligne-hadopi-cest-fini-494864.htm>
- La Gendarmerie a migré sous Linux il y a 20 ans, des économies spectaculaires : <https://www.lesnumeriques.com/societe-numerique/logiciel-libre-la-gendarmerie-a-quitte-microsoft-pour-linux-il-y-a-20-ans-ses-economies-sont-spectaculaires-n255825.html>
- La Commission Européenne offre des accessoires à des journalistes avec des connecteurs Lightning : <https://www.numerama.com/tech/2250447-apres-avoir-impose-lusb-c-a-tout-le-monde-leurope-envoie-des-accessoires-lightning.html>

### Au cœur de la réunion

- Mnème + Jean-Jacques ont encore beaucoup produit, notamment 
  - Mises à jour des outils (paquets logiciel) : bashlibs, pgpid et djibian-gpgconfig
  - Nouvelle page Mnème se présentant elle même : <https://foopgp.org/fr/blog/2026-05-09-hello-my-name-is-mneme/>
  - Mise à jour de la page solutions → Identité : <https://foopgp.org/fr/solutions/openpgp-id/>
  - Nouvelle page : <https://foopgp.org/fr/blog/2026-05-11-djibian-agentforwarding/> — suite à la maj de l’outil ssh_gpgforward (qui sera bientôt renommé sshwfw pour : SSH With ForWards)
  - …
- La conférence à Gap s’est aussi très bien passée. On réduit notre marge de progression à chaque itération. Audience surtout demandeuse au niveau effet Cantillon et monnaie libre. On planifie un atelier sur Tallard début Juin (entre celui de Lyon le 30 mai et celui de Pelleautier le 27 juin.
- Participation aux JDLL à Lyon : conf + atelier le Samedi 30 mai : <https://pretalx.jdll.org/jdll2026/speaker/VZL9MC/>
- On fait une petite présentation visio OpenPGP ID (devant environ 70 techniciens/ingénieurs à travers le monde) pour Yubico le 27 mai.

### Agenda

- Mercredi 27 Mai : présentation OpenPGP ID pour Yubico (16h30, Audience Internationale : 70 techniciens).
- Samedi 30 et dimanche 31 mai à Lyon : <https://www.jdll.org/>
- Samedi 27 Juin : présentation + atelier à la Mairie de Pelleautier.
- [… agenda du libre](https://www.agendadulibre.org)