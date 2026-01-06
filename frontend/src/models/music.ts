import { Album } from "./album";
export class Music {
    private id: string;
    private title: string;
    private album: Album;
    private rank:number;
    private previousRank:number;


    constructor(id: string, title: string, album: Album, rank?: number, previousRank?: number) {
        this.id = id;
        this.title = title;
        this.album = album;
        this.rank = rank || 0;
        this.previousRank = previousRank || 0;
    }

    //#region Getters
    getId(): string {
        return this.id;
    }
    getTitle(): string {
        return this.title;
    }
    getAlbum(): Album {
        return this.album;
    }
    getRank(): number {
        return this.rank;
    }
    getPreviousRank(): number {
        return this.previousRank;
    }
    //#endregion
}