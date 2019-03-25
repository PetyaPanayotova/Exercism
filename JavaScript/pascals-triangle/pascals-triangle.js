export class Triangle {
    constructor(numberRows) {
        this.rows = [[1]];
        for (let i = 1; i < numberRows; i++) {
            this.currentRow = [];
            for (let j = 0; j <= i; j++) {
                let previousRow = this.rows[i - 1]
                this.currentRow.push((previousRow[j - 1] || 0) + (previousRow[j] || 0));
            }
            this.rows.push(this.currentRow);
        }
        this.lastRow = this.rows[this.rows.length - 1];
    }
}