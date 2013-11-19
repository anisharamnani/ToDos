require_relative "./fizzbuzz_method"

describe "#fizzbuzz" do 
	it "should return fizzbuzz when number mod 15=0" do 
		expect(fizzbuzz(75)).to eq("fizzbuzz")
	end 
	it "should return buzz when number mod 5 = 0" do
		expect(fizzbuzz(10)).to eq("buzz")
	end  
	it "should return fizz when number mod 3 = 0" do 
		expect(fizzbuzz(3)).to eq("fizz")
	end 
	it "should return number when number mod 3, mod 15, or mod 0 is not equal to 0" do 
		expect(fizzbuzz(3)).to eq("fizz")
	end 
end 