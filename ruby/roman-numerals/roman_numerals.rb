class Integer
  ROMAN_NUMERALS = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD',
                     100 => 'C',	90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X',
                     9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I' }.freeze
  def to_roman
    roman = ''
    number = self
    ROMAN_NUMERALS.each do |value, letter|
      amount, number = number.divmod(value)
      roman += letter * amount
    end
    roman
  end
end

module BookKeeping
  VERSION = 2
end
