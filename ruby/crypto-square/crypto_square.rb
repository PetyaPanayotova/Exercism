class Crypto
  def initialize(plaintext)
    @plaintext = plaintext
  end

  def normalized
    @plaintext.gsub(/\W/,"").downcase
  end

  def size
    Math.sqrt(normalized.length).ceil
  end

  def sliced
    normalized.chars.each_slice([size,1].max).to_a
  end

  def matrix
    sliced.map(&:join).map do |slice|
      slice.ljust(size).chars
    end
  end

  def ciphertext
    matrix.transpose.map(&:join).join(" ")
  end
end
