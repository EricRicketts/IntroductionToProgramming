require 'minitest/autorun'
require 'minitest/pride'
require 'pry-byebug'

class Exercise2Test < Minitest::Test
  def predict_weather
    sunshine = %w[true false].sample

    if sunshine
      "Today's weather will be sunny!"
    else
      "Today's weather will by cloudy!"
    end
  end

  def predict_weather_fix
    sunshine = [true, false].sample

    if sunshine
      "Today's weather will be sunny!"
    else
      "Today's weather will be cloudy!"
    end
  end

  def test_one
    # will always take the first branch because
    # strings 'true' and 'false' are always truthy
    expected = "Today's weather will be sunny!"
    assert_equal(expected, predict_weather)
  end

  def test_two
    arr = []
    100.times do
      arr << predict_weather_fix
    end
    cloudy = "Today's weather will be cloudy!"
    assert(arr.any? { |weather| weather == cloudy })
  end
end