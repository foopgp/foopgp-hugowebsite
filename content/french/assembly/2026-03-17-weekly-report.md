---
title: "2026 S12 Rapport Hebdomadaire"
lang: fr
date: 2026-03-17T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, Sébastien P, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 24 mars 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Preparation de notre AG, le dimanche 19 avril.
- Check-list atelier du 28 mars.
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 17 mars)

- Revue de presse.
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Pour mars, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** :

```
$ bl-foopgp --verbose giftarray --with-header --max 11
bl-foopgp: Info: stingynalty=1.11042005507266444075
|          EUR |          DJI |
|--------------|--------------|
|       1.00 € |   90.0560 cɈ |
|       1.16 € |  100.0000 cɈ |
|       2.00 € |  142.7353 cɈ |
|       3.67 € |  200.0000 cɈ |
|       5.00 € |  232.7914 cɈ |
|       9.07 € |  300.0000 cɈ |
|      10.00 € |  311.5426 cɈ |
|      20.00 € |  395.5545 cɈ |
|      20.74 € |  400.0000 cɈ |
|      45.92 € |  500.0000 cɈ |
|      50.00 € |  510.8359 cɈ |
|     100.00 € |  599.6119 cɈ |
|     100.31 € |  600.0000 cɈ |
|     200.00 € |  689.0231 cɈ |
|     217.72 € |  700.0000 cɈ |
|     471.24 € |  800.0000 cɈ |
|     500.00 € |  807.6823 cɈ |
|    1000.00 € |  897.6086 cɈ |
|    1018.60 € |  900.0000 cɈ |
|    2000.00 € |  987.5997 cɈ |
|    2200.40 € | 1000.0000 cɈ |
|    4752.00 € | 1100.0000 cɈ |
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

- Total members: 40 - Total certified members: 16 / 40
- Total contribs: 70 - Total certified contribs: 33 / 70
- Total contribution: 59503.14 € - Total certified contribution: 50812.51 € / 59503.14 €
- Total created: 236.044486 Ɉ - Total certified created: 129.063714 Ɉ / 236.044486 Ɉ

### Revue de presse

- Ces initiatives pour se passer des Big Tech américaines : <https://www.lemonde.fr/pixels/article/2026/03/14/j-ai-decide-de-faire-mes-adieux-a-gmail-ces-initiatives-pour-se-passer-des-big-tech-americaines_6671142_4408996.html>
- ChatGPT Edu : les métadonnées de projets d’universitaires visibles par leurs collègues

  <https://next.ink/228595/chatgpt-edu-les-metadonnees-de-projets-duniversitaires-visibles-par-leurs-collegues/>
- <https://next.ink/227655/des-espions-russes-et-cybercriminels-chinois-ont-recupere-un-logiciel-espion-lie-a-la-nsa/>

  <https://framapiaf.org/@sebsauvage/116177421025229519>

  <https://techcrunch.com/2026/03/03/a-suite-of-government-hacking-tools-targeting-iphones-is-now-being-used-by-cybercriminals/>

  <https://m.g3l.org/@MedBel/116172470999091339>
- Chrome cut down on their ad-blocker compatibility (so now there's only uBlock Origin Lite for Chrome) but Firefox is still fully compatible.

  <https://www.404media.co/cbp-tapped-into-the-online-advertising-ecosystem-to-track-peoples-movements/>

  (archived link: <https://archive.ph/jcYw6>)

  <https://hachyderm.io/@reillypascal/116167231592548516>
- 430 chercheurs en sécurité informatique de 32 pays ont publié une lettre ouverte réclamant un moratoire sur les systèmes de vérification d'âge en ligne. Parmi eux, des chercheurs français d'Inria, de l'École polytechnique et de Télécom Paris.

  <https://www.clubic.com/actualite-603631-dangereux-et-socialement-inacceptable-des-experts-s-opposent-au-deploiement-precipite-des-controles-d-age.html>

  Je ne sais pas ce qui m’atterre le plus : le projet de contrôle, ou l'imbécillité des commentaires qui n'ont rien compris à base de "yaka couper la 4g aux ados!" et "céla faute aux parents" 

  <https://mamot.fr/@matiu_bidule/116201094949907850>  
  “Governments should halt plans to roll out age checks on online services until privacy and security concerns are addressed, hundreds of academics said today” 

  <https://alecmuffett.com/article/147820>

  <https://bsky.brid.gy/r/https://bsky.app/profile/did:plc:pqu2e7tcsysxrlkarhfm3z5u/post/3mg5q4bd3it2x>
- Hackers Expose The Massive Surveillance Stack Hiding Inside Your “Age Verification” Check <https://www.techdirt.com/2026/02/25/hackers-expose-the-massive-surveillance-stack-hiding-inside-your-age-verification-check/>

  <https://mastodon.scot/@kim_harding/116148905370418618>
- Swiss e-voting pilot can't count 2,048 ballots after USB keys fail to decrypt them

  <https://www.theregister.com/2026/03/11/swiss_evote_usb_snafu/>

  <https://mamot.fr/@Khrys/116212460334175416>
- De manière assez convaincante bien que sur un échantillon restreint (5 articles de conférence), une étude récente montre que le fait de fournir le code source avec un #dockerfile pour en obtenir une image Docker échoue à garantir une reproductibilité des résultats en quelques mois. En chargeant  les dernières versions de paquets issus de gestionnaires qui sont en soi non reproductibles, cette "recette" ne peut construire que des images qui varient assez vite avec le temps

  <https://dl.acm.org/doi/10.1145/3736731.3746146>

  <https://mastodon.social/@SO_UnivRennes/116099261330273727>
- A quick reminder that you really need to have your fortinet firewalls behind a firewall 

  <https://thehackernews.com/2026/03/fortigate-devices-exploited-to-breach.html?m=1>

  <https://infosec.exchange/@jerry/116207206899860403>
- Nouveau label “France Cybersecurity” : <https://www.linformaticien.com/magazine/cybersecurite/64604-le-label-france-cybersecurity-distingue-91-solutions-de-confiance.html>
- AntemetA développe un nouveau partenariat avec Cohesity pour une souveraineté numérique dans le cloud 100 % française : <https://www.linformaticien.com/937-stockage/64594-antemeta-developpe-un-nouveau-service-avec-cohesity.html>
- Souveraineté numérique : l’Europe doit passer de l’intension à l’action : <https://www.linformaticien.com/magazine/info-partenaire/64585-tribune-souverainete-numerique-l-europe-doit-passer-de-l-intention-a-la-maitrise-operationnelle.html>
- Oodrive devient *“société à mission”* : <https://www.linformaticien.com/magazine/cybersecurite/64600-oodrive-devient-societe-a-mission.html>
- [Les agences portugaises et néerlandaises mettent en garde contre une campagne de cyberattaques menée par un État, visant à infiltrer les plateformes WhatsApp et Signal ](https://fr.euronews.com/2026/03/12/des-pirates-informatiques-lies-a-la-russie-ciblent-les-applications-de-messagerie-de-respo)
- <https://www.linformaticien.com/magazine/cybersecurite/64578-signal-et-whatsapp-dans-le-viseur-de-pirates-russes.html>
- Plan de licenciement massif à venir chez Meta : <https://www.linformaticien.com/magazine/biz-it/64597-licenciements-massifs-chez-meta.html>
- Collaboration franco-allemande dans le quantique : <https://www.linformaticien.com/magazine/technologie/64599-collaboration-franco-allemande-dans-le-quantique.html>
- DPO et délégation de pouvoir, deux rôles qui ne s'annulent pas : <https://www.clubic.com/actualite-604765-un-dirigeant-licencie-apres-six-mois-de-piratage-non-detecte-sur-son-site-e-commerce-francais-se-bat-en-justice.html>
- <https://next.ink/brief_article/meta-met-fin-aux-messages-chiffres-de-bout-en-bout-sur-instagram/>
- Lettre ouverte pour garder Android (un peu) ouvert : <https://keepandroidopen.org/fr/>
- un poste de travail sous Linux, une circulaire prône l’open source : <https://www.zdnet.fr/blogs/l-esprit-libre/ladministration-etudie-un-poste-de-travail-sous-linux-une-circulaire-prone-lopen-source-quand-cest-pertinent-491866.htm>

### Au cœur de la réunion

- Préparation de notre AG le 19 avril 2026.
- Sun Valley Systems est officiellement distributeur Murena 😃 .
  - Autres alternatives à Android : 
  - <https://android-mt.ouest-france.fr/news/alternatives-a-android-quels-autres-systemes-dexploitation-pour-smartphone/164834/>
  - <https://fr.wikipedia.org/wiki/Liste_de_distributions_alternatives_Android>
  - <https://quelle-alternative.fr/logiciel/android/>
  - <https://lineageos.org/>
- Rendez-vous le 28 mars à Tallard <https://foopgp.org/fr/event/2026-02-28-atelier-djiian/>
  ![Flyer pour l'atelier djibian du 28 mars à Tallard](/images/events/2026/20260328_djibian_atelier.png)
  (Merci à Isore pour le flyer ^^)

- Nouvelles bashlibs en préprod : quelques bugfixs et 2 nouvelles features
  - bl-djibian adduser now support new option *--from-certificate*

    ```
    -f, --from-certificate FPR       Get user data from OpenPGP certificate identified by given FINGERPRINT.
    ```
  - nouvelle fonction pour bl-pgpid (permet de factoriser du code et bien pratique pour trouver quelqu’un dans les annuaires/serveurs de clés et synchroniser les certificats locaux) :

    ```
    $ bl-pgpid get --help
    Usage: bl-pgpid get [OPTIONS]... NAME|U4|U5|EMAIL
    
    Output fingerprints, emails and OpenPGP universal IDentifier of certificates matching NAME|U4|U5|EMAIL, refreshing local keyring from keyservers.
    
    OPTIONS:
      -F, --fingerprint           Output only fingerprints.
      -E, --email                 Output only emails.
      -s, --secret                Search through local secret keys instead of public certificate.
      -m, --errexit-g=1           Return an error if there is more than one (1) entry. - You may replace '1' by an other number.
      -M, --max-from-keyserv MAX  Set maximum matching certificates to receive from keyservers. Par défaut : 100
      -T, --ownertrust THRESHOLD  Only output fingerprint with ownertrust greater or equal to THRESHOLD. (Not implemented)
      -H, --homedir GNUPGHOME     Répertoire personnel de GnuPG (par défaut : ~/.gnupg). Variable d’environnement : $GNUPGHOME
      -K, --keyservers KEYSERVERS If non-empty, search and refresh certificate from this keyservers. Par défaut : 
                                                              hkps://keys.foopgp.org
                                                                 hkps://pgp.id:11371
    ```

#### Actions à mener (TODO list)

- Urgent: Appel à cotisation.
- Génération des relevés de compte à coller ou glisser dans nos carnets d’échanges.
- Inscription aux JDLL les 30 et 31 mai à Lyon.

#### Actions en cours

- Gestion communauté + Communication (y’en aura jamais assez)(merci Isore)
- Prospection / gestion commerciale (4 en cours).
- Refonte processus cotisations via stripe (CB/mastercard/visa) pour appel à cotisation. 
- Frontend: gestion des emails ou avatars dans nos identités numériques (ajout, suppression)
- Backend: Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend: generation de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- Clôture comptable 2025.

#### (grosses) Actions terminées

Cf. “Au cœur de la réunion”.

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- Samedi 28 mars de 11h à 17h30 : 2nd atelier grand public autour de Gap (prendre en main djibian GNU/Linux + yubikeys OpenPGP) <https://foopgp.org/fr/event/2026-02-28-atelier-djiian/>
- Dimanche 19 avril : AG foopgp.
- 30 et 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)
