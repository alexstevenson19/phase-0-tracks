


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




# write own Class with peer pair, in our case we chose 'students'
# write methods for the new Class

class Students
  
  def initialize
    puts "Initializing a new student instance..."
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

student_number = 1


while student_number < 51


 	student_id = "student" + student_number.to_s	
 	p student_id                     #check student_id value
 	
 	#initialize new instances of Students.
 	student_id = Students.new        
 	
 	# 'push' to add each new instance of student to an array.
 	classroom_report.push(student_id)    

 	student_number += 1
  
end

   

    
 p student_id.student_condition("tired")   # just a check to see if the Student class indeed initialized outside of the loop.


 	#iterate through the classroom_report Array, and apply methods to each student
  	classroom_report.each do |x| 
    p x.class 							# a check to see what class is being returned
    x.student_condition("frustrated")
    x.chalkboard_write(2, "Must study")
    
  	end
  


  
  # dave = Students.new
  # dave.student_condition("frustrated")
  # dave.chalkboard_write(5, "2 + 2 = 4")
