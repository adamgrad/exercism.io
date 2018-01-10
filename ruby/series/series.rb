class Series
  def initialize(digits)
    @digits = digits.split('')
  end

  def slices(n)
    raise ArgumentError if n > @digits.length
    series = []
    @digits.each_cons(n) { |digits| series.push(digits.join) }
    series
  end
end