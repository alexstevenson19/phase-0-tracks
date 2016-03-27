
# Ask for the number of applicants
puts "How many applicants will you be processing today?"
process_num = gets.chomp

round = 0

until (round += 1) > process_num.to_i

#Gather Data
	puts "Please enter the applicant's name."
	applicant_name = gets.chomp

	puts "How is old the applicant?"
	applicant_age = gets.chomp

	puts "What year was the applicant born?"
	applicant_yob = gets.chomp

	puts "Would the applicant like garlic bread at lunch? (y/n)"
	applicant_garlic = gets.chomp
	# check that correct data was entered for garlic
		until applicant_garlic.downcase == "y" ||  applicant_garlic.downcase == "n" 
				puts "Please enter only 'y' or 'n'"
				applicant_garlic = gets.chomp
		end

	puts "Would the applicant like to enroll in the health insurance program? (y/n)"
	applicant_health = gets.chomp
	# check that correct data was entered for health insurance
		until applicant_health.downcase == "y" ||  applicant_health.downcase == "n"
				puts "Please enter only 'y' or 'n'"
				applicant_health = gets.chomp
		end

	# end data collection


	# age and year of birth check, put into a new variable
	current_year = 2016
	applicant_check_yob = current_year - applicant_yob.to_i
	p applicant_check_yob


	# Detection Logic for vampires or werewolves

	if 
		(applicant_name.downcase == "drake cula") || (applicant_name.downcase == "tu fang")
		puts "#{applicant_name}: Definitly a vampire."
	elsif
		(applicant_age.to_i == applicant_check_yob.to_i) && (applicant_garlic.downcase == "y")
		puts "#{applicant_name}: Probably not a vampire."
	elsif
		(applicant_age.to_i != applicant_check_yob.to_i && applicant_garlic.downcase == "n") && (applicant_age.to_i != applicant_check_yob.to_i && applicant_health.downcase == "y")
		puts "#{applicant_name}: Probably a vampire-garlic."
	elsif
		(applicant_age.to_i != applicant_check_yob.to_i && applicant_garlic.downcase == "y") && (applicant_age.to_i != applicant_check_yob.to_i && applicant_health.downcase == "n")
		puts "#{applicant_name}: Probably a vampire-health"
	elsif 
		(applicant_age.to_i != applicant_check_yob.to_i) && (applicant_garlic.downcase == "n") && (applicant_health.downcase == "n")
		puts "#{applicant_name}: Almost certainly a vampire."
	# elsif 
	# 	(applicant_name.downcase == "drake cula") || (applicant_name.downcase == "tu fang")
	# 	puts "Definitly a vampire."
	else
		puts "Results inconclusive."
	end

end