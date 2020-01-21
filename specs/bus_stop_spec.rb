require ("minitest/autorun")
require ("minitest/reporters")
require_relative("../bus_stop.rb")
require_relative("../person.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BusStopTest < MiniTest::Test

  def setup()
   @stop1 = BusStop.new("Elm Row")
   @person1 = Person.new("Ahmed",21)
  end

  def test_stop_name()
    assert_equal("Elm Row", @stop1.stop_name())
 end

 def test_queue_starts_empty()
   assert_equal(0, @stop1.queue_length())
end

def test_add_person_to_queue()
  @stop1.add_person_to_queue(@person1)
assert_equal(1, @stop1.queue_length())
end

def test_add_multiple_people_to_queue()
  @stop1.add_person_to_queue(@person1)
  @stop1.add_person_to_queue(@person2)
  assert_equal(2, @stop1.queue_length())
end

def test_clear_queue()
  @stop1.add_person_to_queue(@person1)
  @stop1.add_person_to_queue(@person2)
  @stop1.empty()
  assert_equal(0, @stop1.queue_length())
end
end
