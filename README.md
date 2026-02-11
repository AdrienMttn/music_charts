# 🎵 Music Charts - Vibz

<div align="center">

![Music Charts Banner](https://img.shields.io/badge/Music-Charts-FF6B6B?style=for-the-badge&logo=youtube-music&logoColor=white)
[![Vue.js](https://img.shields.io/badge/Vue.js-3.5-4FC08D?style=for-the-badge&logo=vue.js&logoColor=white)](https://vuejs.org/)
[![Express](https://img.shields.io/badge/Express-5.1-000000?style=for-the-badge&logo=express&logoColor=white)](https://expressjs.com/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)

**Découvrez et écoutez le Top 20 des musiques de la semaine sur YouTube !**

[Installation](#-installation) • [Fonctionnalités](#-fonctionnalités) • [Technologies](#-technologies) • [Contributeurs](#-contributeurs)

</div>

---

## 📖 Description

**Music Charts - Vibz** est une application web moderne qui vous permet de découvrir et d'écouter le **Top 20 des musiques les plus populaires de la semaine** sur YouTube. L'application propose une interface élégante et intuitive pour explorer les classements musicaux par pays, consulter les artistes, et créer votre propre collection de favoris.

### ✨ Fonctionnalités

- 🎯 **Top 20 Hebdomadaire** : Consultez le classement des 20 musiques les plus écoutées de la semaine
- 🎧 **Lecteur Audio Intégré** : Écoutez vos musiques préférées directement depuis l'application
- 🌍 **Classements Internationaux** : Accédez aux tops de différents pays (Global, France, États-Unis, Italie)
- 📅 **Historique des Semaines** : Explorez les classements des semaines précédentes
- 🎤 **Pages Artistes** : Découvrez la discographie complète de vos artistes préférés
- ⭐ **Favoris** : Créez votre propre collection de musiques favorites
- 👤 **Système de Compte** : Inscription et connexion sécurisées
- 🔍 **Recherche d'Artistes** : Trouvez facilement vos artistes préférés

---

## 🚀 Installation

### Prérequis

Avant de commencer, assurez-vous d'avoir installé :

- **Node.js** (v20.19.0 ou >=22.12.0)
- **MySQL** (v8.0 ou supérieur)
- **npm** ou **pnpm**

### Étapes d'installation

1. **Cloner le dépôt**
   ```bash
   git clone https://github.com/AdrienMttn/music_charts.git
   cd music_charts
   ```

2. **Configurer la base de données**
   ```bash
   # Se connecter à MySQL
   mysql -u root -p
   
   # Créer la base de données
   source BDD/bdd.sql
   
   # Optionnel : Importer des données de test
   source BDD/dump.sql
   ```

3. **Configurer le Backend**
   ```bash
   cd backend
   npm install
   
   # Créer un fichier .env avec vos paramètres MySQL
   cp .env.example .env
   # Éditer le fichier .env avec vos identifiants
   ```

4. **Configurer le Frontend**
   ```bash
   cd ../frontend
   npm install
   ```

5. **Installer Pinia (gestion d'état)**
   ```bash
   cd ..
   npm install
   ```

---

## 💻 Utilisation

### Démarrer l'application

1. **Lancer le Backend** (dans un terminal)
   ```bash
   cd backend
   npm run dev
   ```
   Le serveur API démarrera sur `http://localhost:3000`

2. **Lancer le Frontend** (dans un autre terminal)
   ```bash
   cd frontend
   npm run dev
   ```
   L'application web sera accessible sur `http://localhost:5173`

### Développement

- **Backend** : Le serveur utilise `nodemon` pour le rechargement automatique
- **Frontend** : Vite assure le Hot Module Replacement (HMR) pour un développement rapide

### Build de production

```bash
# Frontend
cd frontend
npm run build

# Le dossier dist/ contiendra les fichiers optimisés pour la production
```

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

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/AdrienMttn">
        <img src="https://github.com/AdrienMttn.png" width="100px;" alt="Adrien"/>
        <br />
        <sub><b>Adrien Muttin</b></sub>
      </a>
      <br />
      <sub>Développeur Principal</sub>
    </td>
  </tr>
</table>

---

## 📝 API Endpoints

### Musique
- `POST /GetWeeklyTop` - Récupérer le top hebdomadaire
- `GET /GetDateWeek` - Obtenir les dates de semaines disponibles
- `POST /GetArtist` - Récupérer les informations d'un artiste
- `GET /GetAllArtists` - Liste de tous les artistes
- `POST /GetArtistsByName` - Rechercher des artistes par nom
- `POST /GetAudioUrl` - Obtenir l'URL audio d'une musique

### Utilisateur
- `POST /CreateUser` - Créer un nouveau compte
- `POST /Login` - Se connecter
- `POST /Logout` - Se déconnecter
- `POST /AddRemoveFavorite` - Ajouter/retirer des favoris
- `POST /GetFavoriteByUserId` - Récupérer les favoris d'un utilisateur

---

## 📄 Licence

Ce projet est un projet personnel open-source.

---

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :

1. Fork le projet
2. Créer une branche pour votre fonctionnalité (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

---

## 📧 Contact

Pour toute question ou suggestion, n'hésitez pas à ouvrir une issue sur GitHub.

---

<div align="center">

**Fait avec ❤️ et 🎵 par l'équipe Music Charts**

⭐ N'oubliez pas de mettre une étoile si vous aimez ce projet !

</div>
