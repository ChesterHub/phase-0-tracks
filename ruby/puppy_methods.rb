class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(number)
		number.times {|woof| puts "woof!"}
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(hyears)

		puts years = hyears * 7
	end

	def handshake
		puts "*hand shake*"
	end

	def initialize
		puts "Initializing new puppy instance ..."
	end
end

class Food
	def pizza(slices)
		puts "I want ate #{slices} slices of pizza"
	end
	def dessert
		puts "I want some dessert now."
	end
	def initialize 
		puts "Setting up table for food...."
	end
end	

aloop = 50
storage = []
aloop.times do |f|
	f = Food.new
f.pizza(rand(6))
f.dessert
storage << f
end

storage.each {|printing| puts printing}


