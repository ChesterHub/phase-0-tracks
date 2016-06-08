def name_swap(fullname)
	fullname.downcase!
	fullname = fullname.split(" ")
	fullname.reverse
end

def vowel_change(swapped_name)
	swapped_name.map! do |vowel|
		vowel.gsub(/[aeiou]/, 
			"a" => "e",
			"e" => "i",
			"i" => "o",
			"o" => "u",
			"u" => "a",
			) 
	end
end

def character_change(changed_vowels)
	changed_vowels.map! do |character|
		character.gsub(/[bcdfghjklmnpqrstvwxyz]/, 
			"b" => "c",
			"c" => "d",
			"d" => "e",
			"f" => "i",
			"g" => "h",
			"h" => "i",
			"j" => "k",
			"k" => "l",
			"l" => "m",
			"m" => "n",
			"n" => "o",
			"p" => "q",
			"q" => "r",
			"r" => "s",
			"s" => "t",
			"t" => "u",
			"v" => "w",
			"w" => "x",
			"x" => "y",
			"y" => "z",
			"z" => "a",
			) 
	end
end

def name_entry(entry)
	swapped_name = name_swap(entry)
	changed_vowels = vowel_change(swapped_name)
	changed_characters = character_change(changed_vowels)
	secret_name = changed_characters.join(' ')
end

def name
	list = []
	answer = ""
	until answer == "N" || answer == "n"
		puts "Give me a name and I will give you a secret identity."
		entry = gets.chomp
		realname = entry
		list << "#{realname}'s secret identity is #{name_entry(entry)}.\n"
		puts "Do you want to enter another name? Y/N"
		answer = gets.chomp
	end
	puts allnames = list.join(" ") 
end

name


