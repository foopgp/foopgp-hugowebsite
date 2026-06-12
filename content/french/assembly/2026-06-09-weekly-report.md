---
title: "2026 S24 Rapport Hebdomadaire"
lang: fr
date: 2026-06-09T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R, Laurent C.*

***Excusé :*** *Didier Loyens*.

### Ordre du jour prochaine visio mardi 16 juin 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Note : JJ sera à Vannes, à l’issue d’une journée chargé avec un gros atelier.
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 9 juin)

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

- Atelier du 5 juin : 4 nouveaux adhérents bien motivés. Jean-Jacques était un peu surchargé par les sollicitations intéressés et intéressantes. 
  - Dom V
  - Laurent M
  - Odette T
  - Yves OM
- Nouvelle page présentation djibian  <https://foopgp.org/fr/solutions/djibian/>  
- Préparation Voyage Vannes (formulation à corriger dans le flyer ASAP)
- Production de la semaine : 
  - Nouvelle ISO : <https://iso.foopgp.org/djibian/latest/>
  - bash-libs → 0.3.9-1 :
    - bl_pgpid_email(): bugfix: forbid revoking last email
    - switch secondary keyserver hkps://pgp.id:11371 -> hkps://[keys.openpgp.org](http://keys.openpgp.org)
    - bugfix: unable to certify u4 begining with dash '-'
  - Nouvelles fonctionnalités dans djibian-onboarding : (1 bug à corriger ASAP)
![Carte d'identité OpenPGP affichée par Djibian Onboarding](/images/solutions/openpgp-id/Phil_ID_FR.png)
- A son magasin *“Sun Valley Systems”*, Laurent CEARD de Formaint’Info, avec l’aide de son stagiaire du moment a installé un serveur [Rustdesk](https://rustdesk.com/fr/). C’est un logiciel de prise de contrôle à distance équivalent à Any Desk ou Team Viewer  Open Source (donc multiplateforme) et auto-hébergé.

### Revue de presse

- La messagerie instantanée “sécurisée” des agents de l’Etat du nom de Tchap a été piratée :

  <https://kulturegeek.fr/news-353400/tchap-messagerie-agents-detat-ete-piratee>  
  <https://armees.com/tchap-messagerie-piratage/>  
  <https://www.tomsguide.fr/censee-etre-securisee-la-messagerie-detat-tchap-victime-dune-fuite-de-donnees/>  
  <https://www.it-connect.fr/cyberattaque-tchap-un-pirate-sest-introduit-sur-la-messagerie-chiffree-de-letat/>  
  <https://www.01net.com/actualites/tchap-messagerie-ultra-securisee-gouvernement-francais-piratee.html>  
  <https://www.lesnumeriques.com/societe-numerique/tchap-la-messagerie-chiffree-de-l-etat-francais-a-ete-piratee-73-000-agents-et-643-000-messages-exposes-n257220.html>  
  <https://www.lemondeinformatique.fr/actualites/lire-fuite-de-donnees-pour-tchap-la-messagerie-instantanee-de-l-etat-100385.html>

  <https://mamot.fr/@Steve12L/116715285724447045>

  <https://www.bleepingcomputer.com/news/security/french-govt-messaging-service-breached-in-account-hijacking-attack/>
- La Cnaf et Inria s'engagent pour le développement de Catala : un langage de programmation Open Source conçu pour transcrire le droit de manière fidèle et explicable.

  Objectif : consolider les SI du service public grâce au développement de FLOSS souverains.

  <https://www.caf.fr/professionnels/presse/publications/la-cnaf-et-inria-s-engagent-ensemble-pour-developper-catala-une-solution-souveraine-de-calcul-des>

  <https://mamot.fr/@bearstech/116716146902257823>

  <https://www.inria.fr/fr/cnaf-inria-convention-partenariat-catala-2026>

  <https://catala-lang.org/>

  <https://piaille.fr/@DMerigoux/116715266609605024>

  <https://acteurspublics.fr/articles/la-cnaf-fait-le-pari-de-l-open-source-pour-reprendre-la-main-sur-le-calcul-des-allocations/>
- Security researchers have accused Israeli company Bright Data of turning smart TVs into AI web scraping proxy nodes without their owners specific consent

  <https://blog.includesecurity.com/2026/06/the-smart-tv-in-your-livingroom-is-a-node-in-the-aiscraping-economy/>

  <https://mastodon.social/@campuscodi/116709027616189672>

  But if *I* hijack *their* devices it's a "felony."

  <https://blog.includesecurity.com/2026/06/the-smart-tv-in-your-livingroom-is-a-node-in-the-aiscraping-economy/>

  <https://kolektiva.social/@Hex/116706856726937559>
- Consolidation des télécoms : Orange, Bouygues Telecom et Free signent le démantèlement historique de SFR pour 20,35 milliards d'euros

  <https://www.zdnet.fr/actualites/consolidation-des-telecoms-orange-bouygues-telecom-et-free-signent-le-demantelement-historique-de-sfr-pour-2035-milliards-deuros-496315.htm>

  <https://mamot.fr/@Steve12L/116708145001527042>
- Production of DDR4 memory and motherboards is restarting amid unprecedented memory shortages — PC industry preparing for a world without DDR5

  <https://www.tomshardware.com/pc-components/ram/production-of-ddr4-memory-and-motherboards-is-restarting-amid-unprecedented-memory-shortages-pc-industry-preparing-for-a-world-without-ddr5>

  <https://mastodon.social/@Some_Emo_Chick/116692007081734427>
- 
- <https://www.usine-digitale.fr/reglementation/gdpr-rgpd/une-montee-en-puissance-inachevee-la-cour-des-comptes-salue-ladaptation-de-la-cnil-au-rgpd-mais-epingle-sa-gestion-des-plaintes.IP5TRZSCBJEQPHVBZ2NVDCHAIY.html>

  C’est bibi

  <https://firefish.imirhil.fr/notes/an8p7kylsgnh02pw>
- 
- Le code généré par IA n’a pas que des avantages : <https://www.lesnumeriques.com/intelligence-artificielle/ce-navigateur-open-source-ferme-ses-contributions-le-code-genere-par-ia-seme-trop-le-chaos-n257158.html>
- Les “Big Tech” contrôlent plus de 70 % du cloud Européen : <https://www.clubic.com/actualite-615775-paquet-souverainete.html>
- Vos données Linky peut-être bientôt chez Amazon : <https://www.frandroid.com/survoltes/energie/3126629_vos-donnees-linky-bientot-chez-amazon-le-doute-sinstalle>
- Le Parlement Européen a remplacé Google par Qwant en tant que moteur de recherche par défaut : <https://www.numerama.com/tech/2266357-qwant-remplace-google-au-parlement-europeen-le-vrai-debut-de-la-souverainete-numerique.html>

### Agenda

- 17 juin : Conférences + Ateliers près de Vannes (Bretagne) : <https://foopgp.org/fr/event/2026-06-17-atelier-djiian/>
- Samedi 27 Juin : présentation + atelier à la Mairie de Pelleautier : <https://foopgp.org/fr/event/2026-06-27-atelier-djiian/>
- 14 & 15 novembre 2026 : [Capitole du Libre à Toulouse](https://capitoledulibre.org/)
- 9 et 10 décembre 2026 : [OSXP Paris- Porte de Versailles](https://www.opensource-experience.com/)
- [… agenda du libre](https://www.agendadulibre.org)


