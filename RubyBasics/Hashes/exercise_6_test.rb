require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test
  
  def setup
    @numbers = {
      high:   100,
      medium: 50,
      low:    10
    }
  end

  def test_divide_by_two
    result = @numbers.map { |key, value| value/2 }.sort.reverse
    assert_equal([50, 25, 5], result)
  end

end