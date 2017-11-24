class City
  attr_reader :name
  attr_accessor :visited
  attr_accessor :neighbors

  def initialize(name)
    @name = name
    @visited = false
    @neighbors = []
  end
end

def nearest_neighbor(cities, origin)
  current_city = origin
  route = [origin.name]

  while !current_city.visited
    neighbor_cities = []
    for city in current_city.neighbors
      neighbor_cities << city if cities.include? city[:city]
    end

    for city in neighbor_cities
      if !city[:city].visited
        next_city = city
        break
      end
    end

    break if current_city == next_city[:city]

    for current_neighbor in neighbor_cities
      if current_neighbor[:distance] < next_city[:distance] && !current_neighbor[:city].visited
        next_city = current_neighbor
      end
    end

    current_city.visited = true
    current_city = next_city[:city]
    route << current_city.name
  end

  route
end
