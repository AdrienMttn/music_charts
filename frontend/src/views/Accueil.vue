<script setup lang="ts">
import VibzHeader from "@/components/VibzHeader.vue";
import VibzFooter from "@/components/VibzFooter.vue";
</script>

<template>
  <div class="vibz-container">
    <VibzHeader />

    <section class="vibz-title-section">
      <h1 class="vibz-title">VIBZ</h1>
    </section>

    <section class="vibz-hero">
      <img src="/src/assets/tyler-chromakopia.png" alt="Tyler" class="vibz-image-biais" />
    </section>
    
    <section class="vibz-sous-title-section">
      <h1 class="vibz-sous-title">Une sensation vibrante du meilleur titre du mois. Laissez-vous emporter par cette mélodie qui définisse la saison !</h1>
    </section>
    
    <div class="vibz-buttons">
      <button class="btn-vibz btn-styled">▶ Lecture</button>
      <button class="btn-vibz btn-styled">Connexion</button>
    </div>


    <div class="vibz-hits-section">
      <!-- Contenu des hits à ajouter ici -->
       <div class="vibz-top10">
        <h2 class="main-title">TOP 10 DES HITS DU MOIS </h2>

        <div class="date-badge">
          
          <input
              type="datetime-local"
              id="meeting-time"
              name="meeting-time"
              value="meeting-time"
              min="styled-date"
              max="2025-12-24T16:00" 
            />
        </div>
      </div>
    </div>
    
    <div class="vibz-hits-grid">
    <div v-for="n in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]" :key="n" :class="['hit-card', `pos-${n}`]">
      <div class="album-cover"></div>
      <p class="hit-number">TOP {{ n }}</p>
    </div>
  </div>
    <VibzFooter />
  </div>
</template>




<style scoped>

/* STRUCTURE DE BASE */
.vibz-container {
  overflow-x: hidden; /* Évite le scroll horizontal dû à la rotation de l'image */
  width: 100%;
}

.vibz-title-section {
  display: flex;
  justify-content: center;
  margin-top: 40px;
}

.vibz-sous-title-section {
  display: flex;
  justify-content: left;
  margin-top: 40px;
}

.vibz-sous-title {
  font-size: clamp(1.2rem, 4vw, 2.5rem); 
  letter-spacing: clamp(2px, 1vw, 6px);
  text-align: left;
  font-weight: 500; /* Un peu moins gras que le titre pour le contraste */
  line-height: 1.2; /* Pour que les lignes ne soient pas trop collées si le texte est long */
  padding: 2%;
}

.vibz-title {
  font-size: clamp(3rem, 15vw, 3rem); /* Taille fluide : min 3rem, max 6rem */
  font-weight: 100;
  letter-spacing: 6px;
  text-transform: uppercase;
  text-align: center;
}

.vibz-hero {
  display: flex;
  justify-content: center;
  padding: 40px 20px;
}

.vibz-image-biais {
  width: 100%;
  max-width: 350px; /* Taille max sur desktop */
  height: auto;
  transform: rotate(-10deg);
  border-radius: 12px;
  box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
}




/* ZONE DES BOUTONS */
.vibz-buttons {
  display: flex;
  justify-content: center;
  gap: 100px;
  margin-top: 20px;
  width: 100%;
}

.btn-vibz {
  padding: 12px 30px;
  border-radius: 50px;
  font-weight: 700;
  cursor: pointer;
  transition: 0.3s;
  text-transform: uppercase;
  border: none;
}

.btn-styled {
  padding: 14px 32px;
  min-width: 160px;
  border-radius: 50px;

  /*Typographie*/
  font-family: 'Montserrat', sans-serif;
  font-weight: 700;
  font-size: 0.9rem;
  letter-spacing: 1px;
  text-transform: uppercase;
  
  /* Couleurs et bordures */
  background: rgba(255, 255, 255, 0.1); /* Fond transparent effet verre */
  color: white;
  border: 1px solid rgba(255, 255, 255, 0.4);

  background: rgba(255, 255, 255, 0.1); 
  color: white;
  border: 1px solid rgba(255, 255, 255, 0.4);
  backdrop-filter: blur(10px); /* L'effet de flou en fond */
  
  /* Animation */
  cursor: pointer;
  transition: all 0.3s ease;
}
.btn-styled:hover {
  background: white;
  color: #64067C;          /* Rose/Violet foncé */
  transform: translateY(-3px); /* Petit saut vers le haut */
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
}

.vibz-top10 {
  margin-top: 50px;
  text-align: center;
}

.main-title {
  font-size: clamp(1.5rem, 4vw, 2.5rem); 
  letter-spacing: clamp(2px, 1vw, 6px);
  text-align: center;
  font-weight: 600;
  margin-bottom: 20px;
}

.vibz-hits-grid {
  display: grid;
  grid-template-columns: repeat(5,1fr);/* 5 colonnes pour répartir les 10 albums */
  grid-template-rows: repeat(3,auto);
  gap: 30px;
  padding: 40px;
  max-width: 1000px;
  margin: 0 auto; /* Centre la grille */
}

.hit-card {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.album-cover {
  width: 110px;
  height: 110px;
  background-color: #D9D9D9;
  border-radius: 5px;
  box-shadow: 0 8px 20px rgba(0,0,0,0.4);
}

.hit-number {
  color: white;
  font-family: 'Montserrat', sans-serif;
  font-weight: 900;
  font-style: italic;
  font-size: 0.8rem;
  margin-top: 10px;
  text-transform: uppercase;
}


/* --- RESPONSIVE --- */

/* Tablettes et Mobiles (Large) */
@media (max-width: 768px) {
  .vibz-title-section {
    margin-top: 30px;
  }
  .vibz-top10 {
    flex-direction: column;
    gap: 20px;
    text-align: center;;
  }
  
  .vibz-image-biais {
    max-width: 280px; /* On réduit l'image sur tablette */
    transform: rotate(-5deg); /* On réduit un peu l'angle pour gagner de la place */
  }
  .vibz-buttons {
    flex-direction: column; /* Empile les boutons sur mobile */
    align-items: center;
    gap: 15px;
  }
  
  .btn-styled {
    width: 85%; /* Plus large sur téléphone pour cliquer facilement */
  }
}

.vibz-hits-grid {
  grid-template-columns: repeat(2, 1fr); /* 2 colonnes sur tablette */
  grid-template-rows: auto;
  gap: 20px;
}

.hit-number {
    font-size: 0.9rem;
  }

/* Petits Mobiles */
@media (max-width: 500px) {
  .vibz-title {
    letter-spacing: 3px; /* On réduit l'espacement pour éviter les coupures */
  }

  .vibz-image-biais {
    max-width: 220px; /* Image plus petite sur téléphone */
  }
  
  .vibz-hero {
    padding: 20px;
  }
  .vibz-sous-title {
    text-align: center; /* Souvent plus joli de centrer le texte sur mobile */
    letter-spacing: 2px;
  }
}
</style>

