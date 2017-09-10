require 'minitest/autorun'
require 'minitest/pride'

class Exercise8Test < Minitest::Test
  
  def setup
    @ary = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
    @actual = []
  end

  def test_nested_arrays
    expected = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
    @actual.push(@ary[0..1], @ary[2..3], @ary[4..5])
    assert_equal(expected, @actual)
  end

end