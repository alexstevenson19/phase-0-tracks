
# Release 1, 2, and 3 are at the here at the top. Release 4, the Santa Generator is marked below.
# The same Santa class is used throughout all of the exercises.

class Santa


	attr_reader :gender, :ethnicity, :name, :age
	attr_accessor :celebrate_birthday, :get_mad_at

	def initialize(name, gender, ethnicity)
#		puts "Initialing Santa instance..."
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen","Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
	end

	def speak
		puts "#{@name} says: Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def fav_reindeer
		puts "#{@name}\'s favorite reindeer is #{@reindeer_ranking[2]}."
	end

	def celebrate_birthday=(age)  # setter method to advance age by 1 year
		@age = age.to_i + 1
		puts "#{@name} is #{@age} years old."
	end

	def get_mad_at=(reindeer) # setter method to demote a bad reindeer

		#choose reindeer santa is mad at, and move him to last place in the array
		@bad_reindeer = @reindeer_ranking.select{|stable| stable.to_s == reindeer.to_s}
		# p @bad_reindeer # checking array values with 'p' on this line and below.
		# p @reindeer_ranking
		temp_stable = @reindeer_ranking - @bad_reindeer
		# p temp_stable
		temp_stable << reindeer.to_s
		# p temp_stable
		@reindeer_ranking.replace(temp_stable)
		# p @reindeer_ranking
		puts "#{@reindeer_ranking.last} has been demoted by #{@name}." 
	end

	# these getters are covered by the attr_reader at the top 
	# def gender  #getter for gender
		# @gender
	# end
# 
	# def ethnicity
		# @ethnicity
	# end
end



santas = []
example_names = ["Sam", "Mary", "Kim", "John", "Kay", "Fay", "Spot", "Bob", "Beth", "Jill", "William"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Martian"]

	# generate santas with the arrays above. **Note: I have added extra names and ethnicities for Release 4 below.
	example_genders.length.times do |i|
		santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i]) # the parameters/arguments from the initialize method in the class definitions
	end

# Outputs to test the santa array above
santas[1].speak
santas[4].fav_reindeer
santas[0].celebrate_birthday = 3
santas[3].get_mad_at = "Donner"
puts "#{santas[5].gender}"
puts "#{santas[5].ethnicity}"







#===============================================================================
# Release 4: Build Many Santaz - using 'z' so I can start with a fresh array.

# ask for user input to determine how many sants to make.

puts "How many Santaz would you like to make today?"
santaz_number = gets.chomp

# make array to store santaz
santaz = []

# each time through the loop change the index number for names, genders, and ethnicities
# start loop to collect new santa data. I'm using '.sample' to randomly pick an index number.
	santaz_number.to_i.times do
		santaz << Santa.new(example_names.sample, example_genders.sample, example_ethnicities.sample)
	end 


#after loop iterate through the array and print info about each santa
santaz.length.times do |i| puts "Santaz info: #{santaz[i].name}, #{santaz[i].gender}, #{santaz[i].ethnicity}, #{santaz[i].age} years old."
end


# the lines below were used to test the randomness before I added the iteration.
# puts "Santaz name: #{santaz[2].name}, Santaz gender: #{santaz[2].gender}"
# puts "Santaz name: #{santaz[0].name}, Santaz gender: #{santaz[0].gender}"




