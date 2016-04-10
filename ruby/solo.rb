
# snowboard parks

# I also started the design on a piece of paper with columns of attributes, methods, what are strings, fixnums, etc.

# attributes: run lengths(long, short), lift music, number of lifts, snow quality (base)
	# slushy, crisp, icy snow

# methods: Unique attraction, travel time, travel method (argument?), snowstorm, wrong_turn - you're stuck on an icy black run.



class Snowboard_Park

	attr_reader :lifts, :weather
	attr_accessor :name, :music, :courses, :snow_quality, :travel, :unique_feature, :lifts

	def initialize(name, courses)
		@name = name
		@courses = courses
		@lifts = (@courses.to_i/2)
		@weather = ["warm", "cool", "freezing", "snowy", "windy"]
		#@snow_quality = "packed" 
		puts "Let's go snowboarding at #{name} with #{courses} runs and #{lifts} lifts."
	end


	# def snowstorm
		# @snow_quality = "fresh powder"
		# put "Yay, #{@snow_quality}"
	# end


	def lift_music(music)
		puts "Now, #{music} music is playing on the lifts"
	end

	def travel_options
		puts "Travel to #{name} by car or bullet train."
	end

	def speciality(unique_feature)
		puts "Unique to #{name}: #{unique_feature}."
	end

	def current_weather
		#puts "The weather is currently #{@weather.sample}"
		@weather.sample
	end



end

snowpark_reports = []

loop do
# start loop and collect information.
	

	puts "Welcome to the Snowboard Park builder. Please enter a name for your park. (or type 'done' when finished)"
	name = gets.chomp

	break if name.downcase == 'done'

		puts "How many courses/runs do you want?"
		courses = gets.chomp

		snowpark = Snowboard_Park.new(name, courses)   # user assigns a class to a string - snowboard park name and runs.
	
	
		puts "What music do you want playing on the lifts?"
		music = gets.chomp
	
		puts "What is the unique feature of this resort?"
		unique_feature = gets.chomp
		
	
		puts "==================================================="
		puts "Current conditions at #{name}:"
		snowpark.lift_music(music)  #calling the methods for the class.
		snowpark.speciality(unique_feature)
		snowpark.current_weather
		puts "#{name} sounds like a great place to snowboard"
		snowpark.travel_options
		puts "==================================================="
		
		snowpark_reports << snowpark

# a user calls a method such as Zao.snowstorm, puts "Yay, fresh powder"
end

# p snowpark_reports
# snow_report puts name, course, lift, and weather info.
snowpark_reports.each_index do |i| 
	puts "Resort info for #{snowpark_reports[i].name}: 
	The weather is #{snowpark_reports[i].current_weather}. 
	There are #{snowpark_reports[i].lifts} lifts and #{snowpark_reports[i].courses} runs."
	end
