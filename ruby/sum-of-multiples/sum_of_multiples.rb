class SumOfMultiples
  def initialize(*dividers)
    @dividers = dividers
  end

  def to(number)
    multiples = (1..number - 1).each_with_object([]) do |num, sum|
      @dividers.each { |div| sum.push(num) if (num % div).zero? }
    end
    multiples.uniq.inject(0) { |sum, n| sum + n }
  end
end

module BookKeeping
  VERSION = 1
end
