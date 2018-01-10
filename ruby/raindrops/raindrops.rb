module Raindrops
  SOUNDS = { 3 => 'Pling',
             5 => 'Plang',
             7 => 'Plong' }.freeze

  extend self

  def convert(number)
    result = find_divisors(number).values.join
    result.empty? ? number.to_s : result
  end

  private
  
  def find_divisors(num)
    SOUNDS.select { |k| (num % k).zero? }
  end
end

module BookKeeping
  VERSION = 3
end
