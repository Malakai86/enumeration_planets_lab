require("pry")

class StarSystem
  attr_reader :name, :planets

def initialize (name, planets)
  @name = name
  @planets = planets

end


def planet_names
  return planets.map {|planet| planet.name}
end

def get_planet_by_name(planet)
  return planets.find {|planet| planet.name == "Mars"}
end

def get_largest_planet()
  return planets.max {|current_planet, next_planet| current_planet.diameter <=> next_planet.diameter}
end
















end
