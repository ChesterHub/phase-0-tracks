class Todolist
	def initialize(one, two)
		@one = one
		@two = two
	end
	
	def get_items
		items = []
		items << @one
		items << @two
		@items = items
	end
	
	def add_item(i)
		@items << i
	end
	
	def delete_item(i)
		@items.delete_at(@items.index(i))
	end
	
	def get_item(ind)
		@items[ind]
	end
		
end



