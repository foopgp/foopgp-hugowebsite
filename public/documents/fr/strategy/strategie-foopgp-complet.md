---
title: "foopgp — stratégie complète"
subtitle: "Sortir de l'effet Cantillon"
date: 2026-05-08
author: "Friends of OpenPGP (foopgp)"
version: "1.0"
---

> *Pour une société plus harmonieuse et respectueuse.*

## 1. Synthèse exécutive

**foopgp** est une association loi 1901 (Pelleautier, 05000), déclarée prestataire de formation, qui développe et fait essaimer trois produits emboîtés :

1. **OpenPGP ID** : une identité numérique souveraine portée par une clé matérielle (Yubikey, Nitrokey).
2. **Djibian** : un assemblage Debian (Debian Blend) qui intègre l'ensemble de nos innovations et est destiné à être repris par d'autres distributions.
3. **dji** (jeton Ɉ) : une monnaie libre à émission universelle, sans privilège de création, qui concrétise notre paradigme.

Le diagnostic économique est centré sur l'**effet Cantillon** : ceux qui créent la monnaie nouvelle décident de fait de ce qui aura de la valeur demain. Ce privilège est la racine commune de l'asymétrie sociale, de la croissance forcée, et indirectement des conflits qui détruisent le vivant. Sortir de l'effet Cantillon est une **condition nécessaire** d'une société plus harmonieuse — pas suffisante, mais indispensable.

Notre modèle commercial articule quatre sources de revenus : adhésions (incluant une clé de sécurité physique débloquée à un palier de **6,42 Ɉ générés** — soit ≈ 146 € en mai 2026, palier croissant avec la *stingynalty*), ateliers et formations professionnelles, parrainage à 10 % alimenté par une plateforme de change €↔Ɉ (pierre angulaire à mettre en service en 2027), et prestations B2B de souveraineté numérique pour PME et collectivités.

L'estimation plancher de la valeur du dji, par traduction de la masse monétaire M1 de la zone euro selon notre formule de création, est de **≈ 2 369 €** (février 2026). À moyen terme, **1 Ɉ > 2 500 €** est plausible.

## 2. Contexte

Trois courants convergent et rendent notre proposition pertinente *maintenant* :

**Cadre réglementaire européen.** Le RGPD (2018), la DSA (2024), et plus récemment MiCA (entrée en vigueur 2024) cadrent le numérique européen autour d'un principe : les individus ne sont pas des produits. Ce socle légal est unique au monde — il n'existe ni aux États-Unis (capitalisme de surveillance), ni en Chine (crédit social). Il est aussi cicatriciel : la mémoire des fichiers de Vichy et des recensements totalitaires du XXᵉ siècle nourrit encore une exigence civilisationnelle de minimisation des données.

**Faillites récentes de souveraineté.** Les douze derniers mois ont vu se succéder des incidents qui exposent la fragilité des infrastructures numériques actuelles :
- *Affaire Helios* : panne logicielle qui a menacé la paie de millions de fonctionnaires (mai 2026).
- *Piratage de l'ANTS* par un mineur de 15 ans.
- *BookMyName* : incident d'infrastructure qui a paralysé des registrations DNS françaises.
- *Tesla* : mise à jour qui a bloqué le centre-ville de Sète pendant 45 minutes.

Chaque incident démontre la même chose : la centralisation crée des points de défaillance critiques, l'opacité empêche le diagnostic, la dépendance à un fournisseur unique transforme une panne technique en crise systémique.

**Saturation du marché de la confiance.** Les utilisateurs (particuliers, PME, collectivités) cherchent activement des alternatives à un écosystème dominé par quelques GAFAM et par une régulation européenne (EUDI Wallet) qui, malgré ses bonnes intentions, reproduit la centralisation qu'elle prétend combattre.

## 3. Vision : sortir de l'effet Cantillon

**Le diagnostic.** Notre système monétaire repose sur un privilège de création accordé à un nombre restreint d'institutions (banques commerciales, banque centrale). Ces institutions choisissent où la monnaie nouvelle entre dans l'économie — et donc *qui* en bénéficie en premier, *avant* l'ajustement des prix. C'est l'**effet Cantillon**, formulé en 1755 par Richard Cantillon. Il produit trois conséquences enchaînées :

1. **Asymétrie permanente** entre les acteurs proches du robinet monétaire (banques d'investissement, grandes entreprises cotées, gouvernements) et ceux qui en sont éloignés (particuliers, TPE, économie informelle).
2. **Obligation de croissance** : la création monétaire actuelle est gagée sur de la dette portant intérêt, ce qui force le système à produire toujours plus pour rembourser le cumul.
3. **Croissance infinie dans un monde fini** → tensions extractivistes, conflits géopolitiques, dérèglement climatique.

**Le remède partiel : la « monnaie libre ».** Une monnaie est dite *libre* (TRM, Théorie Relative de la Monnaie, Stéphane Laborde, 2010) si elle est créée *symétriquement* entre tous les participants par un dividende universel. Aucun acteur ne reçoit en premier ; aucun choix d'allocation n'est imposé par un créateur monétaire. Le dji applique ce principe.

**Une nuance importante.** Réformer notre système monétaire ne résoudra pas l'ensemble des tensions humaines (rivalités géopolitiques, démographie, héritages historiques). Notre prudence intellectuelle nous interdit de présenter la « monnaie libre » comme un remède universel — le dji est une *pièce du puzzle*, condition nécessaire mais non-suffisante.

## 4. Trois produits, trois couches

### 4.1 OpenPGP ID

Un **identifiant numérique** dérivé minimalement de l'état civil (formule `u4`) ou du timestamp de naissance (formule `u5`), mathématiquement vérifiable, transportable. Cet identifiant est embarqué dans un **certificat OpenPGP** lui-même hébergé sur une **clé matérielle** (Yubikey, Nitrokey).

Trois propriétés clés :
- **Souverain** : ni l'État ni un GAFAM ne le délivre. La personne le génère elle-même.
- **Minimal** : seules les données strictement nécessaires à l'unicité sont publiées (hash de quelques champs d'état civil, ou timestamp). Pas de date de naissance complète, pas d'adresse, pas de photo signée.
- **Polyvalent** : un seul identifiant pour le mail signé, le SSH, le Git, l'authentification web, la signature de contrats, le vote en assemblée.

### 4.2 Djibian

**Djibian** (contraction de *dji* + *Debian*) est un *Debian Blend* : un assemblage Debian préconfiguré qui intègre nos innovations (`bash-libs`, `pgpid`, gestion native des cartes OpenPGP, `onboarding` graphique, etc.). L'objectif n'est pas d'imposer Djibian comme une distribution dominante — c'est d'**essaimer** les composants utiles vers Debian *upstream* et vers d'autres distributions. Plus le code est repris ailleurs, mieux le projet a réussi.

### 4.3 dji (jeton Ɉ)

Le **dji** (Ɉ) est notre monnaie libre. Sa création est régie par les Articles 4 et 5 du règlement intérieur :
- **Émission par cotisation** (Art. 4) : `j = log₂(d+1) / stingynalty`, où `d` est la cotisation cumulée en euros. Formule logarithmique qui *décourage la concentration* : plus on a déjà cotisé, moins une cotisation supplémentaire crée de jetons.
- **Émission universelle mensuelle** (Art. 5) : `js = growth × Mt / N` — chaque adhérent reçoit la même quantité de jetons par mois, indépendamment de son patrimoine. C'est la mécanique TRM.

Les paramètres en vigueur (votés en AG, méthode de Schulze) :

| Paramètre | Valeur | Sens |
|---|---|---|
| *stingynalty* | +5 ‰/mois | facteur d'inflation associative, croît au 1ᵉʳ de chaque mois |
| *growth* | 4 ‰/mois | dividende universel mensuel |
| *taxe* | 2 %/an | contribution obligatoire (impôt associatif) |
| *sharp* | 0,5 | exposant du vote (sharp = 0 : 1 personne 1 voix ; sharp = 1 : 1 jeton 1 voix ; sharp = ½ : vote quadratique) |

## 5. Modèle économique

### 5.1 Sources de revenus existantes

- **Adhésions** : cotisation libre depuis l'AGE de juillet 2025. À partir du palier de **6,42 Ɉ générés** par ses cotisations cumulées, l'adhérent reçoit sa **clé matérielle** (Yubikey ou Nitrokey) pré-configurée avec son OpenPGP ID. Le palier exprimé en djis (et non en euros) rend la contrepartie matérielle indépendante d'un tarif fixe : elle est conditionnée à un niveau d'engagement associatif mesurable, qui croît mécaniquement avec la *stingynalty* (cf. *5.3*). Élégance commerciale : on transforme un acte d'achat en geste d'adhésion, alignant l'objet vendu avec l'objet social.
- **Ateliers Djibian mensuels** : série pédagogique pour découvrir et prendre en main l'écosystème.
- **Formations professionnelles** : déclaration prestataire n° 93050099805 (préfecture PACA), donc accès aux dispositifs OPCO et CPF.
- **Conférences et stands publics** : Capitole du Libre, JDLL, AlpOSS, Forum du numérique 04, etc. Recettes modestes mais utiles pour le sourcing d'adhérents.
- **Livres en dépôt-vente** : ouvrages thématiques (monnaie libre, résilience territoriale, post-numérique, etc.). Marge faible, fonction symbolique : on rappelle que l'asso s'inscrit dans un écosystème intellectuel plus large.

### 5.2 Sources de revenus futures

**Parrainage.** Chaque nouvelle adhésion verse 10 % de sa cotisation, transformés en djis sur la plateforme de change, au(x) parrain(s) à parts égales. À défaut de parrain, les djis sont versés à l'association.

> *Exemple chiffré* : un nouvel adhérent cotise 150 €. 15 € sont automatiquement utilisés pour acheter du dji sur la plateforme de change ; ces djis sont reversés au parrain. Si le cours d'amorce est de 1 Ɉ ≈ 100 € (transition), cela représente 0,15 Ɉ pour le parrain.

Quatre garde-fous **explicitement non-MLM** :
1. Un **seul niveau** de parrainage (pas de parrains de parrains).
2. **Identité OpenPGP** publique du parrain et du filleul — la web of trust rend toute pyramide visible.
3. **Conditions** : le parrain doit être adhérent *certifié*, sans condition d'ancienneté.
4. Si pas de parrain → **bénéfice à l'asso**, pas à un parrain anonyme.

**Prestations B2B de souveraineté.** Trois cibles privilégiées :
- *PME* qui veulent se prémunir contre la dépendance à un fournisseur unique d'identité numérique (notamment EUDI Wallet imposé par l'État).
- *Collectivités locales* en phase d'audit ou de transition vers des outils libres.
- *Notaires, juristes* qui ont besoin d'une signature numérique dont la chaîne de confiance est auditable de bout en bout.

**Recherche de financements ciblés.** Des fondations de financement de logiciel libre et d'innovation sociale soutiennent ce type d'infrastructure publique numérique. La cible 2026-2027 est de financer le développement de la plateforme de change et la finalisation de Djibian Onboarding.

### 5.3 La mécanique stingynalty comme outil commercial et pédagogique

La *stingynalty* (+5 ‰/mois) joue un triple rôle :

- **Économique** : absorber l'inflation de l'euro et la pression à la baisse du dividende universel mensuel.
- **Commercial** : créer une **incitation à cotiser tôt** — chaque mois qui passe voit le coût en euros de génération du dji augmenter, et donc le rendement diminuer. C'est du pricing dynamique inscrit dans la mécanique monétaire elle-même, sans qu'aucun gestionnaire commercial ait à l'arbitrer.
- **Pédagogique** : le palier d'attribution de la clé matérielle est exprimé en djis (**6,42 Ɉ** pour une Yubikey 5 NFC), donc son équivalent en euros monte mécaniquement chaque mois. Le nouvel adhérent voit la *stingynalty* s'incarner dans un chiffre concret, sans avoir à comprendre la formule logarithmique.

| Date | Cotisations cumulées nécessaires pour atteindre 6,42 Ɉ |
|---|---|
| 2026-02-01 | ≈ 135,57 € |
| 2026-05-01 | ≈ 146,08 € |
| 2026-08-01 | ≈ 157,57 € |
| 2026-12-01 | ≈ 174,61 € |
| 2027-05-01 | ≈ 199,09 € |
| 2028-05-01 | ≈ 276,43 € |

Soit environ +0,5 % par mois, et un doublement en deux ans. La marge entre le palier et le coût d'achat de la clé (Yubikey 5 NFC ≈ 50-65 € HT en achat groupé) reste suffisante pour financer le reste de l'activité associative — sans pour autant constituer une vente déguisée à prix coûtant ni une cotisation symbolique avec gros avantage en nature : un équilibre qui sécurise le régime fiscal de non-lucrativité.

## 6. Plateforme de change €↔Ɉ

### 6.1 Pourquoi c'est la pierre angulaire

L'historique des monnaies alternatives montre que la liquidité d'échange contre la monnaie nationale est le déterminant principal de l'adoption :
- **Bitcoin** : a décollé quand Mt. Gox (2010) puis Coinbase (2012) ont rendu l'achat trivial pour un utilisateur non-technique.
- **Ğ1 (June)**, qui partage une partie de l'ADN du dji, stagne depuis 2017 : l'achat reste artisanal (rendez-vous physique, RIB, confiance personnelle), donc seuls les militants persévèrent.

Sans plateforme de change, le dji restera un outil intra-association, ce qui est déjà précieux mais reste loin de l'ambition d'instrument monétaire alternatif.

### 6.2 Architecture proposée

La plateforme respecte par construction le paradigme foopgp : pas de tiers de confiance superflu, identités OpenPGP partout, gouvernance par AG.

- **Carnet d'ordres** : foopgp publie un carnet centralisé d'ordres d'achat/vente. Chaque ordre est **signé OpenPGP** par son émetteur, donc opposable et non répudiable.
- **Règlement pair-à-pair** : les transactions sont réglées directement entre les parties. Côté dji, la transaction est auto-prouvante (signature on-chain). Côté euro, la mécanique passe par un **séquestre technique** : foopgp reçoit le virement entrant sur un compte technique dédié, vérifie l'appariement avec un ordre du carnet, et reverse au vendeur de dji dans la journée.
- **Hors champ PSAN** : le séquestre est court (intra-jour), automatique, non rémunéré. foopgp ne perçoit aucune commission sur la transaction elle-même (la commission de parrainage est versée *en dji*, pas en euros). Cette qualification doit être confirmée par notre conseiller juridique avant lancement, et adaptée si MiCA évolue.
- **Sanctions géométriques** en cas de défaillance d'un ordre : 30 jours d'interdiction d'ordres, puis 60, 120, 240, etc. Compteur paramétrable au règlement intérieur, vote en AG. Au 5ᵉ manquement (≈ 5 ans cumulés d'interdiction) : exclusion de fait.

### 6.3 Articulation avec le parrainage

La plateforme est aussi le **moteur** du parrainage : chaque nouvelle adhésion génère une transaction d'amorce (les 10 % de cotisation transformés en djis). Le carnet d'ordres ne démarre donc pas vide — il est alimenté mécaniquement à chaque adhésion. Cela résout le problème classique de l'amorçage de liquidité par un effet réseau auto-entretenu.

## 7. Cible et positionnement

### 7.1 Pas de cible primaire — un positionnement d'infrastructure

Une critique commerciale classique consisterait à dire : *foopgp veut s'adresser à tout le monde, donc à personne*. Cette critique présume qu'on construit un *produit*. Or foopgp construit une **infrastructure** — c'est-à-dire un substrat sur lequel d'autres construiront leurs usages. Les infrastructures n'ont pas de cible : elles ont des cas d'usage. Linux n'avait pas de cible, GnuPG n'avait pas de cible, Git n'avait pas de cible.

La question pertinente n'est donc pas *« pour qui ? »* mais *« quels premiers usages tirent le reste ? »*.

### 7.2 Trois usages tirants identifiés

1. **Particuliers libristes éclairés** — premiers adhérents, premiers parrains, premiers nœuds de la web of trust. Volume modeste (centaines de personnes), valeur stratégique forte (légitimité, bouche-à-oreille technique).
2. **PME et professions juridiques** en quête de signature numérique souveraine (notaires, avocats, experts-comptables, petites collectivités). Volume moyen, ticket plus élevé, cycle de vente plus long mais fidélité forte.
3. **Communautés étrangères francophones** où la souveraineté est une question vitale (cas d'usage Liban en cours d'exploration). Volume potentiellement très élevé, ticket faible mais effet d'entraînement majeur.

## 8. Concurrence et différenciation

### 8.1 Face à EUDI Wallet (identité numérique européenne)

EUDI Wallet est piloté par les États membres et imposera à terme un wallet officiel d'identité numérique à l'échelle européenne. Trois différences fondamentales :

| Critère | EUDI Wallet | foopgp / OpenPGP ID |
|---|---|---|
| **Architecture** | Centralisée (PKI étatique) | Décentralisée (web of trust OpenPGP) |
| **Confidentialité** | Métadonnées accessibles à l'État | Chiffrement intégré, opacité des usages |
| **Interopérabilité** | Limitée aux services publics et partenaires agréés | Universelle (mail, SSH, Git, signature, vote, monnaie) |
| **Risque** | Point de défaillance unique (panne, piratage, contrôle politique) | Pas de point unique |

Ces différences sont structurelles : EUDI Wallet ne peut pas, par construction, fournir les trois avantages qu'offre OpenPGP ID.

### 8.2 Face aux cryptomonnaies (Bitcoin, Ethereum, etc.)

Les cryptomonnaies grand public résolvent le problème de la *décentralisation du registre*, pas celui de la *symétrie de création*. Bitcoin reste sujet à un effet Cantillon brutal (les premiers mineurs et acheteurs ont accumulé des positions disproportionnées). Le dji corrige cela par construction (dividende universel symétrique).

### 8.3 Face à Ğ1 / June

Ğ1 partage l'ADN TRM avec le dji. Notre projet n'est pas concurrent de Ğ1 — nous sommes complémentaires sur le plan des principes. Les différences architecturales :
- **Identité** : Ğ1 utilise des clés Ed25519 dédiées ; foopgp utilise OpenPGP, donc un identifiant qui sert *aussi* pour le mail, le SSH, Git, la signature de documents.
- **Gouvernance** : Ğ1 fonctionne par certification *5 sur 5* (toile de confiance fixe) ; foopgp utilise une gouvernance associative classique (AG, CA, RI) avec votes pondérés par jetons.
- **Liquidité** : Ğ1 n'a pas de plateforme de change ; foopgp en construit une dès la phase 1.

## 9. Trajectoire 2026 → 2029

| Échéance | Jalon |
|---|---|
| Juin 2026 | Audit comptable rétrospectif. |
| Juillet 2026 | Valorisation des stocks et travaux en cours. |
| Septembre 2026 | Recherche de financements ciblés. |
| Octobre 2026 | Recrutement d'un gestionnaire (poste salarié). |
| Novembre 2026 | Projection budgétaire 2027-2029. |
| Décembre 2026 | Finalisation Djibian Onboarding (étapes « Investir » et « S'émanciper »). |
| 1ᵉʳ trimestre 2027 | MVP plateforme de change €↔Ɉ. |
| 2ᵉ trimestre 2027 | Premiers contrats B2B (PME, collectivités pilotes). |
| 3ᵉ trimestre 2027 | Lancement officiel du parrainage à 10 %. |
| 2028 | Montée en charge de la plateforme, partenariats étrangers (cas d'usage type Liban). |
| 2029 | Atteinte du seuil de masse critique opérationnelle ; équilibre financier autonome. |

## 10. Risques et atténuations

### 10.1 Effet réseau

*Risque* : la plateforme de change ne décolle pas faute de masse critique. Le dji reste un outil intra-asso.
*Atténuation* : le mécanisme de parrainage transforme **chaque adhésion en transaction d'amorce**, ce qui peuple le carnet d'ordres mécaniquement. Plus il y a d'adhérents, plus il y a d'ordres, plus la liquidité s'auto-entretient.
*Plan B* : si la masse critique externe n'est pas atteinte, l'usage intra-association reste précieux (gouvernance, redistribution interne, rémunération de contributeurs en djis). Le projet ne perd pas son sens.

### 10.2 Récupération réglementaire

*Risque* : un cadre type EUDI Wallet impose à terme un KYC renforcé pour les jetons utilitaires au-dessus d'un certain seuil, ce qui détruirait la propriété d'identité minimale.
*Atténuation* : maintenir une veille active sur l'évolution du cadre, et conserver une option « plafond de volume » qui permettrait de garder le projet sous le seuil régulatoire si nécessaire. Documenter rigoureusement la conformité MiCA pour rester dans le périmètre des **exemptions** prévues à l'Article 4 Titre II du règlement EUR-Lex L150/40.

### 10.3 Burn rate

*Risque* : les recettes 2025 (~46 k€) ne couvrent pas durablement le poste de salariat technique. La perte du salarié front-end Djibian Onboarding en avril 2026 a illustré cette fragilité.
*Atténuation* : trajectoire 2026 dédiée à la professionnalisation comptable, valorisation des stocks et travaux en cours, recherche de financements ciblés. À moyen terme, le **parrainage** et les **prestations B2B** doivent rendre l'équilibre autonome.

### 10.4 Perte de savoir-faire critique

*Risque* : le départ de contributeurs clés (techniciens, trésoriers) crée un trou de compétences difficile à combler.
*Atténuation* : documentation systématique en repo public (foopgp et bash-libs sont entièrement libres), pratique d'une mémoire associative (CR hebdomadaires, journaux de session, compagnon IA pour la continuité contextuelle), recrutement progressif d'un gestionnaire.

### 10.5 Complexité pédagogique

*Risque* : la chaîne complète (OpenPGP ID + clé matérielle + Djibian + dji + plateforme de change + monnaie libre TRM) est conceptuellement dense. Un utilisateur non-technique peut décrocher avant d'avoir saisi la valeur.
*Atténuation* : ateliers physiques mensuels, plaquette de communication simplifiée, cas d'usage concrets (mails sécurisés, signature de documents) qui amorcent l'engagement avant d'aborder la couche monétaire.

## 11. Gouvernance

L'association est de droit français (loi 1901), siège social à Pelleautier (Hautes-Alpes), publication des statuts au JOAFE (avril 2023, ré-adoptée en juillet 2025). Trois principes structurels :

- **Décision par recherche du consentement** d'abord, sinon majorité 2/3, sinon AG. Tirage au sort en cas d'égalité.
- **Vote pondéré par jetons** avec exposant *sharp* = ½ (vote quadratique) : ni « 1 personne 1 voix », ni « 1 euro 1 voix », un compromis qui évite l'écrasement par les gros porteurs sans diluer l'engagement.
- **Visioconférence hebdomadaire** ouverte aux adhérents et invités, comptes rendus publiés sur le site, traçabilité complète via le dépôt git du site web.

Le Conseil d'Administration est élu en AGO, 3 ans renouvelable, avec rééquilibrage régulier (cf. AGO 2026). Le secrétariat reste actuellement à pourvoir — opportunité pour un adhérent rigoureux et présent.

## 12. Appel à partenariat

À ce stade de notre développement, nous cherchons :

- **Adhérents pionniers** disposés à parrainer, à porter la web of trust, et à utiliser la première version de la plateforme de change en 2027.
- **Partenaires B2B** (PME, professions juridiques, collectivités) qui souhaitent une alternative auditée et souveraine à EUDI Wallet, et sont prêts à entrer dans une démarche pilote en 2027.
- **Fondations de financement** du logiciel libre et de l'innovation sociale, pour soutenir le développement de la plateforme de change et l'achèvement de Djibian Onboarding.
- **Contributeurs techniques** sur le front-end Djibian Onboarding (Tauri / Angular / Rust), poste orphelin depuis avril 2026.

Au-delà du financement, nous valorisons les partenariats qui créent des **cas d'usage concrets** : un notaire pilote, une PME pilote, une collectivité pilote, un déploiement à l'étranger. Les premiers cas d'usage tirants vaudront davantage que des subventions sans contrepartie d'usage.

> **Contact** : <jjbrucker@foopgp.org> — <https://foopgp.org>
> Siège social : 75 Impasse Serre des Isnards, F-05000 Pelleautier
> SIREN 923 831 408 — Préfecture de région PACA, déclaration prestataire n° 93050099805
