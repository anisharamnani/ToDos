class Triangle 
	attr_accessor :a, :b, :c 

	def initialize a, b, c
		@a = a
		@b = b
		@c = c
	end 

	def kind
		raise TriangleError if not triangle? 
		return :equilateral if a == b && b == c  
		return :isosceles if (a == b && a != c) || (b == c && b!= a) || (a == c && a != b)
		return :scalene if (a != b) && (b != c) && (a != c)
	end 

	def triangle?
		return false if a <= 0 || b <= 0 || c <= 0 

		return true if (a+b)>c && (b+c)>a && (c+a)>b
	end 

end 

class TriangleError < StandardError
	"NEIN. NOT A TRIANGLE." 
end 
