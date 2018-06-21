class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase_arr = @phrase.downcase.scan(/\w+'[a-z]|\w+/)
    phrase_arr.reduce(Hash.new(0)) { |hash, word| hash[word] += 1; hash }
  end

end

module BookKeeping
  VERSION = 1
end
