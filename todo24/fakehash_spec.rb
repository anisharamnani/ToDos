require_relative 'fakehashwrapper'

describe FakeHashWrapper do 
	describe '#[]()' do
		it "should allow you to set values in the hash" do
			fake = FakeHashWrapper.new 
			fake[:blake] = 'the best'
			expect(fake[:blake]).to eq('the best')
		end 

		it "should return value regardless if it's a string or symbol" do 
			fake = FakeHashWrapper.new 
			fake['blake'] = 'the best'
			expect(fake['blake']).to eq('the best')
		end 	  
	end 

	describe "#alpha" do 
		it "should return all the keys in a hash in desceding order" do
		end 
	end 

end 

