require "./dog_years"

describe "#age_in_years" do
	it "should return the age input" do 
		expect(age_in_years(10)).to eq(10)
	end
end 

describe "#age_in_days" do
	it "should return the age times 365" do 
		expect(age_in_days(1)).to eq(365)
	end
end

describe "#age_in_dog_years" do 
	it "should return the age times 7" do 
		expect(age_in_dog_years(1)).to eq(7)
	end
end