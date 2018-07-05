class Array
  def accumulate(&block)
    if block
      result = []
      self.each { |element| result << block.call(element) }
      result
    else
      self.to_enum(:accumulate)
    end
  end
end

module BookKeeping
  VERSION = 1
end
