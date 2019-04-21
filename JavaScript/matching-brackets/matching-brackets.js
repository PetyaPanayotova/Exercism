export function matchingBrackets(input) {
    const pairs = { "{": "}", "[": "]", "(": ")" }
    let inputChars = input.split("");
    let stack = [];
    
    for (let char of inputChars) {
        if (char === pairs[stack[stack.length - 1]]) {
            stack.pop();
        } else {
            stack.push(char)
        }
    }
    return stack.length === 0 ? true : false;
}