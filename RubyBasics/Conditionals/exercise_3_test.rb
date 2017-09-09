require 'minitest/autorun'
require 'minitest/pride'

class Exercise3Test < Minitest::Test
  
  def setup
    
    def weather(sun)
      return "The sun is so bright!" if sun == "visible"
      "The clouds are blocking the sun!" unless sun == 'visible'
    end

  end

  def test_weather_sunny
    sun = 'visible'
    assert_equal('The sun is so bright!', weather(sun))
  end

  def test_weather_cloudy
    sun = 'hidden'
    assert_equal("The clouds are blocking the sun!", weather(sun))
  end

end