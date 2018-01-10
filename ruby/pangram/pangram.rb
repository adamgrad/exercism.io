module Pangram
  ALL_LETTERS = ('a'..'z').to_a

  module_function

  def pangram?(phrase)
    characters = phrase.downcase.scan(/\S/)
    (ALL_LETTERS - characters).empty?
  end
end

module BookKeeping
  VERSION = 5
end
