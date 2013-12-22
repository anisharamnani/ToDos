# Let's make an object that behaves like a hash today!
# I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.
# For example

# obj = {:blake => "the best"}
# obj["blake"] #=> "the best"

# I'd like to be able to set values in our fake hash.
# I'd like to be able to find all values that have keys beginning with the letter a.
# I'd like to be able to get all the keys in the hash in a descending alphabetized array.

class FakeHashWrapper
	attr_accessor :hash

	def initialize  
		@hash = {} 
	end 

	def []= key,value 
		hash[key] = value 
	end 

	def [] key 
		hash[key] if (hash.has_key?(key.to_sym) || hash.has_key?(key.to_s))
	end 

	def alpha hash 
		hash.keys.sort.reverse 
	end 

	def first_letter letter 
		hash.values.select {|value| (hash.key(value))[0] == letter}
	end 

end


