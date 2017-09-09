require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test
  
  def setup
    
    def stoplight(light)
      case light
      when "green"
        "Go!"
      when "yellow"
        "Slow down!"
      when "red"
        "Stop!"
      else
        "No light!"
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