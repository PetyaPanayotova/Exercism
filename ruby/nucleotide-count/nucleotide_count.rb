class Nucleotide
  def initialize(dna)
    @dna = dna
    raise ArgumentError if dna =~ /[^ATCG]/
  end

  def self.from_dna(dna)
    Nucleotide.new(dna)
  end

  def count(nucleotide)
    @dna.chars.select {|element| element == nucleotide}.length
  end

  def histogram
    histogram= {"A" => 0, "T" => 0, "C" => 0, "G" => 0}
    @dna.chars.reduce(histogram) { |histogram, nucleotide| histogram[nucleotide] += 1; histogram}
    histogram
  end
end
