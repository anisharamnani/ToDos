def first_even(items)
  items.each do |num|
  	if num.even? 
  			return num 
  			exit
		end
	end
end
