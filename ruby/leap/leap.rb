module Year
  module_function

  def leap?(year)
    if year.modulo(4).zero? && !year.modulo(100).zero? || year.modulo(400).zero?
      true
    end
  end
end

module BookKeeping
  VERSION = 3
end
