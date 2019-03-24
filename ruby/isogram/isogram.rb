class Isogram
  def self.isogram?(input)
    letters = input.downcase.scan /\w/
    letters.size == letters.uniq.size
  end
end
