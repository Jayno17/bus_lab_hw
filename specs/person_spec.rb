require ("minitest/autorun")
require ("minitest/reporters")
require_relative("../person")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class PersonTest < MiniTest::Test

  def setup()
    @person1 = Person.new("Bob", 60)
    @person2 = Person.new("Sam", 21)
  end

def test_passenger_name()
  assert_equal("Bob", @person1.passenger_name())
end

def test_passenger_age()
  assert_equal(60, @person1.passenger_age)
end

end
