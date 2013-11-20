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

# asks the play if he/she wants to play the game
def blackJack
    begin_game 
end 

# asks the player if he/she wants to play the game
def begin_game 
    puts "Hello! Would you like to play blackjack?"
	answer = gets.chomp
	if answer == "yes"
		play_game
	elsif answer == "no"
		puts "That's fine. Maybe next time. =]"
	else 
		puts "I'm sorry, but I don't understand."
		begin_game
	end
end 

def play_game
	playing = true 
	hand = []
    total = first_move(hand)
	playing = hit_stay(hand)
	if playing == true 
		hit_stay(hand)
	end 
end 

def first_move hand 
	deal(hand) 
	deal(hand)
	game_total(hand)
end 

def deal hand
	card = rand(1..11)
	puts "You have been dealt a #{card}"
	hand << card 
end


def game_total(hand)
    total = 0 
	hand.each do |card|
		total += card
	end 
    puts "Your total is #{total}."
	total 
end  

def hit_stay hand 
	puts "Would you like to hit or stay?"
	answer = gets.chomp 
	if answer == "stay"
		check_win(hand)
	elsif answer == "hit"
		deal(hand)
        game_total(hand)
        playing = true
	else 
		puts "I'm sorry, but I don't understand"
		hit_stay(hand)
	end 
end 

def check_win hand
    total = game_total(hand)
	if total == 21 
		puts "You win!"
	else
		puts "You lose."
	end
    playing = false
end 

blackJack()

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.

# def checkWin 
# if total == 21 
# 	puts "You won!"
# else 
# 	puts "You lost kiddo."
# end
# end

# 	hits = 0
# 	first = rand(11)+1
# 	second = rand(11)+1
# 	total = first + second
# 	puts "Hello Player! You have been dealt cards #{first} and #{second}. The total is #{total}. Do you want to hit or stay?" 

# 	want_hit = gets.chomp

# 	def hits want_hit ry
# 		if want_hit == "hit" && hits <= 2 
# 			new_card = rand(11)+1
# 			total = new_card + total	
# 			puts "Your new card is #{new_card}. Your total is #{total}."
# 			hits = 1 + hits
# 		else 
# 			checkWin
# 		end
# end 

# blackJack()ACK