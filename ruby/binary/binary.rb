class Binary
  def self.to_decimal(input)
    if input.match(/[^01]/)
      raise ArgumentError
    end

    decimal = 0

    input.chars.each_with_index do |char, index|
      decimal += char.to_i * (2 ** (input.length - index - 1))
    end
    decimal
  end
end

module BookKeeping
  VERSION = 3
end
