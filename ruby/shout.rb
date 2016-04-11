
module Shout
	def yell_angrily(words)    #previously self.yell_angrily(words)
		puts "#{words} !!! :("
	end

	def yelling_happily(words)    #previously self.yelling_happily(words) for self contained test.
		words + "...Whoa nellie, yahoo!!!"
	end
end

# p Shout.yell_angrily("Bob")
# p Shout.yelling_happily("Bob")

class Student
	include Shout
end

class Cowboy
	include Shout
end

dbc_student = Student.new

dbc_student.yell_angrily("Ruby")
p dbc_student.yelling_happily("Ruby")


tex = Cowboy.new

tex.yell_angrily("Dag nabit")
p tex.yelling_happily("What a fast horse")
