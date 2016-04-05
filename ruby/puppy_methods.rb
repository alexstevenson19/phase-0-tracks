class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	integer.times { puts "Woof!"}
  end

  def roll_over
  	puts "rolls over"
  end

  def dog_years(age)
  	dog_age = age * 7
  	puts "#{dog_age}"
  end

  def clothes(item)
  	puts "I'm putting on (a) fancy #{item} for our walk outside."
  end

end



snoopy = Puppy.new
snoopy.fetch("bone")
snoopy.speak(5)
snoopy.roll_over
snoopy.dog_years(2)
snoopy.clothes("hat")

