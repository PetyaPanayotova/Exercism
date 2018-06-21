class Sieve

  def initialize (limit)
    @limit = limit
  end

  def primes
    sieve = (2..@limit).to_a
    sieve.each do |number|
      multiplier = 2

      while (number * multiplier) <= @limit
        sieve.delete(number * multiplier)
        multiplier += 1
      end

    end
  end

end

module BookKeeping
  VERSION = 1
end
