---
https://fossforce.com/2025/04/un-drops-google-for-cryptpad-an-encrypted-open-source-office-suite/title: "2025 S18 Rapport Hebdomadaire"
lang: fr
date: 2025-05-06T20:30:00+01:00
draft: true
bg_image: "images/backgrounds/puzzle.jpg"
description : "Compte rendu du conseil du Mardi soir"
image: "images/logos/logo-black-pgp.png"
type: "meeting"
---

*Les comptes rendus précédents sont aussi [sur notre forge git](https://codeberg.org/foopgp/foopgp-hugowebsite/src/commit/03f71eeb25b3bb4c028805feb70958ea36ee068d/content/french/assembly).*

---

***Présents :*** *Laurent C, Jean-Jacques B, Didier L, Henri G, Kélyan, François R.*

### Ordre du jour pour le prochain conseil, mardi 20 mai 2025 à **21h00**, en visio sur <https://cloud.foopgp.org/call/4du5irxe>

*Note : Si problème avec le premier lien de visio, se connecter sur [https://meet.jit.si/foopgp](https://meet.jit.si/foopgp).*

- Points habituels : (revue de presse + déplacements et actions réalisés, en cours, ou à prévoir).

### Ordres du soir

- Revue de presse.
- Point sur les participations aux forums ou salons.
- Actions réalisés, en cours, à prévoir.

### Revue de presse

- Par rapport à un débat interne sur les notions de données public, privé ou personnel : <https://support.reddithelp.com/hc/fr/articles/26410290525844-Public-Content-Policy>
- Facebook, Instagram et WhatsApp (c'est-à-dire le groupe Meta) va analyser nos publications publiques pour alimenter son IA du nom Llama. Voici comment s'y opposer impérativement avant le 27 mai : <https://freelanceinfos.fr/comment-empecher-meta-daspirer-vos-photos-et-messages-pour-son-ia/>
- Les attaques par ransomware en hausse : <https://www.linformaticien.com/magazine/cybersecurite/63407-stoik-detecte-une-recrudescence-des-ransomwares-chez-ses-assures.html>
- OpenAI rachète un outil de développement par IA : <https://www.linformaticien.com/magazine/biz-it/63393-openai-va-racheter-l-outil-de-programmation-assiste-par-ia-windsurf.html>
- Les violations de données en hausse selon la CNIL : <https://www.linformaticien.com/magazine/tendances/968-donnees-personnelles/63379-les-violations-de-donnees-en-hausse-selon-la-cnil.html>
- <https://futurism.com/visa-ai-agents-your-credit-card>

  <https://mamot.fr/@Khrys/114456302881992696>
- Firefox est inquiet à cause d'un procès contre Google dont le navigateur Chrome pourrait être racheté par OpenAI : <https://siecledigital.fr/2025/05/06/firefox-survivra-t-il-sans-google-lavenir-de-mozilla-plus-incertain-que-jamais/>  
  <https://www.lesnumeriques.com/appli-logiciel/c-est-extremement-inquietant-mozilla-alerte-firefox-pourrait-disparaitre-sans-google-n236418.html>
- Microsoft relance une fonction controversée dans son IA Copilot du nom de Recall : <https://www.distributique.com/actualites/lire-microsoft-relance-la-fonction-controversee-recall-36166.html>
- Petite opinion "récente" de fabrice eplboin:  <https://souveraine.tech/fabrice-epelboin/>

### Activité récente

#### Au cœur de la réunion

- Retour sur la conférence aux États Généreux du rdb, les progrès, et les points à améliorer. Petite réf au passage : "<https://fr.wikipedia.org/wiki/Loi_de_Gresham>" 
- Discussion sur le groupe "alliance du peuple", divergences et convergences. Leur vision avec microtaxation sur les échanges pose le même problème que la taxe sur le chiffre d'affaire, qui existait avant [la TVA](https://fr.wikipedia.org/wiki/Taxe_sur_la_valeur_ajout%C3%A9e). 
- Débat sur l'IA, l'utilité, le sens, du travail et de l'existence humaine. Ce qui nous amène aux divergence entre technosolutionisme et décroissance. Et à de grands débats idéologico-philosophiques.
- En réaction aux histoire FTC-Trump-Google-Mozilla, inquiétude sur la fin ou la dystopie du web.

#### Actions terminées (Merci piseb)

- Amélioration de notre serveur de clé HKP/HKPS : [https://keys.foopgp.org](http://keys.foopgp.org:11371/pks/lookup?op=index&search=udid4)
- Migration du site web (autrefois hébergé sur un serveur perso) vers le serveur de l'association.

###### AMF

L'AMF a répondu à la question : *quelles sont les obligations réglementaires auxquelles nous pourrons être assujettis si nous commençons à utiliser nos jetons de pouvoir comme monnaie d'échange ?* :

* *Nous vous invitons à contacter un conseiller juridique qui pourra vous éclairer sur la réglementation applicable à votre projet, l’AMF ne pouvant jouer ce rôle.*
* *Vous trouverez par ailleurs des informations concernant la réglementation applicable aux Prestataires de services sur actifs numériques sur [la page suivante](https://www.amf-france.org/fr/espace-professionnels/fintech/mes-relations-avec-lamf/obtenir-un-enregistrement-un-agrement-psan).*

Notre conseiller juridique nous a renvoyé sur les pages 28-29 de [la publication du Journal Officiel de l'UE L150/40](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=uriserv%3AOJ.L_.2023.150.01.0040.01.FRA&toc=OJ%3AL%3A2023%3A150%3ATOC) du [9 juin 2023](https://eur-lex.europa.eu/legal-content/FR/TXT/?uri=OJ:L:2023:150:TOC). Tout en résumant certaines des nombreuses "exemptions qui permettent aux émetteurs d’alléger, voire de supprimer le formalisme" de l'article 4, titre II.

Livre blanc commencé : <https://foopgp.org/fr/about/white-book/>

### Actions à mener (TODO list)

- Appel à cotisation pour le nouvel exercice (dépend de l'avancement  https://foopgp.org/fr/about/donate/ )
- Commande de bannière  (slogan : ***Liberté ? Vie privée ? Responsabilité ? Maîtrisez vos données ! )***
- Packager les bash-libs puis pgpid pour debian (et ses dérivés).
- Étudier les outils et infrastructures utilisé par les notaires, notamment Genapi/Septeo, pour connaître leur attentes et (in)satisfactions.
- Étudier et cibler laposte.net, déjà en charge de confidentialité avec notamment les médecin. Exemple : https://www.apicrypt.org/

### Agenda

- Mardi 13 mai 19h30 : RdV Linux alpes : <<https://www.linux-alpes.org/soiree-linux-alpes-a-gap-le-13-mai/>>
- Mercredi 14 mai de 9 h 30 à 17 h à Gap : [ADELHA : Mobiliser, intégrer et fidéliser ses bénévoles.](https://ADELHA%20:%20Mobiliser,%20int%C3%A9grer%20et%20fid%C3%A9liser%20ses%20b%C3%A9n%C3%A9voles.)
- Jeudi 15 mai 2025 à Lyon : [Rencontres Professionnelles du Logiciel Libre](https://www.rpll.fr/)
- Jeudi 22 mai de 9 h 30 à 12 h 00 à Gap : [ADELHA : Penser ses fiches missions de bénévolat](https://docs.google.com/forms/d/e/1FAIpQLSfYEgB59lleVhW4ILt-r785Kjpv0-LdrRFxFbWrImAIXQBE9g/viewform)
- WE du 24 et 25 mai 2025 à Lyon : [Les 26es Journées du Logiciel Libre](https://www.jdll.org/contact-and-informations)
- WE du 25 au 27 juillet 2025 à Saint-Maixent-l'École (79400) : <https://decroissancelefestival.org/>
- Du jeudi 7 au dimanche 10 Août : Les résistantes 2025 en Normandie.
- camp CHATONS 7-10 août
- [... agenda du libre](https://www.agendadulibre.org)

---
