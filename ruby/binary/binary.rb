module Binary
  module_function

  def to_decimal(binary)
    output = binary.split('').reverse
    raise ArgumentError if output.find { |n| n != '0' && n != '1' }
    output.each_with_index.inject(0) { |sum, (num, idx)| sum + num.to_i * 2**idx }
  end
end

module BookKeeping
  VERSION = 3
end
