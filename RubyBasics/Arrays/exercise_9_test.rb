require 'minitest/autorun'
require 'minitest/pride'

class Exercise9Test < Minitest::Test
  
  def setup
    @favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
  end

  def test_flatten
    expected = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
    assert_equal(expected, @favorites.flatten)
  end
end