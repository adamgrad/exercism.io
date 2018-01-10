module RunLengthEncoding
  module_function

  def encode(input)
    chars = input.split('')
    encoded = ''
    until chars.empty?
      amount = 1
      char = chars.shift
      while char == chars[0]
        amount += 1
        char = chars.shift
      end
      encoded += amount == 1 ? char : "#{amount}#{char}"
    end
    encoded
  end

  def decode(input)
    decoded = ''
    amount = ''
    chars = input.split('')
    until chars.empty?
      amount += chars.shift until chars[0].to_i.zero?
      decoded += amount == '' ? chars.shift : chars.shift * amount.to_i
      amount = ''
    end
    decoded
  end
end

module BookKeeping
  VERSION = 3
end
