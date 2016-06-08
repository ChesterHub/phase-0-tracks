# Method to create a list
def create(list)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
list = list.split(" ")
hashlist = {}
list.each  {|item| hashlist[item] = 1}
p hashlist
end
grocerylist = create("carrots apples cereal pizza")
# steps: 
  # Split the items
  # add quantity of 1 to items

  # print the list to the console [can you use one of your other methods here?]
# output: put items into hash with VALUE and QUANTITY

# Method to add an item to a list
def add(list, item, quantity)
# input: item name and optional quantity
list.include?(item) ? list[item] += quantity : list[item] = quantity
p list
end
add(grocerylist, "cheese", 5)
# steps: ask for what new item they want to put in
# check if item entered is an existing item.
# add quantity to the item
# output: add item into the hash

# Method to remove an item from the list
def remove(list, item)
# input: ask what item user wants to remove
if list.include?(item)
	list.delete(item)
end 
p list
end
remove(grocerylist, "cereal")
# steps: find and remove the item from the list
# output: update the removal to the hash

# Method to update the quantity of an item
def update(list, item, quantity)
	if list.include?(item)
		list[item] = quantity
	end
	p list
end
update(grocerylist, "apples", 20)
# input: ask what item the user wants to update
# steps: update the quantity of the item
# output: send updates to the hash

# Method to print a list and make it look pretty
def print(list)
	list.each do |grocery, q|
		puts "There are #{q} #{grocery} on your list."
	end
end
print(grocerylist)

# input: retrieve list
# steps: iterate through has to print each part of the list
# output: print the list on command line