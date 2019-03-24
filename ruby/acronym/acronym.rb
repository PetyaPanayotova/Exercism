class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b[a-zA-Z]/).join.upcase
  end
end

module BookKeeping
  VERSION = 4
end
