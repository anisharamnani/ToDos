require './each_with_object.rb'

describe "#even sum" do 
	it "should take an array, see if the str values have even characters, and return those strings reversed" do
		expect(even_sum(["cat", "dog", "bird", "fish"])).to eq(["drib", "hsif"])
	end 
end 

