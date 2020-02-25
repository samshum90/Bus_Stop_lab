class BusStop

attr_reader :name, :queue

  def initialize(name)
    @name = name
    @queue = []
  end

  def number_in_queue()
    @queue.count
  end

  def add_person(person)
    @queue << person
  end
end
