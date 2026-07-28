---
title: "2026 S23 Rapport Hebdomadaire"
lang: fr
date: 2026-06-02T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

> 📣 **Juin 2026 : Notre campagne de cotisation est lancée — [soutenez-nous dès maintenant](https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2)**

---

***Présents :*** *Jean-Jacques B, François R, Laurent C, Aveline.*

### Ordre du jour prochaine visio mardi 9 juin 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 2 juin)

- Retour sur la salon de Lyon
- Lancement de la campagne de financement de juin → <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2>
- Revue de presse.
- Point sur les participations et démonstrations publiques.
- Communication.
- Actions réalisés, en cours, à prévoir.

### Stingynalty

Pour juin : ***stingynalty =* 1.12715977620539174126**

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

*Au 9 mai 2026, calculés avec nos nouveaux outils* `bl-foopgp` *(*`inputs` *pour la vue d’ensemble,* `contribs --resume` *pour le sous-ensemble certifié) appliqués à l’instance* `uetree-djis-by-email/`*.*

- Total contributors : 46 - Total certified members : 13 / 46
- Total contribs : 86 - Total certified contribs : 36 / 86
- Total contribution : 61 494,10 € - Total certified contribution : 42 485,47 € / 61 494,10 €
- Total certified created : 99,733737 Ɉ — *seuls  les adhérents dont l’identité OpenPGP est certifiée par la Toile de  Confiance voient leurs djis effectivement créés et utilisables.*

*Aux adhérents pas encore certifiés : venez nous rencontrer lors d’un de nos prochains ateliers ([cf. agenda ci-dessous](https://foopgp.org/fr/assembly/2026-05-26-weekly-report/#agenda) ) pour finaliser la certification de votre identité OpenPGP, débloquer  la création de vos djis et pouvoir les échanger au sein de  l’association.*

### Au cœur de la réunion

- Production de la semaine : 
  - Avancement du backend : 
    - Spécification en cours de nos structures de données, registre et workflows :  
      <https://foopgp.org/documents/en/>
    - outillages liés à tous les points ci-dessus
    - La nouvelles lignes de code de la prochaine version des bashlibs seront en grande majorité produites par Mnêmê, revue et corrigée par JJB.
- Revue de notre nouvelle page d’inscription (qui redirige vers la campagne de juin) :  <https://foopgp.org/djis-emission>
- Lancement de la première campagne de financement HelloAsso : <https://www.helloasso.com/associations/friends-of-openpgp-foopgp/collectes/juin-2>
- Participation aux JDLL à Lyon : public assez nombreux, intéressé et averti.
  - replay de la conférence djibian : <https://videos-libr.es/w/gYu1uMduKy6B2PR5fHTEtr>
  - une dizaine de personne pour l’atelier : j’ai du m’adapter : une heure seulement, et avec des ordinateurs sans webcam ni imprimante. Heureusement les participants étaient là encore très avertis et intéressés.
  - Plein de contacts et un nouvel adhérent.
  - Autres replays : <https://videos-libr.es/search?tagsOneOf=JdLL2026>

### Agenda

- Vendredi 5 juin à Tallard : Atelier Djibian + OpenPGP ID : <https://foopgp.org/fr/event/2026-06-05-atelier-djiian/>
- 17 juin : Conférences + Ateliers près de Vannes (Bretagne) : <https://foopgp.org/fr/event/2026-06-17-atelier-djiian/>
- Samedi 27 Juin : présentation + atelier à la Mairie de Pelleautier : <https://foopgp.org/fr/event/2026-06-27-atelier-djiian/>
- [… agenda du libre](https://www.agendadulibre.org)

### Revue de presse

- Epson est en train de se prendre un procès pour “Obsolescence programmée” : <https://www.frandroid.com/marques/epson/3122345_une-premiere-en-france-et-dans-le-monde-espon-juge-pour-obsolescence-programme-sur-ses-imprimantes>
- Microsoft :
  - arrête le support d’Office 2016 et 2019 pour imposer l’abonnement : <https://www.lesnumeriques.com/appli-logiciel/microsoft-tire-le-rideau-sur-office-2016-et-2019-des-millions-d-utilisateurs-face-au-mur-de-l-obsolescence-n244027.html>
  - et, sur certains système va carrément bloquer leur fonctionnement : <https://www.lesnumeriques.com/appli-logiciel/acheter-un-logiciel-n-a-plus-de-sens-microsoft-bloquera-office-2019-a-distance-le-13-juillet-n256813.html>
- Le carnet de santé de 34 millions de français aurait été piraté : <https://www.lesnumeriques.com/societe-numerique/fraiches-et-pretes-a-l-emploi-un-pirate-revendique-le-piratage-du-carnet-de-sante-de-34-millions-de-francais-une-fuite-potentiellement-historique-n256879.html>
- Les cordons USB-C ne sont pas aussi *“universels”* qu’il veulent le faire croire : <https://www.lesnumeriques.com/telephone-portable/adieu-le-cable-usb-c-on-revient-sur-la-face-cachee-de-cette-bonne-nouvelle-n243738.html>
- Le libre comme levier industriel en Europe 

  <https://www.zdnet.fr/blogs/l-esprit-libre/la-commission-europeenne-eleve-le-logiciel-libre-au-rang-de-levier-de-politique-industrielle-495895.htm>

  <https://mastodon.mim-libre.fr/@nschont/116669421725957862>

  "Argent public, code public" : le logiciel libre devient prioritaire, l'Europe veut en finir avec Microsoft dans ses administrations

  \> La Commission européenne élève le logiciel libre au rang d'instrument de politique industrielle, au même titre que les semi-conducteurs. Le CNLL salue l'ambition, mais pointe un budget qui frise l'anecdotique.

  <https://www.lesnumeriques.com/societe-numerique/argent-public-code-public-le-logiciel-libre-devient-prioritaire-l-europe-veut-en-finir-avec-microsoft-dans-ses-administrations-n256815.html>

  <https://mamot.fr/@FdC/116675764975225114>
- #UK #Visa Portal spilled thousands of applicants’ passports and selfies online — and hasn’t fixed the leak

  <https://techcrunch.com/2026/05/26/uk-visa-portal-spilled-thousands-of-applicants-passports-and-selfies-online-and-hasnt-fixed-the-leak/>

  <https://mastodon.thenewoil.org/@thenewoil/116653267380742405>
- Atol

  <https://bonjourlafuite.eu.org/#Atol-2026-05-22>
- L'IA n'a rien inventé. Elle a juste rendu les vieilles attaques accessibles à n'importe qui avec un abonnement et de mauvaises intentions. 150 Go exfiltrés du gouvernement mexicain par un opérateur solo. 

  <https://konstantintkachuk.com/writing/the-floor-doesnt-exist/>

  <https://mastodon.social/@camilleroux/116674737295726452>
- Nearly 2,000 WordPress websites were infected with malware that relies on Steam Community profile comments to hide command-and-control (C2) data.

  <https://www.bleepingcomputer.com/news/security/wordpress-malware-campaign-hides-payloads-in-steam-profiles/>
- Votre opérateur téléphonique et/ou votre opérateur de box internet vous colle une étiquette dans le dos pour permettre aux markéteux de vous traquer sans relâche.

  Ça s'appelle Utiq et c'est vraiment de la merde

  lire <https://next.ink/239468/utiq-lidentifiant-publicitaire-unifie-des-telcos-que-vous-allez-adorer-detester/> 

  Et comme les markéteux ont la même compréhension du mot "consentement" qu'un violeur, il semble qu'il y ait un moyen de se protéger un peu ici pour gérer vos éventuels "consentements" pas du tout éclairés : <https://consenthub.utiq.com/>

  <https://mamot.fr/@matiu_bidule/116673537484020922>

  Tiens je ne connaissais pas cette manière de faire de l'espionnage publicitaire

  <https://www.zdnet.fr/actualites/utiq-ce-tracker-pousse-par-les-operateurs-telecoms-qui-vous-piste-meme-en-navigation-privee-495855.htm#xtor=RSS-1>

  <https://consenthub.utiq.com/>

  <https://mastodon.mim-libre.fr/@nschont/116662922054184898>
- Wow. Bad guys exploiting Meta's account recovery AI to take over valuable accounts. Who knows how many accounts were lost.

  <https://thecybersecguru.com/news/instagram-meta-ai-vulnerability-account-recovery-exploit/>

  <https://masto.hackers.town/@mav/116675904590639329>

  This is absolutely nuts: hackers are hijacking high-profile Instagram accounts by simply asking Meta's AI chatbot to change the email on the account. Meta's AI does it, hacker gets password reset code, they're in. A staggering security issue

  <https://www.404media.co/hackers-simply-asked-meta-ai-to-give-them-access-to-high-profile-instagram-accounts-it-worked/>

  <https://infosec.exchange/@josephcox/116675938948881868>
- Le ministère des Armées va renouveler son contrat avec Microsoft

  <https://www.journaldunet.com/cybersecurite/1550633-le-ministere-des-armees-va-renouveler-son-contrat-avec-microsoft/>

  Malgré la volonté gouvernementale de gagner son indépendance numérique, le ministère des Armées va passer une nouvelle commande des solutions du géant américain dans un mois.

  <https://piaille.fr/@siltaer/116657666823570334>

  <https://piaille.fr/@brume/116656950456891708>
- Alors que pour d’autres '“La France doit reprendre la main de son destin numérique” : <https://www.lesnumeriques.com/societe-numerique/souverainete-numerique-pourquoi-la-france-doit-absolument-reprendre-en-main-son-destin-informatique-n251743.html>
- Un fil (en anglais) qui analyse un changement fait sur le dépôt de rsync\*: convertir les jeux de tests en python, via une IA. Spoiler: c'est catastrophique.

  \*: rsync est un petit utilitaire servant à synchroniser des fichiers (entre dossiers et/ou machines). C'est un outils dont la fiabilité est cruciale pour des millions de serveurs et services dans le monde.

  <https://neuromatch.social/@jonny/116657411750038515>

  <https://mamot.fr/@John_Livingston/116667894741348513>
- Je trouve intéressant de voir que l'union fait la force, aussi dans le cas de garder une alternative vivante dans le monde des services numériques. Porter plainte contre une migration demande certainement des efforts importants, mais dans ce cas ceci a porté ses fruits: la migration vers MSOffice a dû être interrompue, et ce sont les logiciels libres, basés en France, qui gardent leur place. Pour le moment ...

  <https://www.lesnumeriques.com/informatique/le-logiciel-libre-l-emporte-polytechnique-dit-non-a-microsoft-et-declenche-une-vague-de-rebellion-dans-les-universites-n243905.html>

  <https://social.epfl.ch/@ligasser/116678887320755265>


