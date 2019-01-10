require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    string = self.split(/[.!?]/)
    string.delete_if do |s|
      s.empty?
    end

    return string.count
  end
end