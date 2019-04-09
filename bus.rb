class Bus

  # attr reader :passengers

  def initialize (route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive_method
    return "Brum brum"
  end

  def count_passengers
    passengers_count = 0
    for passenger in @passengers
      passengers_count += 1
    end
    return passengers_count
  end

  def pick_up(name)
    @passengers.push(name)
  end

  def drop_off(name)
    @passengers.delete(name)
  end

  def empty_bus
    @passengers = []
  end

end
