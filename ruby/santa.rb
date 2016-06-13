class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def speak 
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!"
	end

	def reindeer_ranking
		@rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def the_age
		@age = rand(140)
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
	end

	#attribute changing methods
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@rank.delete_at(@rank.index(reindeer_name))
		@rank << reindeer_name
	end

end	

number_of_santas = 100
santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

number_of_santas.times do |i|
  santas << Santa.new(example_genders[rand(6)], example_ethnicities[rand(6)])
end


santas.each do |s|
	s.reindeer_ranking
	s.the_age
	s.speak
	s.get_mad_at("Dancer")
	s.celebrate_birthday
	puts "#{s.age}, #{s.ethnicity}, #{s.gender}"
end



