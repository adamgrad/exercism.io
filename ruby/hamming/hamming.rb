class Hamming
  def self.compute(a, b)
    raise ArgumentError, 'Two DNA standards must have identical length' unless a.length == b.length
    a.split('').zip(b.split('')).count { |x| x[0] != x[1] }
  end
end

module BookKeeping
  VERSION = 3
end
