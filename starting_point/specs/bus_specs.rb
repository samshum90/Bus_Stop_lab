require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class TestBus < MiniTest::Test
  def setup
    @bus1 = Bus.new(22, "Ocean Terminal")
    @bus2 = Bus.new(18, "East Craigs", )
    @person1 = Person.new("Jane", 35)
  end

  def test_route_number()
    assert_equal(22, @bus1.bus_number)
  end

  def test_destination()
    assert_equal("Ocean Terminal", @bus1.destination)
  end

  def test_drive()
    assert_equal("Brum Brum", @bus1.drive)
  end

  def test_passenger()
    assert_equal([], @bus1.passenger)
  end

  def test_check_passenger()
    assert_equal(0, @bus1.check_passenger())
  end

  def test_pick_up()
    @bus1.pick_up(@person1)
    assert_equal(1, @bus1.check_passenger())
  end

  def test_drop_off()
    @bus1.pick_up(@person1)
    @bus1.drop_off(@person1)
    assert_equal(0, @bus1.check_passenger())
  end

  def test_empty()
    @bus1.pick_up(@person1)
    @bus1.empty()
    assert_equal(0,@bus1.check_passenger())
  end
end
