require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def sentences
    self.split(/[.?!]/).select { |s| s && !s.empty? }
  end

  def count_sentences
    sentences.count
  end
end