
#swap first and last name
switch = "Virgina Hall".split (' ')
switch.reverse

#? break the two words into separate variable to work with them?
# method to tackle the vowels first, then a method for the consonants.


switch_first = switch[0].downcase#.split('')
switch_second = switch[1].downcase#.split('')

switch_first.gsub!(/[aeiou]/, "a"=>"e", "e"=>"i", "i"=>"o", "o"=>"u", "u"=>"a")
switch_second.gsub!(/[aeiou]/, "a"=>"e", "e"=>"i", "i"=>"o", "o"=>"u", "u"=>"a")


switch_first.gsub!(/[bcdfghjklmnpqrstvwxyz]/, "b"=>"c","c"=>"d","d"=>"f","f"=>"g","g"=>"h","h"=>"j","j"=>"k","k"=>"l","l"=>"m",
					"m"=>"n","n"=>"p","p"=>"q","q"=>"r","r"=>"s","s"=>"t","t"=>"v","v"=>"w","w"=>"x","x"=>"y","y"=>"z","z"=>"b",)
					
switch_second.gsub!(/[bcdfghjklmnpqrstvwxyz]/, "b"=>"c","c"=>"d","d"=>"f","f"=>"g","g"=>"h","h"=>"j","j"=>"k","k"=>"l","l"=>"m",
					"m"=>"n","n"=>"p","p"=>"q","q"=>"r","r"=>"s","s"=>"t","t"=>"v","v"=>"w","w"=>"x","x"=>"y","y"=>"z","z"=>"b",)

puts "#{switch_first} #{ switch_second}"


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
