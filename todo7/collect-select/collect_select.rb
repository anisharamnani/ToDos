# Implement your own versions of collect and select

# creates a new array containing the values returned by the block 
class Array 
	def my_collect
		i = 0 
		new_array = []
		while i < self.length 
			new_array << (yield self[i])
			i += 1 
		end 
		new_array
	end

	# array = [1,2,3]
	# times_two = my_collect(array){|element| element*2}
	# puts times_two

	# Returns a new array containing all elements 
	# of ary for which the given block returns a true value.

	def my_select
		i = 0 
		new_array = []
		while i < self.length 
				if (yield self[i]) == true
					new_array << self[i]
				end
			i += 1
		end 
		new_array
	end
end 

 # even = my_select(array){|element| element.even?}
 # puts even


# CHALLENGE:
# Implement these methods as instance methods on the array class.