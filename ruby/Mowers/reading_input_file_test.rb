require 'minitest/autorun'
require_relative 'reading_input_file'
require_relative 'mowers'

class FileReadTest < Minitest::Test
  def test_integration
    result = FileReader.execute("input.txt")
    assert_equal "1 3 N\n5 1 E\n1 3 N\n5 1 E" , result
  end
end
