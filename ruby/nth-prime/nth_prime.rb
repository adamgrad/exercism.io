module Prime
  module_function

  def nth(prime_no)
    raise ArgumentError if prime_no.zero?
    array = [2]
    primes = []
    while primes.length != prime_no
      primes = array.dup
      primes.each do |num|
        primes.reject! { |n| n.modulo(num).zero? && n != num }
      end
      array.push(array.last + 1)
    end
    primes.last
  end
end

module BookKeeping
  VERSION = 1
end
