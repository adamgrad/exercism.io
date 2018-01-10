module PrimeFactors
  module_function

  def for(number)
    factors = []
    factor = 2

    while number != 1
      while divisible?(number, factor)
        factors.push(factor)
        number /= factor
      end
      factor += 1
    end
    factors
  end

  def divisible?(number, divider)
    (number % divider).zero?
  end
end
