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
    
    self.split.count{|i| i.sentence? || i.question? || i.exclamation?}
  end
end