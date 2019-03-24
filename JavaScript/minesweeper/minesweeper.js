export function annotate(input) {
    let board = createBoard(input);

    for (let i = 0; i < input.length; i++) {
        for (let j = 0; j < input[0].length; j++) {
            if (input[i][j] === "*") {
                board[i][j] = "*";
                for (let x = i - 1; x <= i + 1; x++) {
                    for (let y = j - 1; y <= j + 1; y++) {
                        if (x >= 0 && x < input.length && y >= 0 && y < input[0].length) {
                            if (board[x][y] !== "*") {
                                board[x][y] += 1;
                            } 
                        }
                    }
                }
            } 
        }
    }

    return board.map((x) => x.map((n) => n!== 0 ? n : " ").join(""));
}

function createBoard (input) {
    let rows = input.length;
    let cols = input.length > 0 ? input[0].length : 0;
    return Array.from(new Array(rows), () => new Array(cols).fill(0))
}