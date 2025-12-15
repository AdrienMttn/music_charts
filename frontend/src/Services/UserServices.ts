export default class UserServices {
    static async CreateUser(mail : string, username : string, password : string) {
        try {
            const response = await fetch(`/api/CreateUser/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ mail, username, password }),
            });
            return await response.json();
        } catch (error : any) {
          return error;
        }
    }
    static async Login(username : string, password : string) {
        try {
            const response = await fetch(`/api/Login/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ username, password }),
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
}