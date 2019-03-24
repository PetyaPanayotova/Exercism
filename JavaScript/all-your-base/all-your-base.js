export function convert(digits, input_base, output_base) {
    if (!isValid(input_base)) {
        throw new Error("Wrong input base") 
    }

    if (!isValid(output_base)) {
        throw new Error("Wrong output base") 
    }

    if (!isInputValid(digits, input_base)) {
        throw new Error("Input has wrong format") 
    }
     
    let number = digits.reduce((product, d) => product * input_base + d, 0)
    let converted_number = number === 0 ? [0] : []

    while (number > 0) {
      converted_number.push(number % output_base)
      number = Math.floor(number / output_base)
    }

    return converted_number.reverse()
}

function isValid(base) {
    return base > 1 && Number.isInteger(base)
}

function isInputValid(digits, base) {
    return (digits.length > 0 && Math.min(...digits) >= 0 && Math.max(...digits) < base) && (digits[0] !== 0 || digits.length === 1) 
}