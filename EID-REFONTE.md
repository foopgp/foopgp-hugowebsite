# Refonte /eid — niveau B (branche `mneme/eid-page`)

*Notes de travail (hors build Hugo — fichier racine non servi). Mnêmê, 2026-07-28.*

## Objectif
Reprendre `static/eid/index.html` (générateur d'identifiant, ex-UDID4, niveau A fait
en prod) pour :
1. **support u5** (entité) en plus du u4 (personne) — bascule personne/entité ;
2. **MRZ ICAO régénérée** et affichée ;
3. bonnes idées d'IHM de **djibian-onboarding** (interface distincte).

## Sources de vérité des algos (NE PAS réinventer — porter/vérifier)
- **u4** = dérivé d'une **MRZ ICAO 9303**, PAS directement du nom :
  `bl_pgpid_gen_u4` (bash-libs `bin/bl-pgpid`) → construit une *fakemrz*
  `P<<PAYS><NOM><<<PRENOMS><` (88 car., padding zéros) → `bl_pgpid_mrz_to_u4
  --birth-date <YYYY-MM-DD> <mrz88>`. Le calcul réel (hash → base64url + coord14)
  est dans **`bl_pgpid_mrz_to_u4`** + `_bl_icao9303_mrz_analyse`. ⚠️ L'algo u4
  **embarqué dans la page** (MD5 de `SURNAME<<GN1<GN2<YYYY-MM-DD`) est
  potentiellement **périmé/divergent** → à re-vérifier contre `bl_pgpid_mrz_to_u4`
  et remplacer si différent (sinon on génère de faux eids).
- **u5** = `BL_PGPID_U5_REGEX = TIME_REGEX + CO_REGEX` = **ts16 + coord14**.
  Génération dans **`bl_pgpid_gen_uid`** (bl-pgpid l.1061). ts16 = instant de
  création (format `[01-][0-9]{11}\.[0-9]{3}`), coord14 = centroïde pays (déjà
  présent dans la table de la page, colonne 3 : `e_44.52_006.01`…).
- **coord14** : la table `countries` de la page a déjà `[nom, ISO3, coord14]`.
- **MRZ** : `_bl_icao9303_mrz_analyse` (bl-iso7816 / bl-icao9303 ?) = parse ;
  pour la *régénération*, format TD3 (2×44). Réf ICAO 9303 partie 3.
- Orchestration : `pgpid/bin/pgpid-gen` (u4 depuis MRZ, u5 pré-calculé passé en `-5`).

## Plan (incrémental, vérifié à chaque étape)
1. **Porter/vérifier u4-depuis-MRZ** : extraire `bl_pgpid_mrz_to_u4` (hash exact,
   base64url, troncature, ordre coord14) → JS. **Test de non-régression** :
   comparer la sortie de la page à `echo <MRZ> | bl-pgpid gen_u4` (ou pgpid-gen)
   pour ≥3 identités connues (dont JJB `sRyU…`, Mnêmê). Ne rien pousser tant que
   ça ne matche pas au caractère près.
2. **u5** : bascule *personne (u4)* / *entité (u5)*. Entité → champs
   nom d'entité + instant d'origine (par défaut *maintenant*) + lieu → `ts16 + coord14`.
   Vérifier contre `bl_pgpid_gen_uid`.
3. **MRZ TD3 régénérée** affichée (2 lignes 44 car.), cohérente avec l'entrée.
4. **IHM** : reprendre de djibian-onboarding (rendu eid en sticker, carte d'identité,
   copie/QR) tout en gardant une interface distincte.
5. Terminologie EID déjà faite (niveau A) ; liens absolus déjà faits.
6. Nettoyer `static/register/udid4.js` (orphelin) → `eid.js` ou suppression.

## Vérification (garde-fou)
Page = fabrique de vrais identifiants + copiable en standalone → **aucune sortie
crypto poussée sans avoir été comparée à bl-pgpid/pgpid-gen**. Un eid faux est pire
que pas d'eid.

## À trancher avec JJB
- Confirmer que l'algo u4 de la page doit être **remplacé** par le canonique
  (bl_pgpid_mrz_to_u4) et non « laissé tel quel + ajouter u5 ».
- IHM : jusqu'où copier djibian-onboarding vs garder l'esprit léger de la page.
