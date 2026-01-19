export class User{
    private mail: string
    private username: string;
    private description: string | null;
    private nbMusicListen: number | null;

    constructor(mail: string, username: string, description: string | null, nbMusicListen: number | null) {
        this.mail = mail;
        this.username = username;
        this.description = description;
        this.nbMusicListen = nbMusicListen;
    }
    //#region Getters
    getMail(): string {
        return this.mail;
    }
    getUsername(): string {
        return this.username;
    }
    getDescription(): string | null {
        return this.description;
    }
    getNbMusicListen(): number | null {
        return this.nbMusicListen;
    }
    //#endregion


}