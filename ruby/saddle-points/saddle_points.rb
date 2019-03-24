class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @matrix.lines.map{ |row| row.split.map{ |number| number.to_i } }
  end

  def columns
    rows.transpose
  end

  def saddle_points
    saddle_points = []
    rows.each_with_index do |row, row_index|
      row.each_index.select { |index| row[index] == row.max }
      .each { |index| if columns[index].min == row.max; saddle_points << [row_index, index]; end }
    end
    saddle_points
  end
end
