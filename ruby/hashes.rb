
# Interior Design interface
# info: client name, age, family/children, pets, decor theme, important room
# prompt user to input data
# convert data to appropriate data type
# print report (hash) at end
# allow for updates, and update the proper key
# print updated report and exit


# 1. set up empty hash
interior_client = {}

# 2. get info from user
puts "Please enter client's first and last name."

interior_client[:client_name] = gets.chomp

puts "Please enter client's age"
# convert the answer to an integer
interior_client[:age] = gets.chomp.to_i

puts "Please enter the total number of family members residing at residence."

interior_client[:familysize] = gets.chomp.to_i

puts "Do you have any pets (yes/no)?"
# by giving the input a comparison (in this case "yes") Ruby will calculate if it is true or false (boolean) automatically
interior_client[:pets] = gets.chomp == "yes"

puts "What is the preferred decor style?"

interior_client[:decorstyle] = gets.chomp

puts "What is the most important room?"

interior_client[:important_room] = gets.chomp


# p interior_client  (printed to check value in early tests. Now values are in report below.)

# print info report
puts "Interior Decor Report\n 
	client_name: #{ interior_client[:client_name] }\n
	age: #{ interior_client[:age] }\n
	familysize: #{ interior_client[:familysize] } person(s) \n
	pets: #{ interior_client[:pets] }\n
	decorstyle: #{ interior_client[:decorstyle] }\n
	important_room: #{interior_client[:important_room] }
	"


  puts "Please review and  enter any changes listing the category and updated information. Type 'done' when finished."
  updates = gets.chomp.to_sym  #convert the input to a symbol like all of the keys
  
  if updates == :done #A symbol because all of the 'gets' are converted to a symbol, that will include the string 'done' if entered.
  	puts "Thank you. We will process your application and be in touch.\n"
  elsif
  	updates == :age || updates == :familysize  # a case for the integer inputs
  	puts "Okay, what would you like to update at this value?"
  	interior_client[updates] = gets.chomp.to_i
  elsif updates == :pets  # a case for the boolean input
  	puts "Okay, do you have a pet? (yes/no)"
  	interior_client[updates] = gets.chomp == "yes"
  else # a case for the string inputs
  	puts "Okay, what would you like to update at this value?"
    interior_client[updates] = gets.chomp
 end
    

# p interior_client (printed to check value in early stages. Now values are in report below.)

# final report is printed.
puts "Updated Interior Decor Report\n 
	client_name: #{ interior_client[:client_name] }\n
	age: #{ interior_client[:age] }\n
	familysize: #{ interior_client[:familysize] } person(s) \n
	pets: #{ interior_client[:pets] }\n
	decorstyle: #{ interior_client[:decorstyle] }\n
	important_room: #{interior_client[:important_room] }
	"
