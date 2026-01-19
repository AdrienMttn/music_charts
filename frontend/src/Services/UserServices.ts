export default class UserServices {
    static async CreateUser(mail : string, password : string, username : string) {
        try {
            const response = await fetch(`/api/CreateUser/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ mail, password, username }),
            });
            return await response.json();
        } catch (error : any) {
          return error;
        }
    }
    static async Login(mail : string, password : string) {
        try {
            const response = await fetch(`/api/Login/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ mail, password }),
            });
            return await response.json();
        } catch (error : any) {
          return error;
        }
    }
    static async Logout() {
        try {
            const response = await fetch(`/api/Logout/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json', 
                },
            });
            return await response.json();
        } catch (error : any) {
          return error;
        }
    }
    static async AddRemoveFavorite(musicId : string) {
        try {
            const response = await fetch(`/api/AddRemoveFavorite/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ musicId }),
            });
            return await response.json();
        }
        catch (error : any) {
          return error;
        }
    }
    static async TestLogin() {
        try {
            const response = await fetch(`/api/testlogin`, {
                method: 'GET', 
                headers: {
                    'Content-Type': 'application/json',
                },
            });
            
            return await response.json();
        }
        catch (error: any) {
            console.error("Erreur lors de la vérification de session:", error);
            return { loggedIn: false, error: error.message };
        }
    } // ← Accolade manquante ajoutée ici
    
    static async GetFavoriteByUserId(mail: string) {
        try {
            const response = await fetch(`/api/GetFavoriteByUserId/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ mail }),
            });
            
            return await response.json();
        }
        catch (error: any) {
            console.error("Erreur lors de la récupération des favoris:", error);
            return { error: error.message };
        }
    }
}