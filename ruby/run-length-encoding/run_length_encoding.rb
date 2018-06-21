class RunLengthEncoding
  def self.encode(input)
    input
      .chars
      .slice_when { |i, j| i != j }
      .map { |i| i.size > 1 ? [i.size, i[0]] : i[0] }
      .join
  end

  def self.decode(input)
    input.gsub(/[0-9]+[A-Za-z ]/) { |match| match[-1] * match.to_i }
  end
end

module BookKeeping
  VERSION = 3
end
