class Bus

  attr_reader :bus_number, :destination, :passenger

  def initialize(bus_number, destination)
    @bus_number = bus_number
    @destination = destination
    @passenger = []
  end

  def drive()
    return "Brum Brum"
  end

  def check_passenger()
    @passenger.count
  end

  def pick_up(person)
    @passenger << person
  end

  def drop_off(passenger)
    found_person = @passenger.select { |person| person == passenger}
    @passenger.delete(found_person.first)
  end

  def empty()
    @passenger.clear()
  end
end
