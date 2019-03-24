class Bst
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(number)
    number <= @data ? insert_left(number) : insert_right(number)
  end

  def each(&block)
    return to_enum unless block_given?
    
    @left.each(&block) if @left
    yield data
    @right.each(&block) if @right
  end

  def insert_left(number)
    if @left
      @left.insert(number)
    else
      @left = Bst.new(number)
    end
  end

  def insert_right(number)
    if @right
      @right.insert(number)
    else
      @right = Bst.new(number)
    end
  end
end

module BookKeeping
  VERSION = 1
end
