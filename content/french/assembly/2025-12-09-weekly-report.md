---
title: "2025 S50 Rapport Hebdomadaire"
lang: fr
date: 2025-12-09T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly) .*

---

***Présents :*** *Jean-Jacques B, Laurent C, François R, piseb, Didier L..*

### Ordre du jour prochaine visio mardi 16 décembre 2025 à 21h sur <https://cloud.foopgp.org/call/yfomgu8q> 

*Note : Si problème avec la visio sur notre cloud.foopgp.org, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) .*

- Debriefing Salon OSX Paris.
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 9 décembre)

- Avancement travaux.
- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

Pour le mois de novembre 2025, **stingynalty = 1.08848650703240391871**

Pour le mois de décembre 2025, **stingynalty = 1.09392893956756593830**

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Et donc pour décembre, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** :

| cotisation initiale en euros | quantité de jetons en decidjis |
|------------------------------|--------------------------------|
| 1.00 €                       | 9.14136 dɈ                     |
| 1.14 €                       | 10.00000 dɈ                    |
| 2.00 €                       | 14.48871 dɈ                    |
| 3.56 €                       | 20.00000 dɈ                    |
| 5.00 €                       | 23.63007 dɈ                    |
| 8.73 €                       | 30.00000 dɈ                    |
| 10.00 €                      | 31.62391 dɈ                    |
| 19.76 €                      | 40.00000 dɈ                    |
| 20.00 €                      | 40.15176 dɈ                    |
| 43.32 €                      | 50.00000 dɈ                    |
| 50.00 €                      | 51.85369 dɈ                    |
| 93.59 €                      | 60.00000 dɈ                    |
| 100.00 €                     | 60.86511 dɈ                    |
| 200.00 €                     | 69.94103 dɈ                    |
| 200.91 €                     | 70.00000 dɈ                    |
| 429.97 €                     | 80.00000 dɈ                    |
| 500.00 €                     | 81.98582 dɈ                    |
| 918.92 €                     | 90.00000 dɈ                    |
| 1000.00 €                    | 91.11401 dɈ                    |
| 1962.61 €                    | 100.00000 dɈ                   |
| 2000.00 €                    | 100.24879 dɈ                   |
| 4190.41 €                    | 110.00000 dɈ                   |

Rappel, si vous avez déjà cotisé, la formule pour calculer la quantité de nouvelles valeurs en Ɉ est : **jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**

Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) .

#### Chiffres de l’association

*Au 31 juin 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

- Total members: 33 - Total certified members: 13 / 33
- Total contribs: 60 - Total certified contribs: 27 / 60
- Total contribution: 51408.14 € - Total certified contribution: 50142.51 € / 51408.14 €
- Total created: 194.337979 Ɉ - Total certified created: 114.195817 Ɉ / 194.337979 Ɉ

### Revue de presse

- Econocom crée un site marchand de matériel reconditionné pour les pros : <https://www.distributique.com/actualites/lire-econocom-cree-un-site-marchand-de-materiels-reconditionnes-pour-les-pros-36796.html>
- Proxmox veut séduire les utilisateurs de VMware suite à l'énorme augmentation des prix : <https://www.distributique.com/actualites/lire-proxmox-revoit-sa-console-pour-seduire-les-clients-vmware-36798.html>
- Micron stoppe sa marque Corsair : <https://www.distributique.com/actualites/lire-micron-stoppe-sa-marque-crucial-pour-se-concentrer-sur-le-marche-entreprise-36794.html>
- Mistral revoit sa stratégie en misant sur l'Open Source : <https://www.distributique.com/actualites/lire-mistral-revoit-sa-strategie-en-misant-sur-l-open-source-36786.html>
- C'est la fin pour les applets Java  
  <https://inside.java/2025/12/03/applet-removal/>
- La France va bientôt accueillir le deuxième supercalculateur exaflopique en Europe, le cinquième au monde. Baptisé Alice Recoque d’après la pionnière française de l’informatique, il devrait soutenir la recherche scientifique et l’IA pour assurer la souveraineté européenne.

  <https://www.futura-sciences.com/tech/actualites/intelligence-artificielle-superordinateur-alice-recoque-france-mise-si-gros-cette-machine-hors-normes-128007/>

  <https://mastodon.social/@Le_M_Poireau/115628836481183233>
- Le gestionnaire de mots de passe open-source et multiplateforme KeePassXC (version 2.7.9) vient de recevoir sa certification CSPN (Certification de sécurité de premier niveau) délivrée par l'ANSSI <https://cyber.gouv.fr/produits-certifies/keepassxc-version-279>

  <https://bsd.network/@lcheylus/115610400162939909>

  Par ailleurs, s'ils ont annoncé récemment vouloir utiliser de l'IA, toutes les lignes de codes seront revues par une personne humaine, et aucune fonctionnalité IA sera ajoutée dans le logiciel. Nous voila rassurés.

  <https://keepassxc.org/blog/2025-11-09-about-keepassxcs-code-quality-control/>

  <https://agora.l0g.eu/objects/e5f31826-e714-4219-a8d1-61c1bca950b5>
- Nous y sommes : Au Canada, la reconnaissance faciale Axon (mise en pause en 2019 face aux levées de bouclier) est désormais croisée avec des bodycams de la police pour identifier des gens à la volée. <https://www.eff.org/deeplinks/2025/12/axon-tests-face-recognition-body-worn-cameras>

  <https://mamot.fr/@felix/115689075644170817>
- <https://9to5google.com/2025/03/26/google-android-aosp-developement-private/>

  <https://manganiello.eu/objects/36488b21-029c-44d4-a9b5-d65167a8f718>
- C’est qui qui a rererererererererererererere fuité ? C’est France Travail bien sûr !

  <https://bonjourlafuite.eu.org/#France%20Travail-2025-12-01>

  <https://firefish.imirhil.fr/notes/afqyjomg80at00ou>

### Au cœur de la réunion

- Encore merci aux bêta-testeurs : encore des petits bugs par çi par là, pas grand chose de bien de méchant.
- Un grand merci également à Sun Valley System pour la remise en état et la fourniture de laptop pour les démos.
- Nécessité pour djibian de mettre en avant (et configurer) Thunderbird pour ne pas forcer les utilisateurs gmail à créer un autre email (aller chercher les utilisateurs où ils sont).
- Gros travail sur la finalisation [des bashlibs (environ 3 releases par semaine)](https://codeberg.org/foopgp/bash-libs/commits/branch/main) et [du logiciel d'embarquement (onboarding)](https://codeberg.org/djibian/onboarding/commits/branch/feature/idopgp) - On semble tenir les jalons (release djibian sous le sapin de Noël).
- JJ monte à L'OSX Paris les 10 et 11. Foopgp n'a pas (encore) de stand ni conf cette année, mais on espère pouvoir faire quelques démos djibian en marge (dans les stand des autres ^^).
- L'appel à cotisation et l'augmentation du nombre de membres (ou la vente en euros) commencent à monter en priorité : les comptes sont dans l'orange foncé (voir le rouge clair).
- On attend toujours des réponses que l'on espère positives pour AlpoSS à Échirolles en février.
- Découverte du Sardex, une monnaie alternative qui semble assez proche du WIR, assez bien établie en Sardaigne, et se propageant en Corse:
  - <https://www.corsenetinfos.corsica/Economie-Une-monnaie-locale-corse-sans-billets-a-l-exemple-de-la-Sardaigne_a28208.html>
  - <https://view.genially.com/67cf25d4f39e52d1c217774a/presentation-les-monnaies-locales>
  - <https://philipsk.substack.com/p/thinking-money-from-sardex-to-the>
- Digressions politiques et géopolitiques:
  - imaginons par exemple flécher les 200 milliards d'avoirs oligarchiques russes bloqués en Europe directement aux européens (plutôt qu'indirectement en passant par exemple par les ministères des armées) -> 500 par citoyens.
  - Drones, robots, F35 belges, etc.

#### Actions en cours

- Développement du "on-boarding" (création de compte avec identité numérique OpenPGP, au premier démarrage de l'ordinateur). Interface graphique multiplateforme (réutilisable pour la future application Android).
- Refactoring de pgpid en découpant la procédure dans de nouvelles bashlibs, utilisées notamment par le onboarding 
- Industrialisation des informations à poser dans les carnets d’échanges. (Stickers à coller).

#### Actions à mener (TODO list)

- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- numelib  à contacter pour infra + services mail.
- Appel à cotisation.

#### (grosses) Actions terminées

- Livre blanc : <https://foopgp.org/fr/about/white-book/>

###### AMF

L’AMF a répondu à la question : *quelles  sont les obligations réglementaires auxquelles nous pourrons être  assujettis si nous commençons à utiliser nos jetons de pouvoir comme  monnaie d’échange ?* 

- *Nous vous invitons à contacter  un conseiller juridique qui pourra vous éclairer sur la réglementation  applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
- *Vous  trouverez par ailleurs des informations concernant la réglementation  applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan) .*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l’UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC) . Tout en résumant certaines des nombreuses “exemptions qui permettent  aux émetteurs d’alléger, voire de supprimer le formalisme” de l’article  4, titre II.

### Agenda

- 10 & 11 décembre 2025 : <https://www.opensource-experience.com/> à Paris (notre proposition conf/stand a été refusé).
- mardi 17 février 2026 : <https://alposs.fr/> à Échirolles.
- [… agenda du libre](https://www.agendadulibre.org)

---
