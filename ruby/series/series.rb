class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    raise ArgumentError unless length <= @digits.size

    @digits.chars.each_cons(length).map {|slice| slice.join}
  end
end
