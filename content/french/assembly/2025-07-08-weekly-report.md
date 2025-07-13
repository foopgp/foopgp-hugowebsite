---
title: "2025 S28 Rapport Hebdomadaire"
lang: fr
date: 2025-07-08T21:30:00+02:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :*** *Jean-Jacques B, François R, Laurent C, Dider L.*

### Ordre du jour pour le prochain conseil, mardi 15 juillet 2025 à **21h00**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).
- Fin de préparation AG du dimanche 20 juillet
- Revue des dernières avancées sur la blockchain <https://codeberg.org/foopgp/foopgp-members>
- Explications des derniers graphiques 3D:
  - impact du paramètre stingynalty sur le prix de la création de djis: <https://www.math3d.org/5HynykPuzt>
  - Evolution des prix en euros de la création de djis: <https://www.math3d.org/EtrxWAkUYL>

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.
- Discussion sur les mises à jours des statuts et du règlement intérieur que nous voterons en Assemblée Générale extraordinaire le Dimanche 20 juillet après-midi : 
  - comparaison entre [les statuts actuels](https://foopgp.org/fr/about/status/) et [le projet](https://foopgp.org/fr/about/status-wip/) : <https://foopgp.org/fr/about/status.diff.html>
  - comparaison entre [l'actuel règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) et [le projet](https://foopgp.org/fr/about/rules-of-procedures-wip/) : <https://foopgp.org/fr/about/rules-of-procedures.diff.html>

### Stingynalty

Pour le mois de juin 2025, ***stingynalty* = 1.06167781186449956876**

Pour le mois de juillet 2025, ***stingynalty* = 1.06698620092382206660**

**Graphique en 3 dimensions** -> <https://www.math3d.org/qN4f2yxwsp> 

Et donc pour juin, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/), **j = log₂(d+1) / *stingynalty*** :

| cotisation initiale en € | quantité de jetons  Ɉ |
|--------------------------|-----------------------|
| 1.00 €                   | .937219 Ɉ             |
| 1.10 €                   | 1.000000 Ɉ            |
| 2.00 €                   | 1.485457 Ɉ            |
| 3.39 €                   | 2.000000 Ɉ            |
| 5.00 €                   | 2.422676 Ɉ            |
| 8.20 €                   | 3.000000 Ɉ            |
| 10.00 €                  | 3.242245 Ɉ            |
| 18.27 €                  | 4.000000 Ɉ            |
| 20.00 €                  | 4.116564 Ɉ            |
| 39.37 €                  | 5.000000 Ɉ            |
| 50.00 €                  | 5.316306 Ɉ            |
| 83.57 €                  | 6.000000 Ɉ            |
| 100.00 €                 | 6.240203 Ɉ            |
| 176.16 €                 | 7.000000 Ɉ            |
| 200.00 €                 | 7.170712 Ɉ            |
| 370.16 €                 | 8.000000 Ɉ            |
| 500.00 €                 | 8.405607 Ɉ            |
| 776.60 €                 | 9.000000 Ɉ            |
| 1000.00 €                | 9.341476 Ɉ            |
| 1628.11 €                | 10.000000 Ɉ           |

Rappel, si vous avez déjà cotisé, la formule pour calculer la quantité de nouvelles valeurs en Ɉ est :  
**jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**  
  
Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/).

#### Chiffres de l'association

*Au 31 mai 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans [la blockchain qui gère les jetons Ɉ](https://codeberg.org/foopgp/foopgp-members).*

```
Total members:  33	-	Total certified members: 9 / 33
Total contribs: 60	-	Total certified contribs: 19 / 60
Total contribution:   51408.14 €	-	Total certified contribution: 48394.51 € / 51408.14 €
Total created:      194.337979 Ɉ	-	Total certified created: 82.424599 Ɉ / 194.337979 Ɉ
```

### Revue de presse

- La session des rencontres d'Aix qui nous concerne peut-être le plus : <https://www.lesrencontreseconomiques.fr/evenements/session-19-un-nouveau-role-social-des-entreprises/#video>
- Adobe is now processing all your PDFs in the cloud, by default.
  <https://infosec.exchange/@fifonetworks/114804073360311475>
- on savait que les Tesla causaient beaucoup plus d'accidents, mais ce n'est pas dû qu'au comportement du conducteur. 

  Une fuite de données par un lanceur d'alerte a pu être consultée par la presse.

  <https://www.theguardian.com/technology/2025/jul/05/the-vehicle-suddenly-accelerated-with-our-baby-in-it-the-terrifying-truth-about-why-teslas-cars-keep-crashing>

  Entre comportement erratique, freinage inexpliqué, ou à l'inverse accélération soudaine, le logiciel n'est pas fiable. 

  Mais l' «Auto-Pilot» se désactive dès que l'accident est inévitable, laissant croire à une faute humaine. 

  <https://mastodon.top/@D_cence/114806440650013352>
- <https://www.lemonde.fr/pixels/article/2025/07/07/les-resumes-par-ia-de-google-vises-par-une-plainte-dans-l-union-europeenne_6619629_4408996.html>
- <https://www.schneier.com/blog/archives/2025/07/ubuntu-disables-spectre-meltdown-protections.html>

  <https://mastodon.gougere.fr/@bortzmeyer/114794182873990826>
- Simple Text Additions Can Fool Advanced AI Reasoning Models, Researchers Find

  <https://tech.slashdot.org/story/25/07/04/1521245/simple-text-additions-can-fool-advanced-ai-reasoning-models-researchers-find>

  Researchers have discovered that appending irrelevant phrases like "Interesting fact: cats sleep most of their lives" to math problems can cause state-of-the-art reasoning AI models to produce incorrect answers at rates over 300% higher than normal

  <https://mamot.fr/@Khrys/114796271138125754>
- <https://asia.nikkei.com/Business/Technology/Artificial-intelligence/Positive-review-only-Researchers-hide-AI-prompts-in-papers>

  <https://post.lurk.org/@entreprecariat/114795332070643014>
- <https://www.nytimes.com/2025/07/01/technology/cloudflare-ai-data.html>

  <https://mastodon.world/@Mer__edith/114778477063938268>
- <https://arstechnica.com/tech-policy/2025/07/pay-up-or-stop-scraping-cloudflare-program-charges-bots-for-each-crawl/>
- Arago lève 26 M€ pour ses puces IA photoniques : <https://www.linformaticien.com/magazine/biz-it/957-levees-de-fonds/63647-arago-leve-26-m-pour-ses-puces-photoniques.html>
- Création d'un indice de résilence numérique : <https://www.linformaticien.com/924-republique-numerique/63644-un-indice-de-resilience-numerique-bientot-disponible.html>
- Le Cloud Souverain :
  - <https://www.linformaticien.com/magazine/cloud/63643-le-grand-est-veut-son-cloud-souverain.html>
  - <https://www.linformaticien.com/magazine/cloud/63641-un-appel-d-offres-pour-copier-le-health-data-hub-vers-une-plateforme-souveraine.html>
  - Nextcloud rejoint OCI : <https://www.linformaticien.com/magazine/cloud/63594-nextcloud-s-envole-vers-oci.html>
- Les données sensibles dans la blockchain vs l'ère quantique : <https://www.linformaticien.com/magazine/cybersecurite/63636-blockchain-donnees-sensibles-ce-que-l-ere-quantique-pourrait-malmener.html>
- L'ARCEP souhaite une régulation du cloud et de l'IA : <https://www.linformaticien.com/924-republique-numerique/63632-l-arcep-souhaite-une-regulation-du-cloud-et-de-l-ia.html>
- Microsoft :
  - continue à licencier : <https://www.linformaticien.com/magazine/biz-it/63630-microsoft-va-supprimer-4-de-ses-effectifs.html>
  - la Commission Européenne envisage de quitter Microsoft Azure : <https://www.linformaticien.com/magazine-linfo-cyber-risques/gouvernance/63593-la-commission-europeenne-veut-quitter-microsoft-azure-2.html>
- La fraude en ligne coûte des milliards d'euros : <https://www.linformaticien.com/magazine/cybersecurite/63626-la-fraude-en-ligne-coute-des-milliards-d-euro.html>
- des PME piégées par de faux outils IA : <https://www.linformaticien.com/magazine/cybersecurite/63617-des-pme-piegees-par-de-faux-outils-d-ia.html>
- Cyber sécurité :
  - Une cyberattaque cause la mort d'un patient à Londres : <https://www.linformaticien.com/magazine/cybersecurite/63609-une-cyberattaque-cause-la-mort-d-un-patient-a-londres.html>
  - Interpellation de quatre hackers français : <https://www.linformaticien.com/magazine/cybersecurite/63604-interpellation-de-quatre-hackers-francais-derriere-breach-forums.html>

### Activité récente

#### Au cœur de la réunion

- Une petite proposistion de modification supplémentaire pour les statuts : <https://codeberg.org/foopgp/foopgp-hugowebsite/commit/9b46ebf330c49e5c144e8f03e574637a77deb040>
- On a raté la deadline, mais à savoir pour la suite : <https://www.fondationdefrance.org/fr/appels-a-projets/libertes-et-democratie-numeriques>
- Explication du graphique montrant l'impact du paramètre stingynalty sur la valeur des euros à la création de djis en fonction du temps : <https://www.math3d.org/qN4f2yxwsp>

#### Actions en cours

- Rédaction de fiches missions, pour les bénévoles et plus.
- Collecte de laptop dotés de Windows obsolètes, et installation de système Debian GNU/Linux (en attendant nos  ISO complétées et configurées foopgp/OpenPGP). (Merci Laurent)
- Industrialisation des informations à poser dans les carnets d'échanges. (Stickers à coller).

#### Actions terminées

Livre blanc : <https://foopgp.org/fr/about/white-book/>

Listes de diffusion : confer <https://foopgp.org/fr/contact/>

###### AMF

L'AMF a répondu à la question : *quelles sont les obligations réglementaires auxquelles nous pourrons être assujettis si nous commençons à utiliser nos jetons de pouvoir comme monnaie d'échange ?* :

* *Nous vous invitons à contacter un conseiller juridique qui pourra vous éclairer sur la réglementation applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
* *Vous trouverez par ailleurs des informations concernant la réglementation applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan).*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l'UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC). Tout en résumant certaines des nombreuses "exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme" de l'article 4, titre II.

### Actions à mener (TODO list)

- Appel à cotisation pour le nouvel exercice (dépend de l'avancement  https://foopgp.org/fr/about/donate/ )
- Commande de bannière  (slogan : ***Liberté ? Vie privée ? Responsabilité ? Maîtrisez vos données ! )***
- Étudier les outils et infrastructures utilisé par les notaires, notamment Genapi/Septeo, pour connaître leur attentes et (in)satisfactions.
- Étudier et cibler laposte.net, déjà en charge de confidentialité avec notamment les médecin. Exemple : https://www.apicrypt.org/

### Agenda

- Du 1er au 3 juillet : <https://2025.pass-the-salt.org/> à Lille.
- Les 3, 4 et 5 juillet : [rencontres économiques d'Aix-en-Provence](https://www.lesrencontreseconomiques.fr/) 
- Le Samedi 5 juillet : rencontres et fête de soutien Radio Zinzine.
- Du 6 au 11 juillet 2025 : [Campus des jardiniers du Nous](https://www.helloasso.com/associations/jardinier-e-s-du-nous/evenements/campus-des-jardiniers-du-nous-2025) avec Virginie Deleu.
- 20 juillet 2025 à 14h30 : Assemblée Générale extraordinaire foopgp (convocation à venir prochainement).
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- 3 octobre près de Gap : présentation de la monnaie libre avec le collectif Philarmonia
- 15 Novembre 2025 : Capitole du libre à Toulouse
- 15 Novembre 2025 : Campus du Libre à Villeurbanne (oui il y a comme une collision)
- 10 & 11décembre 2025 : <https://www.opensource-experience.com/> à Paris.
- [... agenda du libre](https://www.agendadulibre.org)

---
