<script setup lang="ts">
  import ArtistCard from '@/components/ArtistComponents/ArtistCard.vue';
  import { Artist } from '@/models/artist';
  import { onMounted, ref, type Ref } from 'vue';
  import MusicServices from '@/Services/MusicServices';

  GetArtists();
  const visible = ref(false);

  // const unArtist = new Artist(
  //   '1',
  //   'Drake',
  //   'https://lh3.googleusercontent.com/2YkZuCBfGn-BhH-CnTOB-ZlsowwKol7H5s0cXMa29n34teChc19USFPOmjLnSBpWQwA4e_UdphSfP-Wvbg=w1400-h583-p-l90-rj',
  //   'Drake is a Canadian rapper, singer, and actor. Known for his introspective lyrics and melodic rap style.'
  // );
  const form = ref({
  artistName: ""
  });


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
      visible.value = false;

    }

    async function SearchArtistsByName() {
      

      if(form.value.artistName === "") {
        return;
      }

      const res = await MusicServices.GetArtistsByName(form.value.artistName);

      if (res.artists)
      {
        artists.value = res.artists.map((artist: any) => new Artist(
          artist.id,
          artist.name,
          artist.imageUrl,
          artist.description
        ));
      }

      form.value.artistName = "";
      visible.value = true;

    }


</script>

<template>
<div>
  <div class="relative flex justify-center items-center py-4 mb-6">
    
    <div class="absolute left-0 lg:left-10"> <button 
        v-if="visible" 
        @click="GetArtists()" 
        class="btn btn-primary bg-transparent border rounded-lg px-6 py-2 transition-all duration-300 hover:bg-white hover:text-[#64067C] hover:-translate-y-1 hover:shadow-lg"
      >
        Retour
      </button>
    </div>

    <input 
      @keyup.enter="SearchArtistsByName()"
      v-model="form.artistName" 
      type="text" 
      placeholder="Rechercher un artiste" 
      class="input border rounded-2xl px-4 py-2 w-full max-w-md focus:outline-none focus:ring-2 focus:ring-purple-500 transition-all"
    />

  </div>

  <div class="flex flex-wrap gap-4 p-4">
    <ArtistCard v-for="artist in artists" :key="artist.getId()" :unArtist="artist" />
  </div>
</div>
</template>