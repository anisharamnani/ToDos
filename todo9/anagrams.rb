# Anagram Detector

# Write a program that, given a word and a list of possible anagrams, 
# selects the correct one(s).

# In other words, given: "listen" and %w(enlists google inlets banana) 
# the program should return "inlets".

# PS what is %w? 
# http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean

# Save this file as anagram_spec.rb
# run it with rspec anagram_spec.rb

class Anagram
  attr_accessor :key_words
  
  def initialize key_words  
    @key_words = key_words
  end 
  
  def match array 
    @matched = []
    array.each do |word|
      if word.chars.sort == @key_words.chars.sort
        @matched << word
      end 
    end
    @matched
  end 
end 

