
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
#Takes variables from calling a new class and makes them usable throughout the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Reutrn methods within the class
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#Takes population density and makes a calculation
  def predicted_deaths
    # predicted deaths is solely based on population density       
    
    if @population_density >= 200
      spreadability = 0.4
    elsif @population_density >= 150
      spreadability = 0.3
    elsif @population_density >= 100
      spreadability = 0.2
    elsif @population_density >= 50
      spreadability = 0.1
    else
      spreadability = 0.05
    end
  
    number_of_deaths = (@population * spreadability).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
#Changes speed of the spread based on population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed_in_months = 0.5
    elsif @population_density >= 150
      speed_in_months = 1
    elsif @population_density >= 100
      speed_in_months = 1.5
    elsif @population_density >= 50
      speed_in_months = 2
    else
      speed_in_months = 2.5
    end

    puts " and will spread across the state in #{speed_in_months} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  s = VirusPredictor.new(state, data[:population_density], data[:population])
  s.virus_effects
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
