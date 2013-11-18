def fizzbuzz(num)
    if num % 3 == 0 && num % 5 == 0
		puts "fizzbuzz"
	elsif num % 5 == 0
		puts "buzz"
	elsif num % 3 == 0
		puts "fizz"
	else 
		puts num
	end 
end 

fizzbuzz(5)