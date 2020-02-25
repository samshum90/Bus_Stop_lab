require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')
require_relative('../Bus_stop')



class TestBusStop < MiniTest::Test

  def setup
    @busstop1 = BusStop.new("South Bridge")
    @person1 = Person.new("Jane", 35)

    @person = [@person1, @person2]
  end

  def test_name()
    assert_equal("South Bridge", @busstop1.name)
  end

  def test_check_number_in_queue()
    assert_equal(0, @busstop1.number_in_queue())
  end

  def test_add_person()
    @busstop1.add_person(@person1)
    assert_equal(1, @busstop1.number_in_queue())
  end
def test_pick_up_from_stop()

  assert_equal(3, )
end
