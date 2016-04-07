# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Determine what items to add to list
  # Split the input string into an array of individual strings
  # Set up an empty hash to be the list
  # set default quantity (1)
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

def create_list(food)
  food_array = food.split(' ')
  
  groceries1 = {}
  food_array.each{|food| groceries1[food] = 1}
  p groceries1
  groceries1
end

=begin : we used the test list and groceries list as we worked through each method goal
        As listed above, we started with a string of items separated by spaces

*test_list = "carrots apples grapefruit"
*groceries = create_list(test_list)
=end




# Method to add an item to a list
# input: item name and optional quantity
# steps: make a new method that accepts three arguments, the original list, new item, and its quantity
# output: updated list
def add_item_to_list(list, new_food, quantity)
   list[new_food] = quantity
  list
end

# part of original tests for add_item_to_list method
# *add_item_to_list(groceries, "cookies", 3)
# *p groceries


# Method to remove an item from the list
# input: item to remove
# steps: make a method that will remove items from current list
# output: updated list

def delete_item_from_list(list, food)
  list.delete(food)
  list
end

# part of original tests for delete_item_from_list method
# *delete_item_from_list(groceries, "apples")
# *p groceries


# Method to update the quantity of an item
# input: item to update quantity
# steps: write a method to update quanity
# output: updated list

def update_item_from_list(list, food, update_quantity)
  list[food] = update_quantity
  list
end

# part of original tests for update_item_from_list method
# *update_item_from_list(groceries, "carrots", 7)
# *p groceries


# Method to print a list and make it look pretty
# input: current list (groceries)
# steps: iterate through the hash and list each key with its value
# output: a nice list

def pretty_list(list)
  list.each{|food, quantity| puts "Please get #{quantity} #{food}."}
  puts "Thanks!"
end

# part of original tests for pretty_list method
# *pretty_list(groceries)





release_list = create_list("")  #make an empty string to make empty hash in first method

# fill our list with the items in Release 3: Test your solution
add_item_to_list(release_list, "Lemonade", 2)
add_item_to_list(release_list, "Tomatoes", 3)
add_item_to_list(release_list, "Onions", 1)
add_item_to_list(release_list, "Ice Cream", 4)
delete_item_from_list(release_list, "Lemonade")
update_item_from_list(release_list, "Ice Cream", 1)
pretty_list(release_list)



# further test for myself for Release 5: Reflect

alex_list = create_list("bag_of_nuts carton_of_eggs grapefruit")  #set up a string with some values for the initial iteration in the first method.

update_item_from_list(alex_list, "grapefruit", 2)
add_item_to_list(alex_list, "cheese pack", 1)
pretty_list(alex_list)

=begin
  - Actually the pseudocode instructions for this gps really through us off a bit.
    I guess I always thought of the initial pseudocode as more of an outline, and to set markers for where things needed to happen, what values might be needed, etc.
    A way to outline and make a plan. However in this case we were a little unclear what to put exactly.

  - Considering we had quantities to go with the grocery items a hash seemed to be the most useful way to put our list together.
    In my mind I kept skipping over the simple list with no items initially, but the simplicity of starting that way is attractive to start things out.

  - In this case it returned a hash containing keys of food, and values of quantities.

  - Almost anything it seems, depending on the class. In the exercise today we used hashes, strings, and fixnums as arguments in the methods we made.

  - It helped me with creating arguments for Methods, and just calling the last value for the output. As well, getting some extra practice adding keys and values to existing hashes was helpful.
    Really everything was pretty helpful as so much of the syntax got muddled together over the past week or so.
    
    Often I'm still having trouble getting started on the right track at the beginning of a problem (both pair and solo work). In graphic design it is usually best to step back and do some thumbnails and consider the problem and possible solutions for a moment. Jumping into Photoshop right away tends to produce bad work.
    With some of the pair work, I'm reading the questions for the first time, and feel pressure to act right away. Previously I sort of thought of pseudocode fell into part of the brainstorm session, although it seemed more formal as presented today.

=end