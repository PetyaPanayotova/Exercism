class Luhn
  def self.valid?(input)
    new(input).valid?
  end

  def initialize(input)
    @input = input.delete(' ')
  end

  def valid?
    luhn_sum % 10 == 0 if valid_format?
  end

  private

  attr_reader :input

  def valid_format?
    input.length > 1 && @input !~ (/\D/)
  end

  def luhn_sum
    input.to_i.digits.each_slice(2).sum {|a, b| a + double_number(b.to_i)}
  end

  def double_number(number)
    (number * 2).digits.sum
  end
end
