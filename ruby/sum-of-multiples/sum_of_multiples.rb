class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    sum = 0
    unique_multiples = []

    @numbers.each do |number|
      multiplier = 1

      while (number * multiplier) < limit
        unless unique_multiples.include?(number * multiplier)
          sum += number * multiplier
          unique_multiples.push(number * multiplier)
        end
          multiplier += 1
      end
    end
    sum
  end
end

module BookKeeping
  VERSION = 2
end
