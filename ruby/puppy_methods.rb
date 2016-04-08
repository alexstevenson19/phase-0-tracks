
# Release 01

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(time)
    time.to_i
    time.times do puts "Woof!"
    end
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(years)
    years.to_f
      if years < 2
        years = years * 10
      else years = years * 4 + 20
      end
    puts "The puppy is #{years} dog years old"
  end
  
  def dress(clothes)
    puts "The puppy is wearing #{clothes}."
  end
  
  # initialize is a unique method that will run first when a new instance of the Class is made.
  def initialize
    puts "Initializing new puppy instance..."
  end

end

spot = Puppy.new  #initialize an instance of Puppy (in this case named Spot)
spot.fetch("bone")    #test methods of the Puppy class.
spot.speak(2)
spot.roll_over
spot.dog_years(2.5)
spot.dress("a hat")

#=========================================================================================

# Release 02

# write own Class with peer pair, in our case we chose 'students'
# write methods for the new Class

class Students
  
  def initialize(name)
    @name = name
    puts "Creating student #{name}"
  end
  
  def student_condition(condition)
    if condition == "frustrated"
        puts "Pull out hair!"
    elsif
      condition == "confused"
        puts "Scratch head???"
    elsif
      condition == "tired"
        puts "Take a break"
    elsif
      condition == "passed test"
        puts "Jump for joy!"
      else
        puts "Keep working."
    end
  end
  
  def chalkboard_write(number, message)
    number.times do puts "Written on the chalkboard: #{message}."
      end
  end
   
end


# set up a new Array, and set a starting number to control the loop.
classroom_report = []


student_number = 1 #set counter to start loop (and student numbers)

while student_number < 51


 	student_id = "student" + student_number.to_s	
 	p student_id                     #check student_id value
 	
 	#if you want to you can initialize new instances of Students within loop, but without assigning the names.
 	#student_id = Students.new        
 	
 	# 'push' to add each new instance of student to an array.
 	classroom_report.push(student_id)    

 	student_number += 1
  
end


	# iterate and assign a class to the strings in the array
	classroom_report.map!{|array| array = Students.new(array)} 

# p classroom_report # print as a check


 	#iterate through the classroom_report Array, and apply methods to each student
  	classroom_report.each do |x| 
    p x.class 							# a check to see what class is being returned
    x.student_condition("frustrated")
    x.chalkboard_write(2, "Must study")
    
  	end
  
