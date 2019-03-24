export function reverseString(input) {
    let reversed = ""; 
    for (let i = 1; i <= input.length; i++) {
        reversed += input[input.length - i];
    }
    return reversed;
}