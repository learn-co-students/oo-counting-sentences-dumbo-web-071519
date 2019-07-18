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
    self.split(/[.!?]/).reject {|x| x.empty?}.size
  end
  
  def count_sentences_words
    self.split(/[.!?]/).map{|x| 
    !(x.match(/\w+/).nil?)}.reject{|x| 
    x == false}.size 
   end

end

"What is this? A center for ants? 
How can we be expected to teach children 
to learn how to read if they can’t even 
fit inside the building?".question?

"Here's looking at you, kid.".end_with?

"STELLLLLLLLLLLLLA!!!!!".end_with?