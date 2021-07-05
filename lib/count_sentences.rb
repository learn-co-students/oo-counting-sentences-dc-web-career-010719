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
    array = self.split(/[\.!?]/)
    counted = array.each_with_index do |sentence, index|
      if array[index].empty?
        array.delete_at(index)
      end
    end
    counted.size
  end

end
