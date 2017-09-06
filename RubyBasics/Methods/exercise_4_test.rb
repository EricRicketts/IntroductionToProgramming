require 'minitest/autorun'
require 'minitest/pride'

class Exercise4Test < Minitest::Test
  
  def setup
    
    def time_of_day(daylight)
      daylight ? "It's daytime!" : "It's nighttime!"
    end

  end

  def test_daytime
    daylight = true
    assert_equal(time_of_day(daylight), "It's daytime!")    
  end

  def test_nighttime
    daylight = false
    assert_equal(time_of_day(daylight), "It's nighttime!")
  end

  def test_either_day_or_night
    daylight = [true, false].sample
    assert_includes(["It's daytime!", "It's nighttime!"], time_of_day(daylight))
  end

end