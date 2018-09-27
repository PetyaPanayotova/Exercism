require 'pry'

class Mower

  attr_reader :x, :y, :direction, :x_max, :y_max

  DIRECTIONS = ["N", "E", "S", "W"]

  def initialize(x, y, direction, x_max, y_max)
    @x, @y, @direction, @x_max, @y_max = x, y, direction, x_max, y_max
  end

  def R
    direction_index = DIRECTIONS.index(@direction)
    if (0..2).include?(direction_index)
      @direction = DIRECTIONS[direction_index + 1]
    else
      @direction = DIRECTIONS[0]
    end
    self
  end

  def L
    direction_index = DIRECTIONS.index(@direction)
    if (1..3).include?(direction_index)
      @direction = DIRECTIONS[direction_index - 1]
    else
      @direction = DIRECTIONS[3]
    end
    self
  end

  def F
    case @direction
      when "N"
        @y += 1 unless @y == @y_max
        #binding.pry
      when "E"
        @x += 1 unless @x == @x_max
      when "S"
        @y -= 1 unless @y == 0
      else "W"
        @x -= 1 unless @x == 0
    end
    self
  end
end
