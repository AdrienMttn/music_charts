export class WeeklyTop{
    private musicId: string;
    private countryId: string;
    private weekDate: string;
    private rank: number;
    private previousRank: number | null;

    constructor(musicId: string, countryId: string, weekDate: string, rank: number, previousRank: number | null) {
        this.musicId = musicId;
        this.countryId = countryId;
        this.weekDate = weekDate;
        this.rank = rank;
        this.previousRank = previousRank;
    }

    //#region Getters
    getMusicId(): string {
        return this.musicId;
    }
    getCountryId(): string {
        return this.countryId;
    }
    getWeekDate(): string {
        return this.weekDate;
    }
    getRank(): number {
        return this.rank;
    }
    getPreviousRank(): number | null {
        return this.previousRank;
    }
    //#endregion
}