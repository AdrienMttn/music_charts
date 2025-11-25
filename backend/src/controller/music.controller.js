import connection from "../config/bd_cnx.js";

export async function GetWeeklyTop(req, res) { // Récupère le top de la semaine (attend une date et un pays)
    try {
        const { date, country } = req.body;
        if (!date || !country) {
            throw new Error('Missing date or country parameter');
        }

        const [rows] = await connection.execute(
            'SELECT * FROM WeeklyTop WHERE weekDate = ? AND countryId = ? ORDER BY `rank`',
            [date, country]
        );

        return res.json(rows);
    } catch (err) {
        return res.status(500).json({ error: 'Failed to fetch weekly top data' });
    }
}
export async function GetArtist(req, res){                  // Récupère les infos d'un artiste (attend un id artiste)
    try {
        const { artistId } = req.body;                      // Récupère l'id artiste depuis la requête
        if (!artistId) {                                    // Vérifie que l'id artiste est présent
            throw new Error('Missing artistId parameter');  // Lance une erreur si l'id artiste est manquant
        }

        const [rows] = await connection.execute(            // Exécute la requête SQL pour récupérer les infos de l'artiste
            'SELECT * FROM Artist WHERE id = ?',            // Requête SQL avec un paramètre
            [artistId]                                      // Utilise l'id artiste comme paramètre de la requête SQL
        ); 
        return res.json(rows);                              // Renvoie les infos de l'artiste au format JSON
    } catch (err) {
        return res.status(500).json({ error: 'Failed to fetch artist data' });
    }
}
export async function GetAudioUrl(req, res){                                                // Récupère les audio features d'un morceau (attend un id youtube)
    try {
        const { youtubeId } = req.body;                                                     // Récupère l'id youtube depuis la requête
        if (!youtubeId) {                                                                   // Vérifie que l'id youtube est présent
            throw new Error('Missing youtubeId parameter');                                 // Lance une erreur si l'id youtube est manquant
        }
        const result = await fetch(
          `https://adrikiwi.freeboxos.fr/invidious/api/v1/videos/${youtubeId}?local=true`   // Requête à l'API Invidious pour récupérer les infos de la vidéo
        );
        const data = await result.json();                                                   // Parse la réponse JSON de l'API
        console.log(data);                                                                  // Affiche les données récupérées pour le débogage
        const audioUrl = `https://adrikiwi.freeboxos.fr/invidious/${data.adaptiveFormats[0].url}` // Récupère l'URL de l'audio depuis les formats adaptatifs
        return res.json({ "Url": audioUrl });                                               // Renvoie l'URL de l'audio au format JSON                    
    }
    catch (err) {
        return res.status(500).json({ error: 'Failed to fetch audio URL' });
    } 
}
