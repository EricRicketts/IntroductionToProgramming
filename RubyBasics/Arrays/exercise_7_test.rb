require 'minitest/autorun'
require 'minitest/pride'

class Exercise7Test < Minitest::Test
  
  def setup
    @numbers = [5, 9, 21, 26, 39]
  end

  def test_div_by_three
    expected = [9, 21, 39]
    actual = @numbers.select { |number| number % 3 == 0 }
    assert_equal(expected, actual)
  end

end