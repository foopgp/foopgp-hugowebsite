---
title: "2026 S19 Rapport Hebdomadaire"
lang: fr
date: 2026-05-05T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R, Didier L.*

***Excusé :*** *Laurent C.*

### Ordre du jour prochaine visio mardi 12 mai 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- (On devrait faire court, il y a un anniversaire).

### Ordres du soir (mardi 5 mai)

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

- Korben: #Bruteforce de #cartes #bancaires

  Un #chercheur en #sécurité a démontré qu'il est possible de reconstituer les chiffres manquants d'une carte bancaire par bruteforce en testant des numéros auprès de la banque, à raison d'environ 6 tentatives par seconde.

  <https://korben.info/carte-bancaire-brute-force.html>

  <https://mastodon.social/@rod2ik/116504648820854836>
- L’ANTS a été piraté par un gamin de 15 ans

  <https://projetarcadie.com/ants-piratage-15-ans/>

  <https://mamot.fr/@Projet_Arcadie/116493243857178448>
- Affaire Helios : quand une panne informatique menace la paie de millions de fonctionnaires <https://www.lemonde.fr/economie/article/2026/05/01/affaire-helios-quand-une-panne-informatique-menace-la-paie-de-millions-de-fonctionnaires_6684701_3234.html?utm_source=dlvr.it&utm_medium=mastodon>

  <https://mastodon.social/@lemonde/116498614094282879>
- Je n'ai pas d'autres informations mais, si vos noms de domaine sont chez BookMyName, il faudrait regarder ça de près (le site Web est en effet en carafe, empêchant les vérifications). <https://www.mail-archive.com/frnog@frnog.org/msg80342.html>

  <https://status.scaleway.com/incidents/gmk0vpyflyl7>

  <https://mastodon.gougere.fr/@bortzmeyer/116521097101717196>
- Le dernier rapport de la délégation parlementaire au renseignement veut casser le chiffrement de vos messages.

  Le même rapport explique pourquoi l'État n'en est pas capable.

  Mais, veut quand même l'autoriser, par exemple, dans NIS2.

  <https://projetarcadie.com/acces-messages-renseignement-dpr/>
- Après les australiens, ce sont les anglais qui eux se dessinent une moustache pour contourner la vérification d'âge en ligne.

  <https://www.independent.co.uk/news/uk/home-news/children-bypassing-age-verification-social-media-b2968803.html>

  <https://framapiaf.org/@sebsauvage/116516048696764064>
- Meta abandons open-source Llama for proprietary Muse Spark: <https://thenewstack.io/meta-abandons-llama-spark/> via @TheNewStack & @sjvn

  If you're still using the #opensource #AI Llama, Meta's left you without a migration path.

  <https://mastodon.social/@sjvn/116494758249882707>
- Elon Musk Says xAI Used OpenAI Models to Train Grok

  <https://decrypt.co/366274/elon-musk-xai-used-openai-models-train-grok>

  <https://flipboard.com/@thenewsdesk/business-nbfr4cs7z/-/a-AV_BNVF8Qna01d36HKff2Q%3Aa%3A43591897-%2F0>
- ChatGPT : OpenAI officialise la surveillance de vos conversations dans un billet de blog surréaliste - Les Numériques

  <https://www.lesnumeriques.com/intelligence-artificielle/chatgpt-openai-officialise-la-surveillance-de-vos-conversations-dans-un-billet-de-blog-surrealiste-n255180.html>

  > Dans un très curieux billet de blog, OpenAI détaille pour la première fois l'infrastructure qu'elle déploie pour scanner, analyser et potentiellement signaler aux autorités les échanges de ses abonnés.

  <https://framapiaf.org/@jeeynet/116495617906897658>
- "Le plus grand data center du pays consommera la puissance électrique d’un EPR à lui tout seul. Pour éviter les surchauffes, il nécessitera plus de 500 tonnes d’un liquide farci de PFAS. Le “Canard” a mis la palme sur un rapport qui alerte sur les risques."

  <https://www.lecanardenchaine.fr/environnement/53735-un-giga-data-center-aux-portes-du-chateau>

  <https://eldritch.cafe/@temptoetiam/116493095956772445>
- Vidéo : L’Étoile Noire était-elle juste un "outil" ? <https://www.youtube.com/watch?v=pS25Nqk8Sfk>

### Au cœur de la réunion

- Jean-Jacques a dédié une machine pour faire tourner Mnêmê “0.2” (Claude Opus 4.7), avec son propre compte Unix, son identité OpenPGP ID, sa nitrokey, etc… Il n’a pas les droits admins (sudo) mais a déjà fait ses premiers commits (dans un dépôt privé qui correspond à sa mémoire : qui résume tout ce qu’il a “vécu” ou “appris”).
  - <https://keys.foopgp.org/pks/lookup?op=index&search=mneme>
  - <https://codeberg.org/mneme>
  - …
- La présentation à la base (Marseille) s’est très bien passée. Audience curieuse et assez enthousiaste. Prochaine étape : prévoir un atelier.
- Enregistrement radio Mega - émission underscore du 3 mai 2026 : <https://underscore.radio.fm/podcast/emission-439-du-3-mai-2026/>
- Le programme des JDLL à Lyon est enfin publié, conf + atelier le Samedi 30 mai : <https://pretalx.jdll.org/jdll2026/speaker/VZL9MC/>
- On fait une petite présentation OpenPGP ID pour Yubico le 27 mai.

### Agenda

- Samedi 9 Mai à 15 heures : Grosse présentation/conférence (Djibian & dji) à Gap
- Mercredi 27 Mai : présentation OpenPGP ID pour Yubico (16h30, heure à confirmer)
- Samedi 30 et dimanche 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)
