# instructions: implement Array.uniq

require "debugger"

class Array 
  def uniq
  	uniq_array = []
  	self.each do |value|
  		uniq_array << value unless uniq_array.include? value
  	end 
  	uniq_array 
  end
end 



puts [1,2,1].uniq