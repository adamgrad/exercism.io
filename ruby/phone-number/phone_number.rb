module PhoneNumber
  module_function

  def clean(number)
    phone = []
    number.chars.each { |char| numeral?(char) ? next : phone.push(char) }
    phone.delete_at(0) if country_code?(phone)
    phone.join.length != 10 || area_code_correct?(phone) ? nil : phone.join
  end

  def numeral?(char)
    char.to_i.zero? && char != '0'
  end

  def country_code?(tab)
    tab.first.eql?('1')
  end

  def area_code_correct?(tab)
    !(2..9).cover?(tab[0].to_i) || !(2..9).cover?(tab[3].to_i)
  end
end

module BookKeeping
  VERSION = 2
end

