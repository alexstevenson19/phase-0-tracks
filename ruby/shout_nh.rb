# Stand alone module code for my own records:
=begin
module Shout_nh
	
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + ", Whoa nellie!!"
	end
end

p Shout_nh.yell_angrily("Ouch")

p Shout_nh.yelling_happily("Sunny skies")

=end

# Release 3: Convert a standalone Module================

module Shout_nh
	
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + ", Whoa nellie!!"
	end
end

class Coach
	include Shout_nh
end

class Spouse
	include Shout_nh
end


# driver code ==========================

baseball_coach = Coach.new

puts "#{baseball_coach.yell_angrily("That pitch was in")}"
p baseball_coach.yelling_happily("Bottom of the ninth homerun")


wife = Spouse.new

puts "#{wife.yell_angrily("You forgot to take out the trash")}"
p wife.yelling_happily("Surprise flowers")










