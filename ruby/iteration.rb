

def scary_story
  puts "It was a quiet night until..."
  yield("Wolfman", "The Blob", "ate", "ooozed")
end

scary_story { |monster1, monster2, action1, action2| puts "The #{monster1} escaped from the graveyard and went to a bar. It #{action1} three customers. At the same time #{monster2} #{action2} on the top of Lookout Hill."}