class ListOps
  class << self
    def arrays(array)
      size = 0
      array.each { |elemenet| size += 1}
      size
    end

    def reverser(array)
      reversed = []
      array.each { |element| reversed.unshift(element) }
      reversed
    end

    def concatter(first_array, second_array)
      second_array.each { |element| first_array << element}
      first_array
    end

    def mapper(array, &block)
      mapped = []
      array.each { |element| mapped << yield(element)}
      mapped
    end

    def filterer(array, &block)
      filtered = []
      array.each { |element| filtered << element if yield(element)}
      filtered
    end

    def sum_reducer(array)
      sum = 0
      array.each { |element| sum += element }
      sum
    end

    def factorial_reducer(array)
      factorial = 1
      array.each { |elemenet| factorial *= elemenet}
      factorial
    end
  end
end
