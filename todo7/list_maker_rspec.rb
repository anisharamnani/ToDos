require "./listmaker"

describe "#make_list" do 
	it "should take an array and return the same number of strings in a numbered list" do
		expect(make_list(["ich", "ni", "san"])).to eq.(["1. ich", "2. ni", "3. san"])
	end
end

