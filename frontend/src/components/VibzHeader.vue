<template>
  <!-- Conteneur principal du header -->
  <header class="vibz-header">

    <!-- Nom / logo du site -->
    <h1 class="vibz-nom">VIBZ</h1>

    <!-- Navigation contenant les trois boutons -->
    <nav class="vibz-nav">
      <button>☆ Favoris</button>   <!-- Bouton Favoris -->
      <button>Profil</button>      <!-- Bouton Profil -->
      <button>Artiste</button>     <!-- Bouton Artiste -->
    </nav>

  </header>
</template>

<style scoped>
/* Style général du header */
.vibz-header {
  display: flex;                     /* Met le logo et la nav sur la même ligne */
  justify-content: space-between;    /* Logo à gauche, boutons à droite */
  align-items:  center;              /* Centre verticalement les éléments */
  padding: 20px 10px;                /* Espacement interne */
  color: white;                      /* Couleur du texte */
}

/* Style du texte "VIBZ" */
.vibz-nom {
  font-size: 1.1rem;                 /* Taille du texte */
  font-weight: 900;                  /* Texte très épais */
  letter-spacing: 3px;               /* Espacement entre les lettres */
  text-transform: uppercase;         /* Met en majuscules */
}

/* Conteneur des boutons */
.vibz-nav {
  display: flex;                     /* Aligne les boutons horizontalement */
  gap: 250px;                        /* Grand espace entre chaque bouton */
}

/* Style des boutons */
.vibz-nav button {
  background: none;                  /* Pas de fond */
  border: none;                      /* Pas de bordure */
  color: white;                      /* Texte blanc */
  font-size: 1.1rem;                 /* Taille du texte */
  font-weight: 600;                  /* Texte semi-gras */
  cursor: pointer;                   /* Curseur "main" */
  transition: 0.3s;                  /* Animation douce */
}

/* Effet au survol */
.vibz-nav button:hover {             /* Change la couleur au hover */
  color: #FFD6F0;
}
</style>
