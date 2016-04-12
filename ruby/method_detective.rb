# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

<<<<<<< HEAD
“iNvEsTiGaTiOn”.swapcase
# => “InVeStIgAtIoN”

“zom”.replace"zoom"
"zom".gsub(/[o]/, 'oo')
# => “zoom”

“enhance”.center(17)
#=> “    enhance    ”

“Stop! You’re under arrest!”.upcase
# => “STOP! YOU’RE UNDER ARREST!”

“the usual”.ljust(18, ' suspects') # I guess you could still use replace or gsub for this (or almost any of these) as well.
#=> “the usual suspects”

“ suspects”.rjust(18, 'the usual ')
#=> “the usual suspects”

“The case of the disappearing last letter”.chop
# => “The case of the disappearing last lette”

“The mystery of the missing first letter”.delete "T"
# => “he mystery of the missing first letter”

“Elementary  ,    my   dear      Watson!”.squeeze
# => “Elementary, my dear Watson!”

“z”.each_codepoint.to_a
"z".ord
"z".sum #but this only will work for a single letter.
=======
# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

# "zom".<???>
# => “zoom”

# "enhance".<???>
# => "    enhance    "

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
>>>>>>> 5aa68c0652e70fe28c68f5efbaf0a1a869c73beb
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the corresponding ASCII number for 'z'

“How many times does the letter ‘a’ appear in this string?”.count('a')
#=> 4


<<<<<<< HEAD
=======
# "How many times does the letter 'a' appear in this string?".<???>
# => 4
>>>>>>> 5aa68c0652e70fe28c68f5efbaf0a1a869c73beb
