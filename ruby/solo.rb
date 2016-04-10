
# snowboard parks

# I also started the design on a piece of paper with columns of attributes, methods, what are strings, fixnums, etc.

# attributes: run lengths(long, short), lift music, number of lifts, speciality, snow quality (base)
	# slushy, crisp, icy snow

# methods: run color (argument), travel time, travel method (argument?), snowstorm, wrong_turn - you're stuck on an icy black run.

class Snowboard_Park

	attr_reader :lifts, :weather
	attr_accessor :name, :music, :course_level, :snow_quality, :travel, :unique_feature

	def initialize(name, snow_quality, courses, lifts)
		@name = name
		@snow_quality = "packed" 
		@courses = 10
		@lifts = (@courses.to_i/2)
		@weather = ["warm", "cool", "freezing"}
		puts "Let's go snowboarding at #{name}"
	end


	def snowstorm
		@snow_quality = "fresh powder"
		put "Yay, #{@snow_quality}"
	end


	def lift_music(music)
		puts "#{music} is playing on the lifts"
	end

	def travel_options(travel)

	end

	def speciality(unique_feature)
	end

end


loop do
# start loop and collect information.

	puts "Welcome to the Snowboard Park builder. Please enter a name for your park. (or type 'done' when finished)"
	name = gets.chomp

	break if name.downcase == 'done'


# user assigns a class to a string - snowboard park name.


# a user calls a method such as Zao.snowstorm, puts "Yay, fresh powder"
end

# snow_report puts sjlsjl.name has sdkjls.lifts, .courses . The weather is currently .weather

