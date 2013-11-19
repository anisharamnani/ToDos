require "./yahtzee"

describe "#roll_dice" do
	it "should return an array with 5 numbers." do
		expect(roll_dice.length).to eq(5)
	end
end 

describe "#win?" do 
 	it "should return true if all the numbers in the array are the same." do 
			expect(win? ([1,1,1,1,1])).to eq(true)
 	end
 	it "should return false if all the numbers are not the same." do 
 		expect(win? ([1,2,1,1,1])).to eq(false)
 	end
 end
