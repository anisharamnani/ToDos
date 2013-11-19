def fizzbuzz(num)
	if num % 3 == 0 && num % 5 == 0
		return "fizzbuzz"
	elsif num % 5 == 0
		return "buzz"
	elsif num % 3 == 0
		return "fizz"
	else 
		return num
	end 
end 