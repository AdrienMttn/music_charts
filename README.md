# 🎵 Music Charts - Vibz

<div align="center">

![Music Charts Banner](https://img.shields.io/badge/Music-Charts-FF6B6B?style=for-the-badge&logo=youtube-music&logoColor=white)
[![Vue.js](https://img.shields.io/badge/Vue.js-3.5-4FC08D?style=for-the-badge&logo=vue.js&logoColor=white)](https://vuejs.org/)
[![Express](https://img.shields.io/badge/Express-5.1-000000?style=for-the-badge&logo=express&logoColor=white)](https://expressjs.com/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)

**Découvrez et écoutez le Top 20 des musiques de la semaine sur YouTube !**

[Fonctionnalités](#-fonctionnalités) • [Technologies](#-technologies) • [Contributeurs](#-contributeurs)

</div>

---

## 📖 Description

**Music Charts - Vibz** est une application web moderne qui vous permet de découvrir et d'écouter le **Top 20 des musiques les plus populaires de la semaine** sur YouTube. L'application propose une interface élégante et intuitive pour explorer les classements musicaux par pays, consulter les artistes, et créer votre propre collection de favoris.

### ✨ Fonctionnalités

- 🎯 **Top 20 Hebdomadaire** : Consultez le classement des 20 musiques les plus écoutées de la semaine
- 🎧 **Lecteur Audio Intégré** : Écoutez vos musiques préférées directement depuis l'application
- 🇫🇷 **Classements Français** : 🇫🇷🇫🇷
- 📅 **Historique des Semaines** : Explorez les classements des semaines précédentes
---

## 🛠️ Technologies

### Frontend

- **[Vue.js 3.5](https://vuejs.org/)** - Framework JavaScript progressif
- **[TypeScript 5.9](https://www.typescriptlang.org/)** - Typage statique pour JavaScript
- **[Vue Router 4.6](https://router.vuejs.org/)** - Routage officiel pour Vue.js
- **[Pinia 3.0](https://pinia.vuejs.org/)** - Gestion d'état moderne pour Vue
- **[Tailwind CSS 4.1](https://tailwindcss.com/)** - Framework CSS utilitaire
- **[Vite 7.1](https://vitejs.dev/)** - Build tool ultra-rapide

### Backend

- **[Node.js](https://nodejs.org/)** - Environnement d'exécution JavaScript
- **[Express 5.1](https://expressjs.com/)** - Framework web minimaliste
- **[MySQL2 3.15](https://www.npmjs.com/package/mysql2)** - Client MySQL pour Node.js
- **[Express-Session 1.17](https://www.npmjs.com/package/express-session)** - Gestion de sessions
- **[Bcrypt 6.0](https://www.npmjs.com/package/bcrypt)** - Hachage de mots de passe
- **[dotenv 17.2](https://www.npmjs.com/package/dotenv)** - Variables d'environnement

### Base de données

- **[MySQL 8.0](https://www.mysql.com/)** - Système de gestion de base de données relationnelle
- **Procédures stockées** pour optimiser les requêtes complexes

### Outils de développement

- **[Nodemon](https://nodemon.io/)** - Rechargement automatique du serveur
- **[Vue DevTools](https://devtools.vuejs.org/)** - Outils de débogage pour Vue.js
- **[TypeScript Compiler](https://www.typescriptlang.org/)** - Compilation et vérification de types

---

## 📁 Structure du projet

```
music_charts/
├── backend/              # Serveur API Express
│   ├── src/
│   │   ├── config/       # Configuration de la BDD
│   │   ├── controller/   # Contrôleurs (logique métier)
│   │   ├── models/       # Modèles de données
│   │   └── index.js      # Point d'entrée du serveur
│   └── package.json
├── frontend/             # Application Vue.js
│   ├── src/
│   │   ├── components/   # Composants réutilisables
│   │   ├── views/        # Pages de l'application
│   │   ├── router/       # Configuration du routeur
│   │   ├── stores/       # Stores Pinia
│   │   ├── models/       # Modèles TypeScript
│   │   ├── Services/     # Services API
│   │   └── main.ts       # Point d'entrée de l'app
│   └── package.json
├── BDD/                  # Scripts SQL
│   ├── bdd.sql          # Schéma de la base de données
│   └── dump.sql         # Données de test
└── README.md
```

---

## 👥 Contributeurs

[![All Contributors](https://img.shields.io/github/contributors/owner/repo)](https://github.com/owner/repo/graphs/contributors)

---

## 📄 Licence

Ce projet est un projet personnel open-source.

---

<div align="center">

**Fait avec ❤️ et 🎵 par l'équipe Music Charts**

⭐ N'oubliez pas de mettre une étoile si vous aimez ce projet !

</div>
