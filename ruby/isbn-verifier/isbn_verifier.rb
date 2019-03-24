class IsbnVerifier
  def self.valid?(string)
    new(string).valid?
  end

  def initialize(string)
    @string = string.tr("^0-9A-Z","")
  end

  def valid?
    parsed.reverse.zip(1..10).sum { |a,  b| a * b} % 11 == 0 if valid_format?
  end

  private

  def valid_format?
    @string =~ (/^[0-9]{9}[0-9X]$/)
  end

  def parsed
    @string.chars.map { |char| char == "X" ? 10 : char.to_i}
  end
end
