require 'pry'

class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    sieve = Array.new(@limit + 1, true)

    # Fill the sieve.
    for i in (2..@limit / 2)
      for j in (2 * i).step(@limit, i)
        sieve[j] = false
      end
    end

    # Now collect the primes.
    result = []
    sieve[2,@limit].each_with_index do |v, i|
      binding.pry
      result << i + 2 if v
    end

    result
  end

end

# Helper for interactive testing.
def test n
  x = Sieve.new n
  x.primes
end

module BookKeeping
  VERSION = 1
end
