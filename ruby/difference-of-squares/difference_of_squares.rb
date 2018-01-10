class Squares
  def initialize(numbers)
    @numbers = numbers
  end

  def square_of_sum
    (1..@numbers).reduce(:+)**2
  end

  def sum_of_squares
    (1..@numbers).map { |x| x**2 }.inject { |sum, num| sum + num }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
