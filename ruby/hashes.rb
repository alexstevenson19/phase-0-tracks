
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

puts "Are there pets? (y/n)"

pets = gets.chomp.downcase

# :pet_type = []
# def pet_followup (pets)
	if pets = "y"
		"Please enter type of pet(s)."
		interior_client[:pet_type] = gets.chomp
	end
# interior_client[:pet_type]


puts "What is the preferred decor style?"

interior_client[:decorstyle] = gets.chomp


puts "Interior Decor report\n 
	Client Name: #{ interior_client[:fullname] }"
