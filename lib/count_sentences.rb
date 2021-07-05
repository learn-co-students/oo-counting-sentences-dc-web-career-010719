require 'pry'

class String

  def ends_with(sentence, ending)
    sentence.split('').last == ending ? true : false
  end

  def sentence?
    ends_with(self, ".")
  end

  def question?
    ends_with(self, "?")
  end

  def exclamation?
    ends_with(self, "!")
  end

  def count_sentences
    self.split(/(?:\? |! |\. )/).count
  end

end
