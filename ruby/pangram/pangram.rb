class Pangram

  def self.pangram?(phrase)
    phrase.downcase.chars.select { |char| char =~ /[a-z]/ }.uniq.count == 26
  end

end

module BookKeeping
  VERSION = 6
end
