class Atbash

CIPHER_KEY = Hash[("a".."z").zip(("a".."z").to_a.reverse)]

  def self.encode(input)
    input.gsub(/\W/,"").downcase
    .chars.map { |char| CIPHER_KEY.key?(char) ? CIPHER_KEY[char] : char}.join
    .chars.each_slice(5).map(&:join).join(" ")
  end
end
