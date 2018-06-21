class Complement

  def self.of_dna(dna)
    if dna.match(/[^GCTA]/)
      ''
    else
      dna.gsub(/[GCTA]/, "G" => "C", "C" => "G", "T" => "A", "A" => "U")
    end
  end

end

module BookKeeping
  VERSION = 4
end
