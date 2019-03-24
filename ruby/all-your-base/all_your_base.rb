class BaseConverter
  attr_reader :input_base, :digits, :output_base

  def self.convert(input_base, digits, output_base)

    new(input_base, digits, output_base).convert

    #raise ArgumentError unless valid_input?
    #raise ArgumentError if input_base <= 1 || output_base <= 1 || (digits != [] && digits.min < 0) || (digits != [] && digits.max >= input_base)

    #number = digits.reduce(0) {|product, d| product * input_base + d}

    # converted_number = []
    # if digits.reduce(:+) == 0
    #   converted_number = [0]
    # else
    #   while number > 0
    #     converted_number << number % output_base
    #     number = number / output_base
    #   end
    #   converted_number = converted_number.reverse
    # end
    # converted_number
  end

  def initialize(input_base, digits, output_base)
    @input_base, @digits, @output_base = input_base, digits, output_base

    #raise ArgumentError unless valid_input?
  end

  def valid_input?
    input_base <= 1 || output_base <= 1 || (digits != [] && digits.min < 0) || (digits != [] && digits.max >= input_base)
  end

  def numbers
    #raise ArgumentError unless valid_input?

    digits.reduce(0) {|product, d| product * input_base + d}
  end

  def convert
    raise ArgumentError unless valid_input?

    converted_number = []
    if digits.reduce(:+) == 0
      converted_number = [0]
    else
      while numbers > 0
        converted_number << numbers % output_base
        numbers = numbers / output_base
      end
      converted_number = converted_number.reverse
    end
    converted_number
  end
end

module BookKeeping
  VERSION = 2
end
