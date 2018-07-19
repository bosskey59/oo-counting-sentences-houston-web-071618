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
    char_array=self.split(" ")
    counter =0
    char_array.each do |char|
      if char.end_with?("!") || char.end_with?("?") || char.end_with?(".")
        counter+=1
      end
    end
    counter
  end
end
