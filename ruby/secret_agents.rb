# Define an encrypt method to advances every letter of a string one letter forward

# initialize index (=0)
index = 0

# variable = string (and set up a variable = length of string.)
puts "Please enter your password."
password = gets.chomp.downcase

# write a while loop

# while the index is less than the variable length the loop will repeat
while index < password.length
  password[index] = password[index].next
  # add strings together
  index+=1
end

puts password


# output 



# alphabetstring = "abcdefghijklmnopqrstuvwxyz".split("")
# p arr = alphabetstring.index("w").to_i
# p arr_1 = arr - 1
# p alphabetstring[arr_1]


pass_array = password.split("")
decrypt_password = ""
# for each character of password
  for i in pass_array
       ord_num = (i.ord-1)
       decrypt_password.concat(ord_num.chr)
  end
puts decrypt_password
# parse out password and determine index of each letter with respect to alphabetstring
# subtract 1 from the index and output the respective character
# re-string it and return decrypted password