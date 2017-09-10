require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test
  
  def setup
    @car = {
      type:  'sedan',
      color: 'blue',
      year:  2003
    }  
  end

  def test_convert_to_ary
    expected = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]
    result = @car.map { |key, value| [key, value] }
    assert_equal(expected, result)
  end

end