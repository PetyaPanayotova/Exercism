let defaultQueens = { 
    white: [0, 3], 
    black: [7, 3] 
};

export class QueenAttack {
        constructor({white, black} = defaultQueens) {
        if ((white[0] == black[0]) && (white[1] == black[1])) {
            throw new Error('Queens cannot share the same space');
        }

        this.black = black;
        this.white = white;
    }

    toString() {
        // Create 8x8 array for the board.
        let board = Array.from(new Array(8), x => new Array(8).fill("_"));
        // Subtract 1 to convert to 0-based coords.
        let [bx, by] = this.black 
        let [wx, wy] = this.white
        // Place the queens on the board.
        board[bx][by] = "B";
        board[wx][wy] = "W";
        // Convert the board to string.
        return board.map(x => x.join(" ").trim()).join("\n") + "\n";      
    }
    canAttack() {
        return (this.white[0] == this.black[0]) ||
            (this.white[1] == this.black[1]) ||
            (Math.abs(this.white[0] - this.black[0]) == Math.abs(this.white[1] - this.black[1]));
    }
}