
# set up hash with client info. full name, age, family size, pets, garage, bedroom number, bath number
# prompt the user for the values in the hash. convert the input into appropriate data type
# to convert a value to a boolean, use a loop?
# allow user to edit one item before printing final report.


interior_info = {}

# prompt and get answers
puts "Please enter the client's full name."
interior_info[:full_name] = gets.chomp

puts "Please enter the client's age."
#age_convert = gets.chomp
interior_info[:age] = gets.chomp.to_i


p interior_info
