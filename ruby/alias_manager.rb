
#set up hash and array I will use in loop
spy_alias = {}
spy_report = []

# set a boolean to stop the loop and exit
endcode = false

puts "Hello, Welcome to Alias Maker 2016."
until endcode
	# put this spy report adder at the top of the loop to keep the values from the bottom. Also use the += adder so it doesn't reset.
	spy_report += []

	puts "Please enter the name you would like to encrypt (- When finished type 'quit') "

	#swap first and last name by making the words into two arrays with the method split quote space quote (index 0 and 1) by, and then reversing that array
	original_name = gets.chomp

	if original_name.downcase == "quit" || original_name == "" #exit with 'quit' or a return (chomp)
		endcode = true
	else
		switch = original_name.split (' ')
		switch.reverse!

		#turn the array indexes into strings
		switch_first = switch[0].downcase
		switch_second = switch[1].downcase


		#not the most elegant way to change the letters, but gsub! worked
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

		# this 'alias_name' will now be the value that will match the key 'original_name' in the hash
		alias_name = "#{switch_first} #{ switch_second}"
			
			# declare a string variable to be over written in the iteration loop
			# put the key-(original_name) and value-(alias_name) from above into the hash to be iterated
			final_statements = "blank"
			spy_alias = {original_name.to_sym => alias_name}

			spy_alias.each do |original_name, alias_name| 
				final_statements = "#{original_name} is disguised as #{alias_name}."
				end

			#while testing the program I printed the spy_alias on the next line to check the output as I went through the loop.
			#p spy_alias

			spy_report.push(final_statements)  #use push to keep adding data to spy_report array

	end #if loop

end #until loop

puts "-- Start Report --"

puts "#{spy_report}"

puts "-- End Report --"



