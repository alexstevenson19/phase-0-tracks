

class TodoList
 def initialize(all_chores)
   @all_chores = all_chores
 end
 def all_chores
   @all_chores
 end
 def get_items
   all_chores
 end
 
 def add_item(item_to_add)
    all_chores << (item_to_add)   
 end

 def delete_item(item_to_delete)
    all_chores.delete(item_to_delete)
 end

 def get_item(item_to_get)
    all_chores[item_to_get]
 end

end




