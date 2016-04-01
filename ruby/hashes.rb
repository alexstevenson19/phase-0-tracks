
# Interior Design interface

# info: client name, age, family/children, decor theme, outside space, favorite 3 colors, etc.

# prompt user to input data

# convert data to appropriate data type

# print report (hash) at end

# allow for updates, and update the proper key

# print updated report and exit

# set up hash
interior_client = {}

# get info
puts "Please enter client's first and last name."

interior_client[:fullname] = gets.chomp

puts "Please enter client's age"

interior_client[:age] = gets.chomp.to_i

puts "Please enter the total number of family members residing at residence."

interior_client[:familysize] = gets.chomp.to_i

puts "Do you have any pets (yes/no)?"

interior_client[:pets] = gets.chomp == "yes"

	# if pets == "y"
	# 	interior_client[:pet] = true
	# 	"Please enter type of pet(s)."
	# 	interior_client[:pet_type] = gets.chomp
	# else
	# 	pets == "n"
	# 	interior_client[:pet] = false
	# end
# interior_client[:pet_type]


puts "What is the preferred decor style?"

interior_client[:decorstyle] = gets.chomp




puts "Interior Decor report\n 
	Client Name: #{ interior_client[:fullname] }\n
	Family Size: #{ interior_client[:familysize] } person(s) \n
	"

p interior_client

# get updated information
done = false
until done == true
  puts "Please review and  enter any changes listing the category and updated information. Type 'done' when finished."
  updates = gets.chomp.to_sym

  if updates == "done"
    done = true
  else
    puts "Ok what would you like like to update at this value?"
    interior_client[updates] = gets.chomp
  end

end

p interior_client

# interior_client[:pets] = "dog"

p interior_client

