

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
 
 def add_item(thing)
    all_chores << (thing)   
 end

 def delete_item(thing)
    all_chores.delete(thing)
 end

 def get_item(i)
    all_chores[i]
 end

end




