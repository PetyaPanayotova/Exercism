class Grains

  def self.square(number)
    raise ArgumentError if number <= 0 || number > 64
    sum = 2 ** (number - 1)
  end

  def self.total
    (0..63).inject(0) { |sum, n| sum + 2 ** n }
  end
end

module BookKeeping
  VERSION = 1
end
