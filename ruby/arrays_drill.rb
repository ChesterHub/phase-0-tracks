def build_array(one,two,three)
	return [one,two,three]
end

def add_to_array(array, element)
	return array.push(element)
end

arr = []

arr << "one"
arr << "two"
arr << "three"
arr << "four"
arr << "five"
p arr

arr.delete_at(2)
p arr

arr.insert(2, "three")
p arr

arr.shift()
p arr

puts "Type to find a string in array."
str = gets.chomp
if arr.include? str
	p "Its in the array"
else
	p str + " not found in array"
end 

arr2 = ["six","seven","eight"]

arr.push(*arr2)

p arr

build_array(1, "two", nil)

add_to_array(arr, "nine")

add_to_array(["a", "b", "c", 1, 2], 3)