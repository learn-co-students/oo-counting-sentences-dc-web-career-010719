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
    #binding.pry
  word = self.split(/[.!?]/)
  return word.select{ |e| !e.empty? }.size

  end
end
#
# v = String.new("sadas! klajshfhskjh. alkjshdjdkshf! d?")
# v.count_sentence
