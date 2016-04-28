
# make a Santa class


class Santa

	attr_reader :age, :ethnicity
	attr_accessor :bad_reindeer, :gender

	def initialize(gender, ethnicity)
		puts "Initializing new santa now..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
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
		p @reindeer_ranking
		@reindeer_ranking
	end

	# def gender=(new_gender)
		# @gender = new_gender
	# end
# 
	# def age
		# @age
	# end
# 
	# def ethnicity
		# @ethnicity
	# end
end


#Release 0 ================================================
sam = Santa.new("cosmic", "green")

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
ex_ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "green"]

ex_genders.length.times do |index| 
				santas<< Santa.new(ex_genders[index], ex_ethnicity[index])
				puts "This is Santa #{index + 1}."
				puts "Gender: #{ex_genders[index]}."
				puts "Ethnicity: #{ex_ethnicity[index]}."
				#puts "This santa likes #{reindeer_ranking[index]}" - this array is undefined outside of the class.
end




#Release 2 =================================================

p santas[0].age
p santas[0].celebrate_birthday
p santas[1].bad_reindeer = "Cupid" 
santas[1].get_mad_at
p santas[2].gender = "fluffy"
p santas[3].ethnicity



