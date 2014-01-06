# Instructions:
# Each with object works much like inject. Use each_with_object to return an array containing one reversed string for each string that has an even number of characters.

#Code:
def even_sum(arr)
  arr.each_with_object([]).each do |s, a|
  	if s.length % 2 == 0 
  		a << s.reverse
  	end 
	end 
end

