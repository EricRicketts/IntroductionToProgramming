require 'minitest/autorun'
require 'minitest/pride'

class Exercise2Test < Minitest::Test
  
  def setup
    
    def weather(sun)
      "The clouds are blocking the sun!" unless sun == 'visible'
    end

  end

  def test_weather
    sun = 'hidden'
    assert_equal("The clouds are blocking the sun!", weather(sun))
  end

end