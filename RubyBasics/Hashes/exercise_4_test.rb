require 'minitest/autorun'
require 'minitest/pride'

class Exercise4Test < Minitest::Test
  
  def setup
    @car = {
      type:    'sedan',
      color:   'blue',
      year:    2003
    }    
  end

  def test_color
    assert_equal('blue', @car[:color])
  end

end