class FlattenArray
  def self.flatten(array, flatten_array = [])
    array.each do |element|
      if element.is_a?(Array)
        flatten(element, flatten_array)
      else
        flatten_array << element
      end
    end
    flatten_array.compact
  end
end

module BookKeeping
  VERSION = 1
end
