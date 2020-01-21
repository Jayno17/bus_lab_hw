class Bus

  def initialize(number, destination)
    @number = number
    @destination = destination
    @passengers = []
  end

def bus_number()
  return @number
end

def bus_route()
  return @destination
end

def drive
  return "Brum brum"
end

def passenger_count
  return @passengers.count
end

def pick_up_passenger(person)
  @passengers << person
end

def drop_off_passenger(person)
  index = @passengers.index(person)
  @passengers.slice!(index, 1)
end

def empty()
 @passengers.clear
end
end
