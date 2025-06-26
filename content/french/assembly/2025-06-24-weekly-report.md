---
title: "2025 S26 Rapport Hebdomadaire"
lang: fr
date: 2025-06-24T20:30:00+01:00
draft: false
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :*** *Jean-Jacques B, Laurent C, piseb, François R.*

### Ordre du jour pour le prochain conseil, mardi 1 juillet 2025 à **21h00**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- dernière passe sur les projets de changements des statuts et du règlement intérieur.
- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.
- Discussion sur les mises à jours des statuts et du règlement intérieur que nous voterons en Assemblée Générale extraordinaire le Dimanche 20 juillet après-midi : 
  - comparaison entre [les statuts actuels](https://foopgp.org/fr/about/status/) et [le projet](https://foopgp.org/fr/about/status-wip/) : <https://foopgp.org/fr/about/status.diff.html>
  - comparaison entre [l'actuel règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) et [le projet](https://foopgp.org/fr/about/rules-of-procedures-wip/) : <https://foopgp.org/fr/about/rules-of-procedures.diff.html>

### Stingynalty

Pour le mois de mai 2025, ***stingynalty* = 1.05639583270099459579**

Pour le mois de juin 2025, ***stingynalty* = 1.06167781186449956876**

Et donc pour juin, en appliquant la formule du [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/), **j = log₂(d+1) / *stingynalty*** :

| cotisation initial en € | quantité de jetons Ɉ |
|-------------------------|----------------------|
| 1.00 €                  | .941905 Ɉ            |
| 1.09 €                  | 1.000000 Ɉ           |
| 2.00 €                  | 1.492884 Ɉ           |
| 3.36 €                  | 2.000000 Ɉ           |
| 5.00 €                  | 2.434789 Ɉ           |
| 8.10 €                  | 3.000000 Ɉ           |
| 10.00 €                 | 3.258457 Ɉ           |
| 17.99 €                 | 4.000000 Ɉ           |
| 20.00 €                 | 4.137147 Ɉ           |
| 38.63 €                 | 5.000000 Ɉ           |
| 50.00 €                 | 5.342887 Ɉ           |
| 81.72 €                 | 6.000000 Ɉ           |
| 100.00 €                | 6.271404 Ɉ           |
| 171.66 €                | 7.000000 Ɉ           |
| 200.00 €                | 7.206566 Ɉ           |
| 359.40 €                | 8.000000 Ɉ           |
| 500.00 €                | 8.447635 Ɉ           |
| 751.27 €                | 9.000000 Ɉ           |
| 1000.00 €               | 9.388183 Ɉ           |
| 1569.25 €               | 10.000000 Ɉ          |

Rappel, si vous avez déjà cotisé, la formule pour calculer la quantité de nouvelles valeurs en Ɉ est :  
**jₙ = log₂( (dₙ+dₜ) + 1 ) / *stingynaltyₙ* – jₜ**  
  
Confer [règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/).

#### Chiffres de l'association

*Au 2 Avril 2025, en utilisant le script ./tools/[gifts-stats.sh](http://gifts-stats.sh) dans la blockchain qui gère les jetons Ɉ.*

Total members: 32	-	Total certified members: 9 / 32
Total gifts:   56	-	Total certified gifts: 17 / 56
Total given:   50747.14 €	-	Total certified given: 47794.51 € / 50747.14 €
Total created: 187.338852 Ɉ	-	Total certified created: 81.095877 Ɉ / 187.338852 Ɉ

### Revue de presse

- Cloudflare bloque en grande partie une attaque DDoS record : <https://www.linformaticien.com/magazine/cybersecurite/63579-une-attaque-ddos-record.html>
- Infigate, HarfangLab et Sekoia.io s'allient : <https://www.linformaticien.com/magazine/cybersecurite/63568-infinigate-france-harfanglab-et-sekoia-io-s-unissent-autour-de-la-cybersecurite.html>
- "La Ville de Lyon abandonne la suite Microsoft office pour renforcer "sa souveraineté numérique"

  <https://www.lyoncapitale.fr/actualite/la-ville-de-lyon-abandonne-la-suite-microsoft-office-pour-renforcer-sa-souverainete-numerique>

  <https://masto.bike/@lyon5avelo/114733971683930473>

  <https://next.ink/brief_article/lyon-abandonne-microsoft-office-pour-renforcer-sa-souverainete-numerique/>
- Murena propose un nouveau moteur de recherche : <https://www.linformaticien.com/63564-murena-propose-un-nouveau-moteur-de-recherche.html>
- L'UE met 145 M€ sur la table pour la cybersécurité : <https://www.linformaticien.com/magazine/cybersecurite/63555-l-ue-met-145-m-sur-la-table-pour-la-cybersecurite.html>
- La Poste renforce son fond d'investissement : <https://www.linformaticien.com/magazine/tendances/63550-la-pote-renforce-son-fonds-d-investissement.html>
- Intel a l'intention de licencier 20 % du personnel de ses usines : <https://www.distributique.com/actualites/lire-intel-licencie-pour-se-remettre-sur-le-chemin-des-benefices-36350.html>
- Les entreprises ne parviennent pas à diminuer le nombre d'applications SaaS : <https://www.distributique.com/actualites/lire-les-entreprise-ne-parviennent-pas-a-enrayer-l-epidemie-d-applications-saas-36348.html>

### Activité récente

#### Au cœur de la réunion

- Discussion sur l'ISO et sur les éventuels points d'amélioration : 
  - mettre par défaut la *"barre des tâches"* en bas (pour se rapprocher de l'UX Windows par défaut).
  - Kleopatra en plus de Seahorse pour les indécrottables utilisateurs de Windows !?
  - Mettre par défaut des applications de manipulation multimédia (Gimp, Inkscape, Shotcut, Shotwell) ?
  - Faire en sorte d'avoir de bon sources.list après l'install.
- Actualisation du stock en dépôt vente de livre de notre partenaire Yves Michel, rentrée notamment d'un livre fortement lié à notre activité, et que nous devrions bien revendre : <https://www.yvesmichel.org/livre/effondrement-20-scenarios-possibles-2/>
- Prise de contact et premiers échanges avec [Marc Chantreux](https://github.com/eiro) (Université et recherche Strasbourg) et  Bastien Guerry (DINUM, [BlueHats](https://bluehats.world/about/)).
- Gestion des listes de diffusions, création d'une nouvelle mailing list pour ne pas spammer ceux qui nous suivent avec des choses trop techniques.
- Travail sur les modifications de statuts et de règlement intérieur :  
  - comparaison entre [les statuts actuels](https://foopgp.org/fr/about/status/) et [le projet](https://foopgp.org/fr/about/status-wip/) : <https://foopgp.org/fr/about/status.diff.html>
  - comparaison entre [l'actuel règlement intérieur](https://foopgp.org/fr/about/rules-of-procedures/) et [le projet](https://foopgp.org/fr/about/rules-of-procedures-wip/) : <https://foopgp.org/fr/about/rules-of-procedures.diff.html>

#### Actions en cours

- Rédaction de fiches missions, pour les bénévoles et plus.
- Collecte de laptop dotés de Windows obsolètes, et installation de système Debian GNU/Linux (en attendant nos  ISO complétées et configurées foopgp/OpenPGP). (Merci Laurent)
- Industrialisation des informations à poser dans les carnets d'échanges. (Stickers à coller).

#### Actions terminées

###### AMF

L'AMF a répondu à la question : *quelles sont les obligations réglementaires auxquelles nous pourrons être assujettis si nous commençons à utiliser nos jetons de pouvoir comme monnaie d'échange ?* :

* *Nous vous invitons à contacter un conseiller juridique qui pourra vous éclairer sur la réglementation applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
* *Vous trouverez par ailleurs des informations concernant la réglementation applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan).*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l'UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC). Tout en résumant certaines des nombreuses "exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme" de l'article 4, titre II.

Livre blanc commencé : <https://foopgp.org/fr/about/white-book/>

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
- 20 juillet 2025 : Assemblée Générale extraordinaire foopgp (convocation à venir prochainement).
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- 3 octobre près de Gap : présentation de la monnaie libre avec le collectif Philarmonia
- 15 Novembre 2025 : Capitole du libre à Toulouse
- 15 Novembre 2025 : Campus du Libre à Villeurbanne (oui il y a comme une collision)
- 10 & 11décembre 2025 : <https://www.opensource-experience.com/> à Paris.
- [... agenda du libre](https://www.agendadulibre.org)

---
