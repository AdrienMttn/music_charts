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


    <div class="vibz-table-container">
      <p class="table-intro">
        Envie de découvrir plus de hits ? <br/> 
        <strong>Voici d'autres musiques qui pourrait te plaire !</strong>
      </p>

      <div class="vibz-table-wrapper">
        <table class="hits-table">
          <thead>
            <tr>
              <th>Rang</th>
              <th>Image</th>
              <th>Titre</th>
              <th>Artiste</th>
              <th>Album</th>
              <th>Date de sortie</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="i in 10" :key="i">
              <td>{{ i + 10  }}
                <span v-if="i % 2 === 0" class="trend-up">▲</span>
                <span v-else class="trend-down">▼</span>
              </td>


              <td>
                <div class="table-album-cover"></div>
              </td>

              <td>Titre {{ i + 10 }}</td>

              <td>Artiste {{ i + 10 }}</td>

              <td>Album {{ i + 10 }}</td>

              <td>2025-01-{{ i + 10 }}</td>

            </tr>
          </tbody>
        </table>
      </div>
      </div>
      
  </div>
  
</template>




<style scoped>

/* STRUCTURE DE BASE */
.vibz-container {
  position: relative;
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
  margin-top: 30px;
  max-width: 60%;
  margin-left: 10%;
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
  position: absolute; /* Elle flotte */
  top: 80px;         /* Hauteur par rapport au haut */
  right: 12%;          /* Décalage depuis la droite */
  width: 330px;       /* Largeur fixe */
  z-index: 5;        /* Au-dessus des autres éléments */
  padding: 0;
  
}

.vibz-image-biais {
  width: 130%;
  max-width: 500px; /* Taille max sur desktop */
  height: auto;
  transform: rotate(-10deg);
  border-radius: 12px;
}

/* ZONE DES BOUTONS */
.vibz-buttons {
  display: flex;
  justify-content: center;
  gap: 100px;
  margin-top: 20px;
  width: 100%;
  padding-left: 5%;
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

/* --- STYLE DU TABLEAU AVEC TENDANCES --- */

.vibz-table-container {
  max-width: 1100px;
  margin: 80px auto;
  padding: 0 5%;
}

.table-intro {
  color: #ffffff !important;
  margin-bottom: 25px;
  font-size: 1.4rem;
}

.vibz-table-wrapper {
  overflow-x: auto;
}

.hits-table {
  width: 100%;
  border-collapse: separate;
  border-spacing: 0 10px;
  min-width: 800px;
}

.hits-table th, 
.hits-table td {
  color: #ffffff ;
  text-align: left;
  padding: 12px 20px;
}

.hits-table th {
  color: #ffffff ;
  font-size: 0.8rem;
  text-transform: uppercase;
}

.hits-table td {
  background: rgba(255, 255, 255, 0.05);
  vertical-align: middle;
}

/* Arrondis des lignes */
.hits-table td:first-child { border-radius: 12px 0 0 12px; font-weight: 900; }
.hits-table td:last-child { border-radius: 0 12px 12px 0; }

.table-album-cover {
  width: 50px;
  height: 50px;
  background-color: #333;
  border-radius: 6px;
}

/* --- STYLES DES FLÈCHES --- */
.trend-up {
  color: #00ff88 !important; /* Vert fluo */
  margin-left: 8px;
  font-weight: bold;
}

.trend-down {
  color: #ff3333 !important; /* Rouge vif */
  margin-left: 8px;
  font-weight: bold;
}

.trend-stable {
  color: #888 !important;
  margin-left: 8px;
}

/* --- RESPONSIVE --- */

/* Tablettes et Mobiles (Large) */
@media (max-width: 768px) {
  
  .vibz-hero {
    position: relative; 
    top: 0;
    right: 0;
    display: flex;
    justify-content: center;
    padding: 20px;
    margin-top: 10px;
  }

  /* On recentre le texte et les boutons */
  .vibz-sous-title-section {
    max-width: 100%;
    justify-content: center;
    padding: 0 5%;
    margin-top: 20px;
  }

  .vibz-sous-title {
    text-align: center;
  }

  .vibz-buttons {
    justify-content: center;
    padding-left: 0;
    flex-direction: column; /* Boutons l'un sur l'autre */
    align-items: center;
    gap: 15px;
  }

  .vibz-title-section {
    margin-top: 30px;
  }

  .vibz-top10 {
    flex-direction: column;
    gap: 20px;
    text-align: center;
  }
  
  .vibz-image-biais {
    max-width: 280px; 
    transform: rotate(-5deg); 
  }
  
  .btn-styled {
    width: 85%; 
  }

  .vibz-table-container {
    margin: 40px auto;
  }

  .table-intro {
    text-align: center;
    font-size: 1.2rem;
  }

  .vibz-hits-grid {
    grid-template-columns: repeat(2, 1fr); 
    grid-template-rows: auto;
    gap: 20px;
  }

  .hit-number {
    font-size: 0.9rem;
  }
}

/* Petits Mobiles */
@media (max-width: 500px) {
  .vibz-title {
    letter-spacing: 3px; 
  }

  .vibz-image-biais {
    max-width: 220px; 
  }
  
  .vibz-hero {
    padding: 10px;
  }

  .vibz-sous-title {
    text-align: center; 
    letter-spacing: 2px;
  }
}

</style>