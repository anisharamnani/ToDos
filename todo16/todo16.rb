# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.

test = ['cat', 'dog', 'fish', 'fish']

def count(array)
	new_test = {}
	array.uniq!
	array.each {|item| new_test[item] = array.index(item) + 1}
	new_test
end

count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })

