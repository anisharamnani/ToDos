class Woodchuck 
	attr_accessor :chuck_count

	@@woodchuck_count = 0
	@@total = 0 

	WOODCHUCKS = [] 

	def initialize 
		@chuck_count = 0 
		@@woodchuck_count += 1
		WOODCHUCKS << self 
	end 

	def chuck_wood 
		@chuck_count += 1 
		@@total += 1 
	end

	# def what_is_self 
	# 	puts self.class
	# end 

	#we name this function woodchuck_count b/c we want it to follow the pattern 
	# Woodchuck.woodchcuk_count so we can call on it the same we do with instance variables =] 

	def self.woodchuck_count 
		@@woodchuck_count
	end 

	def self.total
		@@total
	end 

end

total = 0 

rand(1000).times do |x|
	Woodchuck.new 
end 

Woodchuck::WOODCHUCKS.each do |woodchuck|
	rand(1000).times do 
		woodchuck.chuck_wood
	end
end 

puts Woodchuck.total

# Woodchuck.new
# Woodchuck.new
# Woodchuck.new

# Woodchuck::WOODCHUCKS.each do |woodchuck|
# 	woodchuck.chuck_wood
# end 

# puts Woodchuck::WOODCHUCKS.inspect

# -create a random amount of woodchucsk
# -each one randomly chucks a certain amount 
# -then count how much wood each woodchuck has chucked

# puts Woodchuck::WOODCHUCKS.inspect
# puts Woodchuck::WOODCHUCKS << "woodchuck"
# puts Woodchuck::WOODCHUCKS.inspect 


# my_woodchuck1 = Woodchuck.new
# my_woodchuck2 = Woodchuck.new
# my_woodchuck3 = Woodchuck.new

# puts Woodchuck.woodchuck_count 

# puts my_woodchuck1.class.woodchuck_count

# puts "what is self INSTANCE METHOD"
# puts my_woodchuck.what_is_self
# #<Woodchuck: u53920760263>

# puts "what is self's class INSTANCE METHOD"
# puts my_woodchuck.what_is_self.class
# # Woodchuck

# puts "what is self CLASS METHOD"
# puts Woodchuck.what_is_self
# # Woodchuck

# puts "what is self's class CLASS METHOD"
# puts Woodchuck.what_is_self.class
# # Class

