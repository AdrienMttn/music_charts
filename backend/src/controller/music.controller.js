import connection from "../config/bd_cnx.js";

export async function GetWeeklyTop(req, res) {
    try {
        const { date, country } = req.body;
        if (!date || !country) {
            return res.status(400).json({ error: "Missing 'date' or 'country' in request body" });
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
