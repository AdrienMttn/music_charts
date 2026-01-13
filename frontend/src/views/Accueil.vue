<script setup lang="ts">
import VibzHero from "@/components/AccueilComponents/VibzHero.vue"; 
import VibzHitsTable from "@/components/AccueilComponents/VibzHitsTable.vue";
import { WeeklyTop } from "@/models/weeklytop";
import { ref, type Ref, onMounted } from "vue";
import MusicServices from "@/Services/MusicServices";
import { Music } from "@/models/music";
import { Album } from "@/models/album";
import { Artist } from "@/models/artist";
import VibzDateSemaine from "@/components/AccueilComponents/VibzDateSemaine.vue";

const weeklyTop : Ref<WeeklyTop | null>= ref(null);

async function InitWeeklyTop(p_date: string = "2025-11-25") {
  const countryId = "PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs"; 
  const res = await MusicServices.GetWeeklyTop(p_date, countryId);
  
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
  weeklyTop.value = new WeeklyTop(listMusic, res.country, res.date);
}

onMounted(() => {
  InitWeeklyTop();
});
</script>

<template>
  <div class="relative w-full overflow-x-hidden">
    <section class="flex justify-center mt-10">
      <h1 class="text-white text-center uppercase font-thin tracking-[6px] text-[clamp(6rem,20vw,6rem)]">
        VIBZ
      </h1>
    </section>

    <VibzHero v-if="weeklyTop?.getListMusic()[0]" :music="weeklyTop.getListMusic()[0]" />

    <div class="max-w-[1100px] mx-auto my-20 px-[5%]">
      
      <div class="flex flex-col md:flex-row md:items-baseline justify-between gap-4 mb-6">
        <p class="text-white text-4xl font-bold">
          Top hits de la semaine
        </p>
        <VibzDateSemaine 
          v-if="weeklyTop" 
          :weeklyTop="weeklyTop" 
          @change-week="(date) => InitWeeklyTop(date)" 
        />
      </div>

      <div class="w-full">
        <table class="w-full border-separate border-spacing-y-2.5 
                      [&_td]:bg-white/5 [&_td]:px-5 [&_td]:py-3 [&_td]:text-white
                      [&_td:first-child]:rounded-l-xl [&_td:first-child]:font-black
                      [&_td:last-child]:rounded-r-xl">
          <thead>
            <tr class="text-white text-left">
              <th class="px-5 py-3 font-semibold">Rang</th>
              <th class="px-5 py-3 font-semibold">Image</th>
              <th class="px-5 py-3 font-semibold">Titre</th>
              <th class="px-5 py-3 font-semibold">Artiste</th>
              <th class="px-5 py-3 font-semibold">Album</th>
              <th class="px-5 py-3 font-semibold">Date de sortie</th>
            </tr>
          </thead>
          
          <VibzHitsTable v-if="weeklyTop?.getListMusic()" :musics="weeklyTop.getListMusic()" />
        </table>
      </div>
    </div>
  </div>
</template>