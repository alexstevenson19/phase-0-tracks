
module Shout_nh
	
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily_nh(words)
		words + ", Whoa nellie!!"
	end
end

p Shout_nh.yell_angrily("bastich")

p Shout_nh.yelling_happily_nh("beer")