class TodoList

	def initialize(input)
		@input = input
	end

	def get_items
		@input
	end

	def add_item(add)
		@input << add
	end

	def delete_item(item)
		@input.delete(item)
	end

	def get_item(index)
		@input[index]
	end

end


