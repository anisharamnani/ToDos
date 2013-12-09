require './todo16'

describe "#count" do 
	it "should take an array, make the items unique, and then create a hash with the index value" do 
		test = ['cat', 'dog', 'fish', 'fish']
		expect(count(test)).to eq({ 'cat' => 1, 'dog' => 1, 'fish' => 2 })
	end 
end 