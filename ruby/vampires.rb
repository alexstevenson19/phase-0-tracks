#Gather Data
puts "What's your name?"
applicant_name = gets.chomp

puts "How old are you?"
applicant_age = gets.chomp

puts "What year were you born?"
applicant_yob = gets.chomp

puts "Would you like garlic bread at lunch? (y/n)"
applicant_garlic = gets.chomp
# check that correct data was entered for garlic
	until applicant_garlic.downcase == "y" || applicant_garlic.downcase == "yes" || applicant_garlic.downcase == "n" || applicant_garlic.downcase == "no"
			puts "Please enter only 'y' or 'n'"
			applicant_garlic = gets.chomp
	end

puts "Would you like to enroll in the health insurance program? (y/n)"
applicant_health = gets.chomp
# check that correct data was entered for health insurance
	# yesno_health = false
	# until yesno_health
	# 	if applicant_garlic.downcase != "y" || "yes"
	# 		puts "Please enter 'y' or 'n', thank you."
	# 	else
	# 		yesno_health = true
	# 	end
	# end


# Detection Logic for vampires or werewolves

# age and year of birth check, put into a new variable
current_year = 2016
applicant_check_yob = current_year - applicant_yob.to_i
p applicant_check_yob
#garlic bread boolean



# if (applicant_age.to_i == applicant_check_yob.to_i) && 
# 	vampire = false
# 	puts "Probably not a vampire."
# 	elsif

# 	vampire = false
# end
		
