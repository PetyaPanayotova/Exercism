export function encode(input) {
  let encoding = [];
  let previous = input[0];
    let count = 1; 
    for (let i = 1; i <= input.length; i++) {
        if (input[i] !== previous) {
            encoding.push([count, previous]);
            count = 1;
            previous = input[i];
        }
        else {
            count ++;
        }
    }
    return encoding.map(([reps, char]) => reps == 1? char : reps + char).join('');
}
export function decode(input) {
    const countedChars = /(\d+)(\w|\s)/g;
    return input.replace(countedChars, (_, repeats, char) => new Array( + repeats + 1).join(char));
}