
# set up hash with client info. full name, age, resident number, pets, wall color, special feature
# prompt the user for the values in the hash. convert the input into appropriate data type
# to convert a value to a boolean, use a loop?
# allow user to edit one item before printing final report.


interior_info = {}

# prompt and get answers
puts "Please enter the client's full name."
interior_info[:name] = gets.chomp.capitalize

puts "Please enter the client's age."
#age_convert = gets.chomp
interior_info[:age] = gets.chomp.to_i

puts "How many residents live in the space?"
interior_info[:residents] = gets.chomp.to_i

valid_pet = false

until valid_pet
	puts "Are there any pets? (y/n)"
	pet_string = gets.chomp
	
		case 
			when pet_string.downcase == "y" || pet_string.downcase == "yes"
				then pet_boolean = true
				valid_pet = true
			when pet_string.downcase == "n" || pet_string.downcase == "no"
				then pet_boolean = false
				valid_pet = true
			else puts "Please input 'y' or 'n', thank you."
				pet_string = gets.chomp
					if pet_string == "y"
						pet_boolean = true
						valid_pet = true
					elsif pet_string == "n"
						pet_boolean = false
						valid_pet = true
					else
						valid_pet = false
					end
	
		end
end
interior_info[:pets] = pet_boolean

puts "What is your favorite wall color?"
interior_info[:walls] = gets.chomp

puts "What special feature(s) would you like? (ex. climbing wall, hot air balloon pad,..."
interior_info[:feature] = gets.chomp

puts "Please review the following information: #{interior_info}.\n
If there are changes please type the category you would like to change: 
	'name', 'age', 'residents', 'pets', 'walls', 'feature', \n or type 'done'."
change_key = gets.chomp

	if interior_info.has_key?(change_key.to_sym)
		puts "Please enter the updated information:" 
		interior_info[change_key.to_sym] = gets.chomp
	elsif change_key.downcase == "done"
		puts "Thank you, here is the final report:"
	else
		puts "I can not make that change."
	end


p interior_info
