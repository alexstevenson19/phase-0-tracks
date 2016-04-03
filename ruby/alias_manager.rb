
spy_alias = {}

puts "Hello, Welcome to Alias Maker 2016.\n
	Please enter the name you would like to encrypt (- When finished type 'quit') "

	#swap first and last name by making the words into two arrays with the method split quote space quote (index 0 and 1) by, and then reversing that array
	original_name = gets.chomp
	switch = original_name.split (' ')
	switch.reverse!

	#turn the array indexes into strings
	switch_first = switch[0].downcase
	switch_second = switch[1].downcase


	#not the most elegant way to change the letters, but I was stuck with arrays and hashes. gsub! worked
	#technically I could use this method for all of the vowels and consonats at once, but it is a little easier to read this way.

	switch_first.gsub!(/[aeiou]/, "a"=>"e", "e"=>"i", "i"=>"o", "o"=>"u", "u"=>"a")
	switch_second.gsub!(/[aeiou]/, "a"=>"e", "e"=>"i", "i"=>"o", "o"=>"u", "u"=>"a")


	switch_first.gsub!(/[bcdfghjklmnpqrstvwxyz]/, "b"=>"c","c"=>"d","d"=>"f","f"=>"g","g"=>"h","h"=>"j","j"=>"k","k"=>"l","l"=>"m",
						"m"=>"n","n"=>"p","p"=>"q","q"=>"r","r"=>"s","s"=>"t","t"=>"v","v"=>"w","w"=>"x","x"=>"y","y"=>"z","z"=>"b",)
						
	switch_second.gsub!(/[bcdfghjklmnpqrstvwxyz]/, "b"=>"c","c"=>"d","d"=>"f","f"=>"g","g"=>"h","h"=>"j","j"=>"k","k"=>"l","l"=>"m",
						"m"=>"n","n"=>"p","p"=>"q","q"=>"r","r"=>"s","s"=>"t","t"=>"v","v"=>"w","w"=>"x","x"=>"y","y"=>"z","z"=>"b",)

	#capitalize the names
	switch_first.capitalize!
	switch_second.capitalize!

alias_name = "#{switch_first} #{ switch_second}"

spy_alias[original_name] = alias_name

# p spy_alias
spy_alias.each do |original_name, alias_name| 
	puts "#{alias_name} is #{original_name}"
end


=begin
===========================

p switch_first
puts "#{switch_second}"

first_array = switch_first.split('')
p first_array


first_array.map! do |spy_letter|
	if spy_letter != "a"
		spy_letter == spy_letter.next
	else
		spy_letter == spy_letter
	end
end
=end
