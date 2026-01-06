import { Album } from "./album";
export class Music {
    private id: string;
    private title: string;
    private album: Album;
    private rank: number ;
    private rankPrevious: number;


    constructor(id: string, title: string, album: Album, rank?: number, rankPrevious?: number) {
        this.id = id;
        this.title = title;
        this.album = album;
        this.rank = rank || 0;
        this.rankPrevious = rankPrevious || 0 ;
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
    getRankPrevious(): number {
        return this.rankPrevious;
    }
    //#endregion
}