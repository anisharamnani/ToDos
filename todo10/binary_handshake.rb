# ```
# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump

# ```
# handshake = SecretHandshake.new "1001"
# handshake.commands # => ["wink","jump"]

# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]
# ```

class SecretHandshake

	attr_reader :binary 

	def initialize binary 
		@binary = binary
	end 

	def commands 
		handshake = []
		handshake << "wink" if binary[-1] == "1"
		handshake << "double blink" if binary[-2] == "1"
		handshake << "close your eyes" if binary[-3] == "1"
		handshake << "jump" if binary[-4] == "1"
		handshake.reverse! if binary[-5] == "1"
		handshake
	end 

end