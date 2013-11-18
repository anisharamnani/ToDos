# sentences in the string it is called on

class String
  def count_sentences
    # code goes here
    # split the number of "." "!" and "?"
    # count the number 
    split(/\.|\?|!/).size 
  end
end