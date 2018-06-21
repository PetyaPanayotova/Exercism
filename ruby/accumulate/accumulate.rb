class Array
  def accumulate(&block)
    result = []
    self.each { |element| result << block.call(element) }
    result
  end
end

module BookKeeping
  VERSION = 1 
end
