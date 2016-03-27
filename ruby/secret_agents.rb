# make a method to encrypt password

def encrypt(password)
  # split the string into individual characters
  pass_array = password.split("")
  #make and empty string to fill in with encrypted characters at the end of "for" loop
  encrypt_password = ""
# for each character of password
  for i in pass_array
      #increment ordinance number of character by 1 and set that equal to variable
       ord_num = (i.ord+1)
        # take into account edge cases and adjusting output to loop back to 'a' or 'z' in both lower and upper cases
        if ord_num == 123
           ord_num = 97
        elsif
          ord_num == 91
          ord_num = 65
        end
    # stitch together the individual characters into a string and fill into empty string defined earlier   
    encrypt_password.concat(ord_num.chr).to_s
  end
# using 'p' to print the value of the final encrypted password. Note: using 'puts' called the result as a string, which could not be used by the following method.
encrypt_password
end


def decrypt(password)
  pass_array = password.split("")
  decrypt_password = ""
  for i in pass_array
       ord_num = (i.ord-1)
        if ord_num == 96
          ord_num = 122
        elsif
          ord_num == 64
          ord_num = 90
        end
        decrypt_password.concat(ord_num.chr).to_s
   end
  decrypt_password
end

#Interface - ask for info
puts "Hello agent, would you like to encrypt or decrypt a password?"
agent_input = gets.chomp

valid_input = false

until valid_input
  
  if agent_input.downcase == "encrypt"
      puts "Please enter passcode(s)."
      encrypt_passcode = gets.chomp
      puts "Here is your disguised password: #{encrypt(encrypt_passcode)}."
      valid_input = true
    elsif
    agent_input.downcase == "decrypt"
      puts "Please enter passcode(s)."
      decrypt_passcode = gets.chomp
      puts "Here is your restored password #{decrypt(decrypt_passcode)}."
      valid_input = true
    else
    puts "Please re-enter your selection."
    agent_input = gets.chomp
  end
end