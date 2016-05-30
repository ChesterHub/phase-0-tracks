puts "What is the hamsters name?"
hname = gets.chomp
puts "What is the volume level from 1 to 10 of the hamster?"
volume = gets.chomp
puts "fur color?"
color = gets.chomp
puts "good for adoption?"
adoption = gets.chomp	
puts "estimated age of hamster?"
age = gets.chomp

if age == ""
		age = nil
end





puts "The hamsters Name is #{hname}!"
puts "On a scale from 1 to 10, the hamsters loudness is #{volume.to_i}."
puts "The hamsters fur color is #{color}."
puts "Is this hamster good for adoption?: #{adoption}."
puts "The estimated age of the hamster is #{age.to_i}!" 