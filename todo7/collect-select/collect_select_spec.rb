require "./collect_select"

describe Array, "#my_collect" do 
	it "creates a new array containing the values returned by the block" do
		expect([1,2,3].my_collect {|element| element*2}).to eq([2, 4, 6])
	end
end

describe Array, "#my_select" do 
	it "Returns a new array containing all elements 
	of array for which the given block returns a true value." do
		expect([1,2,3].my_select {|element| element.even?}).to eq([2])
	end
end