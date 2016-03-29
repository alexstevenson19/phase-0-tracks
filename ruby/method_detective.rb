# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

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
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the corresponding ASCII number for 'z'

“How many times does the letter ‘a’ appear in this string?”.count('a')
#=> 4


