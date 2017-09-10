require 'minitest/autorun'
require 'minitest/pride'

class Exercise7Test < Minitest::Test
  
  def setup
    @numbers = {
      high:   100,
      medium: 50,
      low:    10
    }
  end

  def test_select_low_numbers
    expected = { low: 10 }
    result = @numbers.select { |key, value| value < 25 }
    assert_equal(expected, result)
  end

end