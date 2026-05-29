---
title: "2026 S22 Rapport Hebdomadaire"
lang: fr
date: 2026-05-26T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R (rapide), Laurent C, Didier L.*

### Ordre du jour prochaine visio mardi 2 juin 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Retour sur la salon de Lyon
- Lancement de la campagne de financement de juin → <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2>
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 26 mai)

- Revue de presse.
- Revue du plan stratégique (ébauché avec Mnème : <https://foopgp.org/documents/fr/strategy/strategie-foopgp-complet.pdf> )
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

Pour mai : ***stingynalty =* 1.12155202**

**Simulateur de cotisation initiale** (2 dimensions) → <https://foopgp.org/djis-simulator/?lang=fr>

**Graphique en 3 dimensions** → <https://www.math3d.org/xzuclzIbuZ>

 

*Rappel :*  si vous avez déjà cotisé, il faut appliquer la formule :

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

*Au 9 mai 2026, calculés avec nos nouveaux outils `bl-foopgp` (`inputs` pour la vue d’ensemble, `contribs --resume` pour le sous-ensemble certifié) appliqués à l’instance `uetree-djis-by-email/`.*

- Total contributors : 46 - Total certified members : 13 / 46
- Total contribs : 86 - Total certified contribs : 36 / 86
- Total contribution : 61 494,10 € - Total certified contribution : 42 485,47 € / 61 494,10 €
- Total certified created : 99,733737 Ɉ — *seuls les adhérents dont l’identité OpenPGP est certifiée par la Toile de Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d’un de nos prochains ateliers ([cf. agenda ci-dessous](#agenda)) pour finaliser la certification de votre identité OpenPGP, débloquer la création de vos djis et pouvoir les échanger au sein de l’association.*

### Revue de presse

- L’opérateur de tiers payant Almerys à nouveau piraté : <https://www.lesnumeriques.com/societe-numerique/almerys-a-nouveau-pirate-plus-de-15-millions-de-numeros-de-securite-sociale-en-fuite-n256447.html>
- Des comptes McDonald’s piratés : <https://www.journaldugeek.com/2026/05/21/des-comptes-mcdonalds-pirates-en-france-vos-points-fidelite-ont-ils-ete-voles/>
- Face à l’explosion des fuites de données, la CNIL annonce des mesures renforcées : <https://www.lesnumeriques.com/societe-numerique/face-a-l-explosion-des-fuites-de-donnees-la-cnil-annonce-des-mesures-renforcees-n256246.html>
- Infomaniak devient “invendable” : <https://www.numerama.com/tech/2256831-infomaniak-devient-invendable-lastuce-juridique-du-geant-suisse-du-cloud-pour-proteger-vos-donnees.html>
- Euro-Office, l’alternative gratuite arrive cet été : <https://www.lesnumeriques.com/appli-logiciel/bye-bye-microsoft-office-euro-office-l-alternative-gratuite-qui-seduit-deja-2-millions-d-europeens-arrive-cet-ete-n256169.html>

### Au cœur de la réunion

- Production de la semaine : 
  - Avancement du backend : 
    - Spécification de l’arborescence destinée a enregistrer nos transactions en djis (mais pas que) : <https://foopgp.org/documents/en/draft-foopgp-uetree-00.txt>
    - Spécification du workflow « cotisations euros → émission de djis » :  <https://foopgp.org/documents/en/foopgp-djis-emission-workflow.md>
    - vérification supplémentaire de l’ensemble des cotisations reçues depuis la création de l’association
    - outillages liés à tous les points ci-dessus
- Revue de notre nouvelle page d’inscription (qui redirige vers la campagne de juin) :  <https://foopgp.org/djis-emission>
- Discussions sur la RoadMap avec Didier
- Participation aux JDLL à Lyon : conf + atelier le Samedi 30 mai à 11h : <https://pretalx.jdll.org/jdll2026/speaker/VZL9MC/>

### Agenda

- Samedi 30 et dimanche 31 mai à Lyon : <https://www.jdll.org/>
- Vendredi 5 juin à partir de 17h à Tallard : Atelier Djibian + OpenPGP ID.
- Autour du 19 juin : Conférences + Ateliers près de Vannes (Bretagne).
- Samedi 27 Juin : présentation + atelier à la Mairie de Pelleautier.
- [… agenda du libre](https://www.agendadulibre.org)