class RotationalCipher
  ALPHABET = ('a'..'z').to_a.join

  class << self
    def rotate(plaintext, shift)
      plaintext.chars.map do |char|
        capital_letter?(char) ? char_rotation(char.downcase, shift).upcase : char_rotation(char, shift)
      end
      .join
    end

    def capital_letter?(char)
      char == char.upcase
    end

    def char_rotation(char, shift)
      char =~ /[a-zA-Z]/ ? ALPHABET[(ALPHABET.index(char) + shift) % ALPHABET.size] : char
    end
  end
end
