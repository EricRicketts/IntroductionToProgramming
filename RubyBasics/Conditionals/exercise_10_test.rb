require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test
  
  def setup
    
    def stoplight(light)
      case light
      when "green" then "Go!"
      when "yellow" then "Slow down!"
      when "red" then "Stop!"
      else "No light!"
      end
    end
  end

  def test_go
    assert_equal("Go!", stoplight("green"))
  end

  def test_slow_down
    assert_equal("Slow down!", stoplight("yellow"))
  end

  def test_stop
    assert_equal("Stop!", stoplight("red"))
  end

  def test_no_light
    assert_equal("No light!", stoplight(nil))
  end

end