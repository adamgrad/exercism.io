class Complement
  def self.of_dna(strand)
    return '' if strand.match(/[^A,G,C,T]/)
    strand.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end
end

module BookKeeping
  VERSION = 4
end
