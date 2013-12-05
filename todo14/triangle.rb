class Triangle 
	attr_accessor :a, :b, :c 

	def initialize a, b, c
		@a = a
		@b = b
		@c = c
	end 

	def kind 

		return :equilateral if a == b && b == c  
		return :isosceles if (a == b && a != c) || (b == c && b!= a) || (a == c && a != b)
		return :scalene if (a != b) && (b != c) && (a != c)
	end 

end 

class TriangleError < StandardError 
end 
