
class Santa

	attr_reader :gender, :ethnicity, :name
	attr_accessor :celebrate_birthday, :get_mad_at

	def initialize(name, gender, ethnicity)
		puts "Initialing Santa instance..."
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen","Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
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

	def celebrate_birthday(age)  # setter method to advance age by 1 year
		@age = age.to_i + 1
		puts "#{@name} is #{@age} years old."
	end

	def get_mad_at(reindeer) # setter method to demote a bad reindeer

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


# sam = Santa.new
# sam.speak
# sam.eat_milk_and_cookies("Girl Scout Cookie")


santas = []
example_names = ["Sam", "Mary", "Kim", "John", "Kay", "Fay", "Spot"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
	santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i]) # the parameters/arguments from the initialize method in the class definitions
end

santas[1].speak
santas[4].fav_reindeer
santas[0].celebrate_birthday = 3
santas[3].get_mad_at = "Donner"
puts "#{santas[5].gender}"
puts "#{santas[5].ethnicity}"







#===============================================================================
# Release 4: Build Many Santas

# ask for user input to determine how many sants to make.

puts "How many Santaz would you like to make today?"
santaz_number = gets.chomp

santaz = []
# start loop
santaz_number.to_i.times do
	santaz << Santa.new(example_names.sample, example_genders.sample, example_ethnicities.sample)
end #end for .times loop

puts "Santaz name: #{santaz[2].name}, Santaz gender: #{santaz[2].gender}"
puts "Santaz name: #{santaz[0].name}, Santaz gender: #{santaz[0].gender}"
puts "Santaz name: #{santaz[5].name}, Santaz gender: #{santaz[5].gender}"
puts "Santaz name: #{santaz[10].name}, Santaz gender: #{santaz[10].gender}"

	#each time through the loop change the index number for names, genders, and ethnicities
	#store each santa at the end of the loop

#after loop iterate through the array and print info about each santa

# santa_collection.times do |santa| puts"#{santa.name} is #{santa.gender} and #{santa.ethnicity}


