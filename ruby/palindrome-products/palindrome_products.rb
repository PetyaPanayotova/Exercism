class Palindromes
  attr_reader :range, :palindromes

  def initialize(min_factor: 1, max_factor:)
    @range = min_factor..max_factor
  end

  def generate
    @palindromes = Hash.new { |hash, palindrome| hash[palindrome] = Palindrome.new(palindrome) }
    range.to_a.product(range.to_a).each { |a, b|  palindromes[a*b].factors << [a, b] if (a * b).to_s == (a * b).to_s.reverse}
    palindromes.each_value { |factors| factors.sort }
  end

  def largest
    palindromes[palindromes.keys.max]
  end

  def smallest
    palindromes[palindromes.keys.min]
  end
end

class Palindrome
  attr_reader :value, :factors

  def initialize(value)
    @value = value
    @factors = []
  end

  def sort
    factors.map!(&:sort).uniq!
  end
end
