# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Requires 'state_data' file in the same directory. 
#

require_relative 'state_data'

class VirusPredictor

  # initializes new instances of VirusPredictor with class properties.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls the predicted_deaths and speed_of_spread methods 
  


  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private


  # calculates expected death based on the values of the state hash in state_data.
  def predicted_deaths
    # predicted deaths is solely based on population density
    




    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end



    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


  # determines how long will take for virus to infect the state based on density of pop. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5

    if @population_density >= 200
      speed = 3.0
    elsif @population_density >= 150
      speed = 3.5
    elsif @population_density >= 100
      speed = 4.0
    elsif @population_density >= 50
      speed = 4.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state_name,state_info| 
  VirusPredictor.new(state_name,state_info[:population_density],state_info[:population]).virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

  # A: the hash in state_data.rb or "hashy hash" is a nested hash or hash within a hash. 


# What does require_relative do? How is it different from require?

  # A: require_relative includes another file, located in the same directory ('relative'), in the code of this one. 
  #    Effectively, state_data.rb is included in its entirety on line 10 of my_solution.rb.

# What are some ways to iterate through a hash?
  
  # A: We used the .each method to iterate through the STATE_DATA. I believe that one could create an array with the keys for the hash and then use a for loop or similar
  # to call each of the key values of the hash, but this would be somewhat impractical. 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  
  # A: Having eliminated the unused arguments for predicted_deaths and speed_of_spread, we were able to call those methods
  # as part of virus effects without supplying arguments. Because predicted_deaths and speed_of_spread use instance variables
  # rather than supplied arguments to do their work, these args were unnecessary / misleading. 

# What concept did you most solidify in this challenge?

  # A: This challenge was very helpful for clarifying how require_relative works as well as instance variables (hammering home that they are instance-specific.)





# Contact GitHub 