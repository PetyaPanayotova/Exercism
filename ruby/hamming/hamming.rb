class Hamming

  def self.compute(strand_one, strand_two)

    raise ArgumentError if strand_one.length != strand_two.length

      hamming_distance = 0
      strand_one.chars.each_index do |i|
        hamming_distance = hamming_distance + 1 if strand_one[i] != strand_two[i]
      end
      hamming_distance

  end

end

module BookKeeping
VERSION = 3
end
