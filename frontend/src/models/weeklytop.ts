import { Music } from "./music";

export class WeeklyTop{
    private listMusic: Music[];
    private countryId: string;
    private weekDate: string;

    constructor(listMusic: Music[], countryId: string, weekDate: string) {
        this.listMusic = listMusic;
        this.countryId = countryId;
        this.weekDate = weekDate;
    }

    //#region Getters
    getListMusic(): Music[] {
        return this.listMusic;
    }
    getCountryId(): string {
        return this.countryId;
    }
    getWeekDate(): string {
        return this.weekDate;
    }
    //#endregion
}