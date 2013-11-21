require "./todo8"

describe Deli, "#take_a_number" do 
	it "should take a name and then add the name to the line array with a number of where they are in line" do
		expect(Deli.new.take_a_number("Ashley")).to eq(["1. Ashley"])
	end
end

describe Deli, "#now_serving" do 
	deli = Deli.new
	deli.line = ["1. Ashley", "2. Blake"]

	it "should remove the customer who is first and return their name." do
		expect(deli.now_serving).to eq("Ashley")
	end 
end 