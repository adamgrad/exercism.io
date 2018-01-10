module Bob
  module_function

  def hey(phrase)
    return 'Fine. Be that way!' if phrase.blank?
    return 'Sure.' if !phrase.contains_letters? && phrase.question?
    return 'Whatever.' unless phrase.contains_letters?
    return 'Whoa, chill out!' if phrase.uppercase?
    phrase.question? ? 'Sure.' : 'Whatever.'
  end
end

class String
  def uppercase?
    match(/\p{Lower}/).nil? ? true : false
  end

  def contains_letters?
    match(/[A-Za-z]/).nil? ? false : true
  end

  def blank?
    strip.empty?
  end

  def question?
    strip[-1].eql?('?')
  end
end

module BookKeeping
  VERSION = 1
end
