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
    return sentenceCount = self.squeeze("!.?").count("!.?")
    binding.pry
  end

end

"This is a sentence. So is this. So is this.".count_sentences