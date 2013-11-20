require './gus_blackjack' 

describe "#card" do 
	it "should return a random number between 1 and 11" do 
		expect(card).to be > 1 
		expect(card).to be < 11
	end 
end

describe "#blackjack" do
  it "should return nil value" do
    expect(blackjack()).to eq(nil)
  end
end