
module Shout
	def yell_angrily(words)
		puts "#{words} !!! :("
	end

	def yelling_happily(words)
		words + "...Whoa nellie, yahoo!!!"
	end
end



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