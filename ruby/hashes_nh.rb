
# set up hash with client info. full name, age, resident number, pets, wall color, special feature
# prompt the user for the values in the hash. convert the input into appropriate data type
# to convert a value to a boolean, use a loop?
# allow user to edit one item before printing final report.


interior_info = {}

# prompt and get answers
puts "Please enter the client's full name."
interior_info[:name] = gets.chomp

puts "Please enter the client's age."
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



# offer the user to edit client information, before final report
puts "Please review the following information:"
puts "#{interior_info}.\n Please type 'done' or please type any category you would like to edit: 
	'name', 'age', 'residents', 'pets', 'walls', 'feature'"
change_key = gets.chomp

	if change_key == "pets"
		puts "Please input 'y' or 'n'."
				pet_string = gets.chomp
					if pet_string == "y"
						interior_info[change_key.to_sym] = true
					else pet_string == "n"
						interior_info[change_key.to_sym] = false
					# else
					# 	valid_pet = false
					end

	elsif interior_info.has_key?(change_key.to_sym)
		puts "Please enter the updated information:" 
		interior_info[change_key.to_sym] = gets.chomp
	elsif change_key.downcase == "done"
		puts "Thank you, here is the final report:"
	else
		puts "Sorry, I can not make that change. Here is your report:"
	end


puts "#{interior_info}"


