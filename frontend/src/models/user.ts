export class User{
    private id: number;
    private mail: string
    private password: string;
    private username: string;
    private description: string | null;
    private nbMusicListen: number | null;

    constructor(id: number, mail: string, password: string, username: string, description: string | null, nbMusicListen: number | null) {
        this.id = id;
        this.mail = mail;
        this.password = password;
        this.username = username;
        this.description = description;
        this.nbMusicListen = nbMusicListen;
    }
    //#region Getters
    getId(): number {
        return this.id;
    }
    getMail(): string {
        return this.mail;
    }
    getPassword(): string {
        return this.password;
    }
    getUsername(): string {
        return this.username;
    }
    getDescription(): string | null {
        return this.description;
    }
    getNbMusicListen(): number {
        return this.nbMusicListen;
    }
    //#endregion


}