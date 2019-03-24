class Say
  SAY = {
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "hundred",
    1000 => "thousand"
  }

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def in_english
    raise ArgumentError unless number.between?(0, 999_999_999_999)

    say(number)
  end

  def say(number)
   case
   when number < 20
     SAY[number]
   when number < 100
     quotient, modulus = number.divmod(10)
     SAY[quotient * 10] + (modulus == 0 ? "" : "-#{SAY[modulus]}")
   when number < 1000
     quotient, modulus = number.divmod(100)
     SAY[quotient] + " hundred" + (modulus == 0? "" : " #{say(modulus)}")
   else
     number.digits.each_slice(3)
     .map { |chunk| say(chunk.reverse.join.to_i) }
     .zip(["", "thousand", "million", "billion"])
     .select { |chunk| chunk[0] != "zero" }
     .reverse.join(" ")
     .strip
   end
 end
end
