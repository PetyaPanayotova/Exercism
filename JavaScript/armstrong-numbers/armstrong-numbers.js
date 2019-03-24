export function validate(input) {
    let length = input.toString().length;

    return input.toString().split("").reduce((acc, digit) => acc += Math.pow(digit, length), 0) === input;

}