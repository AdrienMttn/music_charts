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



console.log(artists);

</script>

<template>
<div class="flex flex-wrap gap-4 p-4">
  <ArtistCard v-for="artist in artists" :key="artist.getId()" :unArtist="artist" />
</div>

</template>