class Series
  def initialize(series)
    @series = series
  end

  def largest_product(length)
    raise ArgumentError if length > @series.size || @series == "" && length != 0 || @series =~ /[^0-9]/ || length < 0

    if length == 0
      products = 1
    else
      products = []
      @series.chars.each_with_index do |char, index|
        products << @series.slice(index, length).split(//).reduce(1) {|product, number| product * (number.to_i)  }
        end
      products.max
    end
  end
end
