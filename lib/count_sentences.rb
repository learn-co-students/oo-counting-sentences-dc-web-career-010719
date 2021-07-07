require 'pry'

class String
  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    if self.include?(".") ||  self.include?("?") || self.include?("!")
    array = self.split(/[.?!]/).reject{|split| split == ""}
    array.length
    else 
      return 0
    end
  end
end