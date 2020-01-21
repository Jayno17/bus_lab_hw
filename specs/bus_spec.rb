require ("minitest/autorun")
require ("minitest/reporters")
require_relative("../bus")
require_relative("../person")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BusTest < MiniTest::Test

  def setup()
    @bus1 = Bus.new(22, "Ocean Terminal")
  end

 def test_bus_number()
   assert_equal(22, @bus1.bus_number())
end

def test_bus_route()
  assert_equal("Ocean Terminal", @bus1.bus_route())
end

def test_drive
  assert_equal("Brum brum", @bus1.drive)
end

def test_bus_starts_with_no_passengers()
  assert_equal(0, @bus1.passenger_count())
end

def test_pick_up_passenger()
  @bus1.pick_up_passenger(@person1)
  assert_equal(1, @bus1.passenger_count())
end

def test_pick_up_two_passengers()
  @bus1.pick_up_passenger(@person1)
  @bus1.pick_up_passenger(@person2)
  assert_equal(2, @bus1.passenger_count())
end

def test_drop_off_passenger()
  @bus1.pick_up_passenger(@person1)
  @bus1.pick_up_passenger(@person2)
  @bus1.drop_off_passenger(@person1)
  assert_equal(1, @bus1.passenger_count())
end

def test_empty_bus()
  @bus1.pick_up_passenger(@person1)
  @bus1.pick_up_passenger(@person2)
  @bus1.empty()
  assert_equal(0, @bus1.passenger_count())
end
end
