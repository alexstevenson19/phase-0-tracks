
=begin 
	- split the string into an array
	- reverse the array to make the first and last names switch

	- put the word in a method to change the vowels and consonants. Of course I could do this with gsub, but will try an alternative method.
	- when the method is called and argument sent in
		1. downcase the string

		iterate through the string with special case statements for the vowels
			also have an exception for the consanants that would become vowels. 
			ex if .ord number==97 || .ord number ==110, etc  ord number = ord number + 2

	- add a user interface

	- lastly, make a loop and store the original name (key) with its new alias (value)

=end

# methods =============================================

def switch_maker(real_name)
	real_name.map!{ |disguise| disguise.split('')}	
	#real_name
end


def alias_maker(input_name)
	input_name.map! do |sub_name|

		sub_name.map! do |switch| switch.gsub(/[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]/,
				'a'=> 'e','b'=> 'c','c'=> 'd','d'=> 'f','e'=> 'i','f'=> 'g','g'=> 'h','h'=> 'j','i'=> 'o',
				'j'=> 'k','k'=> 'l','l'=> 'm','m'=> 'n','n'=> 'p','o'=> 'u','p'=> 'q','q'=> 'r','r'=> 's',
				's'=> 't','t'=> 'v','u'=> 'a','v'=> 'w','w'=> 'x','x'=> 'y','y'=> 'z','z'=> 'b')
		end
	end
	#input_name
end


def polish(disguise)
	disguise.map! { |sub_name|sub_name.join('')}
	disguise.map! { |cap| cap.capitalize!}
	disguise.to_s
end

# end methods ==========================================

# start progam below

spy_collector = {}  #for final report


valid_input = false

until valid_input

	puts "Please enter a name, or type 'done' when finished:"
	name = gets.chomp
		if name.downcase == "done"
			name.downcase!
			valid_input = true
		else
		new_name = name.downcase.split(' ')
		new_name.reverse!
	
			# put the reversed name through the switch, alias, and polish methods.
			switch_maker(new_name)
		
			alias_maker(new_name)
		
			polish(new_name)
		end

	spy_collector[name] = new_name
		
end

spy_collector.delete('done')

puts "Spy report:"
spy_collector.each{|real, spy|puts "#{real} is in disguise as #{spy[0]} #{spy[1]}"}

