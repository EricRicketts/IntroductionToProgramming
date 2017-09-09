require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test
  
  def test_full_name
    first_name = "John"
    last_name = "Doe"
    full_name = first_name + " " + last_name
    assert_equal("John Doe", full_name)
  end

end