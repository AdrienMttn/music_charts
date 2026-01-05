<template>
  <header class="vibz-header">
    <div class="vibz-logo">
      <button class="vibz-nom">Vibz</button>
    </div>

    <nav class="vibz-nav">
      <button>Favoris</button>
      <button>Profil</button>
      <button>Artiste</button>
    </nav>
  </header>
</template>

<style scoped>
.vibz-header {
  display: flex;             /* Active Flexbox pour aligner Logo et Nav sur une ligne */
  justify-content: space-between; /* Pousse le logo à gauche et la nav à droite */
  align-items: center;       /* Centre verticalement les éléments (logo/boutons) */
  padding: 20px 5%;          /* 20px de haut/bas, et 5% de marge dynamique sur les côtés */
  color: white;              /* Couleur du texte par défaut */
  width: 100%;               /* Prend toute la largeur disponible */
  box-sizing: border-box;    /* Inclut le padding dans le calcul de la largeur (évite le débordement) */
}

.vibz-nom {
  letter-spacing: 3px;       /* Écarte légèrement les lettres pour un look moderne */
  background: none;          /* Supprime le fond gris par défaut */
  border: none;              /* Supprime le contour */
  color: white;              /* Texte en blanc */
  font-size: 1.8rem;           /* Taille du texte du logo */
  font-weight: 700;          /* Même épaisseur que les autres */
  letter-spacing: 3px;       /* Écarte légèrement les lettres */
  cursor: pointer;           /* La main au survol */
  transition: 0.3s;
}

.vibz-logo button {
  padding: 0;
  font-family: inherit;      /* Garde la même police que le reste */
}

.vibz-nav {
  display: flex;             /* Aligne les boutons les uns à côté des autres */
  /* GAP DYNAMIQUE : min 15px, idéal 15% de l'écran, max 250px */
  gap: clamp(20px, 10vw, 150px); 
}

.vibz-nav button {
  background: none;          /* Supprime le fond gris par défaut du bouton */
  border: none;              /* Supprime le contour par défaut */
  color: white;              /* Texte en blanc */
  font-size: 1.8rem;           /* Taille lisible pour les boutons */
  font-weight: 600;          /* Épaisseur semi-grasse */
  cursor: pointer;           /* Affiche la main au survol */
  transition: 0.3s;          /* Fluidité de 0.3 seconde pour l'animation de couleur */
  white-space: nowrap;       /* Empêche le texte de revenir à la ligne si l'espace est petit */
}



/* Changement de couleur quand la souris passe sur un bouton */
.vibz-nav button:hover {
  color: #FFD6F0;            /* Rose très clair */
}

/* --- RESPONSIVE : TABLETTES (Moins de 1024px de large) --- */
@media (max-width: 1024px) {
  .vibz-nav {
    gap: 50px;               /* On réduit l'espace fixe à 50px pour que tout tienne */
  }
}

/* --- RESPONSIVE : MOBILES (Moins de 600px de large) --- */
@media (max-width: 600px) {
  .vibz-header {
    flex-direction: column;  /* On empile : le Logo en haut, les boutons en dessous */
    gap: 15px;               /* Espace entre le logo et le bloc de navigation */
    padding: 15px;           /* Réduction de la marge pour gagner de la place */
  }

  .vibz-nav {
    gap: 20px;               /* Espace serré entre les boutons sur téléphone */
    width: 100%;             /* La nav prend toute la largeur */
    justify-content: center; /* Centre les 3 boutons horizontalement */
  }

  .vibz-nav button {
    font-size: 0.9rem;       /* Texte légèrement plus petit pour mobile */
  }
}
</style>