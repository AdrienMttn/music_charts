<template>
    <tbody>
        <tr v-for="i in 20" :key="i">
            <td>
                {{ i }} <span v-if="i % 2 === 0" class="trend-up">▲</span>
                <span v-else class="trend-down">▼</span>
            </td>
            <td><div class="table-album-cover"></div></td>
            <td>Titre {{ i  }}</td>
            <td>Artiste {{ i  }}</td>
            <td>Album {{ i  }}</td>
            <td>2025-01-{{ i }}</td>
            </tr>
          </tbody>
</template>
<style scoped>

.table-album-cover {
  width: 50px; height: 50px;
  background-color: #333; border-radius: 6px;
}

.trend-up { color: #00ff88; font-weight: bold; }
.trend-down { color: #ff3333; font-weight: bold; }

</style>