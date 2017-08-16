# Wave_2

class SolarSystem
  attr_accessor :planets
# initialize
  def initialize(planets)
    @planets = planets      #an array of planet objects
  end
#  add planet to array
  def planet_add(planet)
    @planets.push(planet)
    return @planets
  end
# print list
  def print_list
    planet_info = ""
    @planets.each_with_index do |planet, index|
      planet_info += "#{index + 1}. " + planet.to_s + "\n"
    end
    return planet_info
  end
end                         #end of solar system class

class Planet
  attr_reader :name, :diameter, :num_moons, :mass

  def initialize(name, diameter, num_moons, mass)
    @name       = name
    @diameter   = diameter
    @num_moons  = num_moons
    @mass       = mass
  end

  def to_s
    return "num: #{@index}. name: #{@name} diameter: #{@diameter}, num_moons: #{@num_moons}, mass: #{@mass}"
  end
end                          #end of planet class

# Testing
mars = Planet.new("mars", "4222", "2", "6.42")
earth   = Planet.new("Earth", "4222", "2", "227.9")
jupiter = Planet.new("Jupiter", "88,729", "67", "778.3")
sol = SolarSystem.new([mars, earth, jupiter])
puts sol.print_list
