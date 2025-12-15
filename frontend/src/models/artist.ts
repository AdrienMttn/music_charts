export class Artist {
    private id: string;
    private name: string;
    private imageUrl: string;
    private description: string | null;


    constructor(id: string, name: string, imageUrl: string, description: string | null) {
        this.id = id;
        this.name = name;
        this.imageUrl = imageUrl;
        this.description = description;
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





}