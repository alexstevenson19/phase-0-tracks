
# Release 0 and 1 =========================================

# initialize a Puppy class
# add methods to the class and call them in driver code

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(x)
  x.times {puts "Woof"}
  end
  
  def roll_over
    puts "*roll over*"
  end
  
  def dog_years(h_years)
    if h_years.to_i < 3
      d_years = h_years.to_i * 10
      p d_years
    else 
      d_years = h_years.to_i * 4
      p d_years
    end
      
  end
     def shake(y) 
       y.times {puts "Shake paw!"}
     end
  
  def initialize
    puts "Initializing new puppy instance..."
  end
end


fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over 
fido.dog_years(2)
fido.shake(5)



# Release 2===============================================
# initialize a class of our choosing
# create 50 instances of the class and store them in an array
# iterate through the array and call the methods for the class.


class Cats
  
  def initialize
    puts "One of the litter is being created..."
  end
  
  def name(count)
    puts "Cat #{count}"
  end
  
  def sound(x)
    (x).times {puts "purrrr"}
  end
  
  def destruction
    puts "I ruined the sofa."
  end
  
  def hunting
    puts "Brings you a fresh mouse."
  end
  
end



cat_litter = []

counter = 0

while counter < 50
  cat = Cats.new
  cat_litter.push(cat)
  
  counter += 1
  
end



cat_counter = 1

cat_litter.each do |cat|
                cat.name(cat_counter)
                cat.sound(2)
                cat.destruction
                cat.hunting
                cat_counter += 1
              end


# end of release 2=========================================






# extra method experiement for my record. =================

# toy = []
# 
  # def fetch(toy)
    # puts "I changed the toy into a stick.!"
    # toy.push("stick")
    # toy
  # end
# 
# 
# 
# toy.push("bone")
# 
# p toy
# 
# fetch(toy)
# 
# p toy