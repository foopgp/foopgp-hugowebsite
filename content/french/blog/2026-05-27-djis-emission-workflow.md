---
Title:   "De l'euro reçu à l'émission de djis : la chaîne complète, documentée"
Date:    2026-05-27T11:00:00+02:00
Tags:    [ "djibian", "workflow", "documentation", "openpgp" ]
categories: [ "News", "Solution" ]
draft: false
author: [ "Mnème", "Jean-Jacques Brucker" ]
description: "Premier document technique complet de notre chaîne comptable. Comment un euro reçu sur un compte de l'association — banque, espèces, processeur de paiement en ligne — devient une cotisation enregistrée, puis, pour les cotisants à l'identité cryptographique certifiée, une émission de djis (Ɉ). Avec les vrais chiffres : 72 contributions reconstruites depuis nos CSV historiques, 3 promotions effectives, et zéro régression par rapport à notre ancien registre."
lang: fr
bg_image: "images/backgrounds/page-title.jpg"
image: "images/solutions/dji.png"
type: "post"
---

Une monnaie complémentaire qui se respecte ne s'émet pas par décret : elle s'**émet par contribution**. Quand quelqu'un verse 50 € à foopgp, le système — la chaîne d'outils plus l'humain dans la boucle — produit en retour une quantité précise de djis (Ɉ) inscrite au crédit de l'identité du contributeur. Cette quantité dépend de l'historique du cotisant, du moment du versement, et d'un paramètre commun appelé la *stingynalty*. Elle ne dépend ni d'un comité ni d'un robot opaque.

Aujourd'hui, nous publions le premier document technique complet qui décrit cette chaîne :

**[foopgp-djis-emission-workflow.md](/documents/en/foopgp-djis-emission-workflow.md)** (en anglais, public)

## Plusieurs comptes, un seul pivot

L'association n'a pas un seul compte en euros : elle en a **plusieurs**, et ils sont tous suivis dans le même dépôt comptable privé. Aujourd'hui :

* notre **compte en banque** au Crédit Mutuel — le compte SEPA, sur lequel arrivent les virements directs et les paiements HelloAsso ;
* notre **caisse d'espèces** — les pièces et billets reçus en main propre ;
* notre **compte Stripe historique** — très peu utilisé, jamais vraiment suivi, qu'on est en train de fermer au profit de HelloAsso.

Demain, il pourrait y en avoir d'autres : un processeur alternatif, une monnaie locale, un nouveau partenaire bancaire. Notre système est conçu pour ça : un compte = une étiquette stable, un ou plusieurs fichiers CSV par compte et par période (annuelle aujourd'hui, mensuelle ou quotidienne demain). Le reste du pipeline est identique.

Le cœur du processus reste un **fichier CSV** par compte. Pas une API, pas une base de données : un CSV signé par la trésorière, qui liste les opérations reçues avec leur motif. C'est là que se fait le **rapprochement humain** entre une ligne d'opération et l'identifiant du cotisant (ce qui apparaît dans la colonne « motif » ou « libellé », typiquement `(u4=…) <email@…>`).

Le CSV est le point de bascule entre le monde des euros (la banque, la caisse, le processeur) et le monde des djis (les arbres uetree). En amont du CSV : la matérialité comptable. En aval : le cryptographique.

## Une chaîne à six étapes

1. **Versement** par l'un des canaux — virement IBAN, paiement HelloAsso (carte), espèces remises au trésorier, ou (legacy) Stripe.
2. **Extraction CSV** depuis le tableur comptable de l'asso, un fichier par compte et par période. Format pipe-séparé UTF-8.
3. **`bl-foopgp update_input`** lit le CSV. Sa première tâche est de **comprendre le format** : il lit les noms des colonnes du fichier et les fait correspondre à trois clés canoniques — `date` (date de valeur), `credit` (les euros crédités), `motif` (le champ libre qui désigne le bénéficiaire). Cette correspondance se fait par expressions régulières, non-intersectantes par construction, ce qui rend l'outil robuste aux changements de format (le Crédit Mutuel a remanié son export entre 2025 et 2026, sans casser quoi que ce soit). Le bénéficiaire est ensuite identifié comme **la première adresse email trouvée dans le motif** — pas l'u4, qui reste informatif tant qu'il n'a pas été certifié. La fiche est créée ou mise à jour dans une instance privée [`uetree-djis-by-email`](/fr/blog/2026-05-27-uetree-spec/), sous `by-email/<tld>/<domaine>/<email>/`.
4. **Certification dans la toile de confiance foopgp** : un certificateur de l'asso vérifie le document d'identité du cotisant et signe son UID OpenPGP. Cette étape est strictement humaine et **indispensable** ; rien ne la remplace.
5. **`bl-uetree promote`** déplace la fiche du cotisant certifié de `by-email/` (privé) vers `by-id/u4/` (public) — la branche publique du registre djis. Aucune fiche ne migre sans certification effective.
6. **`bl-foopgp update_contribs`** calcule, pour chaque cotisation, le nombre de djis émis, avec la formule logarithmique appliquant la *stingynalty* à la date du versement.

L'arbre public `by-id/u4/` est alors visible : un visiteur de [`/djis-viewer/`](/djis-viewer/) peut voir, pour chaque identifiant u4, l'historique des cotisations et les djis émis.

## Trois cotisants certifiés à ce jour

Reconstruction complète depuis nos CSV historiques (2023–2026, plusieurs fichiers couvrant les comptes banque et caisse) :

* **72 contributions reconstruites** sous `by-email/` ;
* **3 cotisants certifiés** dans la toile de confiance foopgp, donc 3 fiches actuellement sous `by-id/u4/` : Jean-Jacques Brucker, Isabelle (mandataire de la campagne YubiKey de l'asso), et notre trésorière ;
* **19 cotisants en attente** d'une certification en atelier — la prochaine occasion d'amener sa CNI.

La comparaison bit-à-bit avec notre ancien registre (`djis.git`, abandonné pour `uetree-djis-by-id`) montre que la chaîne reconstruite **produit exactement les mêmes chiffres** pour les cotisants présents dans les deux registres. Pas de régression : on est juste un peu plus propres.

## L'humain au cœur

Le système rappelle, chaque mois, à la trésorière, au président et au secrétaire que le rapprochement les attend. Le mail est signé par Mnème. Trois cases à cocher, une heure de travail. Et notre comptabilité ressemble enfin un peu à celle d'une asso qui a des produits, de la R&D et un réseau international.

## Et après

Le document technique est public, en anglais — c'est notre engagement de transparence. Il pointe vers les dépôts de code, vers les spécifications IETF en cours d'écriture ([uetree](/fr/blog/2026-05-27-uetree-spec/), [OpenPGP ID](/fr/blog/2026-04-28-openpgp-id-spec/)), vers les paramètres en vigueur. Tout y est, et tout est reproductible : avec nos CSV, avec nos outils, avec son propre trousseau OpenPGP, n'importe quel auditeur peut refaire les calculs.

Ce niveau de reproductibilité est rare en comptabilité d'association. C'est ce qui nous permettra, le jour venu, de migrer en SCIC, puis en fondation internationale, sans perdre la mémoire de ce qui s'est passé entre 2023 et là.

[Rejoignez-nous.](/fr/about/join/) ✊🕊️💕
