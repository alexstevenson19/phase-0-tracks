
# make a class to pass the todo_list_spec.rb Rspec tests.

class TodoList
	
#	attr_accessor :arr	

	def initialize(array)
		@array = array
	end

	def get_items
		@array
	end

	def add_item(item)
		@array.push(item)
	end

	def delete_item(item)
		@array.delete(item)
	end

	def get_item(i)
		@array.fetch(i)
	end
end



