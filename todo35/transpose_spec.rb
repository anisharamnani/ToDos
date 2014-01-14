require './transpose.rb'

describe Array do 
	describe "#my_transpose" do 
		it "should pair up each value of the given arrays" do 
			expect([[1, 2, 3], [:a, :b, :c]].my_transpose).to eq([[1, :a], [2, :b], [3, :c]])
			expect([[1,2], [3,4], [5,6]].my_transpose).to eq([[1, 3, 5], [2, 4, 6]])
			expect([].transpose).to eq([])
		end 
	end
end 