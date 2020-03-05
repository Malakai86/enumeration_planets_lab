require("pry")

class StarSystem
  attr_reader :name, :planets

def initialize (name, planets)
  @name = name
  @planets = planets
end


def planet_names()
  return @planets.map {|planet| planet.name}
end

def get_planet_by_name(planet)
  return @planets.find {|planet| planet.name == "Mars"}
end

def get_largest_planet()
  return @planets.max {|current_planet, next_planet| current_planet.diameter <=> next_planet.diameter}
end

def get_smallest_planet()
  return @planets.min {|current_planet, next_planet| current_planet.diameter <=> next_planet.diameter}
end

def get_planets_with_no_moons()
  return @planets.find_all {|planet| planet.number_of_moons == 0}
end


def get_planets_with_more_moons(moons)
  found_planets = @planets.find_all {|planet| planet.number_of_moons > moons}
  return found_planets.map {|planet| planet.name}
end












end
