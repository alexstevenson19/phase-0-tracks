# Get hamster's name
puts "Enter the hamster's name."
name = gets.chomp

# Get hamster's volume level (1-10)
puts "What's the hamster's volume level (from 1-10, 10 being the highest)."
volume = gets.chomp
volume = volume.to_i
valid_input = false

until valid_input
  if volume > 0 && volume <= 5
    valid_input = true
    volume_level = "quiet"
#    puts "The hamster sure is quiet!"
  elsif volume > 5 && volume <= 10
    valid_input = true
    volume_level = "loud"
#    puts "The hamster sure is loud!"
  else 
    puts "Please enter a number 1-10."
    volume = gets.chomp
    volume = volume.to_i
  end
end

# Get hamster's fur color
puts "What's the hamster's fur color?"
fur_color = gets.chomp


# Determine if hamster is adoptable
puts "Is this hamster adoptable? (y/n)"
adoptable = gets.chomp

   until adoptable.downcase == "yes" || adoptable.downcase == "y" || adoptable.downcase == "no" || adoptable.downcase == "n"
     puts "Please enter only 'y' or 'n'."
     adoptable = gets.chomp
   end

if adoptable.downcase == "yes" || adoptable.downcase == "y"
  adoptable = "adoptable"
else
  adoptable = "unadoptable"
end
    

# Get hamster's estimated age
# If no age, set age to nil

    puts "How old is the hamster?"
    age = gets.chomp

     age_input = false

  until age_input 
    if age.to_i > 0
#      puts "The hamster is #{age}."
      age_input = true
      
    elsif age == ""
      age = nil
 #     puts "The hamster's age is a mystery."
      age_input = true
      age = "?"
    else 
      puts "Please enter the age in numberical digits."
      age = gets.chomp
    end
      
  end
      

puts "Hamster report: \n

This hamster's name is #{name} and has #{fur_color} fur.\n

#{name} is #{age} years old.\n

#{name} is #{volume_level} and is #{adoptable}."