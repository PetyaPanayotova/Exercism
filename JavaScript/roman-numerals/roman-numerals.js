function divmod(input, divisor) {
    return {
        quotient: Math.floor(input / divisor),
        modulus: (input % divisor)
    };
}


const ROMAN_NUMBERS = {
    1000: "M",
    900: "CM",
    500: "D",
    400: "CD",
    100: "C",
    90: "XC",
    50: "L",
    40: "XL",
    10: "X",
    9: "IX",
    5: "V",
    4: "IV",
    1: "I"
};

export function toRoman(input) {
    let roman_number = "";
    Object.keys(ROMAN_NUMBERS).map(x => parseInt(x, 10)).sort((x, y) => x - y).reverse().forEach(divisor => {
        // console.log(divisor);
      let { quotient, modulus } = divmod(input, divisor);
      roman_number += ROMAN_NUMBERS[divisor].repeat(quotient);
      input = modulus;
    });
    return roman_number;
}

// def to_roman(input)
//     roman_number = ""
//     ROMAN_NUMBERS.keys.each do |divisor|
//       quotient, modulus = input.divmod(divisor)
//       roman_number << ROMAN_NUMBERS[divisor] * quotient
//       input = modulus
//     end
//     roman_number
//   end

