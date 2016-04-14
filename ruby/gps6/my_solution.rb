# Virus Predictor

# I worked on this challenge [by myself, with: Melissa Chaparro ].
# We spent [2.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative links to an another file relative to the current file's location. require is used for third-party code
#
require_relative 'state_data'

class VirusPredictor
  
  attr_accessor :state, :population, :population_density   

# Initializes new class and assign instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Method that calls other methods
  def virus_effects
    predicted_deaths     #(@population_density)   #@state  , @population
    speed_of_spread      #(@population_density)   # @state
  end
# all methods that follow 'private' will not be accessible for outside objects
  private
# running if/elsif statements adapting formula and outputting a report
# later changed the if/else statements to case statements, but in the end it doesn't look as clean as I thought it would.
  def predicted_deaths   #(population_density, population)
    # predicted deaths is solely based on population density    
    case 
      when @population_density >= 200
         then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150
         then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100
         then number_of_deaths = (@population * 0.2).floor  
      when @population_density >= 50
         then number_of_deaths = (@population * 0.1).floor
      when @population_density >= 0
         then number_of_deaths = (@population * 0.05).floor 
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# running if/eslif statements adapting formula and outputting a report
   def speed_of_spread #in months   (population_density, state)
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    
    case 
      when @population_density >= 200 then speed += 0.5
      when @population_density >= 150 then speed += 1
      when @population_density >= 100 then speed += 1.5
      when @population_density >= 50 then speed += 2
      when @population_density >= 0 then speed += 2.5          
   end


    puts " and will spread across the state in #{speed} months.\n\n"

  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# used the original driver code as a guide to build the ititrator
# 
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
# 
STATE_DATA.each do
  |states, state_hash| states = VirusPredictor.new(states,STATE_DATA[states][:population_density], STATE_DATA[states][:population])
  states.virus_effects
end


#=======================================================================
# Reflection Section

=begin
What are the differences between the two different hash syntaxes in the state_data file?
- One of the hashes has yet more hashes as values. As well, for the outer hash the key is a string. The other hashes have a symbol for their key.

require_relative vs. require.
- We actually asked the the guide about it earlier in the session and among other things they both act as paths to a linked file. (I related it to collecting art in Indesign when sending projects to a printer)
- The interesting clarification he brought to our question is that require_relative is usually used to link files you or teamates have worked on.
- Require is usually used for 3rd party code you may be using in your program. As well, require has a wider search array (and thus can be slower), while require_relative looks in one specific place.

iterate through a hash.
- Of course you can put a key and value variable in a block to go through a straightforward hash.
- Today's was interesting for me, and was a jump in my mind when I realized we had the variables/values from our earlier declarations in the class, but they could carry over into the driver code since they were instance variables at the time.

What stood out when refactoring virus effects.
- To be honest after figuring out the hash iteration fairly quickly, I wasn't that motivated to further tinker with the code. (Can't speak for Melissa.)
- However, when trying to DRY up the virus effects I initially attempted to change the instance variable to symbols, to save computer memory and shave off some nano seconds.
- After that moving them to attr_accessors made a certain amount of sense in not having to worry about them as arguments/parameters later in the code.

Solidify?
- Really, getting the hash iteration to work when I was really expecting error messages was a thrill. Also finally got to use case statements, which I thought of later on an earlier challenge after turning it in.
- Also after looking a Java Script the past couple days, it was nice to come back to Ruby and have it feel familiar.

=end

