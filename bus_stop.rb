class BusStop

  attr_reader :stop_name, :queue

  def initialize(stop_name)
    @stop_name = stop_name
    @queue = []
  end

  def queue_length()
    return @queue.count()
end

def add_person_to_queue(person)
  @queue.push(person)
end

def empty()
  @queue.clear
end
end
