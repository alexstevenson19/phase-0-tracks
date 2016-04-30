
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


end



#new_list = TodoList.new(["do the dishes", "mow the lawn"])



#p new_list.get_items