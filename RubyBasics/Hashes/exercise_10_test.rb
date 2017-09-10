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
    ary = []
    @car.each { |key, value| ary.push([key, value]) }
    assert_equal(expected, ary)
  end

end