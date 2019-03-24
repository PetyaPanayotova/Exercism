class Affine
  attr_reader :a, :b, :m

  ALPHABET = "abcdefghijklmnopqrstuvwxyz"

  def initialize(a, b)
    @a, @b = a, b
    @m = ALPHABET.size

    raise ArgumentError unless m.gcd(a) == 1
  end

  def encode(plaintext)
    plaintext.gsub(/\W/,"").downcase
    .chars.map { |char| ALPHABET.include?(char) ? ALPHABET[encode_index(char)] : char }.join
    .chars.each_slice(5).map(&:join).join(" ")
  end

  def decode(plaintext)
    plaintext.gsub(" ", "").chars.map { |char| char =~ /[A-Za-z]/ ? ALPHABET[decode_index(char)] : char }.join
  end

  private

  def encode_index(char)
    (a * ALPHABET.index(char) + b) % m
  end

  def decode_index(char)
    (mmi(a) * (ALPHABET.index(char) - b)) % m
  end

  def mmi(a)
    mmi = 1
    while (a * mmi % m) != 1
      mmi += 1
    end
    mmi
  end
end
