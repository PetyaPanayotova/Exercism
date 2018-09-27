require_relative 'mowers'
require 'pry'

class FileReader

  def self.execute(filename)
    input = []
    result = ""
    file = File.open(filename, "r")
    file.each_line("\n") {|line| input << line.delete("\n") }
    lawn_coordinates = input.shift

    input.each_slice(2) do |each_mower|
      mower_coordinates = each_mower[0]
      mower = Mower.new(mower_coordinates[0].to_i, mower_coordinates[2].to_i, mower_coordinates[4], lawn_coordinates[0].to_i, lawn_coordinates[2].to_i )
      commands = each_mower[1]
      commands.chars.each do |string_method|
        mower.send(string_method)
      end
      result += "#{mower.x} #{mower.y} #{mower.direction}\n"
    end
    result.chomp
  end
end
