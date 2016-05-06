
# Virus Predictor

# I worked on this challenge with: Jeffery (Brown?).
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# The require_relative calls a file that is in the same shared folder. Generally used to access files you have created.
# Require can do a wider search, and access files that you may be using, but not one you created.
#
require_relative 'state_data_nh'

class VirusPredictor

  # it is the method that will run first when a new instance of the VirusPredictor class is made. It assigns the arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  # it calls two instance methods from within the VirusPredictor class.
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  # all methods that follow 'private' will not be accessible for outside objects
  private

  # method that calculates predicted deaths according to population density and size
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density

    # perhaps a case statement is a little more dry?
    case
      when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
      when @population_density < 50 then number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
  # method that calculates speed the virus will spread at according to population density
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case
      when @population_density >= 200
       speed += 0.5
      when @population_density >= 150
       speed += 1
      when @population_density >= 100
       speed += 1.5
      when @population_density >= 50
       speed += 2
      else
       speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


# initialize VirusPredictor for each state
# iterate through the STATE_DATA nested hash to run all 50 states

STATE_DATA.each do|states, information|
  
  state = VirusPredictor.new(states, STATE_DATA[states][:population_density], STATE_DATA[states][:population])  
  state.virus_effects
  
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section