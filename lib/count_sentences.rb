require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    word = self.split(/[.?!]/)
    return word.select {|sentence| !sentence.empty?}.count
  end
end
