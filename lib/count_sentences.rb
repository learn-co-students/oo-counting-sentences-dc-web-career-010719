require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    if self.length > 0
    period_sentences = self.split(".").delete_if { |element| element == '' }
    count = period_sentences.size
    excla_sentences = self.split("!").delete_if { |element| element == '' }
    count = count + excla_sentences.size - 1
    question_sentences = self.split("?").delete_if { |element| element == '' }
    count = count + question_sentences.size - 1
    else
    return 0
    end
  end
end
