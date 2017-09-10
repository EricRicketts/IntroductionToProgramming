require 'minitest/autorun'
require 'minitest/pride'

class Exercise3Test < Minitest::Test
  
  def setup
    @car = {
      type:    'sedan',
      color:   'blue',
      mileage: 80_000,
      year:    2003
    }
  end

  def test_delete_key_value_pair
    expected = { type: 'sedan', color: 'blue', year: 2003 }
    @car.delete(:mileage)
    assert_equal(expected, @car)    
  end

end