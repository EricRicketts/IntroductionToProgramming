require 'minitest/autorun'
require 'minitest/pride'

class Exercise7Test < Minitest::Test
  
  def test_sub_string
    greeting = "Hello!"
    greeting.replace("Goodbye!")
    assert_equal("Goodbye!", greeting)
  end

end