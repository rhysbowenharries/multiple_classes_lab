require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < Minitest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal", passengers = [])
  end

  def test_does_have_drive_method
    assert_equal("Brum brum", @bus.drive_method)
  end

  def test_count_passengers
    assert_equal(0, @bus.count_passengers)
  end

  def test_pick_up
    passenger1 = Person.new("John", "33")
    @bus.pick_up(passenger1)
    assert_equal(1, @bus.count_passengers)
  end

  def test_drop_off
    passenger1 = Person.new("John", "33")
    @bus.drop_off(passenger1)
    assert_equal(0, @bus.count_passengers)
  end

  def test_empty_bus
    assert_equal(0, @bus.count_passengers)
  end

end
