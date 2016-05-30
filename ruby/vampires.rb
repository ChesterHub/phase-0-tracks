puts "How many employees will be processed?"
employees = gets.chomp

employees = employees.to_i

until employees == 0
	puts "#{employees} employee(s) left to process."
	employees = employees - 1

puts "what is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birthyear = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? Y/N"
garlicbread = gets.chomp

puts "Would you like to enroll in the company’s health insurance? Y/N"
insurance = gets.chomp

puts "Name all allergies one at a time. If none or finished, type done"
allergies = gets.chomp

until allergies == "done" || allergies == "sunshine"
allergies = gets.chomp
end

current = Time.new

# I did not understand what this challenge meant when they asked to do the LATEST CONDITION matched, so I ordered my if statement to make things true.
if name == "Drake Cula" || name == "Tu Fang"
puts "Definitely a vampire."
elsif birthyear.to_i != (current.year - age.to_i) && garlicbread == "N" && insurance == "N"
puts "Almost certainly a vampire."
elsif birthyear.to_i != (current.year - age.to_i) && (garlicbread == "N" || insurance == "N") || allergies == "sunshine"
puts "Probably a vampire."
elsif birthyear.to_i == (current.year - age.to_i)  && garlicbread == "Y" || insurance == "Y"
puts "Probably not a vampire."
else
puts "Results inconclusive."
end

puts "Name: #{name}"
puts "Age: #{age}"
puts "Year Born: #{birthyear}"
puts "Likes Garlic Bread? #{garlicbread}"
puts "Wants Life Insurance: #{insurance}"

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
