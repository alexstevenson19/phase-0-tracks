

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
  
  def dog_years(h)
    if h.to_i < 3
     	d = h.to_i * 10
     	p d
     else 
     	d = h.to_i * 4
     	p d
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
