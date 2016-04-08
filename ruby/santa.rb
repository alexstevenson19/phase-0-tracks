
class Santa

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

