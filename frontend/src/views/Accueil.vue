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
import LecteurAudio from "@/components/LecteurAudio.vue";

const weeklyTop: Ref<WeeklyTop | null> = ref(null);

const allWeeks = ref<any[]>([]);
const indexDeLaMusic: Ref<number> = ref(0);

async function InitWeeklyTop(p_date?: string) {
  const countryId = "PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs";

  if (allWeeks.value.length === 0) {
    const dates = await MusicServices.GetDateWeek();
    allWeeks.value = dates;
  }

  const targetDate = p_date
    ? p_date
    : allWeeks.value[0]?.dateSemaine || "2026-01-12";

  if (!targetDate) return; // Sécurité si aucune date n'existe en base

  const res = await MusicServices.GetWeeklyTop(targetDate, countryId);

  const listMusic: Music[] = res.Classement.map((music: any) => {
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
          music.album.artist.description,
        ),
      ),
      music.rang,
      music.rangPrecedent,
    );
  });

  weeklyTop.value = new WeeklyTop(listMusic, res.country, res.date);
}
InitWeeklyTop();
const LecteurAudioVisible: Ref<boolean> = ref(false);

function LireMusic() {
  LecteurAudioVisible.value = !LecteurAudioVisible.value;
  console.log("Lecture de la musique");
}

function LireMusicParIndex(index: number) {
  LecteurAudioVisible.value = true;
  indexDeLaMusic.value = index;
}
</script>

<template>
  <div
    class="relative w-full overflow-x-hidden"
    :class="LecteurAudioVisible ? 'pb-24' : 'pb-0'"
  >
    <section class="flex justify-center mt-[40px]">
      <h1
        class="text-white text-center uppercase font-thin tracking-[6px] text-[clamp(3rem,15vw,3rem)]"
      >
        VIBZ
      </h1>
    </section>
    <!--LireMusic() change une variable bool pour lecteurAudio -->
    <VibzHero
      v-if="weeklyTop?.getListMusic()[0]"
      :music="weeklyTop.getListMusic()[0]"
      @LireMusic="LireMusic()"
    />

    <div class="max-w-[1100px] mx-auto my-20 px-[5%]">
      <div
        class="flex flex-col md:flex-row md:items-baseline justify-between gap-4 mb-6"
      >
        <p class="text-white text-4xl font-bold">Top hits de la semaine</p>
        <VibzDateSemaine
          v-if="weeklyTop"
          :weeklyTop="weeklyTop"
          :availableDates="allWeeks"
          @change-week="(date) => InitWeeklyTop(date)"
        />
      </div>

      <div class="w-full">
        <table
          class="w-full border-separate border-spacing-y-2.5 [&_td]:bg-white/5 [&_td]:px-5 [&_td]:py-3 [&_td]:text-white [&_td:first-child]:rounded-l-xl [&_td:first-child]:font-black [&_td:last-child]:rounded-r-xl"
        >
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

          <VibzHitsTable
            v-if="weeklyTop?.getListMusic()"
            :musics="weeklyTop.getListMusic()"
            @LireMusicParIndex="(index) => LireMusicParIndex(index)"
          />
        </table>
      </div>
    </div>
  </div>
  <LecteurAudio
    v-if="LecteurAudioVisible"
    :ListeMusic="weeklyTop.getListMusic()"
    :IndexMusic="indexDeLaMusic"
  />
  <!--LireMusic() change une variable bool pour lecteurAudio -->
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
