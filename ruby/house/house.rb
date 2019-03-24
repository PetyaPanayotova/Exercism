class House
  VARIATIONS = [
    "the house that Jack built",
    "the malt\nthat lay in",
    "the rat\nthat ate",
    "the cat\nthat killed",
    "the dog\nthat worried",
    "the cow with the crumpled horn\nthat tossed",
    "the maiden all forlorn\nthat milked",
    "the man all tattered and torn\nthat kissed",
    "the priest all shaven and shorn\nthat married",
    "the rooster that crowed in the morn\nthat woke",
    "the farmer sowing his corn\nthat kept",
    "the horse and the hound and the horn\nthat belonged to"
  ]
  class << self
    def recite
      1.upto(VARIATIONS.size).map { |n| verse(n) }.join("\n")
    end

    def verse(number)
      "This is #{to_series(VARIATIONS[0..number - 1])}.\n"
    end

    def to_series(elements)
      if elements.size == 1
        "#{VARIATIONS[0]}"
      else
        "#{VARIATIONS[0..elements.size - 1].reverse.join(' ')}"
      end
    end
  end
end
