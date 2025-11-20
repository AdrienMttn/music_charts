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
