---
title: "foopgp — synthèse stratégique"
subtitle: "Sortir de l'effet Cantillon"
date: 2026-05-08
author: "Friends of OpenPGP (foopgp)"
version: "1.2"
---

> *Pour une société plus harmonieuse et respectueuse.*

## 1. Le problème

Notre système monétaire repose sur un privilège : seules certaines institutions (banques commerciales, banque centrale) **créent la monnaie** et choisissent **où elle entre dans l'économie**. C'est l'**effet Cantillon** : ceux qui reçoivent la monnaie nouvelle en premier décident de fait *ce qui aura de la valeur demain*. Tous les autres subissent.

Trois conséquences enchaînées :

1. Asymétrie permanente entre proches et éloignés du robinet monétaire.
2. Obligation de **croissance** pour rembourser une création accompagnée de dette.
3. Croissance infinie dans un monde fini → tensions extractivistes, conflits, dérèglement climatique.

Sortir de l'effet Cantillon n'est pas une condition suffisante de la paix, mais c'en est une **condition nécessaire**.

## 2. La solution, en trois couches emboîtées

| Couche | Produit | Promesse |
|---|---|---|
| **1.** | **OpenPGP ID** sécurisé par une clé matérielle (Yubikey, Nitrokey) | Une identité numérique souveraine, dérivée minimalement de l'état civil, mathématiquement vérifiable, transportable, non délivrée par un État ni par un GAFAM. |
| **2.** | **Djibian** (assemblage Debian) | Un système d'exploitation libre intégrant nos innovations — destiné à essaimer dans d'autres distributions et écosystèmes. |
| **3.** | **dji** (jeton Ɉ) | Une monnaie libre, à émission universelle (TRM Laborde), sans privilège de création. La concrétisation économique du paradigme. |

Tout le reste — formations, ateliers, livres, prestations — est l'**instrumentation** de ces trois couches.

## 3. Modèle économique

Quatre sources de revenus, complémentaires :

- **Adhésion** — cotisation libre depuis l'AGE de juillet 2025. À partir du palier de **6,42 Ɉ générés** par ses cotisations cumulées (≈ 146 € en mai 2026), l'adhérent reçoit sa clé de sécurité physique (Yubikey ou Nitrokey) pré-configurée avec son OpenPGP ID. Le palier en euros croît mécaniquement avec la *stingynalty* (~+0,5 %/mois) : c'est l'incitation pour les pionniers.
- **Ateliers et formations** — déclaration prestataire de formation n° 93050099805 (préfecture PACA) ; OPCO accessible. Série mensuelle d'ateliers Djibian, conférences (Capitole du Libre, JDLL, etc.).
- **Parrainage** — chaque nouvelle adhésion verse 10 % de la cotisation, transformés en djis sur la plateforme de change, au(x) parrain(s) à parts égales (ou à l'asso si aucun parrain). Mécanisme à un seul niveau, transparent, traçable via la web of trust OpenPGP — explicitement non-MLM.
- **Prestations B2B de souveraineté** — aux PME et collectivités cherchant à se prémunir d'EUDI Wallet et autres tiers de confiance imposés.

Trois avantages valorisables face à EUDI Wallet :

1. **Décentralisation** : moins sensible au piratage, résistant au contrôle totalitaire.
2. **Chiffrement intégré** : confidentialité native, résistance à la surveillance de masse.
3. **Interopérabilité** : SSH, Git, mail, signature de documents — un identifiant unique pour tous les usages.

## 4. Plateforme de change €↔Ɉ — pierre angulaire

Le décollage commercial du dji exige une plateforme de change qui rende l'achat trivial pour un utilisateur non-technique. Bitcoin a décollé grâce à Mt. Gox, puis Coinbase. Ğ1 (June) stagne depuis 2017 faute d'un changeur fluide.

**Architecture proposée** :

- Carnet d'ordres **publié par foopgp**, chaque ordre **signé OpenPGP** par son émetteur ;
- Règlement **pair-à-pair**, foopgp jouant le rôle de **séquestre technique** sur le côté euro (transit court, automatique, non rémunéré, donc hors champ PSAN) ;
- Le côté dji est auto-prouvant (transactions on-chain signées) ;
- **Sanctions géométriques** en cas de défaillance (30 → 60 → 120 → 240 jours d'interdiction d'ordres), inscrites au règlement intérieur, votées en AG.

La plateforme est aussi le moteur du parrainage : chaque adhésion génère mécaniquement une transaction d'amorce, le carnet ne démarre pas vide.

## 5. Valeur potentielle du dji

**Estimation plancher (février 2026) : ≈ 2 369 € par dji.**

Calcul, dans l'hypothèse simple où le pouvoir d'achat actuel de la zone euro est traduit en dji selon notre formule de création monétaire :

- Masse monétaire M1 zone euro (février 2026) : **11 236 Md€**, soit ≈ **32 102 €** par citoyen.
- Stingynalty au 1ᵉʳ février 2026 : 1,1049.
- Formule (Article 4 du règlement intérieur) : *log₂(32 102 + 1) / 1,1049 ≈ 13,549 djis/citoyen*.
- Donc **1 Ɉ ≈ 32 102 / 13,549 ≈ 2 369 €**.

**Pressions à la hausse** au-delà du plancher :

- **Adoption** : ≈ 99 % des citoyens de la zone euro sont *en-dessous* des 32 102 € moyens. Lorsqu'ils basculent sur le dji, l'écart se reporte sur le prix.
- **Momentum** : si même 1 % des plus riches achètent en dji ce que foopgp produit (OpenPGP ID, Djibian, prestations), la demande dépasse la base.
- **Parts sociales** : le dji est aussi la part d'un projet qui s'attaque aux parts de marché de Microsoft et Apple (~7 200 Md$ de capitalisation cumulée en 2025).

**Pression à la baisse** : le dividende universel mensuel (4 ‰), partiellement absorbé par la stingynalty (+5 ‰/mois).

Estimation à moyen terme : **1 Ɉ > 2 500 €** est plausible.
*Tout investissement comporte des risques de perte partielle ou totale en capital.*

## 6. Trajectoire 2026 → 2027

| Échéance | Jalon |
|---|---|
| Juin 2026 | Audit comptable rétrospectif. |
| Juillet 2026 | Valorisation des stocks et travaux en cours. |
| Septembre 2026 | Recherche de subventions ciblées. |
| Octobre 2026 | Recrutement d'un gestionnaire. |
| Novembre 2026 | Projection budgétaire 2027-2029. |
| Décembre 2026 | Finalisation Djibian Onboarding (étapes « Investir » et « S'émanciper »). |
| 1ᵉʳ trimestre 2027 | MVP plateforme de change €↔Ɉ. |
| 2ᵉ trimestre 2027 | Premiers contrats B2B (PME, collectivités pilotes). |
| 2028-2029 | Atteinte du seuil de masse critique opérationnelle ; équilibre financier. |

## 7. Appel

À ce stade, nous cherchons :

- des **adhérents pionniers** prêts à parrainer et à porter la web of trust ;
- des **partenaires B2B** (PME, collectivités) en quête d'une alternative souveraine à EUDI ;
- des **fondations** pour financer la plateforme de change et la finalisation de Djibian Onboarding ;
- des **contributeurs techniques** sur le front-end Djibian Onboarding, orphelin depuis avril 2026.

> *Contact : <jjbrucker@foopgp.org> — <https://foopgp.org>*
