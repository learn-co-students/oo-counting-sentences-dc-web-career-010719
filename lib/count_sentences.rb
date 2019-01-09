require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
   
  self.split(/[\.+!+\?+]/)
  no_empty_sentences = self.split(/[\.!\?]/).reject { |s| s.empty? }
  no_empty_sentences.count
  
  end
end