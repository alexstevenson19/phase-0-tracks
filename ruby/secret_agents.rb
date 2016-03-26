# Define an encrypt method to advances every letter of a string one letter forward

# initialize index (=0)
index = 0

# variable = string (and set up a variable = length of string.)
puts "Please enter your password."
password = gets.chomp

# write a while loop

# while the index is less than the variable length the loop will repeat
while index < password.length
  password[index] = password[index].next
  # add strings together
  index+=1
end

puts password
# output 



# Decrypt password

# enter encrpyted password

# set up (backward?) alphabet code corresponding to (numbers?).
@a, @b, @c, @d, @e, @f = 0, 1, 2, 3, 4, 5
# or
"z, y , x, w, "

def codebreaker(password)
	puts password.split(//)

end
# break apart password string into separate characters (an array?).

# match the characters to the corresponding letters in code-breaker.

# minus 1 space to get decrypted letter.

# output letter.





# -----------------------------------

# alphabetstring = "abcdefghijklmnopqrstuvqxyz"
# alphabetstring.index("a")


# puts ("a".."z").to_a
 
# #=> [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]
 
# ("a".."z").each{|letter| puts letter}



# @a, @b, @c, @d, @e, @f = 0, 1, 2, 3, 4, 5

# def alpha_test

#   p @a, @c
  
# end

# alpha_test

# puts "Type in a word"
# word = gets.chomp

# text = word.split("")
# puts text

alphabetstring = "abcdefghijklmnopqrstuvwxyz".split("")
p arr = alphabetstring.index("w").to_i
p arr_1 = arr - 1
p alphabetstring[arr_1]
# puts alphabetstring.shift

# rev_alphabetstring = "zyxwvutsrqp0nmlkjihgfedcba".split("")

# p arr = rev_alphabetstring.index("w").to_i
# p arr_1 = arr - 1
# p rev_alphabetstring[arr_1]

# def decrypt(password)
#   index = 0
#     while index < password.length
#      password[index] = password[index]
#        index+=1
#     end
# puts password
# end
# decrypt("bcd")
