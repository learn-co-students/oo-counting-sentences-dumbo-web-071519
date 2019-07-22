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
    self.split(/[[?!.]][[:space:]]/).count
    #self.count("? ")
    #(/[[:punct:]]+[[:space:]]/).count 
    #+ self.count("! ") + self.count("? ")
    
  end
end