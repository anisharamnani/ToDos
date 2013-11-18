11-14-13

Blakes Loop Lecture 

*today i dont have my glasses. yes i know..I'm a sad failure.


Why are loops cool? 
a script vs. program 

Chrome sits in a loop

Control Flow! 
1. really important things is in programming is to have a good idea of where the program is 
programs don't necessarily
we can't look a program and go line by line 
but in a program we should look at what is the state of the program now

bug = your mental of the program vs. the computer's model of the program 

puts "hello" 
puts "good bye"

=begin
build a mental model of our program 
Flowbugs => delta in our mental model 
just like conditionals we need a statement that returns true or false
while loops while the condition is true 
=end 

=begin 
real world example of doing things: bank account
-spotify turning the music down 
some 
=end 

i = 0
while i < 3 
	puts i 
	i = i + 1
end

# potential bugs 
# move i into loop
# comparison not working as you expect
# changing something..


until i > 3 
	puts i 
	i = i + 1 
end 

# until is confusing, i will probably not use it unless my life depends on it. 

# Block scope (scope is like memory)
0.upto(9) do |x|
	puts x 
end

3.times do 
	print "Ho! "
end 

# Answer: "Ho! Ho! Ho!"
# 

condition: state, condition, increment 


