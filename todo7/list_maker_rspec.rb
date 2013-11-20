require "./listmaker"

describe Array, "#make_list" do 
	it "should take an array and return the same number of strings in a numbered list" do
		expect(["ich", "ni", "san"].make_list).to eq(["1. ich", "2. ni", "3. san"])
	end
end

