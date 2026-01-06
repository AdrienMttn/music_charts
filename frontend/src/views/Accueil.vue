<script setup lang="ts">
import VibzHero from "@/components/AccueilComponents/VibzHero.vue"; 
import VibzHitsTable from "@/components/AccueilComponents/VibzHitsTable.vue";
import { WeeklyTop } from "@/models/weeklytop";
import { ref, type Ref } from "vue";
import MusicServices from "@/Services/MusicServices";
import { Music } from "@/models/music";
import { Album } from "@/models/album";
import { Artist } from "@/models/artist";



const weeklyTop : Ref<WeeklyTop | null>= ref(null);

async function InitWeeklyTop() {
  const res = await MusicServices.GetWeeklyTop("2025-11-25","PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs");
  
  const listMusic: Music[] = res.Classement.map((music:any) => {
    return new Music(
      music.id,
      music.titre,
      new Album(
        music.album.id,
        music.album.titreAlbum,
        music.album.CoverUrl,
        music.album.RealeaseYear,
        new Artist(
          music.album.artist.id,
          music.album.artist.name,
          music.album.artist.imageUrl,
          music.album.artist.description
        )
      ),
      music.rang,
      music.rangPrecedent
    );
  })
  weeklyTop.value = new WeeklyTop(
    listMusic,
    res.country,
    res.date
  );
  console.log(weeklyTop.value);
}
InitWeeklyTop();
</script>

<template>
  <div class="relative w-full overflow-x-hidden">

    <section class="flex justify-center mt-[40px]">
      <h1 class="text-white text-center uppercase font-thin tracking-[6px] text-[clamp(3rem,15vw,3rem)]">
        VIBZ
      </h1>
    </section>

    <VibzHero :music="weeklyTop?.getListMusic()[0]" />

    <div class="max-w-[1100px] mx-auto my-[80px] px-[5%]">
      
      <p class="text-white text-[1.4rem] mb-[25px]">
        Top 20 Hits <br/> 
        <strong class="font-bold">Voici le top 20 de la semaine : </strong>
      </p>

      <div class="w-full">
        <table class="w-full border-separate border-spacing-y-[10px]">
          <thead>
            <tr class="text-white text-left">
              <th class="px-[20px] py-[12px] font-semibold">Rang</th>
              <th class="px-[20px] py-[12px] font-semibold">Image</th>
              <th class="px-[20px] py-[12px] font-semibold">Titre</th>
              <th class="px-[20px] py-[12px] font-semibold">Artiste</th>
              <th class="px-[20px] py-[12px] font-semibold">Album</th>
              <th class="px-[20px] py-[12px] font-semibold">Date de sortie</th>
            </tr>
          </thead>
          
          <VibzHitsTable v-if="weeklyTop?.getListMusic()" :musics="weeklyTop.getListMusic()" />
        </table>
      </div>
    </div>
  </div>
</template>

<style scoped>
/*
  on utilise :deep() pour appliquer tes styles de background et d'arrondi 
  directement sur les cellules générées par l'enfant.
*/
:deep(td) {
  background: rgba(255, 255, 255, 0.05);
  padding: 12px 20px;
  color: white;
}

:deep(td:first-child) {
  border-radius: 12px 0 0 12px;
  font-weight: 900;
}

:deep(td:last-child) {
  border-radius: 0 12px 12px 0;
}
</style>