require 'minitest/autorun'
require_relative 'mowers'

class MowerTest < Minitest::Test
  def test_initialize_mower
    mower = Mower.new(1, 2, "E", 5, 5)
    assert_equal [1, 2, "E", 5, 5], [mower.x, mower.y, mower.direction, mower.x_max, mower.y_max]
  end

  def test_turning_right_from_east_to_south
    new_direction = Mower.new(1, 2, "E", 5, 5).R
    assert_equal "S", new_direction.direction
  end

  def test_turning_right_from_west_to_north
    new_direction = Mower.new(1, 2, "W", 5, 5).R
    assert_equal "N", new_direction.direction
  end

  def test_turning_left_from_south_to_east
    new_direction = Mower.new(1, 2, "S", 5, 5).L
    assert_equal "E", new_direction.direction
  end

  def test_turning_left_from_north_to_west
    new_direction = Mower.new(1, 2, "N", 5, 5).L
    assert_equal "W", new_direction.direction
  end

  def test_move_forward_to_north
    mower = Mower.new(1, 1, "N", 5, 5).F
    assert_equal 2, mower.y
  end

  def test_not_moving_to_north_when_ymax_is_reached
    mower = Mower.new(1, 5, "N", 5, 5).F
    assert_equal 5, mower.y
  end

  def test_move_forward_to_east
    mower = Mower.new(1, 1, "E", 5, 5).F
    assert_equal 2, mower.x
  end

  def test_not_moving_to_east_when_xmax_is_reached
    mower = Mower.new(5, 1, "E", 5, 5).F
    assert_equal 5, mower.x
  end

  def test_move_forward_to_south
    mower = Mower.new(1, 1, "S", 5, 5).F
    assert_equal 0, mower.y
  end

  def test_not_moving_to_south_when_y_is_zero
    mower = Mower.new(1, 0, "S", 5, 5).F
    assert_equal 0, mower.y
  end

  def test_move_forward_to_west
    mower = Mower.new(1, 1, "W", 5, 5).F
    assert_equal 0, mower.x
  end

  def test_not_moving_to_west_when_x_is_zero
    mower = Mower.new(1, 0, "W", 5, 5).F
    assert_equal 0, mower.x
  end

  def test_integration
    mower = Mower.new(1, 2, "N", 5, 5)
    mower.L.F.L.F.L.F.L.F.F
    assert_equal 1, mower.x
    assert_equal 3, mower.y
    assert_equal "N", mower.direction
  end
end
