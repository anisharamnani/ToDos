require './palindromes.rb'

describe '@palindromes' do 
	palindrome = "afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd"
	it "should return the longest palindrome" do 
		expect(palindrome.longest_palindrome).to eq("dhfdkjfffhhfffjkdfhd")
	end 
end 