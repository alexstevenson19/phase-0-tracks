
class TodoList
  # def initialize
    # @all_chores = []
  # end
  # def all_chores
    # @all_chores
  # end
  def initialize(chores1, chores2)
  	@all_chores = []
    @all_chores << chores1
    @all_chores << chores2
    # all_chores = @all_chores
    @all_chores
  end
    
end

list = TodoList.new("do the dishes", "mow the lawn")
# list.get_items("do the dishes", "mow the lawn")







# class TodoList
# 
  # def initialize
# 
  # end
# 
  # def get_items ([chores1, chores2])
  	# chore_array = [chores1, chores2]
	# chore_array << chores
# 
  	# def get_items(chore1, chore2)
  		# @chore_array = ["do the dishes", "mow the lawn"]
  		
  	# end
  	# chore_array << ["do the dishes", "mow the lawn"]
  	# @chore_array = chore_array
    # 
  # end
# 
# 
  # def add_item(new_chore)
  	# @chore_array << "mop"
# 
  # end
# 
# 
# end
# 
# x = "do the dishes, mow the lawn"
# 
# chores_test = TodoList.new
# chores_test.get_items("do the dishes", "mow the lawn")
# 

#  chore_test.get_items()

# list = TodoList.new(["do the dishes", "mow the lawn"])
# p list