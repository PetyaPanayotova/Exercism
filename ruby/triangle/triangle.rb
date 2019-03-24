class Triangle
  def initialize(sides)
    @sides = sides.sort
  end

  def equilateral?
    @sides.uniq.length == 1 if valid_triangle?
  end

  def isosceles?
    (@sides.uniq.length == 2 || equilateral?) if valid_triangle?
  end

  def scalene?
    @sides.uniq.length == 3 if valid_triangle?
  end

  private

  def valid_triangle?
    @sides.all?(&:positive?) & (@sides[0] + @sides[1] >= @sides[2])
  end
end
