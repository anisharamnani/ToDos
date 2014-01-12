# Get keys of a hash whose values equal to given arguments.
# Code:
require 'debugger'

class Hash
  def keys_of(*args)
    # collect{|k,v| args.include?(v) ? k : nil}.compact
    self.collect do |key,value|
    	if args.include? value
    		key
    	end
  	end.compact
  end
end


\
# {a: 1, b: 2, c: 3, d: 1}.keys_of(1) #=>  [:a, :d]
# {a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2) #=> [:a, :b, :d]