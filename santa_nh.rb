
# make a Santa class


class Santa

	attr_reader :ethnicity
	attr_accessor :bad_reindeer, :gender, :reindeer_ranking, :age

	def initialize(gender, ethnicity, age)
		puts "Initializing new santa now..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaapy Holidays!"
	end

	def cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
		@age
	end
	
	def get_mad_at#(bad_reindeer)
		@reindeer_ranking.delete(@bad_reindeer)
		@reindeer_ranking.push(@bad_reindeer)
		@reindeer_ranking
	end


end


#Release 0 ================================================
sam = Santa.new("cosmic", "green", 0)

sam.speak
sam.cookies("chocolate cookie")


#Release 1 ================================================
santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

#santas.each {|santa| santa.speak}

ex_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "cosmic"]
ex_ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature", "N/A", "green"]

ex_genders.length.times do |index| 
				santas<< Santa.new(ex_genders[index], ex_ethnicity[index], 0)
				puts "This is Santa #{index + 1}."
				puts "Gender: #{ex_genders[index]}."
				puts "Ethnicity: #{ex_ethnicity[index]}."
end




#Release 2 & Release 3 print tests =================================================

p santas[0].age
p santas[0].celebrate_birthday
p santas[1].bad_reindeer = "Cupid" 
p santas[1].get_mad_at
p santas[2].gender = "fluffy"
p santas[3].ethnicity


#Release 4 =========================================================================

# Santa creator. Get the number of santas to be created.
# Use the number to loop through the santa maker, and make a Santa with random attributes.
# In this case we won't store the data, but will print the Santas to screen, after which they will vanish into the ether.
# Also add one more initialize variable for age. (Adjust the variable in release 0 ~ 3 above to avoid errors.)


puts "    " 
puts "Release 4 ----------------------------------------------"

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "cosmic", "trigender"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "unicorn", "N/A", "green", "martian", "genetic clone of Lincoln"]
stable = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

puts "   "
puts "How many Santas would you like to make?"
number_of_santas = gets.chomp.to_i

number_of_santas.times do |count|
	santa= Santa.new(genders.sample, ethnicities.sample, rand(140))
		puts "This is Santa #{count + 1}."
		puts "Gender: #{santa.gender}.     Ethnicity: #{santa.ethnicity}.   Age: #{santa.age}"
		santa.bad_reindeer = stable.sample
		santa.get_mad_at
		puts "#{santa.reindeer_ranking}"
		puts "*****Ho****************Ho****************Ho*****"
end


