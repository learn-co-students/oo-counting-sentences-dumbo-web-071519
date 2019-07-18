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

  def creating_sentences_array(sentence_arr, indicator)
    ## Create a new array after looping through all of the
    ## "sentences" in the array
    sentence_arr.reduce([]) do |memo, sentence|
      ## If the sentence has the indicator, split it
      ## and add the new array to the memo
      if sentence.chars.include? indicator
        new_sentences = sentence.split(indicator)
        memo += new_sentences
        # binding.pry
      ## if the indicator is not in the "sentence" and
      ## as long as the "sentence" recieved is not empty
      ## push it to the memo
      elsif sentence != ""
        memo << sentence
      end
      ## return memo
      memo
    end
  end

  def count_sentences
    sentences = [self]
    sentences = creating_sentences_array(sentences, ".")
    sentences = creating_sentences_array(sentences, "!")
    sentences = creating_sentences_array(sentences, "?")
    sentences.length
  end
end
