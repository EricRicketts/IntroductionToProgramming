require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test
  
  def test_hash_init
    car = { type: "sedan", color: "blue", mileage: 80_00 }
    keys = car.keys.sort
    assert_equal([:color, :mileage, :type], keys)
  end

end