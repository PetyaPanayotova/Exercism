class Binary
  def self.to_decimal(input)
    if input.match(/[^01]/)
      raise ArgumentError
    end

    decimal = 0
    position = 1
    index = 0

       while  position <= input.length
        decimal += (input[index].to_i * (2 ** (input.length - position)))
        position += 1
        index += 1
       end
    decimal
  end
end

module BookKeeping
  VERSION = 3
end
