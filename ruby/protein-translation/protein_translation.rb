

class Translation
  PROTEIN_TRANSLATION = {
    "AUG" => "Methionine",
    "UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",
    "UUA" => "Leucine",
    "UUG" => "Leucine",
    "UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",
    "UAU" => "Tyrosine",
    "UAC"  =>"Tyrosine",
    "UGU" => "Cysteine",
    "UGC" => "Cysteine",
    "UGG" => "Tryptophan",
    "UAA" => "STOP",
    "UAG" => "STOP",
    "UGA" => "STOP"
  }

  class << self
    def of_codon(codon)
      codon.split.map {|codon| PROTEIN_TRANSLATION[codon]}.uniq.join
    end

    def of_rna(strand)
      strand.chars.each_slice(3).map(&:join)
      .take_while{ |codon| PROTEIN_TRANSLATION[codon] != "STOP" }
      .map do |codon|
        raise InvalidCodonError unless PROTEIN_TRANSLATION.key?(codon)
        PROTEIN_TRANSLATION[codon]
      end
    end
  end
end

class InvalidCodonError < ArgumentError
end
