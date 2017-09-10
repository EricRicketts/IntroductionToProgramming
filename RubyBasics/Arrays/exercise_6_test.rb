require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test
  
  def setup
    @numbers = [1, 2, 3, 4, 5]
  end

  def test_doubled
    expected = [2, 4, 6, 8, 10]
    actual = @numbers.map { |number| number*2 }
    assert_equal(expected, actual)
  end
end