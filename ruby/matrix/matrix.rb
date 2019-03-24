class Matrix
  def initialize(input)
    @input = input
  end

  def rows
    @input.lines.map {|row| row.split.map{|number| number.to_i}}
  end

  def columns
    rows.transpose
  end
end
