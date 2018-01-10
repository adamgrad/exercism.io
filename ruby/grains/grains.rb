module Grains
  MAX_SQUARES = 64

  module_function

  def square(num)
    raise ArgumentError if num <= 0 || num > MAX_SQUARES
    2**(num - 1)
  end

  def total
    2**MAX_SQUARES - 1
  end
end

module BookKeeping
  VERSION = 1
end
