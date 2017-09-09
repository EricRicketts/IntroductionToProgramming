require 'minitest/autorun'
require 'minitest/pride'

class Exercise4Test < Minitest::Test
  
  def test_string_interpolation
    name = "Elizabeth"
    str = "Hello, #{name}!"
    assert_equal("Hello, Elizabeth!", str)
  end

end