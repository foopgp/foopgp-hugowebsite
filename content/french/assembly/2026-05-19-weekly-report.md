---
title: "2026 S21 Rapport Hebdomadaire"
lang: fr
date: 2026-05-19T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R, Laurent C.*

### Ordre du jour prochaine visio mardi 26 mai 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fourni (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Revue de la nouvelle version du document stratégique (Suite aux observations faite le mardi 19) : <https://foopgp.org/documents/fr/strategy/20260521-strategie-foopgp-complet.pdf> 
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 19 mai)

- Revue de presse.
- Revue de la version 1.0 du document stratégique (ébauché avec Mnèmè : <https://foopgp.org/documents/fr/strategy/20260508-strategie-foopgp-complet.pdf> )
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

- Windows 11 est toujours autant sécurisé :
  - Bitlocker dans Windows 11 pourrait avoir une backdoor : <https://www.frandroid.com/marques/microsoft/3101075_bitlocker-le-chiffrement-de-windows-11-est-troue-et-ca-pourrait-etre-volontaire-de-la-part-de-microsoft>
  - Un cheval de Troie exploite Micro$oft Phone Link pour voler vos mots de passe : <https://www.zdnet.fr/actualites/un-cheval-de-troie-exploite-lapplication-microsoft-phone-link-pour-voler-vos-mots-de-passe-494926.htm>
  - Edge stocke les mots de passe en clair en RAM : <https://korben.info/edge-mots-de-passe-clair-memoire-by-design.html>  
    <https://www.linformaticien.com/magazine/cybersecurite/64825-edge-stocke-les-mots-de-passe-en-clair.html>

- Le revers de la médaille lorsqu’on utilise l’IA pour trouver des bugs ou des failles : <https://www.lesnumeriques.com/informatique/c-est-ingerable-linux-pilier-de-l-open-source-mondial-fait-face-a-la-plus-grande-crise-de-son-histoire-a-cause-de-l-ia-n256065.html>

- Orange Cyberdéfense devient Autorité de numérotation CVE : <https://www.linformaticien.com/magazine/cybersecurite/64809-orange-cyberdefense-autorite-de-numerotation-cve.html>

- Un service d’IA pour prioriser les failles de sécurité : <https://www.linformaticien.com/magazine/cybersecurite/64811-un-service-d-ia-pour-prioriser-les-vulnerabilites-reellement-exploitables.html>

- Yubikey vs Nitrokey : <https://www.clubic.com/dossier-612472-yubikey-vous-force-a-racheter-un-appareil-pour-corriger-une-faille---interview-nitrokey-l-alternative-qui-mise-sur-l-open-source.html>

- Yubico devient partenaire d’OpenAI : <https://www.linformaticien.com/magazine/cybersecurite/64802-yubico-devient-partenaire-d-openai.html>

- Western Digital lance les premiers disques intégrant la cryptographie post-quantique : <https://www.linformaticien.com/magazine/infra/64858-wd-lance-les-premiers-disques-integrant-la-cryptographie-post-quantique.html>

- Mistral AI victime d’une cyberattaque : <https://www.linformaticien.com/magazine/cybersecurite/64846-mistral-ai-victime-d-une-cyberattaque.html>

- Un diagnostic national pour révéler les dépendances numériques du privé : <https://www.linformaticien.com/magazine/biz-it/64849-un-diagnostic-national-pour-reveler-les-dependances-numeriques-du-secteur-prive.html>

- Docaposte veut devenir le référent souverain en données de santé : <https://www.linformaticien.com/924-republique-numerique/64828-docaposte-veut-devenir-le-referent-en-donnee-de-sante.html>  
  <https://www.zdnet.fr/actualites/docaposte-positionne-la-souverainete-aussi-dans-la-sante-494903.htm>

- Adieu Visa et Mastercard : 130 millions d'Européens basculent vers un paiement 100 % souverain dès 2026 <https://www.lesnumeriques.com/banque-en-ligne/adieu-visa-et-mastercard-130-millions-d-europeens-basculent-vers-un-paiement-100-souverain-des-2026-n250918.html>

- Marie-Laure Denis, présidente de la CNIL, ***se fout de la gueule du monde*** : <https://www.lemonde.fr/pixels/article/2026/05/18/marie-laure-denis-presidente-de-la-cnil-l-etat-a-une-responsabilite-particuliere-a-l-egard-des-donnees-des-francais_6691073_4408997.html>

- Une enveloppe de 200 M€ qui “ne suffira pas” pour la cybersécurité : <https://www.linformaticien.com/magazine/cybersecurite/64803-une-enveloppe-de-200-m-qui-ne-suffira-pas-pour-la-cybersecurite.html>
- [Franciliens.net](http://Franciliens.net) fait une offre de rachat de SFR  
  <https://www.franciliens.net/2026/05/franciliens-net-fait-une-offre-de-rachat-de-sfr/>

  Le fournisseur associatif [Franciliens.net](http://Franciliens.net) présente une offre pour racheter son concurrent, SFR, pour la somme qui leur semble correspondre à la valorisation honnête de l’entreprise aujourd’hui : le montant de 1,00€ (un euro). Le but est surtout de mettre en lumière le risque d'un retour à seulement 3 gros opérateurs.  
  <https://mamot.fr/@ungarage/116595215182755283>

- Mission Impossible 3 sort sur… Commodore 64  
  <https://psytronik.itch.io/im3-c64>
  La suite des jeux de 1985 et 1988 sort vraiment… et vraiment sur C64.  
  <https://oldbytes.space/@Kroc/116594720745203300>  
  <https://www.gamekult.com/actualite/impossible-mission-3-est-une-realite-et-va-sortir-sur-commodore-64-3050869414.html>  
  <https://www.youtube.com/watch?v=hwIIRgnT7n4>  
  <https://computermuseum.social/@namip/116596573537178546>

- Compilation reproductible obligatoire pour la prochaine Debian  
  <https://itsfoss.com/news/debian-makes-reproducible-builds-mandatory/>
  Debian 14 "Forky" n'acceptera donc que des paquets dont la reproductibilité binaire est assurée, un grand pas pour la sécurité.  
  <https://mastodon.social/@bagder/116566403633172153>

- BrowserAct publie deux outils open source pour donner les mains libres aux agents IA sur le web réel <https://goodtech.info/browseract-open-source-agents-ia-automatisation-web/>
  <https://mamot.fr/@John_Livingston/116594851227048201>

### Au cœur de la réunion

- Production de la semaine : 
  - Nouveau paquet [sshwgpg (SSH With GnuPG)](https://codeberg.org/foopgp/sshwgpg) : anciennement ssh_gpgforward, amélioré et sorti de gpgconfig : 
  - Refonte de la page qui explique l’intérêt de sshwgpg : <https://foopgp.org/fr/blog/2026-05-11-djibian-agentforwarding/> 
  - Mise à jour de la page solutions → Identité : <https://foopgp.org/fr/solutions/openpgp-id/>
- Mail envoyé à debian-mentors pour demander à retrouver 3 paquets djibian dans debian : 
  - [sshwgpg](https://codeberg.org/foopgp/sshwgpg)
  - [bash-libs](https://codeberg.org/foopgp/bash-libs)
  - [pgpgid](https://codeberg.org/foopgp/pgpid)
- Participation aux JDLL à Lyon : conf + atelier le Samedi 30 mai à 11h : <https://pretalx.jdll.org/jdll2026/speaker/VZL9MC/>
- La présentation visio OpenPGP ID pour Yubico le 27 mai, est annulé : 
  - Je ne m’exprime pas assez bien en anglais.
  - Les \~80 participants attendus étaient plus commerciaux qu’ingénieurs.

### Agenda

- Samedi 30 et dimanche 31 mai à Lyon : <https://www.jdll.org/>
- Vendredi 5 juin à partir de 17h à Tallard : Atelier Djibian + OpenPGP ID.
- Autour du 19 juin : Conférences + Ateliers près de Vannes (Bretagne).
- Samedi 27 Juin : présentation + atelier à la Mairie de Pelleautier.
- [… agenda du libre](https://www.agendadulibre.org)
