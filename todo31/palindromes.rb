# A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string
class String 
	def longest_palindrome
		palindromes = []
		(self.size-1).times do |first|
			(first+1..self.size-1).each do |last|
				section = self[first..last]
				palindromes << section.reverse if section == section.reverse
			end 
		end 
		palindromes.sort_by {|palindrome| palindrome.length}.last
	end 
end 
