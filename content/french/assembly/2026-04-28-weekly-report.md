---
title: "2026 S18 Rapport Hebdomadaire"
lang: fr
date: 2026-04-28T21:00:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/banner/foopgp+dji+djibian.png"
type: "meeting"
---

***Présents :*** *Jean-Jacques B, François R, Laurent C, Didier L.*

### Ordre du jour prochaine visio mardi 5 mai 2026 à 21h sur NextCloud : <https://cloud.foopgp.org/call/yfomgu8q>

*Note : Si problème, on ne retrouve sur notre salon JITSI : [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp) (pas auto-hébergé, mais fournit (sans contrepartie financière obligatoire) par des professionnels libristes européens, sur des serveurs qui tiennent la charge).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir (mardi 28 avril)

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

- Quand les programmeurs ne codent plus : la révolution en marche de l’IA <https://www.lepoint.fr/societe/quand-les-programmeurs-ne-codent-plus-la-revolution-en-marche-de-lia-VHWJJ7M4FBDB5GT6YG35MMXTCI/>
- Amanda Askell, la philosophe qui enseigne la morale à l’intelligence artificielle <https://dignites.fr/2026/02/15/amanda-askell-la-philosophe-qui-enseigne-la-morale-a-lintelligence-artificielle/>
- Facebook va supprimer 10 % de ses effectifs (soit 8000 personnes) : <https://www.linformaticien.com/magazine/biz-it/64782-c-est-confirme-meta-va-licencier-10-de-ses-effectifs.html>
- Des formations pour préparer NIS2 et REC : <https://www.linformaticien.com/magazine/cybersecurite/64785-des-formations-pour-preparer-les-entreprises-a-nis-2-et-rec.html>
- Cisco annonce une avancée majeure dans le quantique : <https://www.linformaticien.com/magazine/technologie/64771-cisco-annonce-une-avancee-majeure-dans-le-quantique.html>
- Thales transforme son ERP sur S3NS certifié SecNumCloud : <https://www.linformaticien.com/magazine/cloud/64777-thales-transforme-son-erp-sur-s3ns.html>
- Airbus poursuit ses rachats cybersécurité avec Quarkslab : <https://www.linformaticien.com/magazine/biz-it/64769-airbus-poursuit-ses-rachats-cyber-avec-quarkslab.html>
- Bluetooth tracker hidden in a postcard and mailed to a warship exposed its location — a €5 gadget put a €500 million Dutch ship at risk for 24 hours

  <https://www.tomshardware.com/tech-industry/cyber-security/bluetooth-tracker-hidden-in-a-postcard-and-mailed-to-a-warship-exposed-its-location-a-eur5-gadget-put-a-eur500-million-dutch-ship-at-risk-for-24-hours>
- Bitwarden CLI Compromised in Ongoing Checkmarx Supply Chain Campaign

  <https://socket.dev/blog/bitwarden-cli-compromised>

  <https://todon.eu/@tek/116455333437047408>
- Le Health Data Hub, devenu la Plateforme des données de santé, se détourne de Microsoft et choisi Scaleway pour l'hébergement des données de santé.

  <https://acteurspublics.fr/articles/le-health-data-hub-a-choisi-le-francais-scaleway-pour-heberger-les-donnees-de-sante/>

  <https://mamot.fr/@bearstech/116455677966181874>

  <https://colter.social/@nicolasvivant/116454174730554848>

  <https://www.bfmtv.com/tech/innovation/une-alternative-europeenne-credible-et-competitive-existe-le-gouvernement-choisit-le-francais-scaleway-pour-remplacer-microsoft-et-heberger-nos-donnees-de-sante_AD-202604230356.html>

  <https://mastodon.social/@rod2ik/116454232753574884>
- Most Australian teens admit the social media ban isn’t working as they try to sidestep age verification blocks with face masks and their parents’ IDs

  <https://fortune.com/2026/04/25/australia-social-media-ban-isnt-working-teens-sidestepping-restrictions/>

  <https://mamot.fr/@Khrys/116470417891666597>
- Anthropic secretly installs spyware when you install Claude Desktop

  <https://www.thatprivacyguy.com/blog/anthropic-spyware/>

  <https://types.pl/@amy/116436180446800432>
- Bull va équiper une IA factory en Suède : <https://www.linformaticien.com/magazine/biz-it/64768-bull-va-equiper-une-ai-factory-en-suede.html>
- LightOn met deux nouveau modèles IA en Open Source : <https://www.linformaticien.com/magazine/tendances/941-ia/64778-lighton-met-deux-nouveaux-modeles-en-open-source.html>
- SAP étend son partenariat autour de Google : <https://www.linformaticien.com/magazine/tendances/941-ia/64772-sap-etend-son-partenariat-autour-de-l-ia-avec-google.html>
- HPE prend ses quartiers dans le consortium PANAME : <https://www.linformaticien.com/magazine/tendances/944-rgpd/64766-hpe-prend-ses-quartiers-dans-paname.html>

### Au cœur de la réunion

- Jean-Jacques a commencé a utilisé claude-sonnet-4.6 avec lequel il a produit ou amélioré : 
  - <https://foopgp.org/djis-simulator/>
  - <https://foopgp.org/djis-viewer/>
  - <https://codeberg.org/foopgp/foopgp-hugowebsite/src/branch/public/public/documents/en/draft-foopgp-openpgp-id-00.txt>
  - <https://foopgp.org/fr/blog/2026-04-28-openpgp-id-spec/>
- Enregistrement jeudi soir à 20h30, pour l’émission de dimanche à 12h10 : UnderScore sur Radio Méga.
- Point compta

### Agenda

- Vendredi 1er Mai : petite présentation/conférence (OpenPGP ID) à “la base” (Marseille)  : <https://plugfr.org/reunions/1-mai-2026/>
- Jeudi 9 Mai à 15 heures : Grosse présentation (Djibian, dji) à Gap
- 30 et 31 mai à Lyon : <https://www.jdll.org/>
- [… agenda du libre](https://www.agendadulibre.org)
