class Array
  def keep(&block)
    self.select { |element| block.call(element) }
  end

  def discard(&block)
    self.reject { |element| block.call(element)}
  end
end
