#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

def magicEightball 
	answered = 
	[
	"Most def.", "No doubt", "Hell yes", 
	"maybe...", "It's a possibility.", "It could happen.",
	"never eva eva!", "NO!", "Not in a thousand years."
	] 

	puts "Please ask me a question."
	question = gets.chomp
	puts "So your question is #{question}"
	puts answered[rand(8)]
end 

def play()
    puts "Do you want to shake the magic 8 ball?"
    answer = gets.chomp
    
    while answer == "yes" 
        magicEightball()
        puts "Do you want to shake the magic 8 ball?"
        answer = gets.chomp
    end 
end 



