require 'minitest/autorun'
require 'minitest/pride'

class Exercise8Test < Minitest::Test
  
  def setup

    def sleep_alert(status)
      sleep_state = if status == 'awake' 
                      "Be productive!"
                    else
                      "Go to sleep!"
                    end
      sleep_state
    end

  end

  def test_sleep_alert_awake
    assert_equal('Be productive!', sleep_alert("awake"))
  end

  def test_sleep_alert_sleeping
    assert_equal('Go to sleep!', sleep_alert("tired"))
  end

end