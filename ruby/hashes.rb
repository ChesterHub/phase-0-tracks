hash = {}

puts "What is the client name?"
hash[:name] = gets.chomp
puts "What is the age of the client?"
hash[:age] = gets.chomp.to_i
puts "How much children does this client have?"
hash[:number_of_children] = gets.chomp.to_i
puts "What decor theme do they prefer?"
hash[:decor] = gets.chomp
puts "Do they like magenta? Y/N"
hash[:likes_magenta] = gets.chomp
if hash[:likes_magenta] == "Y"
	hash[:likes_magenta] = true
elsif hash[:likes_magenta] == "N"
	hash[:likes_magenta] = false
else
	puts "fail."
end
puts hash

puts "Do you want to change any information? Y/N"
value = gets.chomp

if value == "Y"
	puts "Things to change: \n name \n age \n number_of_children \n decor \n likes_magenta  \n nevermind"
	re = gets.chomp
	if re == "name"
		puts "What is the client name?"
		hash[:name] = gets.chomp
	elsif re == "age"
		puts "What is the age of the client?"
		hash[:age] = gets.chomp.to_i
	elsif re == "number_of_children"
		puts "How much children does this client have?"
		hash[:number_of_children] = gets.chomp.to_i
	elsif re == "decor"
		puts "What decor theme do they prefer?"
		hash[:decor] = gets.chomp
	elsif re == "likes_magenta"
		puts "Do they like magenta? Y/N"
		hash[:likes_magenta] = gets.chomp
		if hash[:likes_magenta] == "Y"
			hash[:likes_magenta] = true
		elsif hash[:likes_magenta] == "N"
			hash[:likes_magenta] = false
		else
			puts "fail."
		end
	else 
		puts "K."
	end
	puts hash
	elsif value == "N"
		puts "GOOD."
	end




