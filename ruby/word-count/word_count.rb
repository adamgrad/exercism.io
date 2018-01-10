class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    words = split_sentence
    counted = {}
    words.each do |word|
      counted.key?(word) ? counted[word] += 1 : counted[word] = 1
    end
    counted
  end

  private

  def split_sentence
    words = @sentence.downcase.split(/[^[[:word:]]']+/)
    words.each { |word| word.delete!('\'') if word.count('\'') >= 2 }
  end
end

module BookKeeping
  VERSION = 1
end
