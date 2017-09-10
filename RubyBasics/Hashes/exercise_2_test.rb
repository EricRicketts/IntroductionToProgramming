require 'minitest/autorun'
require 'minitest/pride'

class Exercise2Test < Minitest::Test
  
  def setup
    @car = {
      type:    'sedan',
      color:   'blue',
      mileage: 80_000
    }
  end

  def test_add_key_value_pair
    @car[:year] = 2003
    assert_equal(2003, @car[:year])
  end

end