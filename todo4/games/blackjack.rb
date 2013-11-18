#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions

#We are going to build a command line blackjack game.  

# A player gets dealt two cards which have values between 1-11.

#player is given a random card between 1-11

# A player is allowed to "hit" up to two times.  
# note: so some kind of while statement for while hit <= 2 

# After each hit you should ask if they want to hit or stay and display the total value of their cards. 

# If they don't want to hit, and they are not at 21 they lose.  

# Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

# possibly two methods: one for a hit & one for evaluating the score 

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.

def blackJack
    def checkWin 
		if total == 21 
			puts "You won!"
		else 
			puts "You lost kiddo."
        end
	end

	hits = 0
	first = rand(11)+1
	second = rand(11)+1
	total = first + second
	puts "Hello Player! You have been dealt cards #{first} and #{second}. The total is #{total}. Do you want to hit or stay?" 

	want_hit = gets.chomp

	while want_hit == "hit" && hits <= 2 
		new_card = rand(11)+1
		total = new_card + total	
        puts "Your new card is #{new_card}. Your total is #{total}."
        hits = 1 + hits
    end
    
    checkWin() 
end 

blackJack()