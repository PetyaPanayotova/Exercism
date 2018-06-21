class Squares

  def initialize(n)
    @n = n
  end

  def square_of_sum
    sum = (1..@n).reduce(:+)
    squareofsum = sum * sum
  end

  def sum_of_squares
    sumofsquares = (1..@n).inject { |product, num| product + num*num }
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 4
end
