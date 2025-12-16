import type { Album } from "./album";

export class Artist {
    private id: string;
    private name: string;
    private imageUrl: string;
    private description: string | null;
    private albums:Album[];


    constructor(id: string, name: string, imageUrl: string, description: string | null ) {
        this.id = id;
        this.name = name;
        this.imageUrl = imageUrl;
        this.description = description;
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

    getDescription(): string | null {
        return this.description;
    }
    //#endregion

    addAlbum(unAlbum :Album){
        this.albums.push(unAlbum);
    }





}