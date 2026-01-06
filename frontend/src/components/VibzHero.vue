<template>
  <div class="vibz-hero-flex">
    <div class="vibz-content-column">
      <section class="vibz-sous-title-section-hero">
        <h1 class="vibz-sous-title">
          Une sensation vibrante du meilleur titre du mois. <br />
          Laissez-vous emporter par cette mélodie qui définisse la saison !
        </h1>
      </section>
      
      <div class="vibz-buttons-hero">
        <button class="btn-styled">▶ Lecture</button>
        <button class="btn-styled">Connexion</button>
      </div>
    </div>

    <div class="vibz-image-column">
      <img 
        src="/src/assets/tyler-chromakopia.png" 
        alt="Tyler" 
        class="hero-img-styled"
      />
    </div>
  </div>
</template>

<style scoped>
.vibz-hero-flex {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 40px 8% 0 10%;
  gap: 40px;
}

.vibz-content-column {
  flex: 1.2;
  display: flex;
  flex-direction: column;
  gap: 30px;
}

.vibz-sous-title {
  font-size: clamp(1.2rem, 3.5vw, 2.5rem);
  text-align: left;
  font-weight: 500;
  line-height: 1.2;
  color: white;
}

.vibz-buttons-hero {
  display: flex;
  gap: 20px;
}

.btn-styled {
  padding: 14px 32px;
  min-width: 160px;
  border-radius: 50px;
  font-family: 'Montserrat', sans-serif;
  font-weight: 700;
  font-size: 0.9rem;
  text-transform: uppercase;
  background: rgba(255, 255, 255, 0.1); 
  color: white;
  border: 1px solid rgba(255, 255, 255, 0.4);
  backdrop-filter: blur(10px);
  cursor: pointer;
  transition: all 0.3s ease;
}

.btn-styled:hover {
  background: white;
  color: #64067C;
  transform: translateY(-3px);
}

.vibz-image-column {
  flex: 0.8;
  display: flex;
  justify-content: center;
}

.hero-img-styled {
  width: 100%;
  max-width: 400px;
  border-radius: 12px;
  box-shadow: 0 20px 40px rgba(0,0,0,0.3);
  transform: rotate(-10deg);
}

/* RESPONSIVE : Mode Vertical */
@media (max-width: 1024px) {
  .vibz-hero-flex {
    flex-direction: column-reverse;
    text-align: center;
    margin: 20px 5%;
  }
  .vibz-sous-title { text-align: center; }
  .vibz-buttons-hero { justify-content: center; }
  .hero-img-styled { max-width: 280px; transform: rotate(-5deg); }
}
</style>
