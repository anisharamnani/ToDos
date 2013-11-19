def roll_dice
  Array.new(5) { rand(1..6) }
end

def win? roll
	# uniq means all five numbers are the same 
  roll.uniq.length == 1 ? true : false
end