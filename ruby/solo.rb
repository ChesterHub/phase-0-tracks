class Jetpack
	attr_reader :user, :speed_setting
	attr_accessor :afraid

def user_name(name)
@user = name
end

def speed
setting = ["slow and steady", "at normal capacity", "DANGEROUSLY FAST", "as fast as possible!!! (May you rest in peace)"]
@speed_setting = setting[rand(4)]
end

def afraid_of_heights(afraid)
	if afraid.upcase == "Y"
		then
		@afraid = true
	else
		@afraid = false
	end
end

end

all_users = []


puts "How many people will ride our jetpacks today?"
people = gets.chomp.to_i

people.times do |persons|
persons = Jetpack.new
puts "Strap on your new Jetpack and sign this waiver in case of death. What is your name?"
persons.user_name(gets.chomp)
persons.speed
puts "Quick question before we begin... Are you afraid of heights? Y/N"
persons.afraid_of_heights(gets.chomp)

if persons.afraid == true
	puts "I understand that you're afraid of heights. Thats too bad."
else
	puts "You're not afraid of heights so you'll be fine."
end

all_users << [persons.user, persons.speed_setting, persons.afraid]
end


puts "We have started all the jetpack engines. Let me introduce the riders:"
all_users.each do |u|
	if u[2] == true
		then
		scared = "its a shame that you're afraid of heights..."
	else
		scared = "good thing you don't mind high altitudes!"
	end
	puts "\n We have jetpack Rider #{u[0]} and they like their jetpack speed #{u[1]}, #{scared}"
end

puts "\n Prepare yourselves..... TAKE OFF!!!!!!!!!!!!!!!"




