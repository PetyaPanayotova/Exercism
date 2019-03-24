class Cipher
  attr_reader :key

  ALPHABET = ('a'..'z').to_a.join

  def initialize(key = random_key)
    @key = key
    validate_key(key)
  end

  def encode(plaintext)
    index_shift_encode(plaintext,key).map { |index| ALPHABET[index % ALPHABET.size]}.join
  end

  def decode(plaintext)
    index_shift_decode(plaintext,key).map { |index| ALPHABET[index % ALPHABET.size]}.join
  end

  private

  def index_shift_encode(plaintext, key)
    letters_indexes(plaintext).zip(letters_indexes(key)).map { |pair| pair.inject(:+)}
  end

  def index_shift_decode(plaintext, key)
    letters_indexes(plaintext).zip(letters_indexes(key)).map { |pair| pair.inject(:-)}
  end

  def letters_indexes(string)
    string.split("").map { |char| ALPHABET.index(char) }
  end

  def random_key
    ('a'..'z').to_a.sample(100).join
  end

  def validate_key(key)
    raise ArgumentError unless key =~ /[a-z]/
  end
end
