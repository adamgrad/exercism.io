class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    array = (2..@limit).to_a
    array.each do |num|
      array.reject! { |n| n.modulo(num).zero? && n != num }
    end
  end
end

module BookKeeping
  VERSION = 1
end
