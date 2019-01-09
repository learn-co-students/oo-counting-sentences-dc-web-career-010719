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

  def count_sentences
    separated = self.split(/[.!?]/)
    pieces = []
    separated.each do |fragment|
      if fragment.size > 0
        pieces << fragment
      end
    end
    pieces.size
  end
end
