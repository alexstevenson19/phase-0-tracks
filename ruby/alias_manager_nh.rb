
=begin 
	- split the string into an array
	- reverse the array to make the first and last names switch

	- put the word in a method to change the vowels and consonants. Of course I could do this with gsub, but will try an alternative method.
	- when the method is called and argument sent in
		1. downcase the string

		iterate through the string with special case statements for the vowels
			also have an exception for the consanants that would become vowels. 
			ex if .ord number==97 || .ord number ==110, etc  ord number = ord number + 2

=end



def switch_maker(real_name)

	real_name.map!{ |disguise| disguise.split('')}
	
	p real_name
end


def alias_maker(input_name)
	input_name.map! do |sub_name|

		sub_name.map! do |switch| switch.gsub(/[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]/,
				'a'=> 'e','b'=> 'c','c'=> 'd','d'=> 'f','e'=> 'i','f'=> 'g','g'=> 'h','h'=> 'j','i'=> 'o',
				'j'=> 'k','k'=> 'l','l'=> 'm','m'=> 'n','n'=> 'p','o'=> 'u','p'=> 'q','q'=> 'r','r'=> 's',
				's'=> 't','t'=> 'v','u'=> 'a','v'=> 'w','w'=> 'x','x'=> 'y','y'=> 'z','z'=> 'b')
		end
	end


	p input_name

end

def polish(disguise)
	disguise.map! do |sub_name|
		sub_name.join('')

#		sub_name.map!{|arr| arr[0].capitalize}
	end
end


#puts "Please enter your name:"
# name = gets.chomp

name = "John Smith"


new_name = name.downcase!.split(' ')

new_name.reverse!

switch_maker(new_name)

puts "#{new_name}"

alias_maker(new_name)

puts "#{new_name}"

polish(new_name)

puts "#{new_name}"


# a = [1, 2, 3]
# 
# def mutate(array)
  # array.pop
# end
# 
# p "Before mutate method: #{a}"
# p mutate(a)
# p "After mutate method: #{a}"
# 
# 