<script setup lang="ts">
import VibzHero from "@/components/VibzHero.vue"; 
import VibzHitsTable from "@/components/VibzHitsTable.vue";
</script>

<template>
  <div class="vibz-container">

    <section class="vibz-title-section">
      <h1 class="vibz-title">VIBZ</h1>
    </section>

    <VibzHero />

    <div class="vibz-table-container">
      <p class="table-intro">
        Top 20 Hits <br/> 
        <strong>Voici le top 20 de la semaine : </strong>
      </p>

      <div class="vibz-table-wrapper">
        <table class="hits-table">
          <VibzHitsTable />
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
        </table>
      </div>
    </div>
  </div>
</template>

<style scoped>
.vibz-container {
  position: relative;
  overflow-x: hidden;
  width: 100%;
}

.vibz-title-section {
  display: flex;
  justify-content: center;
  margin-top: 40px;
}

.vibz-title {
  font-size: clamp(3rem, 15vw, 3rem);
  font-weight: 100;
  letter-spacing: 6px;
  text-transform: uppercase;
  text-align: center;
}

/* STYLE TABLEAU */
.vibz-table-container {
  max-width: 1100px;
  margin: 80px auto;
  padding: 0 5%;
}

.table-intro {
  color: #ffffff;
  margin-bottom: 25px;
  font-size: 1.4rem;
}

.hits-table {
  width: 100%;
  border-collapse: separate;
  border-spacing: 0 10px;
}

.hits-table td {
  background: rgba(255, 255, 255, 0.05);
  padding: 12px 20px;
  color: white;
}

.hits-table td:first-child { border-radius: 12px 0 0 12px; font-weight: 900; }
.hits-table td:last-child { border-radius: 0 12px 12px 0; }

</style>