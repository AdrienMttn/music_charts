export default class MusicServices {
    static async GetArtist(artistId : any) {
        try {
            const response = await fetch(`/api/GetArtist/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ artistId }),
            });
            return await response.json();
        } catch (error : any) {
          return error;
        }
    }
    static async GetAudioUrl(youtubeId : string) {
        try {
            const response = await fetch(`/api/GetAudioUrl/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                }, 
                body: JSON.stringify({ youtubeId }),
            });
            return await response.json();
        } catch (error : any) {
          return error;
        }    
    }
    static async GetWeeklyTop(date : string, country : string) {
        try {   
            const response = await fetch(`/api/GetWeeklyTop/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ date, country }),
            });
            return await response.json();
        } catch (error : any) {
          return error;
        }
    }
    static async GetDateWeek() {
    try {
        const response = await fetch(`/api/GetDateWeek/`, {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
            },
        });
        return await response.json();
    } catch (error : any) {
      return error;
}
}
  
}


    static async GetAllArtists() {
        try {
            const response = await fetch(`/api/GetAllArtists/`, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json',
                },
            });
            return await response.json();
        } catch (error : any) {
          return error;
        }
    }
    static async GetArtistsByName(artistName : string) {
        try {
            const response = await fetch(`/api/GetArtistsByName/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ artistName }),
            });
            return await response.json();
        } catch (error : any) {
          return error;
        }
    }
}