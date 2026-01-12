<script setup lang="ts">
  import ArtistCard from '@/components/ArtistComponents/ArtistCard.vue';
  import { Artist } from '@/models/artist';
  import { ref, type Ref } from 'vue';
  import MusicServices from '@/Services/MusicServices';
  

  // const unArtist = new Artist(
  //   '1',
  //   'Drake',
  //   'https://lh3.googleusercontent.com/2YkZuCBfGn-BhH-CnTOB-ZlsowwKol7H5s0cXMa29n34teChc19USFPOmjLnSBpWQwA4e_UdphSfP-Wvbg=w1400-h583-p-l90-rj',
  //   'Drake is a Canadian rapper, singer, and actor. Known for his introspective lyrics and melodic rap style.'
  // );

  GetArtists();

  const artists : Ref<Artist[]> = ref([]);

    async function GetArtists() {
      const res = await MusicServices.GetAllArtists();

      if (res.artists)
      {
        artists.value = res.artists.map((artist: any) => new Artist(
          artist.id,
          artist.name,
          artist.imageUrl,
          artist.description
        ));
      }

    }



</script>

<template>
<div>
  <div class="flex justify-center">
    <input type="text" placeholder="Rechercher un artiste" class="flex items-center input border rounded-2xl px-4 py-2 mb-4 " />
    <button class="btn btn-primary bg-transparent border rounded-lg p-2 pl-6 pr-6 ml-3 mb-4 transition-all duration-300 hover:bg-white hover:text-[#64067C] hover:-translate-y-1">
      Valider
    </button>
  </div>
  <div class="flex flex-wrap gap-4 p-4">
    <ArtistCard v-for="artist in artists" :key="artist.getId()" :unArtist="artist" />
  </div>
</div>

</template>