export class Music {
    private id: string;
    private title: string;
    private albumId: string;


    constructor(id: string, title: string, albumId: string) {
        this.id = id;
        this.title = title;
        this.albumId = albumId;
    }

    //#region Getters
    getId(): string {
        return this.id;
    }
    getTitle(): string {
        return this.title;
    }
    getAlbumId(): string {
        return this.albumId;
    }
    //#endregion
}