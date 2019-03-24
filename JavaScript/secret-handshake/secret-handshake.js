/**
 * 
 * @param {number} input 
 */
export function secretHandshake(input) {
    if (isNaN(input)) {
       throw new Error('Handshake must be a number') 
    }
    

    let binaryArr = input.toString(2).split("");
    let conversion = ["wink", "double blink", "close your eyes", "jump"];
    let result = binaryArr.slice(-4).reverse().map((digit, index) => digit === "1" ? conversion[index] : "").filter( digit => digit);
    if (binaryArr[4] === "1") {
        result.reverse()
    }
    return result;
    
}