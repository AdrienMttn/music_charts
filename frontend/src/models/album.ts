import { Music } from "./music";
import { Artist } from "./artist";
export class Album {
    private id: string;
    private title: string
    private coverUrl: string;
    private releaseYear: number | null;
    private artist: Artist;
    private musics: Music[];

    constructor(id: string, title: string, coverUrl: string, releaseYear: number | null, artist: Artist) {
        this.id = id;
        this.title = title;
        this.coverUrl = coverUrl;
        this.releaseYear = releaseYear;
        this.artist = artist;
        this.musics = [];
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

    getArtist(): Artist {
        return this.artist;
    }

    getMusics(): Music[] {
        return this.musics;
    }

    //#endregion

    addMusic(unemusic :Music){
        this.musics.push(unemusic);
    }
    
}