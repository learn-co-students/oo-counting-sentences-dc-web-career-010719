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
  	# binding.pry
  	del = [".", "?", "!"]
  	count = self.split(Regexp.union(del)) #looked up documentaion on splitting by specific characters
  	count.delete("")
  	count.length
  end
end