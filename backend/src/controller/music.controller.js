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
        console.error('Error in GetWeeklyTop:', err);
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
        console.error('Error in GetArtist:', err);
    }
}
