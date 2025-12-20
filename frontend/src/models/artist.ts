import type { Album } from "./album";

export class Artist {
    private id: string;
    private name: string;
    private imageUrl: string;
    private description: string | undefined;
    private albums:Album[];


    constructor(id: string, name: string, imageUrl: string, description: string | undefined ) {
        this.id = id;
        this.name = name;
        this.imageUrl = imageUrl;
        this.description = description === "null"? undefined : description;
        this.albums = [];
    }


    //#region Getters
    getId(): string {
        return this.id;
    }

    getName(): string {
        return this.name;
    }

    getImageUrl(): string {
        return this.imageUrl;
    }

    getDescription(): string | undefined {
        return this.description;
    }

    getAlbums(): Album[] {
        return this.albums;
    }
    //#endregion

    addAlbum(unAlbum :Album){
        this.albums.push(unAlbum);
    }





}