class Anagram
  def initialize(word)
    @word = word
  end

  def match(input)
    input.select do |check_word|
      next if check_word.casecmp?(word)
      letters(check_word) == letters(word)
    end
  end

  private

  attr_reader :word

  def letters(input)
    input.downcase.chars.sort
  end
end
