import connection from "../config/bd_cnx.js";

export async function GetWeeklyTop(req, res) {
  // Récupère le top de la semaine (attend une date et un pays)
  try {
    const { date, country } = req.body;
    if (!date || !country) {
      throw new Error("Missing date or country parameter");
    }

    const [rows] = await connection.execute(
      'call GetWeeklyTop (?, ?)',
      [date, country]
    );
    const Classement = rows[0].map((item) => ({
      music : { 
        id : item.MusicId, 
        titre : item.TitreMusic, 
        rang : item.rank , 
        rangPrecedent : item.previousRank,
        album : { 
          id : item.AlbumId, 
          CoverUrl : item.CouvertureAlbum, 
          RealeaseYear : item.realeaseYear, 
          titreAlbum : item.TitreAlbum,
          artist : { 
            id : item.IdArtist, 
            name : item.nomArtist, 
            imageUrl : item.ImageArtist, 
            description : item.description
          } 
        },
    }
  }
)
);
    const Json = {
      weeklyTop : {
        country: country,
        date: date,
      },
      Classement
    };
    return res.json(Json);
  } catch (err) {
    return res.status(500).json({ error: "Failed to fetch weekly top data" });
  }
}
export async function GetArtist(req, res) {
  // Récupère les infos d'un artiste (attend un id artiste)
  try {
    const { artistId } = req.body; // Récupère l'id artiste depuis la requête
    if (!artistId) {
      // Vérifie que l'id artiste est présent
      throw new Error("Missing artistId parameter"); // Lance une erreur si l'id artiste est manquant
    }

    const [rows] = await connection.execute(
      // Exécute la requête SQL pour récupérer les infos de l'artiste
      'call GetArtist (?)', // Appelle la procédure stockée GetArtist avec un paramètre
      [artistId] // Utilise l'id artiste comme paramètre de la requête SQL
    );
    //CRÉER LE TABLEAU DES MUSIQUES
    // rows[0] contient toutes les lignes retournées par la procédure SQL 
    // .map() parcourt CHAQUE ligne et transforme les données
    // Résultat : Un tableau avec 4 objets Music, un pour chaque musique
    //EXTRAIRE LES IDs UNIQUES DES ALBUMS
    // rows[0].map(item => item.AlbumId) → Crée un tableau avec TOUS les AlbumId [X, X, Y, Y]
    // new Set(...) → Élimine les doublons et garde seulement les valeurs uniques [X, Y]
    // [...new Set(...)] → Convertit le Set en tableau normal    
const albumIds = [...new Set(rows[0].map(item => item.AlbumId))];

//CRÉER LE TABLEAU DES ALBUMS SANS DOUBLONS
// Pour chaque albumId unique,creation d'un objet album
const Albums = albumIds.map(albumId => {
      const albumData = rows[0].find(row => row.AlbumId === albumId);
      const Musics = rows[0].filter(row => row.AlbumId === albumId).map(row => ({
        id: row.MusicId,
        titre: row.TitreMusic
      }));
      return {
        id : albumData.AlbumId,
        titreAlbum : albumData.TitreAlbum,
        CoverUrl : albumData.CouvertureAlbum,
        RealeaseYear : albumData.realeaseYear,
        Musics
      };
    }
);
//RÉCUPÉRER LES INFOS DE L'ARTISTE
    const artistInfo = rows[0][0]; // Récupère les infos de l'artiste depuis la première ligne du résultat
    // Construction de l'objet JSON final
    const json = {
      artist : {
        id : artistInfo.IdArtist,
        name : artistInfo.nomArtist,
        imageUrl : artistInfo.ImageArtist,
        description : artistInfo.description,
          Albums,   
      }
    }
; 
    return res.json(json); // Renvoie les infos de l'artiste au format JSON
  } catch (err) {
    return res.status(500).json({ error: "Failed to fetch artist data" });
  }
}
export async function GetAudioUrl(req, res) {
  // Récupère les audio features d'un morceau (attend un id youtube)
  try {
    const { youtubeId } = req.body; // Récupère l'id youtube depuis la requête
    if (!youtubeId) {
      // Vérifie que l'id youtube est présent
      throw new Error("Missing youtubeId parameter"); // Lance une erreur si l'id youtube est manquant
    }
    const result = await fetch(
      `https://adrikiwi.freeboxos.fr/invidious/api/v1/videos/${youtubeId}?local=true` // Requête à l'API Invidious pour récupérer les infos de la vidéo
    );
    const data = await result.json(); // Parse la réponse JSON de l'API
    const audioUrl = `https://adrikiwi.freeboxos.fr/invidious/${data.adaptiveFormats[0].url}`; // Récupère l'URL de l'audio depuis les formats adaptatifs
    return res.json({ Url: audioUrl }); // Renvoie l'URL de l'audio au format JSON
  } catch (err) {
    return res.status(500).json({ error: "Failed to fetch audio URL" });
  }
}
