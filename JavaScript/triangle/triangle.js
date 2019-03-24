export class Triangle {
    constructor(a, b, c) {
        this.a = a;
        this.b = b;
        this.c = c;
        this.sides = new Array(this.a, this.b, this.c).sort((a, b) => a - b);
    }

    getUniqueSides() {
        return this.sides.filter((side, index, sides) => sides.indexOf(side) === index).length;
    }

    kind() {
        if (!this.validTriangle()) {
            throw new Error();
        }
        
        switch (this.getUniqueSides()) {
            case 1:
                return 'equilateral';
            case 2:
                return 'isosceles';
            case 3:
                return 'scalene';    
        }
    }

    validTriangle() {
        return this.sides.every(side => side > 0) && this.sides[0] + this.sides[1] >= this.sides[2];
    }
}
