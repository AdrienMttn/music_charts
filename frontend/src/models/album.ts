export class Album {
    private id: string;
    private title: string
    private coverUrl: string;
    private releaseYear: number | null;
    private artistId: string;

    constructor(id: string, title: string, coverUrl: string, releaseYear: number | null, artistId: string) {
        this.id = id;
        this.title = title;
        this.coverUrl = coverUrl;
        this.releaseYear = releaseYear;
        this.artistId = artistId;
    }

    //#region Getters
    getId(): string {
        return this.id;
    }

    getTitle(): string {
        return this.title;
    }

    getCoverUrl(): string {
        return this.coverUrl;
    }

    getReleaseYear(): number | null {
        return this.releaseYear;
    }

    getArtistId(): string {
        return this.artistId;
    }

    //#endregion
}