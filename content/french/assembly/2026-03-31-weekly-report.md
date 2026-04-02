---
title: "2026 S14 Rapport Hebdomadaire"
lang: fr
date: 2026-03-31T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R, Laurent C, Goyave.*

### Ordre du jour prochaine visio mardi 7 avril 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 31 mars)

- Préparation AG
- Check-list atelier
- Revue de presse.
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

**Graphique en 3 dimensions** -> <https://www.math3d.org/xzuclzIbuZ>

Pour avril, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) , **j = log₂(d+1) / *stingynalty*** :

```bash
$ bl-foopgp --verbose giftarray --with-header --max 11
bl-foopgp: Info: stingynalty=1.11597215534802776295
|          EUR |          DJI |
|--------------|--------------|
|       1.00 € |   89.6079 cɈ |
|       1.17 € |  100.0000 cɈ |
|       2.00 € |  142.0252 cɈ |
|       3.70 € |  200.0000 cɈ |
|       5.00 € |  231.6332 cɈ |
|       9.19 € |  300.0000 cɈ |
|      10.00 € |  309.9926 cɈ |
|      20.00 € |  393.5866 cɈ |
|      21.07 € |  400.0000 cɈ |
|      46.84 € |  500.0000 cɈ |
|      50.00 € |  508.2945 cɈ |
|     100.00 € |  596.6288 cɈ |
|     102.67 € |  600.0000 cɈ |
|     200.00 € |  685.5952 cɈ |
|     223.70 € |  700.0000 cɈ |
|     486.00 € |  800.0000 cɈ |
|     500.00 € |  803.6640 cɈ |
|    1000.00 € |  893.1429 cɈ |
|    1054.53 € |  900.0000 cɈ |
|    2000.00 € |  982.6862 cɈ |
|    2286.77 € | 1000.0000 cɈ |
|    4957.52 € | 1100.0000 cɈ |
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

- L’Etat Français se tourne résolument vers le cloud : <https://www.linformaticien.com/magazine/cloud/64673-l-etat-se-tourne-resolument-vers-le-cloud.html>
- Euro-Office, nouvelle alternative à Micro$oft Office : <https://www.linformaticien.com/magazine/biz-it/64659-euro-office-cette-nouvelle-alternative-a-microsoft-office-2.html>
- Le portail Europa de la Commission Européenne cible d’une cyberattaque : <https://www.linformaticien.com/magazine/cybersecurite/64669-le-portail-europa-de-la-commission-europeenne-cible-d-une-cyberattaque.html>
- The Supreme Court just sent a clear message: ISPs are NOT copyright police. That’s a win for internet access, online speech, and creativity. <https://www.eff.org/deeplinks/2026/03/supreme-court-agrees-eff-isps-dont-have-be-copyright-enforcers>
  <https://mastodon.social/@eff/116297363793810591>
- Mistral AI lève 830 M$ de dette pour acheter des GPU Nvidia : <https://www.linformaticien.com/magazine/biz-it/64662-mistral-ai-leve-830-m-de-dette.html>
- Petite vidéo qui explique la supériorité des systèmes GNU/Linux sur Windows : <https://www.youtube.com/watch?v=HIQlut8AeuI>
- Meta et Google condamnés en tant que “plateforme addictives” par la cour civile de … Los Angeles   : <https://www.linformaticien.com/magazine/tendances/951-reseaux-sociaux/64650-plateformes-addictives-meta-et-google-condamnes.html>  
  Instagram et YouTube, jugés responsables d'avoir alimenté la dépression d'une adolescente américaine, condamnés à une amende d'au moins trois millions de dollars 
  <https://www.franceinfo.fr/internet/reseaux-sociaux/instagram-et-youtube-juges-responsables-d-avoir-alimente-la-depression-d-une-adolescente-americaine-condamnes-a-une-amende-d-au-moins-trois-millions-de-dollars_7893986.html>
  <https://mamot.fr/@Steve12L/116291276145376243>
  <https://www.lemonde.fr/pixels/article/2026/03/25/instagram-et-youtube-juges-responsables-de-la-depression-d-une-adolescente-condamnes-a-verser-au-moins-3-millions-de-dollars-a-la-plaignante_6674264_4408996.html>
- Retirée en 2 heures : l'incroyable échec de la dernière mise à jour #Windows 11. Alors que #Mictosoft tente de redorer son image en matière de fiabilité, le correctif récent pour Windows 11 sème déjà le trouble chez les utilisateurs. En cause : un bug critique ayant poussé l’entreprise à faire machine arrière…
  <https://www.clubic.com/actualite-606835-retiree-en-2-heures-l-incroyable-echec-de-la-derniere-mise-a-jour-windows-11.html>
  Pourquoi continuer à utiliser les produits privateurs de Microsoft alors qu'il existe des équivalents libres?
  <https://framapiaf.org/@TeddyTheBest/116317620361130425>
- Fivetran fait don de SQLMesh à la Linux Fondation : <https://www.linformaticien.com/magazine/logiciel/64647-fivetran-fait-don-de-sqlmesh-a-la-linux-foundation.html>
- Allemagne : le format ODF obligatoire dans l’administration <https://www.zdnet.fr/blogs/l-esprit-libre/allemagne-le-format-odf-obligatoire-dans-ladministration-492348.htm> Un succès pour les formats ouverts et la Document Foundation (LibreOffice)
  <https://mamot.fr/@tnoisette/116268971064690005>
  Berlin impose le format ODF à toute son administration. Le format propriétaire de Microsoft disparaît de la liste officielle. Ce n'est pas un détail technique : c'est une décision politique qui pourrait faire basculer toute l'Europe.
  <https://www.clubic.com/actualite-605653-l-allemagne-impose-l-odf-et-exclut-le-format-microsoft-la-souverainete-numerique-commence-par-vos-fichiers.html>
  <https://mastodon.social/@Ash_Crow/116277784105483245>
- La licence CoLibre était depuis 2008 une licence professionnelle préparant aux métiers de la communication et à la conduite de projet, en utilisant des logiciels libres. 
  Cette licence est non reconduite.
  Le communiqué de l'équipe <https://valise.april.org/index.php/s/Ekme7k7K6cjTJW3>
  « Nous ne pensons pas que la décision de réaccréditer la licence soit réversible. Toutefois nous pensons qu’il est possible de disséminer cette belle expérience »
  Gros soutien à l'équipe @equipe_colibre
  <https://pouet.couchet.org/@frederic/116260837185622865>
  Souhaitons que la # fermeture annoncée de la licence pro #CoLibre pour la rentrée 2027-2028 soit une opportunité pour disséminer 18 ans d'expérience de la formation à la #communication avec des logiciels libres et éthiques. Le communiqué de l'équipe pédagogique : <https://kdrive.infomaniak.com/app/share/2316166/7aeda2fd-3f6e-4910-a3ae-d9f994310b9c> #lyon #université 
  <https://mastodon.social/@equipe_colibre/116256384423436722>

### Au cœur de la réunion

- La présentation faite lors du dernier atelier ([sur la page de l’évènement](https://foopgp.org/fr/event/2026-02-28-atelier-djiian/)) :  <https://foopgp.org/documents/fr/20260330-presentation-djibian.pdf>
- L’estimation de la valeur future du dji (sous condition d’atteindre en nombre d’adhérent un échantillon significatif d’acteur économique) a été recalculé : 1 Ɉ > 2369.31 €
- La raison principale de la disparition de Sebastien Picardeau concerne notre problème de trésorerie !
- Et justement, **la cotisation en ligne est enfin possible** : 
  - Avec le graphique interactif de calcul 1ère cotisation en euros (€) ↔ gain en dji (Ɉ) : <https://api.foopgp.org/onboarding/contribution>
  - Sans le graphique mais avec la possibilité d’indiquer un parrain, ce qui vous permet par exemple d’offrir des djis pour vos proches tout en recevant une commission : <https://donate.stripe.com/fZedSWfT74RP0sE288>
- Rappel : pas à jour de ses cotisations ⇒ pas de droit de vote à l’AG (+ pas de dividende universel, mais cette fonctionnalité n’est hélas toujours pas implémenté. Faute de temps, ou de moyens… alors cotisez, c’est pour vous que nous travaillons ! )
- Découverte de [KDE connect](https://kdeconnect.kde.org/) et de [scrcpy](https://github.com/Genymobile/scrcpy) en remplacement de “Micro$oft Phone Link” ou “Mobile Connecté” ou “Your phone”.
- François N’OUBLIE PAS D’ORGANISER UN PODCAST RADIO sur foopgp + djibian :-).
- Préparation de notre prochaine AG.
  - Il faudra renouveler la quasi totalité du CA
  - Rappeler qui n’est pas à jour de ses cotisations
  - Rappel statuts <https://foopgp.org/fr/about/status/>

#### Actions en cours

- Gestion communauté + Communication (y’en aura jamais assez)(merci Isore et Goyave)
- Prospection / gestion commerciale (3 en cours).
- Frontend : gestion des emails ou avatars dans nos identités numériques (ajout, suppression)
- Backend : Fonctionnalités pour consulter ses comptes en djis (Ɉ), faire des paiement en (Ɉ) (grâce à OpenPGP + yubikeys).
- Backend : generation de svg avec données OpenPGP ID à intégrer dans vos cartes de visite
- Collecte d’ordinateurs dotés de Windows obsolètes, pour y installer Djibian (le système qui nous respecte !).
- Clôture comptable 2025.

#### (grosses) Actions terminées

Cf. “Au cœur de la réunion”.

###### AMF

- Nous sommes toujours dans le cadre des “exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme” de [l’article 4, titre II](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) .

### Agenda

- Dimanche 19 avril à 16 heures : AG foopgp.
- Samedi 25 avril à Gap : Débat + démonstration : monnaie libre, djibian, dji.
- 30 et 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)
