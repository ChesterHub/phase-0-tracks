def yolo
	puts "pick a color."
	color = gets.chomp
	yield(color)
end

yolo { |color| puts "My favorite color is #{color}!" }


num  = [1,2,3,4]
num.each do |numbers|
	p numbers
end


bers = [1,2,3,4]
bers.map! do |number|
p number.next
end

hashbers = {1 => 2,2 => 3,3 => 4,4 => 5}
hashbers.map do |number, nexts|
number.next
end


coolarray = [1,2,3,4,5,6,7,8,9,10,nil,12]

def condition(array)
p	array
array.delete_if { |number| number < 5 }
end

condition(coolarray)

def condition2(array)
p	array
array.keep_if { |number| number < 5 }
end
condition2(coolarray)

def condition3(array)
p	array
array.compact! { |number| }
end
condition3(coolarray)

def condition4(array)
p	array
array.take_while { |number| number < 7 }
end
condition4(coolarray)