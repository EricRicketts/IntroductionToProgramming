require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test
  
  def setup
    
    def meal
      return 'Evening'
    end

  end

  def test_meal
    assert_equal(meal, 'Evening')
  end

end