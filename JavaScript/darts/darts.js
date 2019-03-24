export function solve(x, y) {
    if (isNaN(x) || isNaN(y)) {
        return null;
    }
    if ((x > 10) || (y > 10)) {
        return 0;
    }
    let d = pointsDistance(x, y); 

    if (Math.pow(d, 2) <= Math.pow(1, 2)) {
        return 10;
    }
    if (Math.pow(d, 2) <= Math.pow(5, 2)) {
        return 5;
    }
    if (Math.pow(d, 2) <= Math.pow(10, 2)) {
        return 1;
    }
}

function pointsDistance(x, y) {
    let x0 = 0;
    let y0 = 0; 
    return Math.sqrt(Math.abs(Math.pow(x - x0, 2) + (Math.pow(y - y0, 2))));  
}
