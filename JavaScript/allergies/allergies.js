export class Allergies {
    constructor(allergyScore) {
        this.allergyScore = allergyScore; 
        this.listOfAllergies = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"];
        this.binaryScore = this.allergyScore.toString(2).split("");
    }

    list() {
        return this.binaryScore.reverse().map((digit, index) => digit === "1" ? this.listOfAllergies[index] : "")
        .filter( digit => digit);
    }

    allergicTo(allergens) {
        return this.binaryScore[this.listOfAllergies.indexOf(allergens)] === "1";
    }
}