class RunLengthEncoding
  def self.encode(input)
    counter = []
    occurance = 1
    input.each_with_index { |char, index| char[index] == char[index + 1] ? occurance += 1 : counter.push([char, occurance]) }
  end

  def self.decode(input)
  end
end
