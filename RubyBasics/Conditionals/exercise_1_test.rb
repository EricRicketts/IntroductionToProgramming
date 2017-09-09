require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test
  
  def setup
    
    def weather(sun)
      "The sun is so bright!" if sun == 'visible'
    end

  end

  def test_weather
    sun = 'visible'
    assert_equal("The sun is so bright!", weather(sun))
  end

end