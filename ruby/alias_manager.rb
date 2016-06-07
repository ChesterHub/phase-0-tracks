#<- Pseudocode
#1.Take a persons name
#2 Swap the first and last name
#3 Change all the vowels of the string
#4

def name_swap(firstname, lastname)
	fullname = lastname + " " + firstname
	fullname.downcase!
	fullname = fullname.split(" ")
	#fullname = [fullname[0].split(""),fullname[1].split("")]
	fullname.class
	p fullname
end

name = name_swap("Cheddar","Han")

def letter_changes(array)
	vowels = "aeiou"
	i = 0
	lastname = array[0]
	until i == lastname.length
		if lastname[i] == "u"
			lastname[i] = "a"
		elsif	
			lastname[i] == vowels[vowels.index(lastname[i])]
			lastname[i] =  vowels[vowels.index(lastname[i]) + 1]
		else 
			lastname[i] = lastname[i].next
		end
		i += 1
		
	end
	p lastname
end

letter_changes(name)




