def encrypt(string)
index = 0
letter = ""
while (index < string.length)
letter += string[index].next
index += 1
end
letter
end


def decrypt(string)
  index = 0
  second_index = 0
  decrypted = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while(index < string.length)

 	 while(second_index < alphabet.length)

  		if(alphabet[second_index] == string[index])
 		 decrypted += alphabet[second_index-1]
 		 end

  	second_index+=1
 	 end
   
  second_index = 0

  index+=1
  end
decrypted
end

puts "Would you like to encrypt or decrypt a password? Encrypt/Decrypt"
answer = gets.chomp
puts "whats the password?"
string = gets.chomp

if answer == "encrypt"
puts encrypt(string)
elsif answer == "decrypt"
puts decrypt(string)
else
puts "You did not correctly say encrypt or decrypt."
end





